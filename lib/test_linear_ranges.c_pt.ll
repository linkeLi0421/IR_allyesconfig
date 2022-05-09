; ModuleID = '/llk/IR_all_yes/lib/test_linear_ranges.c_pt.bc'
source_filename = "../lib/test_linear_ranges.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @range_test_module, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [47 x i8] c"test_linear_ranges.file=lib/test_linear_ranges\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [31 x i8] c"test_linear_ranges.license=GPL\00", section ".modinfo", align 1
@range_test_module = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"linear-ranges-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @range_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@range_test_cases = internal global { [5 x %struct.kunit_case], [60 x i8] } { [5 x %struct.kunit_case] [%struct.kunit_case { ptr @range_test_get_value_amount, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @range_test_get_selector_high, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @range_test_get_selector_low, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @range_test_get_value, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"range_test_get_value_amount\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"range_test_get_selector_high\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"range_test_get_selector_low\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"range_test_get_value\00", [43 x i8] zeroinitializer }, align 32
@testr = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 10, i32 2, i32 6, i32 10 }, %struct.linear_range { i32 100, i32 7, i32 10, i32 50 }], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/test_linear_ranges.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [353 x i8], [95 x i8] } { [353 x i8] c"(int)(((sizeof(range1_vals) / sizeof((range1_vals)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((range1_vals)), typeof(&(range1_vals)[0])))); }))))) + ((sizeof(range2_vals) / sizeof((range2_vals)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((range2_vals)), typeof(&(range2_vals)[0])))); }))))))\00", [95 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@range1_vals = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 10, i32 20, i32 30, i32 40, i32 50], [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@range1_sels = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6], [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sel\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"range1_sels[i]\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"range1_sels[0]\00", [17 x i8] zeroinitializer }, align 32
@range2_vals = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 100, i32 150, i32 200, i32 250], [16 x i8] zeroinitializer }, align 32
@range2_sels = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 8, i32 9, i32 10], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"range2_sels[i]\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [189 x i8], [35 x i8] } { [189 x i8] c"range2_sels[((sizeof(range2_vals) / sizeof((range2_vals)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((range2_vals)), typeof(&(range2_vals)[0])))); }))))) - 1]\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"range1_vals[i]\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"range2_vals[i]\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"range_test_module\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 221, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"range_test_cases\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 213, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 214, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 215, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 216, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 217, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"testr\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 109, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 174, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"range1_vals\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 76, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 153, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"range1_sels\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 71, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 154, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 155, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 160, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 166, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"range2_vals\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 91, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"range2_sels\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 87, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 196, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 209, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 132, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 138, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [28 x i8] c"../lib/test_linear_ranges.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 141, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @range_test_module, ptr @range_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @testr, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @range1_vals, ptr @.str.8, ptr @range1_sels, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @range2_vals, ptr @range2_sels, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_test_module to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_test_cases to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 353, i32 448, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range1_vals to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range1_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range2_vals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range2_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 189, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @range_test_get_value_amount(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @linear_range_values_in_range_array(ptr noundef nonnull @testr, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 174, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 9, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.7, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = sext i32 %call to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp eq i32 %call, 9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @range_test_get_selector_high(ptr noundef %test) #0 align 64 {
entry:
  %sel = alloca i32, align 4
  %found = alloca i8, align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion39 = alloca %struct.kunit_unary_assert, align 4
  %__assertion60 = alloca %struct.kunit_binary_assert, align 8
  %__assertion89 = alloca %struct.kunit_binary_assert, align 8
  %__assertion114 = alloca %struct.kunit_unary_assert, align 4
  %__assertion140 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel) #5
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sel, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found) #5
  %1 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %found, align 1, !annotation !63
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %type42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 1
  %line43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 2
  %file44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 3
  %message45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4
  %va47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4, i32 1
  %format48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 5
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion39, i32 0, i32 1
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion39, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %4 = getelementptr inbounds i8, ptr %__assertion39, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0192 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr @range1_vals, i32 0, i32 %i.0192
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call = call i32 @linear_range_get_selector_high(ptr noundef nonnull @testr, i32 noundef %6, ptr noundef nonnull %sel, ptr noundef nonnull %found) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %7 = call ptr @memset(ptr %2, i32 255, i32 24)
  %8 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %test, ptr %__assertion, align 8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 153, ptr %line, align 8
  %11 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.4, ptr %file, align 4
  %12 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %message, align 8
  %13 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %va, align 4
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %15 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.5, ptr %operation, align 4
  %16 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.8, ptr %left_text, align 8
  %17 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %left_value, align 8
  %18 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.7, ptr %right_text, align 8
  %conv3 = sext i32 %call to i64
  %19 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp5, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %20 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sel, align 4
  %arrayidx12 = getelementptr [5 x i32], ptr @range1_sels, i32 0, i32 %i.0192
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %24 = call ptr @memset(ptr %3, i32 255, i32 24)
  %25 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion14, align 8
  %26 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type17, align 4
  %27 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 154, ptr %line18, align 8
  %28 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.4, ptr %file19, align 4
  %29 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message20, align 8
  %30 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va22, align 4
  %31 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %32 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.5, ptr %operation24, align 4
  %33 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.9, ptr %left_text25, align 8
  %conv27 = zext i32 %21 to i64
  %34 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv27, ptr %left_value26, align 8
  %35 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.10, ptr %right_text28, align 8
  %conv30 = zext i32 %23 to i64
  %36 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp32 = icmp eq i32 %21, %23
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion39) #5
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %4, align 4, !annotation !63
  %38 = ptrtoint ptr %__assertion39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %test, ptr %__assertion39, align 4
  %39 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %type42, align 4
  %40 = ptrtoint ptr %line43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 155, ptr %line43, align 4
  %41 = ptrtoint ptr %file44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.4, ptr %file44, align 4
  %42 = ptrtoint ptr %message45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %message45, align 4
  %43 = ptrtoint ptr %va47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %va47, align 4
  %44 = ptrtoint ptr %format48 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @kunit_unary_assert_format, ptr %format48, align 4
  %45 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.11, ptr %condition, align 4
  %46 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %expected_true, align 4
  %47 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %found, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool = icmp ne i8 %48, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion39, i1 noundef zeroext %tobool, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion39) #5
  %inc = add nuw nsw i32 %i.0192, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call55 = call i32 @linear_range_get_selector_high(ptr noundef nonnull @testr, i32 noundef 51, ptr noundef nonnull %sel, ptr noundef nonnull %found) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion60) #5
  %49 = getelementptr inbounds i8, ptr %__assertion60, i32 32
  %50 = call ptr @memset(ptr %49, i32 255, i32 24)
  %51 = ptrtoint ptr %__assertion60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion60, align 8
  %type63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 1
  %52 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type63, align 4
  %line64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 2
  %53 = ptrtoint ptr %line64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 160, ptr %line64, align 8
  %file65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 3
  %54 = ptrtoint ptr %file65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.4, ptr %file65, align 4
  %message66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4
  %55 = ptrtoint ptr %message66 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message66, align 8
  %va68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %va68 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va68, align 4
  %format69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 5
  %57 = ptrtoint ptr %format69 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_assert_format, ptr %format69, align 8
  %operation70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 1
  %58 = ptrtoint ptr %operation70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.12, ptr %operation70, align 4
  %left_text71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 2
  %59 = ptrtoint ptr %left_text71 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.7, ptr %left_text71, align 8
  %left_value72 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 3
  %conv73 = sext i32 %call55 to i64
  %60 = ptrtoint ptr %left_value72 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv73, ptr %left_value72, align 8
  %right_text74 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 4
  %61 = ptrtoint ptr %right_text74 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.8, ptr %right_text74, align 8
  %right_value75 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 5
  %62 = ptrtoint ptr %right_value75 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %right_value75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55)
  %cmp78 = icmp slt i32 %call55, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion60, i1 noundef zeroext %cmp78, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion60) #5
  %call84 = call i32 @linear_range_get_selector_high(ptr noundef nonnull @testr, i32 noundef 9, ptr noundef nonnull %sel, ptr noundef nonnull %found) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion89) #5
  %63 = getelementptr inbounds i8, ptr %__assertion89, i32 32
  %64 = call ptr @memset(ptr %63, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion89 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion89, align 8
  %type92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion89, i32 0, i32 1
  %66 = ptrtoint ptr %type92 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type92, align 4
  %line93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion89, i32 0, i32 2
  %67 = ptrtoint ptr %line93 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 164, ptr %line93, align 8
  %file94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion89, i32 0, i32 3
  %68 = ptrtoint ptr %file94 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.4, ptr %file94, align 4
  %message95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion89, i32 0, i32 4
  %69 = ptrtoint ptr %message95 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message95, align 8
  %va97 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion89, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va97 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va97, align 4
  %format98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion89, i32 0, i32 5
  %71 = ptrtoint ptr %format98 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format98, align 8
  %operation99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion89, i32 0, i32 1
  %72 = ptrtoint ptr %operation99 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.5, ptr %operation99, align 4
  %left_text100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion89, i32 0, i32 2
  %73 = ptrtoint ptr %left_text100 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.8, ptr %left_text100, align 8
  %left_value101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion89, i32 0, i32 3
  %74 = ptrtoint ptr %left_value101 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %left_value101, align 8
  %right_text103 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion89, i32 0, i32 4
  %75 = ptrtoint ptr %right_text103 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.7, ptr %right_text103, align 8
  %right_value104 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion89, i32 0, i32 5
  %conv105 = sext i32 %call84 to i64
  %76 = ptrtoint ptr %right_value104 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv105, ptr %right_value104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp107 = icmp eq i32 %call84, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion89, i1 noundef zeroext %cmp107, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion89) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion114) #5
  %77 = getelementptr inbounds i8, ptr %__assertion114, i32 32
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %77, align 4, !annotation !63
  %79 = ptrtoint ptr %__assertion114 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion114, align 4
  %type117 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 1
  %80 = ptrtoint ptr %type117 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type117, align 4
  %line118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 2
  %81 = ptrtoint ptr %line118 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 165, ptr %line118, align 4
  %file119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 3
  %82 = ptrtoint ptr %file119 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.4, ptr %file119, align 4
  %message120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 4
  %83 = ptrtoint ptr %message120 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message120, align 4
  %va122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va122 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va122, align 4
  %format123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 5
  %85 = ptrtoint ptr %format123 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_unary_assert_format, ptr %format123, align 4
  %condition124 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion114, i32 0, i32 1
  %86 = ptrtoint ptr %condition124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.11, ptr %condition124, align 4
  %expected_true125 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion114, i32 0, i32 2
  %87 = ptrtoint ptr %expected_true125 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %expected_true125, align 4
  %88 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %found, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp132 = icmp eq i8 %89, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion114, i1 noundef zeroext %cmp132, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion114) #5
  %90 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sel, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion140) #5
  %92 = getelementptr inbounds i8, ptr %__assertion140, i32 32
  %93 = call ptr @memset(ptr %92, i32 255, i32 24)
  %94 = ptrtoint ptr %__assertion140 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %test, ptr %__assertion140, align 8
  %type143 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 1
  %95 = ptrtoint ptr %type143 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %type143, align 4
  %line144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 2
  %96 = ptrtoint ptr %line144 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 166, ptr %line144, align 8
  %file145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 3
  %97 = ptrtoint ptr %file145 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.4, ptr %file145, align 4
  %message146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 4
  %98 = ptrtoint ptr %message146 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %message146, align 8
  %va148 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %va148 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %va148, align 4
  %format149 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 5
  %100 = ptrtoint ptr %format149 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @kunit_binary_assert_format, ptr %format149, align 8
  %operation150 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 1
  %101 = ptrtoint ptr %operation150 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.5, ptr %operation150, align 4
  %left_text151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 2
  %102 = ptrtoint ptr %left_text151 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.9, ptr %left_text151, align 8
  %left_value152 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 3
  %conv153 = zext i32 %91 to i64
  %103 = ptrtoint ptr %left_value152 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv153, ptr %left_value152, align 8
  %right_text154 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 4
  %104 = ptrtoint ptr %right_text154 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.13, ptr %right_text154, align 8
  %right_value155 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 5
  %105 = ptrtoint ptr %right_value155 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 2, ptr %right_value155, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp158 = icmp eq i32 %91, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion140, i1 noundef zeroext %cmp158, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion140) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @range_test_get_selector_low(ptr noundef %test) #0 align 64 {
entry:
  %sel = alloca i32, align 4
  %found = alloca i8, align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion39 = alloca %struct.kunit_unary_assert, align 4
  %__assertion65 = alloca %struct.kunit_binary_assert, align 8
  %__assertion94 = alloca %struct.kunit_binary_assert, align 8
  %__assertion119 = alloca %struct.kunit_unary_assert, align 4
  %__assertion149 = alloca %struct.kunit_binary_assert, align 8
  %__assertion177 = alloca %struct.kunit_binary_assert, align 8
  %__assertion202 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel) #5
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sel, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found) #5
  %1 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %found, align 1, !annotation !63
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %type42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 1
  %line43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 2
  %file44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 3
  %message45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4
  %va47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4, i32 1
  %format48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 5
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion39, i32 0, i32 1
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion39, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %4 = getelementptr inbounds i8, ptr %__assertion39, i32 32
  br label %for.body

for.cond55.preheader:                             ; preds = %for.body
  %type68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 1
  %line69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 2
  %file70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 3
  %message71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 4
  %va73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 4, i32 1
  %format74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 5
  %operation75 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 1
  %left_text76 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 2
  %left_value77 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 3
  %right_text79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 4
  %right_value80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 5
  %type97 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion94, i32 0, i32 1
  %line98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion94, i32 0, i32 2
  %file99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion94, i32 0, i32 3
  %message100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion94, i32 0, i32 4
  %va102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion94, i32 0, i32 4, i32 1
  %format103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion94, i32 0, i32 5
  %operation104 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion94, i32 0, i32 1
  %left_text105 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion94, i32 0, i32 2
  %left_value106 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion94, i32 0, i32 3
  %right_text108 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion94, i32 0, i32 4
  %right_value109 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion94, i32 0, i32 5
  %type122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 1
  %line123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 2
  %file124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 3
  %message125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 4
  %va127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 4, i32 1
  %format128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 5
  %condition129 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion119, i32 0, i32 1
  %expected_true130 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion119, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %__assertion65, i32 32
  %6 = getelementptr inbounds i8, ptr %__assertion94, i32 32
  %7 = getelementptr inbounds i8, ptr %__assertion119, i32 32
  br label %for.body58

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0262 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr @range1_vals, i32 0, i32 %i.0262
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call = call i32 @linear_range_get_selector_low_array(ptr noundef nonnull @testr, i32 noundef 2, i32 noundef %9, ptr noundef nonnull %sel, ptr noundef nonnull %found) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %10 = call ptr @memset(ptr %2, i32 255, i32 24)
  %11 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion, align 8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type, align 4
  %13 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 187, ptr %line, align 8
  %14 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.4, ptr %file, align 4
  %15 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message, align 8
  %16 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %18 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.5, ptr %operation, align 4
  %19 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.8, ptr %left_text, align 8
  %20 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %left_value, align 8
  %21 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.7, ptr %right_text, align 8
  %conv3 = sext i32 %call to i64
  %22 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp5, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %23 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sel, align 4
  %arrayidx12 = getelementptr [5 x i32], ptr @range1_sels, i32 0, i32 %i.0262
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx12, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %27 = call ptr @memset(ptr %3, i32 255, i32 24)
  %28 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion14, align 8
  %29 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %type17, align 4
  %30 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 188, ptr %line18, align 8
  %31 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.4, ptr %file19, align 4
  %32 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %message20, align 8
  %33 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %va22, align 4
  %34 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %35 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.5, ptr %operation24, align 4
  %36 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.9, ptr %left_text25, align 8
  %conv27 = zext i32 %24 to i64
  %37 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv27, ptr %left_value26, align 8
  %38 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.10, ptr %right_text28, align 8
  %conv30 = zext i32 %26 to i64
  %39 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp32 = icmp eq i32 %24, %26
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion39) #5
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %4, align 4, !annotation !63
  %41 = ptrtoint ptr %__assertion39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion39, align 4
  %42 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type42, align 4
  %43 = ptrtoint ptr %line43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 189, ptr %line43, align 4
  %44 = ptrtoint ptr %file44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.4, ptr %file44, align 4
  %45 = ptrtoint ptr %message45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message45, align 4
  %46 = ptrtoint ptr %va47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va47, align 4
  %47 = ptrtoint ptr %format48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_unary_assert_format, ptr %format48, align 4
  %48 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.11, ptr %condition, align 4
  %49 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %expected_true, align 4
  %50 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %found, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool = icmp ne i8 %51, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion39, i1 noundef zeroext %tobool, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion39) #5
  %inc = add nuw nsw i32 %i.0262, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond55.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.cond55.preheader
  %i.1263 = phi i32 [ 0, %for.cond55.preheader ], [ %inc142, %for.body58.for.body58_crit_edge ]
  %arrayidx59 = getelementptr [4 x i32], ptr @range2_vals, i32 0, i32 %i.1263
  %52 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx59, align 4
  %call60 = call i32 @linear_range_get_selector_low_array(ptr noundef nonnull @testr, i32 noundef 2, i32 noundef %53, ptr noundef nonnull %sel, ptr noundef nonnull %found) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion65) #5
  %54 = call ptr @memset(ptr %5, i32 255, i32 24)
  %55 = ptrtoint ptr %__assertion65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion65, align 8
  %56 = ptrtoint ptr %type68 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type68, align 4
  %57 = ptrtoint ptr %line69 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 195, ptr %line69, align 8
  %58 = ptrtoint ptr %file70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.4, ptr %file70, align 4
  %59 = ptrtoint ptr %message71 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message71, align 8
  %60 = ptrtoint ptr %va73 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va73, align 4
  %61 = ptrtoint ptr %format74 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_assert_format, ptr %format74, align 8
  %62 = ptrtoint ptr %operation75 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.5, ptr %operation75, align 4
  %63 = ptrtoint ptr %left_text76 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.8, ptr %left_text76, align 8
  %64 = ptrtoint ptr %left_value77 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %left_value77, align 8
  %65 = ptrtoint ptr %right_text79 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.7, ptr %right_text79, align 8
  %conv81 = sext i32 %call60 to i64
  %66 = ptrtoint ptr %right_value80 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv81, ptr %right_value80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp83 = icmp eq i32 %call60, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion65, i1 noundef zeroext %cmp83, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion65) #5
  %67 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sel, align 4
  %arrayidx92 = getelementptr [4 x i32], ptr @range2_sels, i32 0, i32 %i.1263
  %69 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx92, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion94) #5
  %71 = call ptr @memset(ptr %6, i32 255, i32 24)
  %72 = ptrtoint ptr %__assertion94 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %test, ptr %__assertion94, align 8
  %73 = ptrtoint ptr %type97 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %type97, align 4
  %74 = ptrtoint ptr %line98 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 196, ptr %line98, align 8
  %75 = ptrtoint ptr %file99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.4, ptr %file99, align 4
  %76 = ptrtoint ptr %message100 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %message100, align 8
  %77 = ptrtoint ptr %va102 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %va102, align 4
  %78 = ptrtoint ptr %format103 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @kunit_binary_assert_format, ptr %format103, align 8
  %79 = ptrtoint ptr %operation104 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.5, ptr %operation104, align 4
  %80 = ptrtoint ptr %left_text105 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.9, ptr %left_text105, align 8
  %conv107 = zext i32 %68 to i64
  %81 = ptrtoint ptr %left_value106 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv107, ptr %left_value106, align 8
  %82 = ptrtoint ptr %right_text108 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.14, ptr %right_text108, align 8
  %conv110 = zext i32 %70 to i64
  %83 = ptrtoint ptr %right_value109 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv110, ptr %right_value109, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp112 = icmp eq i32 %68, %70
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion94, i1 noundef zeroext %cmp112, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion94) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion119) #5
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %7, align 4, !annotation !63
  %85 = ptrtoint ptr %__assertion119 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %test, ptr %__assertion119, align 4
  %86 = ptrtoint ptr %type122 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %type122, align 4
  %87 = ptrtoint ptr %line123 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 197, ptr %line123, align 4
  %88 = ptrtoint ptr %file124 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.4, ptr %file124, align 4
  %89 = ptrtoint ptr %message125 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %message125, align 4
  %90 = ptrtoint ptr %va127 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %va127, align 4
  %91 = ptrtoint ptr %format128 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @kunit_unary_assert_format, ptr %format128, align 4
  %92 = ptrtoint ptr %condition129 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.11, ptr %condition129, align 4
  %93 = ptrtoint ptr %expected_true130 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %expected_true130, align 4
  %94 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %found, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool132 = icmp ne i8 %95, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion119, i1 noundef zeroext %tobool132, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion119) #5
  %inc142 = add nuw nsw i32 %i.1263, 1
  %exitcond264.not = icmp eq i32 %inc142, 4
  br i1 %exitcond264.not, label %for.end143, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body58

for.end143:                                       ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #4
  %call144 = call i32 @linear_range_get_selector_low_array(ptr noundef nonnull @testr, i32 noundef 2, i32 noundef 251, ptr noundef nonnull %sel, ptr noundef nonnull %found) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion149) #5
  %96 = getelementptr inbounds i8, ptr %__assertion149, i32 32
  %97 = call ptr @memset(ptr %96, i32 255, i32 24)
  %98 = ptrtoint ptr %__assertion149 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %test, ptr %__assertion149, align 8
  %type152 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 1
  %99 = ptrtoint ptr %type152 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %type152, align 4
  %line153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 2
  %100 = ptrtoint ptr %line153 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 208, ptr %line153, align 8
  %file154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 3
  %101 = ptrtoint ptr %file154 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.4, ptr %file154, align 4
  %message155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4
  %102 = ptrtoint ptr %message155 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %message155, align 8
  %va157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %va157 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %va157, align 4
  %format158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 5
  %104 = ptrtoint ptr %format158 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @kunit_binary_assert_format, ptr %format158, align 8
  %operation159 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 1
  %105 = ptrtoint ptr %operation159 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.5, ptr %operation159, align 4
  %left_text160 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 2
  %106 = ptrtoint ptr %left_text160 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.8, ptr %left_text160, align 8
  %left_value161 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 3
  %107 = ptrtoint ptr %left_value161 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 0, ptr %left_value161, align 8
  %right_text163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 4
  %108 = ptrtoint ptr %right_text163 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.7, ptr %right_text163, align 8
  %right_value164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 5
  %conv165 = sext i32 %call144 to i64
  %109 = ptrtoint ptr %right_value164 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv165, ptr %right_value164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp167 = icmp eq i32 %call144, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion149, i1 noundef zeroext %cmp167, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion149) #5
  %110 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sel, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion177) #5
  %112 = getelementptr inbounds i8, ptr %__assertion177, i32 32
  %113 = call ptr @memset(ptr %112, i32 255, i32 24)
  %114 = ptrtoint ptr %__assertion177 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %test, ptr %__assertion177, align 8
  %type180 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion177, i32 0, i32 1
  %115 = ptrtoint ptr %type180 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %type180, align 4
  %line181 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion177, i32 0, i32 2
  %116 = ptrtoint ptr %line181 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 209, ptr %line181, align 8
  %file182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion177, i32 0, i32 3
  %117 = ptrtoint ptr %file182 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.4, ptr %file182, align 4
  %message183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion177, i32 0, i32 4
  %118 = ptrtoint ptr %message183 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %message183, align 8
  %va185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion177, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %va185 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %va185, align 4
  %format186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion177, i32 0, i32 5
  %120 = ptrtoint ptr %format186 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @kunit_binary_assert_format, ptr %format186, align 8
  %operation187 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion177, i32 0, i32 1
  %121 = ptrtoint ptr %operation187 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.5, ptr %operation187, align 4
  %left_text188 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion177, i32 0, i32 2
  %122 = ptrtoint ptr %left_text188 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.9, ptr %left_text188, align 8
  %left_value189 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion177, i32 0, i32 3
  %conv190 = zext i32 %111 to i64
  %123 = ptrtoint ptr %left_value189 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv190, ptr %left_value189, align 8
  %right_text191 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion177, i32 0, i32 4
  %124 = ptrtoint ptr %right_text191 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.15, ptr %right_text191, align 8
  %right_value192 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion177, i32 0, i32 5
  %125 = ptrtoint ptr %right_value192 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 10, ptr %right_value192, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %111)
  %cmp195 = icmp eq i32 %111, 10
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion177, i1 noundef zeroext %cmp195, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion177) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion202) #5
  %126 = getelementptr inbounds i8, ptr %__assertion202, i32 32
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %126, align 4, !annotation !63
  %128 = ptrtoint ptr %__assertion202 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %test, ptr %__assertion202, align 4
  %type205 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 1
  %129 = ptrtoint ptr %type205 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %type205, align 4
  %line206 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 2
  %130 = ptrtoint ptr %line206 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 210, ptr %line206, align 4
  %file207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 3
  %131 = ptrtoint ptr %file207 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @.str.4, ptr %file207, align 4
  %message208 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 4
  %132 = ptrtoint ptr %message208 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %message208, align 4
  %va210 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %va210 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %va210, align 4
  %format211 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 5
  %134 = ptrtoint ptr %format211 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @kunit_unary_assert_format, ptr %format211, align 4
  %condition212 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion202, i32 0, i32 1
  %135 = ptrtoint ptr %condition212 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.11, ptr %condition212, align 4
  %expected_true213 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion202, i32 0, i32 2
  %136 = ptrtoint ptr %expected_true213 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %expected_true213, align 4
  %137 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %found, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp220 = icmp eq i8 %138, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion202, i1 noundef zeroext %cmp220, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion202) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @range_test_get_value(ptr noundef %test) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion48 = alloca %struct.kunit_binary_assert, align 8
  %__assertion77 = alloca %struct.kunit_binary_assert, align 8
  %__assertion109 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !63
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %1 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %2 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  br label %for.body

for.cond38.preheader:                             ; preds = %for.body
  %type51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 1
  %line52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 2
  %file53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 3
  %message54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4
  %va56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4, i32 1
  %format57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 5
  %operation58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion48, i32 0, i32 1
  %left_text59 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion48, i32 0, i32 2
  %left_value60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion48, i32 0, i32 3
  %right_text62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion48, i32 0, i32 4
  %right_value63 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion48, i32 0, i32 5
  %type80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 1
  %line81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 2
  %file82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 3
  %message83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 4
  %va85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 4, i32 1
  %format86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 5
  %operation87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 1
  %left_text88 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 2
  %left_value89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 3
  %right_text91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 4
  %right_value92 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 5
  %3 = getelementptr inbounds i8, ptr %__assertion48, i32 32
  %4 = getelementptr inbounds i8, ptr %__assertion77, i32 32
  br label %for.body41

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0163 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr @range1_sels, i32 0, i32 %i.0163
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call = call i32 @linear_range_get_value_array(ptr noundef nonnull @testr, i32 noundef 2, i32 noundef %6, ptr noundef nonnull %val) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %7 = call ptr @memset(ptr %1, i32 255, i32 24)
  %8 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %test, ptr %__assertion, align 8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 131, ptr %line, align 8
  %11 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.4, ptr %file, align 4
  %12 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %message, align 8
  %13 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %va, align 4
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %15 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.5, ptr %operation, align 4
  %16 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.8, ptr %left_text, align 8
  %17 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %left_value, align 8
  %18 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.7, ptr %right_text, align 8
  %conv3 = sext i32 %call to i64
  %19 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp5, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %arrayidx12 = getelementptr [5 x i32], ptr @range1_vals, i32 0, i32 %i.0163
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %24 = call ptr @memset(ptr %2, i32 255, i32 24)
  %25 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion14, align 8
  %26 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type17, align 4
  %27 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 132, ptr %line18, align 8
  %28 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.4, ptr %file19, align 4
  %29 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message20, align 8
  %30 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va22, align 4
  %31 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %32 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.5, ptr %operation24, align 4
  %33 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.16, ptr %left_text25, align 8
  %conv27 = zext i32 %21 to i64
  %34 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv27, ptr %left_value26, align 8
  %35 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.17, ptr %right_text28, align 8
  %conv30 = zext i32 %23 to i64
  %36 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp32 = icmp eq i32 %21, %23
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond38.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.cond38.preheader
  %i.1164 = phi i32 [ 0, %for.cond38.preheader ], [ %inc102, %for.body41.for.body41_crit_edge ]
  %arrayidx42 = getelementptr [4 x i32], ptr @range2_sels, i32 0, i32 %i.1164
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx42, align 4
  %call43 = call i32 @linear_range_get_value_array(ptr noundef nonnull @testr, i32 noundef 2, i32 noundef %38, ptr noundef nonnull %val) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion48) #5
  %39 = call ptr @memset(ptr %3, i32 255, i32 24)
  %40 = ptrtoint ptr %__assertion48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion48, align 8
  %41 = ptrtoint ptr %type51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type51, align 4
  %42 = ptrtoint ptr %line52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 137, ptr %line52, align 8
  %43 = ptrtoint ptr %file53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.4, ptr %file53, align 4
  %44 = ptrtoint ptr %message54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message54, align 8
  %45 = ptrtoint ptr %va56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va56, align 4
  %46 = ptrtoint ptr %format57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_assert_format, ptr %format57, align 8
  %47 = ptrtoint ptr %operation58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.5, ptr %operation58, align 4
  %48 = ptrtoint ptr %left_text59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.8, ptr %left_text59, align 8
  %49 = ptrtoint ptr %left_value60 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %left_value60, align 8
  %50 = ptrtoint ptr %right_text62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.7, ptr %right_text62, align 8
  %conv64 = sext i32 %call43 to i64
  %51 = ptrtoint ptr %right_value63 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv64, ptr %right_value63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp66 = icmp eq i32 %call43, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion48, i1 noundef zeroext %cmp66, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion48) #5
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  %arrayidx75 = getelementptr [4 x i32], ptr @range2_vals, i32 0, i32 %i.1164
  %54 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx75, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion77) #5
  %56 = call ptr @memset(ptr %4, i32 255, i32 24)
  %57 = ptrtoint ptr %__assertion77 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion77, align 8
  %58 = ptrtoint ptr %type80 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type80, align 4
  %59 = ptrtoint ptr %line81 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 138, ptr %line81, align 8
  %60 = ptrtoint ptr %file82 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.4, ptr %file82, align 4
  %61 = ptrtoint ptr %message83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message83, align 8
  %62 = ptrtoint ptr %va85 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va85, align 4
  %63 = ptrtoint ptr %format86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_binary_assert_format, ptr %format86, align 8
  %64 = ptrtoint ptr %operation87 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.5, ptr %operation87, align 4
  %65 = ptrtoint ptr %left_text88 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.16, ptr %left_text88, align 8
  %conv90 = zext i32 %53 to i64
  %66 = ptrtoint ptr %left_value89 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv90, ptr %left_value89, align 8
  %67 = ptrtoint ptr %right_text91 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.18, ptr %right_text91, align 8
  %conv93 = zext i32 %55 to i64
  %68 = ptrtoint ptr %right_value92 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv93, ptr %right_value92, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp95 = icmp eq i32 %53, %55
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion77, i1 noundef zeroext %cmp95, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion77) #5
  %inc102 = add nuw nsw i32 %i.1164, 1
  %exitcond165.not = icmp eq i32 %inc102, 4
  br i1 %exitcond165.not, label %for.end103, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body41

for.end103:                                       ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #4
  %call104 = call i32 @linear_range_get_value_array(ptr noundef nonnull @testr, i32 noundef 2, i32 noundef 11, ptr noundef nonnull %val) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion109) #5
  %69 = getelementptr inbounds i8, ptr %__assertion109, i32 32
  %70 = call ptr @memset(ptr %69, i32 255, i32 24)
  %71 = ptrtoint ptr %__assertion109 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %test, ptr %__assertion109, align 8
  %type112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion109, i32 0, i32 1
  %72 = ptrtoint ptr %type112 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %type112, align 4
  %line113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion109, i32 0, i32 2
  %73 = ptrtoint ptr %line113 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 141, ptr %line113, align 8
  %file114 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion109, i32 0, i32 3
  %74 = ptrtoint ptr %file114 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.4, ptr %file114, align 4
  %message115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion109, i32 0, i32 4
  %75 = ptrtoint ptr %message115 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %message115, align 8
  %va117 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion109, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %va117 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %va117, align 4
  %format118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion109, i32 0, i32 5
  %77 = ptrtoint ptr %format118 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @kunit_binary_assert_format, ptr %format118, align 8
  %operation119 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion109, i32 0, i32 1
  %78 = ptrtoint ptr %operation119 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.19, ptr %operation119, align 4
  %left_text120 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion109, i32 0, i32 2
  %79 = ptrtoint ptr %left_text120 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.8, ptr %left_text120, align 8
  %left_value121 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion109, i32 0, i32 3
  %80 = ptrtoint ptr %left_value121 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %left_value121, align 8
  %right_text123 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion109, i32 0, i32 4
  %81 = ptrtoint ptr %right_text123 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.7, ptr %right_text123, align 8
  %right_value124 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion109, i32 0, i32 5
  %conv125 = sext i32 %call104 to i64
  %82 = ptrtoint ptr %right_value124 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv125, ptr %right_value124, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp127 = icmp ne i32 %call104, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion109, i1 noundef zeroext %cmp127, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion109) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_values_in_range_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_selector_high(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_selector_low_array(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_value_array(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../lib/test_linear_ranges.c", i32 226, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../lib/test_linear_ranges.c", i32 228, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @range_test_module, !7, !"range_test_module", i1 false, i1 false}
!7 = !{!"../lib/test_linear_ranges.c", i32 221, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/test_linear_ranges.c", i32 214, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/test_linear_ranges.c", i32 215, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_linear_ranges.c", i32 216, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/test_linear_ranges.c", i32 217, i32 2}
!16 = !{ptr @range_test_cases, !17, !"range_test_cases", i1 false, i1 false}
!17 = !{!"../lib/test_linear_ranges.c", i32 213, i32 26}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/test_linear_ranges.c", i32 174, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @testr, !24, !"testr", i1 false, i1 false}
!24 = !{!"../lib/test_linear_ranges.c", i32 109, i32 28}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/test_linear_ranges.c", i32 153, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_linear_ranges.c", i32 154, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/test_linear_ranges.c", i32 155, i32 3}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/test_linear_ranges.c", i32 160, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/test_linear_ranges.c", i32 166, i32 2}
!36 = !{ptr @range1_vals, !37, !"range1_vals", i1 false, i1 false}
!37 = !{!"../lib/test_linear_ranges.c", i32 76, i32 27}
!38 = !{ptr @range1_sels, !39, !"range1_sels", i1 false, i1 false}
!39 = !{!"../lib/test_linear_ranges.c", i32 71, i32 27}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_linear_ranges.c", i32 196, i32 3}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/test_linear_ranges.c", i32 209, i32 2}
!44 = !{ptr @range2_vals, !45, !"range2_vals", i1 false, i1 false}
!45 = !{!"../lib/test_linear_ranges.c", i32 91, i32 27}
!46 = !{ptr @range2_sels, !47, !"range2_sels", i1 false, i1 false}
!47 = !{!"../lib/test_linear_ranges.c", i32 87, i32 27}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_linear_ranges.c", i32 132, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test_linear_ranges.c", i32 138, i32 3}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/test_linear_ranges.c", i32 141, i32 2}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i8 0, i8 2}
