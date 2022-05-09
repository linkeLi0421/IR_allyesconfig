; ModuleID = '/llk/IR_all_yes/lib/cmdline_kunit.c_pt.bc'
source_filename = "../lib/cmdline_kunit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @cmdline_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [37 x i8] c"cmdline_kunit.file=lib/cmdline_kunit\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [26 x i8] c"cmdline_kunit.license=GPL\00", section ".modinfo", align 1
@cmdline_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"cmdline\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @cmdline_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@cmdline_test_cases = internal global { [5 x %struct.kunit_case], [60 x i8] } { [5 x %struct.kunit_case] [%struct.kunit_case { ptr @cmdline_test_noint, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @cmdline_test_lead_int, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @cmdline_test_tail_int, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @cmdline_test_range, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmdline_test_noint\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cmdline_test_lead_int\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cmdline_test_tail_int\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmdline_test_range\00", [45 x i8] zeroinitializer }, align 32
@cmdline_test_strings = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\22\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22-\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-,\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",-\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+,\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",,\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"''\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\22\22,\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\22,\22\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-\22\22\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Pattern: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/cmdline_kunit.c\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in + offset\00", [20 x i8] zeroinitializer }, align 32
@cmdline_test_values = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 2, i32 3, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 3, i32 1], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%s\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@cmdline_test_range_strings = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-7\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"--7\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-1-2\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7--9\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7-\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-7--9\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7-9,\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"9-7\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5-a\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"a-5\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5-8\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",8-5\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+,1\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-,4\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"-3,0-1,6\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4,-\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" +2\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" -9\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-1,-3,6\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"- 9\00", [28 x i8] zeroinitializer }, align 32
@cmdline_test_range_values = internal constant { <{ <{ i32, i32, [14 x i32] }>, [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, [16 x i32], [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, [16 x i32] }>, [320 x i8] } { <{ <{ i32, i32, [14 x i32] }>, [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, [16 x i32], [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }>, [16 x i32] }> <{ <{ i32, i32, [14 x i32] }> <{ i32 1, i32 -7, [14 x i32] zeroinitializer }>, [16 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 -1, i32 0, i32 1, i32 2, [11 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 7, [14 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 7, [14 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 -7, [14 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 3, i32 7, i32 8, i32 9, [12 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 9, [14 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 5, [14 x i32] zeroinitializer }>, [16 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 5, i32 6, i32 7, i32 8, [11 x i32] zeroinitializer }>, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 -3, i32 0, i32 1, i32 6, [11 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 4, [14 x i32] zeroinitializer }>, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 0, i32 1, i32 -3, i32 6, [11 x i32] zeroinitializer }>, [16 x i32] zeroinitializer }>, [320 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r[0]\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"e[0]\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"in test %u (parsed) expected %d numbers, got %d\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r[i]\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"e[i]\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"in test %u at %u\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"in test %u (validated) expected %d numbers, got %d\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"((void *)0)\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"in test %u at %u out of bound\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"cmdline_test_suite\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 150, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"cmdline_test_cases\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 142, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 143, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 144, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 145, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 146, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"cmdline_test_strings\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 11, i32 20 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 47 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 12, i32 56 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 47 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 13, i32 56 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 43, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 50, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 51, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"cmdline_test_values\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 16, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 79, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 97, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"cmdline_test_range_strings\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 23, i32 20 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 24, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 24, i32 9 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 24, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 24, i32 30 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 25, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 25, i32 9 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 25, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 25, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 26, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 26, i32 9 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 26, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 26, i32 30 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 27, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 27, i32 9 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 27, i32 18 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 27, i32 30 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 28, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 28, i32 9 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 28, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 28, i32 30 }
@___asan_gen_.222 = private unnamed_addr constant [26 x i8] c"cmdline_test_range_values\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 31, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 116, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 119, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 123, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [23 x i8] c"../lib/cmdline_kunit.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 127, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @cmdline_test_suite, ptr @cmdline_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cmdline_test_strings, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @cmdline_test_values, ptr @.str.27, ptr @.str.28, ptr @cmdline_test_range_strings, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @cmdline_test_range_values, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_test_cases to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_test_strings to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_test_values to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_test_range_strings to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_test_range_values to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdline_test_noint(ptr noundef %test) #0 align 64 {
entry:
  %out.i = alloca ptr, align 4
  %dummy.i = alloca i32, align 4
  %__assertion.i = alloca %struct.kunit_binary_assert, align 8
  %__assertion13.i = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = getelementptr inbounds i8, ptr %__assertion.i, i32 32
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %operation.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 1
  %left_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 3
  %right_text.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 4
  %right_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 5
  %type16.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 1
  %line17.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 2
  %file18.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 3
  %message19.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 4
  %va21.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 4, i32 1
  %format22.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 5
  %operation23.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 1
  %left_text24.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 2
  %left_value25.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 3
  %right_text26.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 4
  %right_value27.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @cmdline_test_strings, i32 0, i32 %i.0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %4)
  %cmp = icmp eq i8 %4, 45
  %lnot.ext = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i) #7
  %5 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %out.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #7
  %6 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dummy.i, align 4, !annotation !134
  %call.i = call i32 @get_option(ptr noundef nonnull %out.i, ptr noundef nonnull %dummy.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion.i) #7
  %7 = call ptr @memset(ptr %0, i32 255, i32 24)
  %8 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %test, ptr %__assertion.i, align 8
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type.i, align 4
  %10 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50, ptr %line.i, align 8
  %11 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.21, ptr %file.i, align 4
  %12 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %message.i, align 8
  %13 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %va.i, align 4
  %14 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @kunit_binary_assert_format, ptr %format.i, align 8
  %15 = ptrtoint ptr %operation.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.22, ptr %operation.i, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.23, ptr %0, align 8
  %conv.i = sext i32 %call.i to i64
  %17 = ptrtoint ptr %left_value.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv.i, ptr %left_value.i, align 8
  %18 = ptrtoint ptr %right_text.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.24, ptr %right_text.i, align 8
  %19 = ptrtoint ptr %right_value.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %right_value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %cmp.i, ptr noundef nonnull @.str.20, ptr noundef %2) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion.i) #7
  %20 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %lnot.ext
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion13.i) #7
  %22 = ptrtoint ptr %__assertion13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion13.i, align 4
  %23 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type16.i, align 4
  %24 = ptrtoint ptr %line17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 51, ptr %line17.i, align 4
  %25 = ptrtoint ptr %file18.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.21, ptr %file18.i, align 4
  %26 = ptrtoint ptr %message19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message19.i, align 4
  %27 = ptrtoint ptr %va21.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va21.i, align 4
  %28 = ptrtoint ptr %format22.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_binary_ptr_assert_format, ptr %format22.i, align 4
  %29 = ptrtoint ptr %operation23.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.22, ptr %operation23.i, align 4
  %30 = ptrtoint ptr %left_text24.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.25, ptr %left_text24.i, align 4
  %31 = ptrtoint ptr %left_value25.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %21, ptr %left_value25.i, align 4
  %32 = ptrtoint ptr %right_text26.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.26, ptr %right_text26.i, align 4
  %33 = ptrtoint ptr %right_value27.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %right_value27.i, align 4
  %cmp29.i = icmp eq ptr %21, %add.ptr.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13.i, i1 noundef zeroext %cmp29.i, ptr noundef nonnull @.str.20, ptr noundef %2) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion13.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i) #7
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdline_test_lead_int(ptr noundef %test) #0 align 64 {
entry:
  %out.i = alloca ptr, align 4
  %dummy.i = alloca i32, align 4
  %__assertion.i = alloca %struct.kunit_binary_assert, align 8
  %__assertion13.i = alloca %struct.kunit_binary_ptr_assert, align 4
  %in = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #7
  %0 = getelementptr inbounds i8, ptr %__assertion.i, i32 32
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %operation.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 1
  %left_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 3
  %right_text.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 4
  %right_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 5
  %type16.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 1
  %line17.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 2
  %file18.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 3
  %message19.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 4
  %va21.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 4, i32 1
  %format22.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 5
  %operation23.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 1
  %left_text24.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 2
  %left_value25.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 3
  %right_text26.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 4
  %right_value27.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 5
  %1 = call ptr @memset(ptr %in, i32 255, i32 32)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @cmdline_test_strings, i32 0, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [16 x i32], ptr @cmdline_test_values, i32 0, i32 %i.0
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %call.i = call i32 @get_random_u32() #7
  %rem = and i32 %call.i, 255
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %in, ptr noundef nonnull @.str.27, i32 noundef %rem, ptr noundef %3)
  %call4 = call i32 @strlen(ptr noundef nonnull %in) #8
  %call5 = call i32 @strlen(ptr noundef %3) #8
  %6 = lshr i32 1104, %i.0
  %7 = and i32 %6, 1
  %sub = add i32 %call4, %7
  %add = sub i32 %sub, %call5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i) #7
  %8 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %in, ptr %out.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #7
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %dummy.i, align 4, !annotation !134
  %call.i13 = call i32 @get_option(ptr noundef nonnull %out.i, ptr noundef nonnull %dummy.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion.i) #7
  %10 = call ptr @memset(ptr %0, i32 255, i32 24)
  %11 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion.i, align 8
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type.i, align 4
  %13 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50, ptr %line.i, align 8
  %14 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.21, ptr %file.i, align 4
  %15 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message.i, align 8
  %16 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va.i, align 4
  %17 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_binary_assert_format, ptr %format.i, align 8
  %18 = ptrtoint ptr %operation.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.22, ptr %operation.i, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.23, ptr %0, align 8
  %conv.i = sext i32 %call.i13 to i64
  %20 = ptrtoint ptr %left_value.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.i, ptr %left_value.i, align 8
  %21 = ptrtoint ptr %right_text.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.24, ptr %right_text.i, align 8
  %conv4.i = sext i32 %5 to i64
  %22 = ptrtoint ptr %right_value.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv4.i, ptr %right_value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i13, i32 %5)
  %cmp.i = icmp eq i32 %call.i13, %5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %cmp.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %in) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion.i) #7
  %23 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %in, i32 %add
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion13.i) #7
  %25 = ptrtoint ptr %__assertion13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion13.i, align 4
  %26 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type16.i, align 4
  %27 = ptrtoint ptr %line17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 51, ptr %line17.i, align 4
  %28 = ptrtoint ptr %file18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.21, ptr %file18.i, align 4
  %29 = ptrtoint ptr %message19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message19.i, align 4
  %30 = ptrtoint ptr %va21.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va21.i, align 4
  %31 = ptrtoint ptr %format22.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_ptr_assert_format, ptr %format22.i, align 4
  %32 = ptrtoint ptr %operation23.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.22, ptr %operation23.i, align 4
  %33 = ptrtoint ptr %left_text24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.25, ptr %left_text24.i, align 4
  %34 = ptrtoint ptr %left_value25.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %24, ptr %left_value25.i, align 4
  %35 = ptrtoint ptr %right_text26.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.26, ptr %right_text26.i, align 4
  %36 = ptrtoint ptr %right_value27.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %right_value27.i, align 4
  %cmp29.i = icmp eq ptr %24, %add.ptr.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13.i, i1 noundef zeroext %cmp29.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %in) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion13.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i) #7
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdline_test_tail_int(ptr noundef %test) #0 align 64 {
entry:
  %out.i = alloca ptr, align 4
  %dummy.i = alloca i32, align 4
  %__assertion.i = alloca %struct.kunit_binary_assert, align 8
  %__assertion13.i = alloca %struct.kunit_binary_ptr_assert, align 4
  %in = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #7
  %0 = getelementptr inbounds i8, ptr %__assertion.i, i32 32
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %operation.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 1
  %left_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 3
  %right_text.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 4
  %right_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 5
  %type16.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 1
  %line17.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 2
  %file18.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 3
  %message19.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 4
  %va21.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 4, i32 1
  %format22.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13.i, i32 0, i32 5
  %operation23.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 1
  %left_text24.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 2
  %left_value25.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 3
  %right_text26.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 4
  %right_value27.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion13.i, i32 0, i32 5
  %1 = call ptr @memset(ptr %in, i32 255, i32 32)
  br label %do.body

do.body:                                          ; preds = %cond.end13.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %cond.end13.do.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @cmdline_test_strings, i32 0, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %strcmpload = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %do.body.cond.end_crit_edge, label %cond.true

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(2) @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %cond = zext i1 %tobool2.not to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body.cond.end_crit_edge
  %cond3 = phi i32 [ %cond, %cond.true ], [ 1, %do.body.cond.end_crit_edge ]
  %call.i = call i32 @get_random_u32() #7
  %rem = and i32 %call.i, 255
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %in, ptr noundef nonnull @.str.28, ptr noundef %3, i32 noundef %rem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond3)
  %tobool6.not = icmp eq i32 %cond3, 0
  br i1 %tobool6.not, label %cond.false10, label %cond.true7

cond.true7:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = call i32 @strlen(ptr noundef nonnull %in) #8
  br label %cond.end13

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %6)
  %cmp = icmp eq i8 %6, 45
  %lnot.ext = zext i1 %cmp to i32
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false10, %cond.true7
  %cond14 = phi i32 [ %call9, %cond.true7 ], [ %lnot.ext, %cond.false10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i) #7
  %7 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %in, ptr %out.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #7
  %8 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dummy.i, align 4, !annotation !134
  %call.i23 = call i32 @get_option(ptr noundef nonnull %out.i, ptr noundef nonnull %dummy.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion.i) #7
  %9 = call ptr @memset(ptr %0, i32 255, i32 24)
  %10 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %test, ptr %__assertion.i, align 8
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type.i, align 4
  %12 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50, ptr %line.i, align 8
  %13 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.21, ptr %file.i, align 4
  %14 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %message.i, align 8
  %15 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %va.i, align 4
  %16 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kunit_binary_assert_format, ptr %format.i, align 8
  %17 = ptrtoint ptr %operation.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.22, ptr %operation.i, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.23, ptr %0, align 8
  %conv.i = sext i32 %call.i23 to i64
  %19 = ptrtoint ptr %left_value.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv.i, ptr %left_value.i, align 8
  %20 = ptrtoint ptr %right_text.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.24, ptr %right_text.i, align 8
  %conv4.i24 = zext i32 %cond3 to i64
  %21 = ptrtoint ptr %right_value.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv4.i24, ptr %right_value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i23, i32 %cond3)
  %cmp.i = icmp eq i32 %call.i23, %cond3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %cmp.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %in) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion.i) #7
  %22 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %in, i32 %cond14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion13.i) #7
  %24 = ptrtoint ptr %__assertion13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %test, ptr %__assertion13.i, align 4
  %25 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %type16.i, align 4
  %26 = ptrtoint ptr %line17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 51, ptr %line17.i, align 4
  %27 = ptrtoint ptr %file18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.21, ptr %file18.i, align 4
  %28 = ptrtoint ptr %message19.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message19.i, align 4
  %29 = ptrtoint ptr %va21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va21.i, align 4
  %30 = ptrtoint ptr %format22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_ptr_assert_format, ptr %format22.i, align 4
  %31 = ptrtoint ptr %operation23.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.22, ptr %operation23.i, align 4
  %32 = ptrtoint ptr %left_text24.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.25, ptr %left_text24.i, align 4
  %33 = ptrtoint ptr %left_value25.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %23, ptr %left_value25.i, align 4
  %34 = ptrtoint ptr %right_text26.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.26, ptr %right_text26.i, align 4
  %35 = ptrtoint ptr %right_value27.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %right_value27.i, align 4
  %cmp29.i = icmp eq ptr %23, %add.ptr.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13.i, i1 noundef zeroext %cmp29.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %in) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion13.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i) #7
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.end, label %cond.end13.do.body_crit_edge

cond.end13.do.body_crit_edge:                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdline_test_range(ptr noundef %test) #0 align 64 {
entry:
  %r.i = alloca [16 x i32], align 4
  %__assertion.i = alloca %struct.kunit_binary_assert, align 8
  %__assertion20.i = alloca %struct.kunit_binary_assert, align 8
  %__assertion53.i = alloca %struct.kunit_binary_assert, align 8
  %__assertion85.i = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = getelementptr inbounds i8, ptr %__assertion.i, i32 32
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %operation.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 1
  %left_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 3
  %right_text.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 4
  %right_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 5
  %type23.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20.i, i32 0, i32 1
  %line24.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20.i, i32 0, i32 2
  %file25.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20.i, i32 0, i32 3
  %message26.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20.i, i32 0, i32 4
  %va28.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20.i, i32 0, i32 4, i32 1
  %format29.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20.i, i32 0, i32 5
  %operation30.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20.i, i32 0, i32 1
  %left_text31.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20.i, i32 0, i32 2
  %left_value32.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20.i, i32 0, i32 3
  %right_text34.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20.i, i32 0, i32 4
  %right_value35.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20.i, i32 0, i32 5
  %1 = getelementptr inbounds i8, ptr %__assertion53.i, i32 32
  %type56.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53.i, i32 0, i32 1
  %line57.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53.i, i32 0, i32 2
  %file58.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53.i, i32 0, i32 3
  %message59.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53.i, i32 0, i32 4
  %va61.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53.i, i32 0, i32 4, i32 1
  %format62.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53.i, i32 0, i32 5
  %operation63.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53.i, i32 0, i32 1
  %left_value65.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53.i, i32 0, i32 3
  %right_text67.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53.i, i32 0, i32 4
  %right_value68.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53.i, i32 0, i32 5
  %arrayidx79.i = getelementptr inbounds [16 x i32], ptr %r.i, i32 0, i32 1
  %type88.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85.i, i32 0, i32 1
  %line89.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85.i, i32 0, i32 2
  %file90.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85.i, i32 0, i32 3
  %message91.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85.i, i32 0, i32 4
  %va93.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85.i, i32 0, i32 4, i32 1
  %format94.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85.i, i32 0, i32 5
  %operation95.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85.i, i32 0, i32 1
  %left_text96.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85.i, i32 0, i32 2
  %left_value97.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85.i, i32 0, i32 3
  %right_text98.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85.i, i32 0, i32 4
  %right_value99.i = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85.i, i32 0, i32 5
  %sub.ptr.rhs.cast.i = ptrtoint ptr %r.i to i32
  br label %do.body

do.body:                                          ; preds = %cmdline_do_one_range_test.exit.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %cmdline_do_one_range_test.exit.do.body_crit_edge ]
  %arrayidx = getelementptr [20 x ptr], ptr @cmdline_test_range_strings, i32 0, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [20 x [16 x i32]], ptr @cmdline_test_range_values, i32 0, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %r.i) #7
  %4 = call ptr @memset(ptr %r.i, i32 0, i32 64)
  %call.i = call ptr @get_options(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %r.i) #7
  %5 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r.i, align 4
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion.i) #7
  %9 = call ptr @memset(ptr %0, i32 255, i32 24)
  %10 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %test, ptr %__assertion.i, align 8
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type.i, align 4
  %12 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 117, ptr %line.i, align 8
  %13 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.21, ptr %file.i, align 4
  %14 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %message.i, align 8
  %15 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %va.i, align 4
  %16 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kunit_binary_assert_format, ptr %format.i, align 8
  %17 = ptrtoint ptr %operation.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.22, ptr %operation.i, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.50, ptr %0, align 8
  %conv.i = sext i32 %6 to i64
  %19 = ptrtoint ptr %left_value.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv.i, ptr %left_value.i, align 8
  %20 = ptrtoint ptr %right_text.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.51, ptr %right_text.i, align 8
  %conv5.i = sext i32 %8 to i64
  %21 = ptrtoint ptr %right_value.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv5.i, ptr %right_value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i = icmp eq i32 %6, %8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %cmp.i, ptr noundef nonnull @.str.52, i32 noundef %i.0, i32 noundef %8, i32 noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion.i) #7
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body14.i.do.body14.i_crit_edge, %do.body
  %i.0136.i = phi i32 [ 1, %do.body ], [ %inc.i, %do.body14.i.do.body14.i_crit_edge ]
  %arrayidx16.i = getelementptr [16 x i32], ptr %r.i, i32 0, i32 %i.0136.i
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %arrayidx1, i32 %i.0136.i
  %24 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion20.i) #7
  %26 = call ptr @memset(ptr %left_text31.i, i32 255, i32 24)
  %27 = ptrtoint ptr %__assertion20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %test, ptr %__assertion20.i, align 8
  %28 = ptrtoint ptr %type23.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type23.i, align 4
  %29 = ptrtoint ptr %line24.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 119, ptr %line24.i, align 8
  %30 = ptrtoint ptr %file25.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.21, ptr %file25.i, align 4
  %31 = ptrtoint ptr %message26.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %message26.i, align 8
  %32 = ptrtoint ptr %va28.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %va28.i, align 4
  %33 = ptrtoint ptr %format29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @kunit_binary_assert_format, ptr %format29.i, align 8
  %34 = ptrtoint ptr %operation30.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.22, ptr %operation30.i, align 4
  %35 = ptrtoint ptr %left_text31.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.53, ptr %left_text31.i, align 8
  %conv33.i = sext i32 %23 to i64
  %36 = ptrtoint ptr %left_value32.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv33.i, ptr %left_value32.i, align 8
  %37 = ptrtoint ptr %right_text34.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.54, ptr %right_text34.i, align 8
  %conv36.i = sext i32 %25 to i64
  %38 = ptrtoint ptr %right_value35.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv36.i, ptr %right_value35.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp38.i = icmp eq i32 %23, %25
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20.i, i1 noundef zeroext %cmp38.i, ptr noundef nonnull @.str.55, i32 noundef %i.0, i32 noundef %i.0136.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion20.i) #7
  %inc.i = add nuw nsw i32 %i.0136.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %cmdline_do_one_range_test.exit, label %do.body14.i.do.body14.i_crit_edge

do.body14.i.do.body14.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14.i

cmdline_do_one_range_test.exit:                   ; preds = %do.body14.i
  %39 = call ptr @memset(ptr %r.i, i32 0, i32 64)
  %call46.i = call ptr @get_options(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %r.i) #7
  %40 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %r.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion53.i) #7
  %42 = call ptr @memset(ptr %1, i32 255, i32 24)
  %43 = ptrtoint ptr %__assertion53.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion53.i, align 8
  %44 = ptrtoint ptr %type56.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type56.i, align 4
  %45 = ptrtoint ptr %line57.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 124, ptr %line57.i, align 8
  %46 = ptrtoint ptr %file58.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.21, ptr %file58.i, align 4
  %47 = ptrtoint ptr %message59.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message59.i, align 8
  %48 = ptrtoint ptr %va61.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va61.i, align 4
  %49 = ptrtoint ptr %format62.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_assert_format, ptr %format62.i, align 8
  %50 = ptrtoint ptr %operation63.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.22, ptr %operation63.i, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.50, ptr %1, align 8
  %conv66.i = sext i32 %41 to i64
  %52 = ptrtoint ptr %left_value65.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv66.i, ptr %left_value65.i, align 8
  %53 = ptrtoint ptr %right_text67.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.51, ptr %right_text67.i, align 8
  %54 = ptrtoint ptr %right_value68.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv5.i, ptr %right_value68.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %8)
  %cmp71.i = icmp eq i32 %41, %8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion53.i, i1 noundef zeroext %cmp71.i, ptr noundef nonnull @.str.56, i32 noundef %i.0, i32 noundef %8, i32 noundef %41) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion53.i) #7
  %call80.i = call ptr @memchr_inv(ptr noundef %arrayidx79.i, i32 noundef 0, i32 noundef 60) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion85.i) #7
  %55 = ptrtoint ptr %__assertion85.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion85.i, align 4
  %56 = ptrtoint ptr %type88.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type88.i, align 4
  %57 = ptrtoint ptr %line89.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 127, ptr %line89.i, align 4
  %58 = ptrtoint ptr %file90.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.21, ptr %file90.i, align 4
  %59 = ptrtoint ptr %message91.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message91.i, align 4
  %60 = ptrtoint ptr %va93.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va93.i, align 4
  %61 = ptrtoint ptr %format94.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_ptr_assert_format, ptr %format94.i, align 4
  %62 = ptrtoint ptr %operation95.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.22, ptr %operation95.i, align 4
  %63 = ptrtoint ptr %left_text96.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.57, ptr %left_text96.i, align 4
  %64 = ptrtoint ptr %left_value97.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call80.i, ptr %left_value97.i, align 4
  %65 = ptrtoint ptr %right_text98.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.58, ptr %right_text98.i, align 4
  %66 = ptrtoint ptr %right_value99.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %right_value99.i, align 4
  %cmp101.i = icmp eq ptr %call80.i, null
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call80.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85.i, i1 noundef zeroext %cmp101.i, ptr noundef nonnull @.str.59, i32 noundef %i.0, i32 noundef %sub.ptr.div.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion85.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %r.i) #7
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.end, label %cmdline_do_one_range_test.exit.do.body_crit_edge

cmdline_do_one_range_test.exit.do.body_crit_edge: ; preds = %cmdline_do_one_range_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %cmdline_do_one_range_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !124, !125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../lib/cmdline_kunit.c", i32 154, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../lib/cmdline_kunit.c", i32 156, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @cmdline_test_suite, !7, !"cmdline_test_suite", i1 false, i1 false}
!7 = !{!"../lib/cmdline_kunit.c", i32 150, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/cmdline_kunit.c", i32 143, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/cmdline_kunit.c", i32 144, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/cmdline_kunit.c", i32 145, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/cmdline_kunit.c", i32 146, i32 2}
!16 = !{ptr @cmdline_test_cases, !17, !"cmdline_test_cases", i1 false, i1 false}
!17 = !{!"../lib/cmdline_kunit.c", i32 142, i32 26}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/cmdline_kunit.c", i32 12, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/cmdline_kunit.c", i32 12, i32 10}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/cmdline_kunit.c", i32 12, i32 16}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/cmdline_kunit.c", i32 12, i32 22}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/cmdline_kunit.c", i32 12, i32 29}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/cmdline_kunit.c", i32 12, i32 38}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/cmdline_kunit.c", i32 12, i32 47}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/cmdline_kunit.c", i32 12, i32 56}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/cmdline_kunit.c", i32 13, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/cmdline_kunit.c", i32 13, i32 10}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/cmdline_kunit.c", i32 13, i32 16}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/cmdline_kunit.c", i32 13, i32 22}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/cmdline_kunit.c", i32 13, i32 29}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/cmdline_kunit.c", i32 13, i32 38}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/cmdline_kunit.c", i32 13, i32 47}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/cmdline_kunit.c", i32 13, i32 56}
!50 = !{ptr @cmdline_test_strings, !51, !"cmdline_test_strings", i1 false, i1 false}
!51 = !{!"../lib/cmdline_kunit.c", i32 11, i32 20}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/cmdline_kunit.c", i32 43, i32 20}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/cmdline_kunit.c", i32 50, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/cmdline_kunit.c", i32 51, i32 2}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/cmdline_kunit.c", i32 79, i32 15}
!64 = !{ptr @cmdline_test_values, !65, !"cmdline_test_values", i1 false, i1 false}
!65 = !{!"../lib/cmdline_kunit.c", i32 16, i32 18}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/cmdline_kunit.c", i32 97, i32 15}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/cmdline_kunit.c", i32 24, i32 2}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/cmdline_kunit.c", i32 24, i32 9}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/cmdline_kunit.c", i32 24, i32 18}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/cmdline_kunit.c", i32 24, i32 30}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/cmdline_kunit.c", i32 25, i32 2}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/cmdline_kunit.c", i32 25, i32 9}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/cmdline_kunit.c", i32 25, i32 18}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/cmdline_kunit.c", i32 25, i32 30}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../lib/cmdline_kunit.c", i32 26, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../lib/cmdline_kunit.c", i32 26, i32 9}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../lib/cmdline_kunit.c", i32 26, i32 18}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../lib/cmdline_kunit.c", i32 26, i32 30}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../lib/cmdline_kunit.c", i32 27, i32 2}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../lib/cmdline_kunit.c", i32 27, i32 9}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../lib/cmdline_kunit.c", i32 27, i32 18}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../lib/cmdline_kunit.c", i32 27, i32 30}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../lib/cmdline_kunit.c", i32 28, i32 2}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../lib/cmdline_kunit.c", i32 28, i32 9}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/cmdline_kunit.c", i32 28, i32 18}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/cmdline_kunit.c", i32 28, i32 30}
!108 = !{ptr @cmdline_test_range_strings, !109, !"cmdline_test_range_strings", i1 false, i1 false}
!109 = !{!"../lib/cmdline_kunit.c", i32 23, i32 20}
!110 = !{ptr @cmdline_test_range_values, !111, !"cmdline_test_range_values", i1 false, i1 false}
!111 = !{!"../lib/cmdline_kunit.c", i32 31, i32 18}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/cmdline_kunit.c", i32 116, i32 2}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../lib/cmdline_kunit.c", i32 119, i32 3}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../lib/cmdline_kunit.c", i32 123, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../lib/cmdline_kunit.c", i32 127, i32 2}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
