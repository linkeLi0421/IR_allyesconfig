; ModuleID = '/llk/IR_all_yes/lib/test_bits.c_pt.bc'
source_filename = "../lib/test_bits.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @bits_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [29 x i8] c"test_bits.file=lib/test_bits\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [22 x i8] c"test_bits.license=GPL\00", section ".modinfo", align 1
@bits_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"bits-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @bits_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@bits_test_cases = internal global { [4 x %struct.kunit_case], [48 x i8] } { [4 x %struct.kunit_case] [%struct.kunit_case { ptr @genmask_test, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @genmask_ull_test, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @genmask_input_check_test, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"genmask_test\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"genmask_ull_test\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"genmask_input_check_test\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/test_bits.c\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1ul\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [237 x i8], [51 x i8] } { [237 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (0)) * 0l)) : (int *)8))), (0) > (0), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (0)) + 1) & (~(((0UL))) >> (32 - 1 - (0)))))\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3ul\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [237 x i8], [51 x i8] } { [237 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (1)) * 0l)) : (int *)8))), (0) > (1), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (0)) + 1) & (~(((0UL))) >> (32 - 1 - (1)))))\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6ul\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [237 x i8], [51 x i8] } { [237 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((1) > (2)) * 0l)) : (int *)8))), (1) > (2), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (1)) + 1) & (~(((0UL))) >> (32 - 1 - (2)))))\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0xFFFFFFFFul\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [240 x i8], [48 x i8] } { [240 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (31)) * 0l)) : (int *)8))), (0) > (31), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (0)) + 1) & (~(((0UL))) >> (32 - 1 - (31)))))\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1ull\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [240 x i8], [48 x i8] } { [240 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (0)) * 0l)) : (int *)8))), (0) > (0), 0))); })))) + (((~(((0ULL)))) - ((((1ULL))) << (0)) + 1) & (~(((0ULL))) >> (64 - 1 - (0)))))\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3ull\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [240 x i8], [48 x i8] } { [240 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (1)) * 0l)) : (int *)8))), (0) > (1), 0))); })))) + (((~(((0ULL)))) - ((((1ULL))) << (0)) + 1) & (~(((0ULL))) >> (64 - 1 - (1)))))\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x000000ffffe00000ull\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [246 x i8], [42 x i8] } { [246 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((21) > (39)) * 0l)) : (int *)8))), (21) > (39), 0))); })))) + (((~(((0ULL)))) - ((((1ULL))) << (21)) + 1) & (~(((0ULL))) >> (64 - 1 - (39)))))\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0xffffffffffffffffull\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (63)) * 0l)) : (int *)8))), (0) > (63), 0))); })))) + (((~(((0ULL)))) - ((((1ULL))) << (0)) + 1) & (~(((0ULL))) >> (64 - 1 - (63)))))\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (x)) * 0l)) : (int *)8))), (0) > (x), 0))); }))))\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((x) > (0)) * 0l)) : (int *)8))), (x) > (0), 0))); }))))\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((y) > (x)) * 0l)) : (int *)8))), (y) > (x), 0))); }))))\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (z)) * 0l)) : (int *)8))), (0) > (z), 0))); }))))\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((z) > (0)) * 0l)) : (int *)8))), (z) > (0), 0))); }))))\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((w) > (z)) * 0l)) : (int *)8))), (w) > (z), 0))); }))))\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((1) > (1)) * 0l)) : (int *)8))), (1) > (1), 0))); }))))\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"(((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((21) > (39)) * 0l)) : (int *)8))), (21) > (39), 0))); }))))\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"bits_test_suite\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 69, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"bits_test_cases\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 62, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 63, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 64, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 65, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 12, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 13, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 14, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 15, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 29, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 30, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 31, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 32, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 48, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 49, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 50, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 52, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 53, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 54, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 57, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [19 x i8] c"../lib/test_bits.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 58, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @bits_test_suite, ptr @bits_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_test_cases to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 237, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 237, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 237, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 246, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @genmask_test(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion12 = alloca %struct.kunit_binary_assert, align 8
  %__assertion40 = alloca %struct.kunit_binary_assert, align 8
  %__assertion68 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
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
  store i32 12, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %file, align 4
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
  store ptr @.str.4, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.5, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.6, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion12) #5
  %14 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion12, align 8
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %17 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %18 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13, ptr %line16, align 8
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %19 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.3, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %20 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message18, align 8
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %22 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format21, align 8
  %operation22 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 1
  %23 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.4, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 2
  %24 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.7, ptr %left_text23, align 8
  %left_value24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 3
  %25 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 3, ptr %left_value24, align 8
  %right_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 4
  %26 = ptrtoint ptr %right_text26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.8, ptr %right_text26, align 8
  %right_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 5
  %27 = ptrtoint ptr %right_value27 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 3, ptr %right_value27, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion12) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion40) #5
  %28 = getelementptr inbounds i8, ptr %__assertion40, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion40, align 8
  %type43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 1
  %31 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type43, align 4
  %line44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 2
  %32 = ptrtoint ptr %line44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 14, ptr %line44, align 8
  %file45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 3
  %33 = ptrtoint ptr %file45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.3, ptr %file45, align 4
  %message46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4
  %34 = ptrtoint ptr %message46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message46, align 8
  %va48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va48, align 4
  %format49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 5
  %36 = ptrtoint ptr %format49 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format49, align 8
  %operation50 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 1
  %37 = ptrtoint ptr %operation50 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.4, ptr %operation50, align 4
  %left_text51 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 2
  %38 = ptrtoint ptr %left_text51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.9, ptr %left_text51, align 8
  %left_value52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 3
  %39 = ptrtoint ptr %left_value52 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 6, ptr %left_value52, align 8
  %right_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 4
  %40 = ptrtoint ptr %right_text54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.10, ptr %right_text54, align 8
  %right_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 5
  %41 = ptrtoint ptr %right_value55 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 6, ptr %right_value55, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion40, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion40) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion68) #5
  %42 = getelementptr inbounds i8, ptr %__assertion68, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion68, align 8
  %type71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 1
  %45 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type71, align 4
  %line72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 2
  %46 = ptrtoint ptr %line72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 15, ptr %line72, align 8
  %file73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 3
  %47 = ptrtoint ptr %file73 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.3, ptr %file73, align 4
  %message74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4
  %48 = ptrtoint ptr %message74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message74, align 8
  %va76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va76 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va76, align 4
  %format77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 5
  %50 = ptrtoint ptr %format77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format77, align 8
  %operation78 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 1
  %51 = ptrtoint ptr %operation78 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.4, ptr %operation78, align 4
  %left_text79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 2
  %52 = ptrtoint ptr %left_text79 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.11, ptr %left_text79, align 8
  %left_value80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 3
  %53 = ptrtoint ptr %left_value80 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 4294967295, ptr %left_value80, align 8
  %right_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 4
  %54 = ptrtoint ptr %right_text82 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.12, ptr %right_text82, align 8
  %right_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 5
  %55 = ptrtoint ptr %right_value83 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 4294967295, ptr %right_value83, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion68, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion68) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @genmask_ull_test(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion10 = alloca %struct.kunit_binary_assert, align 8
  %__assertion35 = alloca %struct.kunit_binary_assert, align 8
  %__assertion60 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
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
  store i32 29, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %file, align 4
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
  store ptr @.str.4, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.14, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion10) #5
  %14 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion10, align 8
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %17 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %18 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30, ptr %line14, align 8
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %19 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.3, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %20 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message16, align 8
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %22 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format19, align 8
  %operation20 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 1
  %23 = ptrtoint ptr %operation20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.4, ptr %operation20, align 4
  %left_text21 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 2
  %24 = ptrtoint ptr %left_text21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.15, ptr %left_text21, align 8
  %left_value22 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 3
  %25 = ptrtoint ptr %left_value22 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 3, ptr %left_value22, align 8
  %right_text23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 4
  %26 = ptrtoint ptr %right_text23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.16, ptr %right_text23, align 8
  %right_value24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 5
  %27 = ptrtoint ptr %right_value24 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 3, ptr %right_value24, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion10) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion35) #5
  %28 = getelementptr inbounds i8, ptr %__assertion35, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion35, align 8
  %type38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 1
  %31 = ptrtoint ptr %type38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type38, align 4
  %line39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 2
  %32 = ptrtoint ptr %line39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 31, ptr %line39, align 8
  %file40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 3
  %33 = ptrtoint ptr %file40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.3, ptr %file40, align 4
  %message41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 4
  %34 = ptrtoint ptr %message41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message41, align 8
  %va43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va43, align 4
  %format44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 5
  %36 = ptrtoint ptr %format44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format44, align 8
  %operation45 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion35, i32 0, i32 1
  %37 = ptrtoint ptr %operation45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.4, ptr %operation45, align 4
  %left_text46 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion35, i32 0, i32 2
  %38 = ptrtoint ptr %left_text46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.17, ptr %left_text46, align 8
  %left_value47 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion35, i32 0, i32 3
  %39 = ptrtoint ptr %left_value47 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1099509530624, ptr %left_value47, align 8
  %right_text48 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion35, i32 0, i32 4
  %40 = ptrtoint ptr %right_text48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.18, ptr %right_text48, align 8
  %right_value49 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion35, i32 0, i32 5
  %41 = ptrtoint ptr %right_value49 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1099509530624, ptr %right_value49, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion35, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion35) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion60) #5
  %42 = getelementptr inbounds i8, ptr %__assertion60, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion60, align 8
  %type63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 1
  %45 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type63, align 4
  %line64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 2
  %46 = ptrtoint ptr %line64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 32, ptr %line64, align 8
  %file65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 3
  %47 = ptrtoint ptr %file65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.3, ptr %file65, align 4
  %message66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4
  %48 = ptrtoint ptr %message66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message66, align 8
  %va68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va68, align 4
  %format69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 5
  %50 = ptrtoint ptr %format69 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format69, align 8
  %operation70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 1
  %51 = ptrtoint ptr %operation70 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.4, ptr %operation70, align 4
  %left_text71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 2
  %52 = ptrtoint ptr %left_text71 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.19, ptr %left_text71, align 8
  %right_text73 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 4
  %53 = ptrtoint ptr %right_text73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.20, ptr %right_text73, align 8
  %right_value74 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 5
  %54 = ptrtoint ptr %right_value74 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 -1, ptr %right_value74, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion60, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion60) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @genmask_input_check_test(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion12 = alloca %struct.kunit_binary_assert, align 8
  %__assertion40 = alloca %struct.kunit_binary_assert, align 8
  %__assertion68 = alloca %struct.kunit_binary_assert, align 8
  %__assertion96 = alloca %struct.kunit_binary_assert, align 8
  %__assertion124 = alloca %struct.kunit_binary_assert, align 8
  %__assertion152 = alloca %struct.kunit_binary_assert, align 8
  %__assertion180 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
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
  store i32 48, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %file, align 4
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
  store ptr @.str.4, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.21, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.22, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion12) #5
  %14 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion12, align 8
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %17 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %18 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 49, ptr %line16, align 8
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %19 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.3, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %20 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message18, align 8
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %22 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format21, align 8
  %operation22 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 1
  %23 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.4, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 2
  %24 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.21, ptr %left_text23, align 8
  %left_value24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 3
  %25 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %left_value24, align 8
  %right_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 4
  %26 = ptrtoint ptr %right_text26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.23, ptr %right_text26, align 8
  %right_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 5
  %27 = ptrtoint ptr %right_value27 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %right_value27, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion12) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion40) #5
  %28 = getelementptr inbounds i8, ptr %__assertion40, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion40, align 8
  %type43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 1
  %31 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type43, align 4
  %line44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 2
  %32 = ptrtoint ptr %line44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 50, ptr %line44, align 8
  %file45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 3
  %33 = ptrtoint ptr %file45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.3, ptr %file45, align 4
  %message46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4
  %34 = ptrtoint ptr %message46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message46, align 8
  %va48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va48, align 4
  %format49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 5
  %36 = ptrtoint ptr %format49 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format49, align 8
  %operation50 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 1
  %37 = ptrtoint ptr %operation50 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.4, ptr %operation50, align 4
  %left_text51 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 2
  %38 = ptrtoint ptr %left_text51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.21, ptr %left_text51, align 8
  %left_value52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 3
  %39 = ptrtoint ptr %left_value52 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %left_value52, align 8
  %right_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 4
  %40 = ptrtoint ptr %right_text54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.24, ptr %right_text54, align 8
  %right_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion40, i32 0, i32 5
  %41 = ptrtoint ptr %right_value55 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %right_value55, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion40, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion40) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion68) #5
  %42 = getelementptr inbounds i8, ptr %__assertion68, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion68, align 8
  %type71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 1
  %45 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type71, align 4
  %line72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 2
  %46 = ptrtoint ptr %line72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 52, ptr %line72, align 8
  %file73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 3
  %47 = ptrtoint ptr %file73 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.3, ptr %file73, align 4
  %message74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4
  %48 = ptrtoint ptr %message74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message74, align 8
  %va76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va76 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va76, align 4
  %format77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 5
  %50 = ptrtoint ptr %format77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format77, align 8
  %operation78 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 1
  %51 = ptrtoint ptr %operation78 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.4, ptr %operation78, align 4
  %left_text79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 2
  %52 = ptrtoint ptr %left_text79 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.21, ptr %left_text79, align 8
  %left_value80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 3
  %53 = ptrtoint ptr %left_value80 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %left_value80, align 8
  %right_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 4
  %54 = ptrtoint ptr %right_text82 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.25, ptr %right_text82, align 8
  %right_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 5
  %55 = ptrtoint ptr %right_value83 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %right_value83, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion68, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion68) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion96) #5
  %56 = getelementptr inbounds i8, ptr %__assertion96, i32 32
  %57 = call ptr @memset(ptr %56, i32 255, i32 24)
  %58 = ptrtoint ptr %__assertion96 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %test, ptr %__assertion96, align 8
  %type99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 1
  %59 = ptrtoint ptr %type99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type99, align 4
  %line100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 2
  %60 = ptrtoint ptr %line100 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 53, ptr %line100, align 8
  %file101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 3
  %61 = ptrtoint ptr %file101 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.3, ptr %file101, align 4
  %message102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 4
  %62 = ptrtoint ptr %message102 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message102, align 8
  %va104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %va104 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va104, align 4
  %format105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 5
  %64 = ptrtoint ptr %format105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_binary_assert_format, ptr %format105, align 8
  %operation106 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 1
  %65 = ptrtoint ptr %operation106 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.4, ptr %operation106, align 4
  %left_text107 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 2
  %66 = ptrtoint ptr %left_text107 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.21, ptr %left_text107, align 8
  %left_value108 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 3
  %67 = ptrtoint ptr %left_value108 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %left_value108, align 8
  %right_text110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 4
  %68 = ptrtoint ptr %right_text110 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.26, ptr %right_text110, align 8
  %right_value111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 5
  %69 = ptrtoint ptr %right_value111 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %right_value111, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion96, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion96) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion124) #5
  %70 = getelementptr inbounds i8, ptr %__assertion124, i32 32
  %71 = call ptr @memset(ptr %70, i32 255, i32 24)
  %72 = ptrtoint ptr %__assertion124 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %test, ptr %__assertion124, align 8
  %type127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 1
  %73 = ptrtoint ptr %type127 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %type127, align 4
  %line128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 2
  %74 = ptrtoint ptr %line128 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 54, ptr %line128, align 8
  %file129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 3
  %75 = ptrtoint ptr %file129 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.3, ptr %file129, align 4
  %message130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4
  %76 = ptrtoint ptr %message130 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %message130, align 8
  %va132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %va132 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %va132, align 4
  %format133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 5
  %78 = ptrtoint ptr %format133 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @kunit_binary_assert_format, ptr %format133, align 8
  %operation134 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 1
  %79 = ptrtoint ptr %operation134 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.4, ptr %operation134, align 4
  %left_text135 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 2
  %80 = ptrtoint ptr %left_text135 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.21, ptr %left_text135, align 8
  %left_value136 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 3
  %81 = ptrtoint ptr %left_value136 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %left_value136, align 8
  %right_text138 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 4
  %82 = ptrtoint ptr %right_text138 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.27, ptr %right_text138, align 8
  %right_value139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 5
  %83 = ptrtoint ptr %right_value139 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %right_value139, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion124, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion124) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion152) #5
  %84 = getelementptr inbounds i8, ptr %__assertion152, i32 32
  %85 = call ptr @memset(ptr %84, i32 255, i32 24)
  %86 = ptrtoint ptr %__assertion152 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %test, ptr %__assertion152, align 8
  %type155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 1
  %87 = ptrtoint ptr %type155 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %type155, align 4
  %line156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 2
  %88 = ptrtoint ptr %line156 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 57, ptr %line156, align 8
  %file157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 3
  %89 = ptrtoint ptr %file157 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.3, ptr %file157, align 4
  %message158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 4
  %90 = ptrtoint ptr %message158 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %message158, align 8
  %va160 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %va160 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %va160, align 4
  %format161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 5
  %92 = ptrtoint ptr %format161 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @kunit_binary_assert_format, ptr %format161, align 8
  %operation162 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 1
  %93 = ptrtoint ptr %operation162 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.4, ptr %operation162, align 4
  %left_text163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 2
  %94 = ptrtoint ptr %left_text163 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.21, ptr %left_text163, align 8
  %left_value164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 3
  %95 = ptrtoint ptr %left_value164 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 0, ptr %left_value164, align 8
  %right_text166 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 4
  %96 = ptrtoint ptr %right_text166 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.28, ptr %right_text166, align 8
  %right_value167 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion152, i32 0, i32 5
  %97 = ptrtoint ptr %right_value167 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 0, ptr %right_value167, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion152, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion152) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion180) #5
  %98 = getelementptr inbounds i8, ptr %__assertion180, i32 32
  %99 = call ptr @memset(ptr %98, i32 255, i32 24)
  %100 = ptrtoint ptr %__assertion180 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %test, ptr %__assertion180, align 8
  %type183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 1
  %101 = ptrtoint ptr %type183 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %type183, align 4
  %line184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 2
  %102 = ptrtoint ptr %line184 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 58, ptr %line184, align 8
  %file185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 3
  %103 = ptrtoint ptr %file185 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.3, ptr %file185, align 4
  %message186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 4
  %104 = ptrtoint ptr %message186 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %message186, align 8
  %va188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %va188 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %va188, align 4
  %format189 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 5
  %106 = ptrtoint ptr %format189 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @kunit_binary_assert_format, ptr %format189, align 8
  %operation190 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 1
  %107 = ptrtoint ptr %operation190 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.4, ptr %operation190, align 4
  %left_text191 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 2
  %108 = ptrtoint ptr %left_text191 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.21, ptr %left_text191, align 8
  %left_value192 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 3
  %109 = ptrtoint ptr %left_value192 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 0, ptr %left_value192, align 8
  %right_text194 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 4
  %110 = ptrtoint ptr %right_text194 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.29, ptr %right_text194, align 8
  %right_value195 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 5
  %111 = ptrtoint ptr %right_value195 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 0, ptr %right_value195, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion180, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion180) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../lib/test_bits.c", i32 73, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../lib/test_bits.c", i32 75, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @bits_test_suite, !7, !"bits_test_suite", i1 false, i1 false}
!7 = !{!"../lib/test_bits.c", i32 69, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/test_bits.c", i32 63, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/test_bits.c", i32 64, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_bits.c", i32 65, i32 2}
!14 = !{ptr @bits_test_cases, !15, !"bits_test_cases", i1 false, i1 false}
!15 = !{!"../lib/test_bits.c", i32 62, i32 26}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/test_bits.c", i32 12, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/test_bits.c", i32 13, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/test_bits.c", i32 14, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_bits.c", i32 15, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/test_bits.c", i32 29, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/test_bits.c", i32 30, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/test_bits.c", i32 31, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/test_bits.c", i32 32, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/test_bits.c", i32 48, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/test_bits.c", i32 49, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/test_bits.c", i32 50, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../lib/test_bits.c", i32 52, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test_bits.c", i32 53, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/test_bits.c", i32 54, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/test_bits.c", i32 57, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test_bits.c", i32 58, i32 2}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
