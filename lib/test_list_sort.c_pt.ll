; ModuleID = '/llk/IR_all_yes/lib/test_list_sort.c_pt.bc'
source_filename = "../lib/test_list_sort.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.debug_el = type { i32, %struct.list_head, i32, i32, i32 }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @list_sort_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [39 x i8] c"test_list_sort.file=lib/test_list_sort\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [27 x i8] c"test_list_sort.license=GPL\00", section ".modinfo", align 1
@list_sort_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"list_sort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @list_sort_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@list_sort_cases = internal global { [2 x %struct.kunit_case], [56 x i8] } { [2 x %struct.kunit_case] [%struct.kunit_case { ptr @list_sort_test, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"list_sort_test\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/test_list_sort.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"elts\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"el\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cur->next->prev\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cur\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"list is corrupted\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmp_result\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"list is not sorted\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"el->serial\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"el1->serial\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"order of equivalent elements not preserved\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"head.prev\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(512+128+2)\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"list length changed after sorting!\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"<\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ela->serial\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(unsigned int)(512+128+2)\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"incorrect serial\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"elb->serial\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elts[ela->serial]\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ela\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phantom element\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elts[elb->serial]\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"elb\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ela->poison1\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0xDEADBEEF\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad poison\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ela->poison2\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0xA324354C\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"elb->poison1\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"elb->poison2\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"list_sort_suite\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 115, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"list_sort_cases\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 110, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 111, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 66, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 71, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 88, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 92, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 97, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 104, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 106, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 33, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 34, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 36, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 37, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 39, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 40, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 42, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [24 x i8] c"../lib/test_list_sort.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 43, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @list_sort_suite, ptr @list_sort_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_sort_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_sort_cases to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_sort_test(ptr noundef %test) #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion11 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion41 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion63 = alloca %struct.kunit_binary_assert, align 8
  %__assertion98 = alloca %struct.kunit_binary_assert, align 8
  %__assertion131 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion157 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %call.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 642, i32 noundef 4, i32 noundef 3520) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #5
  %3 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %5 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 66, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %7 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.2, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #5
  %12 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %test, align 4
  %type14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 1
  %line15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 2
  %file16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 3
  %message17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4
  %va19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4, i32 1
  %format20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 5
  %text21 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 1
  %value22 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %entry
  %i.0240 = phi i32 [ 0, %entry ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %call.i236 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 24, i32 noundef 3264) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion11) #5
  %13 = ptrtoint ptr %__assertion11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion11, align 4
  %14 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %type14, align 4
  %15 = ptrtoint ptr %line15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 71, ptr %line15, align 4
  %16 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.1, ptr %file16, align 4
  %17 = ptrtoint ptr %message17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message17, align 4
  %18 = ptrtoint ptr %va19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va19, align 4
  %19 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format20, align 4
  %20 = ptrtoint ptr %text21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.3, ptr %text21, align 4
  %21 = ptrtoint ptr %value22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i236, ptr %value22, align 4
  %tobool.not.i237 = icmp ne ptr %call.i236, null
  %cmp.i238 = icmp ule ptr %call.i236, inttoptr (i32 -4096 to ptr)
  %lnot25 = and i1 %tobool.not.i237, %cmp.i238
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion11, i1 noundef zeroext %lnot25, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion11) #5
  %call30 = call i32 @prandom_u32() #5
  %rem = urem i32 %call30, 214
  %value31 = getelementptr inbounds %struct.debug_el, ptr %call.i236, i32 0, i32 3
  %22 = ptrtoint ptr %value31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rem, ptr %value31, align 4
  %serial = getelementptr inbounds %struct.debug_el, ptr %call.i236, i32 0, i32 4
  %23 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.0240, ptr %serial, align 4
  %24 = ptrtoint ptr %call.i236 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -559038737, ptr %call.i236, align 4
  %poison2 = getelementptr inbounds %struct.debug_el, ptr %call.i236, i32 0, i32 2
  %25 = ptrtoint ptr %poison2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1557908148, ptr %poison2, align 4
  %arrayidx = getelementptr ptr, ptr %call.i, i32 %i.0240
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i236, ptr %arrayidx, align 4
  %list = getelementptr inbounds %struct.debug_el, ptr %call.i236, i32 0, i32 1
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef nonnull %head) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %0, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.debug_el, ptr %call.i236, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0240, 1
  %exitcond.not = icmp eq i32 %inc, 642
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @list_sort(ptr noundef %test, ptr noundef nonnull %head, ptr noundef nonnull @cmp) #5
  %33 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %33)
  %cur.0241 = load ptr, ptr %head, align 4
  %34 = ptrtoint ptr %cur.0241 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur.0241, align 4
  %cmp35.not242 = icmp eq ptr %35, %head
  br i1 %cmp35.not242, label %for.end.do.body126_crit_edge, label %for.body36.lr.ph

for.end.do.body126_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body126

for.body36.lr.ph:                                 ; preds = %for.end
  %type44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %line45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %file46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %message47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %va49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %format50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion41, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion41, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion41, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion41, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion41, i32 0, i32 5
  %type66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 1
  %line67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 2
  %file68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 3
  %message69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 4
  %va71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 4, i32 1
  %format72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 5
  %operation73 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion63, i32 0, i32 1
  %left_text74 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion63, i32 0, i32 2
  %left_value75 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion63, i32 0, i32 3
  %right_text76 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion63, i32 0, i32 4
  %right_value77 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion63, i32 0, i32 5
  %type101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 1
  %line102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 2
  %file103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 3
  %message104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4
  %va106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4, i32 1
  %format107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 5
  %operation108 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 1
  %left_text109 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 2
  %left_value110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 3
  %right_text112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 4
  %right_value113 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 5
  %36 = getelementptr inbounds i8, ptr %__assertion63, i32 32
  %37 = getelementptr inbounds i8, ptr %__assertion98, i32 32
  br label %for.body36

for.body36:                                       ; preds = %if.end.for.body36_crit_edge, %for.body36.lr.ph
  %38 = phi ptr [ %35, %for.body36.lr.ph ], [ %93, %if.end.for.body36_crit_edge ]
  %cur.0244 = phi ptr [ %cur.0241, %for.body36.lr.ph ], [ %cur.0, %if.end.for.body36_crit_edge ]
  %count.0243 = phi i32 [ 1, %for.body36.lr.ph ], [ %inc122, %if.end.for.body36_crit_edge ]
  %prev39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev39, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion41) #5
  %41 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion41, align 4
  %42 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %type44, align 4
  %43 = ptrtoint ptr %line45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 89, ptr %line45, align 4
  %44 = ptrtoint ptr %file46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.1, ptr %file46, align 4
  %45 = ptrtoint ptr %message47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message47, align 4
  %46 = ptrtoint ptr %va49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va49, align 4
  %47 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_binary_ptr_assert_format, ptr %format50, align 4
  %48 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.4, ptr %operation, align 4
  %49 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.5, ptr %left_text, align 4
  %50 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %40, ptr %left_value, align 4
  %51 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.6, ptr %right_text, align 4
  %52 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cur.0244, ptr %right_value, align 4
  %cmp52 = icmp eq ptr %40, %cur.0244
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion41, i1 noundef zeroext %cmp52, ptr noundef nonnull @.str.7) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion41) #5
  %53 = ptrtoint ptr %cur.0244 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur.0244, align 4
  %add.ptr.i = getelementptr i8, ptr %cur.0244, i32 -4
  %add.ptr3.i = getelementptr i8, ptr %54, i32 -4
  call fastcc void @check(ptr noundef %test, ptr noundef %add.ptr.i, ptr noundef %add.ptr3.i) #5
  %value.i = getelementptr i8, ptr %cur.0244, i32 12
  %55 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value.i, align 4
  %value4.i = getelementptr i8, ptr %54, i32 12
  %57 = ptrtoint ptr %value4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value4.i, align 4
  %sub.i = sub i32 %56, %58
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion63) #5
  %59 = call ptr @memset(ptr %36, i32 255, i32 24)
  %60 = ptrtoint ptr %__assertion63 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test, ptr %__assertion63, align 8
  %61 = ptrtoint ptr %type66 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %type66, align 4
  %62 = ptrtoint ptr %line67 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 92, ptr %line67, align 8
  %63 = ptrtoint ptr %file68 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.1, ptr %file68, align 4
  %64 = ptrtoint ptr %message69 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %message69, align 8
  %65 = ptrtoint ptr %va71 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va71, align 4
  %66 = ptrtoint ptr %format72 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @kunit_binary_assert_format, ptr %format72, align 8
  %67 = ptrtoint ptr %operation73 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.8, ptr %operation73, align 4
  %68 = ptrtoint ptr %left_text74 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.9, ptr %left_text74, align 8
  %conv = sext i32 %sub.i to i64
  %69 = ptrtoint ptr %left_value75 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv, ptr %left_value75, align 8
  %70 = ptrtoint ptr %right_text76 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.10, ptr %right_text76, align 8
  %71 = ptrtoint ptr %right_value77 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %right_value77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp80 = icmp slt i32 %sub.i, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion63, i1 noundef zeroext %cmp80, ptr noundef nonnull @.str.11) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion63) #5
  %72 = ptrtoint ptr %cur.0244 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.0244, align 4
  %add.ptr89 = getelementptr i8, ptr %73, i32 -4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp90 = icmp eq i32 %56, %58
  br i1 %cmp90, label %do.body92, label %for.body36.if.end_crit_edge

for.body36.if.end_crit_edge:                      ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.body92:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #4
  %serial94 = getelementptr i8, ptr %cur.0244, i32 16
  %74 = ptrtoint ptr %serial94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %serial94, align 4
  %serial96 = getelementptr i8, ptr %73, i32 16
  %76 = ptrtoint ptr %serial96 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %serial96, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion98) #5
  %78 = call ptr @memset(ptr %37, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion98 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion98, align 8
  %80 = ptrtoint ptr %type101 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %type101, align 4
  %81 = ptrtoint ptr %line102 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 98, ptr %line102, align 8
  %82 = ptrtoint ptr %file103 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.1, ptr %file103, align 4
  %83 = ptrtoint ptr %message104 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message104, align 8
  %84 = ptrtoint ptr %va106 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va106, align 4
  %85 = ptrtoint ptr %format107 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format107, align 8
  %86 = ptrtoint ptr %operation108 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.8, ptr %operation108, align 4
  %87 = ptrtoint ptr %left_text109 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.12, ptr %left_text109, align 8
  %conv111 = zext i32 %75 to i64
  %88 = ptrtoint ptr %left_value110 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv111, ptr %left_value110, align 8
  %89 = ptrtoint ptr %right_text112 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.13, ptr %right_text112, align 8
  %conv114 = zext i32 %77 to i64
  %90 = ptrtoint ptr %right_value113 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv114, ptr %right_value113, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp116 = icmp ule i32 %75, %77
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion98, i1 noundef zeroext %cmp116, ptr noundef nonnull @.str.14) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion98) #5
  br label %if.end

if.end:                                           ; preds = %do.body92, %for.body36.if.end_crit_edge
  call fastcc void @check(ptr noundef %test, ptr noundef %add.ptr.i, ptr noundef %add.ptr89)
  %inc122 = add i32 %count.0243, 1
  %91 = ptrtoint ptr %cur.0244 to i32
  call void @__asan_load4_noabort(i32 %91)
  %cur.0 = load ptr, ptr %cur.0244, align 4
  %92 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.0, align 4
  %cmp35.not = icmp eq ptr %93, %head
  br i1 %cmp35.not, label %if.end.do.body126_crit_edge, label %if.end.for.body36_crit_edge

if.end.for.body36_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body36

if.end.do.body126_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body126

do.body126:                                       ; preds = %if.end.do.body126_crit_edge, %for.end.do.body126_crit_edge
  %count.0.lcssa = phi i32 [ 1, %for.end.do.body126_crit_edge ], [ %inc122, %if.end.do.body126_crit_edge ]
  %cur.0.lcssa = phi ptr [ %cur.0241, %for.end.do.body126_crit_edge ], [ %cur.0, %if.end.do.body126_crit_edge ]
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion131) #5
  %96 = ptrtoint ptr %__assertion131 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %test, ptr %__assertion131, align 4
  %type134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion131, i32 0, i32 1
  %97 = ptrtoint ptr %type134 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type134, align 4
  %line135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion131, i32 0, i32 2
  %98 = ptrtoint ptr %line135 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 104, ptr %line135, align 4
  %file136 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion131, i32 0, i32 3
  %99 = ptrtoint ptr %file136 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.1, ptr %file136, align 4
  %message137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion131, i32 0, i32 4
  %100 = ptrtoint ptr %message137 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %message137, align 4
  %va139 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion131, i32 0, i32 4, i32 1
  %101 = ptrtoint ptr %va139 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %va139, align 4
  %format140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion131, i32 0, i32 5
  %102 = ptrtoint ptr %format140 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @kunit_binary_ptr_assert_format, ptr %format140, align 4
  %operation141 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion131, i32 0, i32 1
  %103 = ptrtoint ptr %operation141 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.4, ptr %operation141, align 4
  %left_text142 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion131, i32 0, i32 2
  %104 = ptrtoint ptr %left_text142 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.15, ptr %left_text142, align 4
  %left_value143 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion131, i32 0, i32 3
  %105 = ptrtoint ptr %left_value143 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %95, ptr %left_value143, align 4
  %right_text144 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion131, i32 0, i32 4
  %106 = ptrtoint ptr %right_text144 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.6, ptr %right_text144, align 4
  %right_value145 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion131, i32 0, i32 5
  %107 = ptrtoint ptr %right_value145 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %cur.0.lcssa, ptr %right_value145, align 4
  %cmp147 = icmp eq ptr %95, %cur.0.lcssa
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion131, i1 noundef zeroext %cmp147, ptr noundef nonnull @.str.7) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion131) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion157) #5
  %108 = getelementptr inbounds i8, ptr %__assertion157, i32 32
  %109 = call ptr @memset(ptr %108, i32 255, i32 24)
  %110 = ptrtoint ptr %__assertion157 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion157, align 8
  %type160 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion157, i32 0, i32 1
  %111 = ptrtoint ptr %type160 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type160, align 4
  %line161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion157, i32 0, i32 2
  %112 = ptrtoint ptr %line161 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 107, ptr %line161, align 8
  %file162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion157, i32 0, i32 3
  %113 = ptrtoint ptr %file162 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.1, ptr %file162, align 4
  %message163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion157, i32 0, i32 4
  %114 = ptrtoint ptr %message163 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message163, align 8
  %va165 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion157, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %va165 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va165, align 4
  %format166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion157, i32 0, i32 5
  %116 = ptrtoint ptr %format166 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_assert_format, ptr %format166, align 8
  %operation167 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion157, i32 0, i32 1
  %117 = ptrtoint ptr %operation167 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.4, ptr %operation167, align 4
  %left_text168 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion157, i32 0, i32 2
  %118 = ptrtoint ptr %left_text168 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.16, ptr %left_text168, align 8
  %left_value169 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion157, i32 0, i32 3
  %conv170 = sext i32 %count.0.lcssa to i64
  %119 = ptrtoint ptr %left_value169 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv170, ptr %left_value169, align 8
  %right_text171 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion157, i32 0, i32 4
  %120 = ptrtoint ptr %right_text171 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.17, ptr %right_text171, align 8
  %right_value172 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion157, i32 0, i32 5
  %121 = ptrtoint ptr %right_value172 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 642, ptr %right_value172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 642, i32 %count.0.lcssa)
  %cmp175 = icmp eq i32 %count.0.lcssa, 642
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion157, i1 noundef zeroext %cmp175, ptr noundef nonnull @.str.18) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion157) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmp(ptr noundef %priv, ptr noundef %a, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr = getelementptr i8, ptr %a, i32 -4
  %add.ptr3 = getelementptr i8, ptr %b, i32 -4
  tail call fastcc void @check(ptr noundef %priv, ptr noundef %add.ptr, ptr noundef %add.ptr3)
  %value = getelementptr i8, ptr %a, i32 12
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  %value4 = getelementptr i8, ptr %b, i32 12
  %2 = ptrtoint ptr %value4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value4, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check(ptr noundef %test, ptr noundef %ela, ptr noundef %elb) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion70 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion96 = alloca %struct.kunit_binary_assert, align 8
  %__assertion124 = alloca %struct.kunit_binary_assert, align 8
  %__assertion153 = alloca %struct.kunit_binary_assert, align 8
  %__assertion182 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %serial = getelementptr inbounds %struct.debug_el, ptr %ela, i32 0, i32 4
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serial, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %4 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %5 = call ptr @memset(ptr %4, i32 255, i32 24)
  %6 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 33, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.1, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %10 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %13 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.19, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %14 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.20, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %3 to i64
  %15 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %16 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.21, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %17 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 642, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 642, i32 %3)
  %cmp = icmp ult i32 %3, 642
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.22) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %serial10 = getelementptr inbounds %struct.debug_el, ptr %elb, i32 0, i32 4
  %18 = ptrtoint ptr %serial10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %serial10, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #5
  %20 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %21 = call ptr @memset(ptr %20, i32 255, i32 24)
  %22 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %23 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %24 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 34, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %25 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.1, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %26 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %28 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %29 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.19, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %30 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.23, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv26 = zext i32 %19 to i64
  %31 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv26, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %32 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.21, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %33 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 642, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 642, i32 %19)
  %cmp31 = icmp ult i32 %19, 642
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef nonnull @.str.22) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #5
  %34 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %serial, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion42) #5
  %38 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %test, ptr %__assertion42, align 4
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %39 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %40 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 36, ptr %line46, align 4
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %41 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.1, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %42 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %message48, align 4
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %44 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @kunit_binary_ptr_assert_format, ptr %format51, align 4
  %operation52 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion42, i32 0, i32 1
  %45 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.4, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion42, i32 0, i32 2
  %46 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.24, ptr %left_text53, align 4
  %left_value54 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion42, i32 0, i32 3
  %47 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %37, ptr %left_value54, align 4
  %right_text55 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion42, i32 0, i32 4
  %48 = ptrtoint ptr %right_text55 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.25, ptr %right_text55, align 4
  %right_value56 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion42, i32 0, i32 5
  %49 = ptrtoint ptr %right_value56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ela, ptr %right_value56, align 4
  %cmp58 = icmp eq ptr %37, %ela
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp58, ptr noundef nonnull @.str.26) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion42) #5
  %50 = ptrtoint ptr %serial10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %serial10, align 4
  %arrayidx67 = getelementptr ptr, ptr %1, i32 %51
  %52 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx67, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion70) #5
  %54 = ptrtoint ptr %__assertion70 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %test, ptr %__assertion70, align 4
  %type73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 1
  %55 = ptrtoint ptr %type73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %type73, align 4
  %line74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 2
  %56 = ptrtoint ptr %line74 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 37, ptr %line74, align 4
  %file75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 3
  %57 = ptrtoint ptr %file75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.1, ptr %file75, align 4
  %message76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4
  %58 = ptrtoint ptr %message76 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %message76, align 4
  %va78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %va78 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %va78, align 4
  %format79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 5
  %60 = ptrtoint ptr %format79 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @kunit_binary_ptr_assert_format, ptr %format79, align 4
  %operation80 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion70, i32 0, i32 1
  %61 = ptrtoint ptr %operation80 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.4, ptr %operation80, align 4
  %left_text81 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion70, i32 0, i32 2
  %62 = ptrtoint ptr %left_text81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.27, ptr %left_text81, align 4
  %left_value82 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion70, i32 0, i32 3
  %63 = ptrtoint ptr %left_value82 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %53, ptr %left_value82, align 4
  %right_text83 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion70, i32 0, i32 4
  %64 = ptrtoint ptr %right_text83 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.28, ptr %right_text83, align 4
  %right_value84 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion70, i32 0, i32 5
  %65 = ptrtoint ptr %right_value84 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %elb, ptr %right_value84, align 4
  %cmp86 = icmp eq ptr %53, %elb
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion70, i1 noundef zeroext %cmp86, ptr noundef nonnull @.str.26) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion70) #5
  %66 = ptrtoint ptr %ela to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ela, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion96) #5
  %68 = getelementptr inbounds i8, ptr %__assertion96, i32 32
  %69 = call ptr @memset(ptr %68, i32 255, i32 24)
  %70 = ptrtoint ptr %__assertion96 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %test, ptr %__assertion96, align 8
  %type99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 1
  %71 = ptrtoint ptr %type99 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %type99, align 4
  %line100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 2
  %72 = ptrtoint ptr %line100 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 39, ptr %line100, align 8
  %file101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 3
  %73 = ptrtoint ptr %file101 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.1, ptr %file101, align 4
  %message102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 4
  %74 = ptrtoint ptr %message102 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %message102, align 8
  %va104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %va104 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %va104, align 4
  %format105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 5
  %76 = ptrtoint ptr %format105 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @kunit_binary_assert_format, ptr %format105, align 8
  %operation106 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 1
  %77 = ptrtoint ptr %operation106 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.4, ptr %operation106, align 4
  %left_text107 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 2
  %78 = ptrtoint ptr %left_text107 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.29, ptr %left_text107, align 8
  %left_value108 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 3
  %conv109 = zext i32 %67 to i64
  %79 = ptrtoint ptr %left_value108 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv109, ptr %left_value108, align 8
  %right_text110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 4
  %80 = ptrtoint ptr %right_text110 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.30, ptr %right_text110, align 8
  %right_value111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion96, i32 0, i32 5
  %81 = ptrtoint ptr %right_value111 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 3735928559, ptr %right_value111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %67)
  %cmp114 = icmp eq i32 %67, -559038737
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion96, i1 noundef zeroext %cmp114, ptr noundef nonnull @.str.31) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion96) #5
  %poison2 = getelementptr inbounds %struct.debug_el, ptr %ela, i32 0, i32 2
  %82 = ptrtoint ptr %poison2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %poison2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion124) #5
  %84 = getelementptr inbounds i8, ptr %__assertion124, i32 32
  %85 = call ptr @memset(ptr %84, i32 255, i32 24)
  %86 = ptrtoint ptr %__assertion124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %test, ptr %__assertion124, align 8
  %type127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 1
  %87 = ptrtoint ptr %type127 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %type127, align 4
  %line128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 2
  %88 = ptrtoint ptr %line128 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 40, ptr %line128, align 8
  %file129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 3
  %89 = ptrtoint ptr %file129 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.1, ptr %file129, align 4
  %message130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4
  %90 = ptrtoint ptr %message130 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %message130, align 8
  %va132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %va132 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %va132, align 4
  %format133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 5
  %92 = ptrtoint ptr %format133 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @kunit_binary_assert_format, ptr %format133, align 8
  %operation134 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 1
  %93 = ptrtoint ptr %operation134 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.4, ptr %operation134, align 4
  %left_text135 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 2
  %94 = ptrtoint ptr %left_text135 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.32, ptr %left_text135, align 8
  %left_value136 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 3
  %conv137 = zext i32 %83 to i64
  %95 = ptrtoint ptr %left_value136 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv137, ptr %left_value136, align 8
  %right_text138 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 4
  %96 = ptrtoint ptr %right_text138 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.33, ptr %right_text138, align 8
  %right_value139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 5
  %97 = ptrtoint ptr %right_value139 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 2737059148, ptr %right_value139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1557908148, i32 %83)
  %cmp142 = icmp eq i32 %83, -1557908148
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion124, i1 noundef zeroext %cmp142, ptr noundef nonnull @.str.31) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion124) #5
  %98 = ptrtoint ptr %elb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %elb, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion153) #5
  %100 = getelementptr inbounds i8, ptr %__assertion153, i32 32
  %101 = call ptr @memset(ptr %100, i32 255, i32 24)
  %102 = ptrtoint ptr %__assertion153 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %test, ptr %__assertion153, align 8
  %type156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 1
  %103 = ptrtoint ptr %type156 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %type156, align 4
  %line157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 2
  %104 = ptrtoint ptr %line157 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 42, ptr %line157, align 8
  %file158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 3
  %105 = ptrtoint ptr %file158 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.1, ptr %file158, align 4
  %message159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 4
  %106 = ptrtoint ptr %message159 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %message159, align 8
  %va161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 4, i32 1
  %107 = ptrtoint ptr %va161 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %va161, align 4
  %format162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 5
  %108 = ptrtoint ptr %format162 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @kunit_binary_assert_format, ptr %format162, align 8
  %operation163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion153, i32 0, i32 1
  %109 = ptrtoint ptr %operation163 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.4, ptr %operation163, align 4
  %left_text164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion153, i32 0, i32 2
  %110 = ptrtoint ptr %left_text164 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.34, ptr %left_text164, align 8
  %left_value165 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion153, i32 0, i32 3
  %conv166 = zext i32 %99 to i64
  %111 = ptrtoint ptr %left_value165 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv166, ptr %left_value165, align 8
  %right_text167 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion153, i32 0, i32 4
  %112 = ptrtoint ptr %right_text167 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.30, ptr %right_text167, align 8
  %right_value168 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion153, i32 0, i32 5
  %113 = ptrtoint ptr %right_value168 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 3735928559, ptr %right_value168, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %99)
  %cmp171 = icmp eq i32 %99, -559038737
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion153, i1 noundef zeroext %cmp171, ptr noundef nonnull @.str.31) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion153) #5
  %poison2179 = getelementptr inbounds %struct.debug_el, ptr %elb, i32 0, i32 2
  %114 = ptrtoint ptr %poison2179 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %poison2179, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion182) #5
  %116 = getelementptr inbounds i8, ptr %__assertion182, i32 32
  %117 = call ptr @memset(ptr %116, i32 255, i32 24)
  %118 = ptrtoint ptr %__assertion182 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %test, ptr %__assertion182, align 8
  %type185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion182, i32 0, i32 1
  %119 = ptrtoint ptr %type185 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %type185, align 4
  %line186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion182, i32 0, i32 2
  %120 = ptrtoint ptr %line186 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 43, ptr %line186, align 8
  %file187 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion182, i32 0, i32 3
  %121 = ptrtoint ptr %file187 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.1, ptr %file187, align 4
  %message188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion182, i32 0, i32 4
  %122 = ptrtoint ptr %message188 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %message188, align 8
  %va190 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion182, i32 0, i32 4, i32 1
  %123 = ptrtoint ptr %va190 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %va190, align 4
  %format191 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion182, i32 0, i32 5
  %124 = ptrtoint ptr %format191 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @kunit_binary_assert_format, ptr %format191, align 8
  %operation192 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion182, i32 0, i32 1
  %125 = ptrtoint ptr %operation192 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.4, ptr %operation192, align 4
  %left_text193 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion182, i32 0, i32 2
  %126 = ptrtoint ptr %left_text193 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.35, ptr %left_text193, align 8
  %left_value194 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion182, i32 0, i32 3
  %conv195 = zext i32 %115 to i64
  %127 = ptrtoint ptr %left_value194 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv195, ptr %left_value194, align 8
  %right_text196 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion182, i32 0, i32 4
  %128 = ptrtoint ptr %right_text196 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.33, ptr %right_text196, align 8
  %right_value197 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion182, i32 0, i32 5
  %129 = ptrtoint ptr %right_value197 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 2737059148, ptr %right_value197, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1557908148, i32 %115)
  %cmp200 = icmp eq i32 %115, -1557908148
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion182, i1 noundef zeroext %cmp200, ptr noundef nonnull @.str.31) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion182) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../lib/test_list_sort.c", i32 120, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../lib/test_list_sort.c", i32 122, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @list_sort_suite, !7, !"list_sort_suite", i1 false, i1 false}
!7 = !{!"../lib/test_list_sort.c", i32 115, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/test_list_sort.c", i32 111, i32 2}
!10 = !{ptr @list_sort_cases, !11, !"list_sort_cases", i1 false, i1 false}
!11 = !{!"../lib/test_list_sort.c", i32 110, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_list_sort.c", i32 66, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test_list_sort.c", i32 71, i32 3}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test_list_sort.c", i32 88, i32 3}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/test_list_sort.c", i32 92, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_list_sort.c", i32 97, i32 4}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_list_sort.c", i32 104, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/test_list_sort.c", i32 106, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/test_list_sort.c", i32 33, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/test_list_sort.c", i32 34, i32 2}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test_list_sort.c", i32 36, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_list_sort.c", i32 37, i32 2}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test_list_sort.c", i32 39, i32 2}
!53 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/test_list_sort.c", i32 40, i32 2}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../lib/test_list_sort.c", i32 42, i32 2}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/test_list_sort.c", i32 43, i32 2}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
