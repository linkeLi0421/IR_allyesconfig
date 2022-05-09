; ModuleID = '/llk/IR_all_yes/kernel/sysctl-test.c_pt.bc'
source_filename = "../kernel/sysctl-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_str_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @sysctl_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [36 x i8] c"sysctl_test.file=kernel/sysctl-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [27 x i8] c"sysctl_test.license=GPL v2\00", section ".modinfo", align 1
@sysctl_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"sysctl_test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @sysctl_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@sysctl_test_cases = internal global { [11 x %struct.kunit_case], [36 x i8] } { [11 x %struct.kunit_case] [%struct.kunit_case { ptr @sysctl_test_api_dointvec_null_tbl_data, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_api_dointvec_table_maxlen_unset, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_api_dointvec_table_len_is_zero, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_api_dointvec_table_read_but_position_set, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_dointvec_read_happy_single_positive, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_dointvec_read_happy_single_negative, ptr @.str.5, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_dointvec_write_happy_single_positive, ptr @.str.6, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_dointvec_write_happy_single_negative, ptr @.str.7, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_api_dointvec_write_single_less_int_min, ptr @.str.8, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @sysctl_test_api_dointvec_write_single_greater_int_max, ptr @.str.9, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sysctl_test_api_dointvec_null_tbl_data\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sysctl_test_api_dointvec_table_maxlen_unset\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sysctl_test_api_dointvec_table_len_is_zero\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sysctl_test_api_dointvec_table_read_but_position_set\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sysctl_test_dointvec_read_happy_single_positive\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sysctl_test_dointvec_read_happy_single_negative\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sysctl_test_dointvec_write_happy_single_positive\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sysctl_test_dointvec_write_happy_single_negative\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sysctl_test_api_dointvec_write_single_less_int_min\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sysctl_test_api_dointvec_write_single_greater_int_max\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"foo\00", [28 x i8] zeroinitializer }, align 32
@i_zero = internal global { i32, [28 x i8] } zeroinitializer, align 32
@i_one_hundred = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__const.sysctl_test_api_dointvec_null_tbl_data.null_data_table = private unnamed_addr constant { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.10, ptr null, i32 4, i16 420, [2 x i8] zeroinitializer, ptr null, ptr @proc_dointvec, ptr null, ptr @i_zero, ptr @i_one_hundred }, align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sysctl-test.c\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"proc_dointvec(&null_data_table, 0, buffer, &len, &pos)\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"proc_dointvec(&null_data_table, 1, buffer, &len, &pos)\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"proc_dointvec(&data_maxlen_unset_table, 0, buffer, &len, &pos)\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"proc_dointvec(&data_maxlen_unset_table, 1, buffer, &len, &pos)\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"proc_dointvec(&table, 0, buffer, &len, &pos)\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"proc_dointvec(&table, 1, buffer, &len, &pos)\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"proc_dointvec(&table, 0, user_buffer, &len, &pos)\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"13\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\2213\\n\22\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"buffer\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-16\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\22-16\\n\22\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"proc_dointvec(&table, 1, user_buffer, &len, &pos)\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sizeof(input) - 1\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pos\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"*((int *)table.data)\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-9\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-%lu\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"<\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(size_t)snprintf(buffer, max_len, \22-%lu\22, abs_of_less_than_min)\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max_len\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-22\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"greater_than_max\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(unsigned long)((int)(~0U >> 1))\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(size_t)snprintf(buffer, max_len, \22%lu\22, greater_than_max)\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"sysctl_test_suite\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 387, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"sysctl_test_cases\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 373, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 374, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 375, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 376, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 377, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 378, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 379, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 380, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 381, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 382, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 383, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 22, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"i_zero\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 12, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"i_one_hundred\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 13, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 49, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 52, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 58, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 95, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 104, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 136, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 140, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 204, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 206, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 209, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 236, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 238, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 265, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 267, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 268, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 269, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 299, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 330, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 335, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 363, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [24 x i8] c"../kernel/sysctl-test.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 364, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @sysctl_test_suite, ptr @sysctl_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @i_zero, ptr @i_one_hundred, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_test_cases to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i_zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i_one_hundred to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_api_dointvec_null_tbl_data(ptr noundef %test) #0 align 64 {
entry:
  %null_data_table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion70 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %null_data_table) #5
  %0 = call ptr @memcpy(ptr %null_data_table, ptr @__const.sysctl_test_api_dointvec_null_tbl_data.null_data_table, i32 36)
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4, i32 noundef 1052096) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %pos, align 8, !annotation !100
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1234, ptr %len, align 4
  %call1 = call i32 @proc_dointvec(ptr noundef nonnull %null_data_table, i32 noundef 0, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 51, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.14, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv4 = sext i32 %call1 to i64
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv4, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #5
  %19 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %20 = call ptr @memset(ptr %19, i32 255, i32 24)
  %21 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %22 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %23 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 52, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %24 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.11, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %25 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %27 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %28 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.12, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %29 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.13, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %30 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %31 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.15, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = zext i32 %18 to i64
  %32 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp31 = icmp eq i32 %18, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #5
  %33 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1234, ptr %len, align 4
  %call40 = call i32 @proc_dointvec(ptr noundef nonnull %null_data_table, i32 noundef 1, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #5
  %34 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %35 = call ptr @memset(ptr %34, i32 255, i32 24)
  %36 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %37 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %38 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 60, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %39 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.11, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %40 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %42 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %43 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.12, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %44 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.13, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %45 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %46 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.16, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %conv58 = sext i32 %call40 to i64
  %47 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv58, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp60 = icmp eq i32 %call40, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #5
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion70) #5
  %50 = getelementptr inbounds i8, ptr %__assertion70, i32 32
  %51 = call ptr @memset(ptr %50, i32 255, i32 24)
  %52 = ptrtoint ptr %__assertion70 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %test, ptr %__assertion70, align 8
  %type73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 1
  %53 = ptrtoint ptr %type73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %type73, align 4
  %line74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 2
  %54 = ptrtoint ptr %line74 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 61, ptr %line74, align 8
  %file75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 3
  %55 = ptrtoint ptr %file75 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.11, ptr %file75, align 4
  %message76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4
  %56 = ptrtoint ptr %message76 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %message76, align 8
  %va78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %va78 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %va78, align 4
  %format79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 5
  %58 = ptrtoint ptr %format79 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @kunit_binary_assert_format, ptr %format79, align 8
  %operation80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 1
  %59 = ptrtoint ptr %operation80 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.12, ptr %operation80, align 4
  %left_text81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 2
  %60 = ptrtoint ptr %left_text81 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.13, ptr %left_text81, align 8
  %left_value82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 3
  %61 = ptrtoint ptr %left_value82 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %left_value82, align 8
  %right_text84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 4
  %62 = ptrtoint ptr %right_text84 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.15, ptr %right_text84, align 8
  %right_value85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 5
  %conv86 = zext i32 %49 to i64
  %63 = ptrtoint ptr %right_value85 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv86, ptr %right_value85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp88 = icmp eq i32 %49, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion70, i1 noundef zeroext %cmp88, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion70) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %null_data_table) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_api_dointvec_table_maxlen_unset(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %data_maxlen_unset_table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data_maxlen_unset_table) #5
  %1 = getelementptr inbounds i8, ptr %data_maxlen_unset_table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %data_maxlen_unset_table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %data_maxlen_unset_table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %data_maxlen_unset_table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4, i32 noundef 1052096) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %pos, align 8, !annotation !100
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1234, ptr %len, align 4
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %data_maxlen_unset_table, i32 noundef 0, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %14 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 97, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.17, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call2 to i64
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %30 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %31 = call ptr @memset(ptr %30, i32 255, i32 24)
  %32 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %33 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %34 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 98, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %35 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.11, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %36 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %38 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %39 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.12, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %40 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.13, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %41 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %left_value26, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %42 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.15, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %conv30 = zext i32 %29 to i64
  %43 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32 = icmp eq i32 %29, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  %44 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1234, ptr %len, align 4
  %call41 = call i32 @proc_dointvec(ptr noundef nonnull %data_maxlen_unset_table, i32 noundef 1, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion43) #5
  %45 = getelementptr inbounds i8, ptr %__assertion43, i32 32
  %46 = call ptr @memset(ptr %45, i32 255, i32 24)
  %47 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion43, align 8
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %48 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %49 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 106, ptr %line47, align 8
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %50 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.11, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %51 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message49, align 8
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %53 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_assert_format, ptr %format52, align 8
  %operation53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 1
  %54 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.12, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 2
  %55 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.13, ptr %left_text54, align 8
  %left_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 3
  %56 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %left_value55, align 8
  %right_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 4
  %57 = ptrtoint ptr %right_text57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.18, ptr %right_text57, align 8
  %right_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 5
  %conv59 = sext i32 %call41 to i64
  %58 = ptrtoint ptr %right_value58 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv59, ptr %right_value58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp61 = icmp eq i32 %call41, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp61, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion43) #5
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #5
  %61 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %62 = call ptr @memset(ptr %61, i32 255, i32 24)
  %63 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %64 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %65 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 107, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %66 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.11, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %67 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %69 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %70 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.12, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %71 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.13, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %72 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %73 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.15, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = zext i32 %60 to i64
  %74 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp89 = icmp eq i32 %60, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data_maxlen_unset_table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_api_dointvec_table_len_is_zero(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4, i32 noundef 1052096) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %pos, align 8, !annotation !100
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 0, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %14 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 137, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call2 to i64
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %30 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %31 = call ptr @memset(ptr %30, i32 255, i32 24)
  %32 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %33 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %34 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 138, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %35 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.11, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %36 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %38 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %39 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.12, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %40 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.13, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %41 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %left_value26, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %42 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.15, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %conv30 = zext i32 %29 to i64
  %43 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32 = icmp eq i32 %29, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  %call41 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 1, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion43) #5
  %44 = getelementptr inbounds i8, ptr %__assertion43, i32 32
  %45 = call ptr @memset(ptr %44, i32 255, i32 24)
  %46 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion43, align 8
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %47 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %48 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 141, ptr %line47, align 8
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %49 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.11, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %50 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message49, align 8
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %52 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_binary_assert_format, ptr %format52, align 8
  %operation53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 1
  %53 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.12, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 2
  %54 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.13, ptr %left_text54, align 8
  %left_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 3
  %55 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %left_value55, align 8
  %right_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 4
  %56 = ptrtoint ptr %right_text57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.20, ptr %right_text57, align 8
  %right_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 5
  %conv59 = sext i32 %call41 to i64
  %57 = ptrtoint ptr %right_value58 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv59, ptr %right_value58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp61 = icmp eq i32 %call41, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp61, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion43) #5
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #5
  %60 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %61 = call ptr @memset(ptr %60, i32 255, i32 24)
  %62 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %63 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %64 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 142, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %65 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.11, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %66 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %68 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %69 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.12, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %70 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.13, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %71 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %72 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.15, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = zext i32 %59 to i64
  %73 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp89 = icmp eq i32 %59, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_api_dointvec_table_read_but_position_set(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4, i32 noundef 1052096) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1234, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %pos, align 8
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 0, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %14 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 176, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call2 to i64
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %30 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %31 = call ptr @memset(ptr %30, i32 255, i32 24)
  %32 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %33 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %34 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 177, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %35 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.11, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %36 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %38 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %39 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.12, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %40 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.13, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %41 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %left_value26, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %42 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.15, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %conv30 = zext i32 %29 to i64
  %43 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32 = icmp eq i32 %29, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_dointvec_read_happy_single_positive(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %pos, align 8
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4, i32 noundef 1052096) #5
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 13, ptr %data, align 4
  %call3 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 0, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %15 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %16 = call ptr @memset(ptr %15, i32 255, i32 24)
  %17 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 205, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %21 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %24 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %25 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %26 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %27 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.21, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv6 = sext i32 %call3 to i64
  %28 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv6, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #5
  %31 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %34 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %35 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 206, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %36 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.11, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %37 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %39 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %40 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.12, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %41 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.22, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %42 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 3, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %43 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.15, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %conv31 = zext i32 %30 to i64
  %44 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv31, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp33 = icmp eq i32 %30, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #5
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 %46
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion43) #5
  %48 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %test, ptr %__assertion43, align 4
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %49 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %50 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 209, ptr %line47, align 4
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %51 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.11, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %52 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %message49, align 4
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %54 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @kunit_binary_str_assert_format, ptr %format52, align 4
  %operation53 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 1
  %55 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.12, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 2
  %56 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.24, ptr %left_text54, align 4
  %left_value55 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 3
  %57 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.23, ptr %left_value55, align 4
  %right_text56 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 4
  %58 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.25, ptr %right_text56, align 4
  %right_value57 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 5
  %59 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i, ptr %right_value57, align 4
  %call59 = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.23, ptr noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp60, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion43) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_dointvec_read_happy_single_negative(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %pos, align 8
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 5, i32 noundef 1052096) #5
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -16, ptr %data, align 4
  %call3 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 0, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %15 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %16 = call ptr @memset(ptr %15, i32 255, i32 24)
  %17 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 235, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %21 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %24 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %25 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %26 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %27 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.21, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv6 = sext i32 %call3 to i64
  %28 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv6, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #5
  %31 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %34 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %35 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 236, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %36 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.11, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %37 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %39 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %40 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.12, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %41 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.26, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %42 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 4, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %43 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.15, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %conv31 = zext i32 %30 to i64
  %44 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv31, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp33 = icmp eq i32 %30, 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #5
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 %46
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion43) #5
  %48 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %test, ptr %__assertion43, align 4
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %49 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %50 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 238, ptr %line47, align 4
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %51 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.11, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %52 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %message49, align 4
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %54 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @kunit_binary_str_assert_format, ptr %format52, align 4
  %operation53 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 1
  %55 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.12, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 2
  %56 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.28, ptr %left_text54, align 4
  %left_value55 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 3
  %57 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.27, ptr %left_value55, align 4
  %right_text56 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 4
  %58 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.25, ptr %right_text56, align 4
  %right_value57 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion43, i32 0, i32 5
  %59 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i, ptr %right_value57, align 4
  %call59 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.27, ptr noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp60, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion43) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_dointvec_write_happy_single_positive(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %pos, align 8
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 1, i32 noundef 1052096) #5
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 57, ptr %call.i.i, align 1
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 1, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %15 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %16 = call ptr @memset(ptr %15, i32 255, i32 24)
  %17 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 266, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %21 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %24 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %25 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %26 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %27 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.29, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call2 to i64
  %28 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %31 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %34 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %35 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 267, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %36 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.11, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %37 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %39 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %40 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.12, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %41 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.30, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %42 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1, ptr %left_value26, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %43 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.15, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %conv30 = zext i32 %30 to i64
  %44 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp32 = icmp eq i32 %30, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #5
  %47 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %50 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %51 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 268, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %52 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.11, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %53 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %55 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %56 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.12, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %57 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.30, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %58 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %59 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.31, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %60 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %46, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %46)
  %cmp60 = icmp eq i64 %46, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #5
  %61 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data1, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #5
  %65 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %66 = call ptr @memset(ptr %65, i32 255, i32 24)
  %67 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %68 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %69 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 269, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %70 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.11, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %71 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %73 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %74 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.12, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %75 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.32, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %76 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 9, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %77 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.33, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = sext i32 %64 to i64
  %78 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %64)
  %cmp89 = icmp eq i32 %64, 9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_dointvec_write_happy_single_negative(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %pos, align 8
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 2, i32 noundef 1052096) #5
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 11577, ptr %call.i.i, align 1
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 1, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %15 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %16 = call ptr @memset(ptr %15, i32 255, i32 24)
  %17 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 296, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %21 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %24 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.12, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %25 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %26 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %27 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.29, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call2 to i64
  %28 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %31 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %34 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %35 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 297, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %36 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.11, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %37 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %39 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %40 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.12, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %41 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.30, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %42 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 2, ptr %left_value26, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %43 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.15, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %conv30 = zext i32 %30 to i64
  %44 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp32 = icmp eq i32 %30, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #5
  %47 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %50 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %51 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 298, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %52 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.11, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %53 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %55 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %56 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.12, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %57 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.30, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %58 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 2, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %59 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.31, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %60 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %46, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %46)
  %cmp60 = icmp eq i64 %46, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #5
  %61 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data1, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #5
  %65 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %66 = call ptr @memset(ptr %65, i32 255, i32 24)
  %67 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %68 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %69 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 299, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %70 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.11, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %71 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %73 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %74 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.12, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %75 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.34, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %76 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 -9, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %77 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.33, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = sext i32 %64 to i64
  %78 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %64)
  %cmp89 = icmp eq i32 %64, -9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_api_dointvec_write_single_less_int_min(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_assert, align 8
  %__assertion72 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %pos, align 8
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 32, i32 noundef 1052096) #5
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %call.i.i, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef -2147483647)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %14 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 333, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.36, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.37, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %call2 to i64
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.38, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 32, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2)
  %cmp = icmp ult i32 %call2, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %call13 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 1, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #5
  %28 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %31 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %32 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 336, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %33 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.11, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %34 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %36 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %37 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.12, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %38 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.39, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %39 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -22, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %40 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.29, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %conv31 = sext i32 %call13 to i64
  %41 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv31, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call13)
  %cmp33 = icmp eq i32 %call13, -22
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #5
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion43) #5
  %44 = getelementptr inbounds i8, ptr %__assertion43, i32 32
  %45 = call ptr @memset(ptr %44, i32 255, i32 24)
  %46 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion43, align 8
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %47 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %48 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 337, ptr %line47, align 8
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %49 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.11, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %50 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message49, align 8
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %52 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_binary_assert_format, ptr %format52, align 8
  %operation53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 1
  %53 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.12, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 2
  %54 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.38, ptr %left_text54, align 8
  %left_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 3
  %55 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 32, ptr %left_value55, align 8
  %right_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 4
  %56 = ptrtoint ptr %right_text57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.15, ptr %right_text57, align 8
  %right_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 5
  %conv59 = zext i32 %43 to i64
  %57 = ptrtoint ptr %right_value58 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv59, ptr %right_value58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %43)
  %cmp61 = icmp eq i32 %43, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp61, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion43) #5
  %58 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data1, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion72) #5
  %62 = getelementptr inbounds i8, ptr %__assertion72, i32 32
  %63 = call ptr @memset(ptr %62, i32 255, i32 24)
  %64 = ptrtoint ptr %__assertion72 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion72, align 8
  %type75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 1
  %65 = ptrtoint ptr %type75 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type75, align 4
  %line76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 2
  %66 = ptrtoint ptr %line76 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 338, ptr %line76, align 8
  %file77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 3
  %67 = ptrtoint ptr %file77 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.11, ptr %file77, align 4
  %message78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4
  %68 = ptrtoint ptr %message78 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message78, align 8
  %va80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va80 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va80, align 4
  %format81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 5
  %70 = ptrtoint ptr %format81 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_binary_assert_format, ptr %format81, align 8
  %operation82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 1
  %71 = ptrtoint ptr %operation82 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.12, ptr %operation82, align 4
  %left_text83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 2
  %72 = ptrtoint ptr %left_text83 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.13, ptr %left_text83, align 8
  %left_value84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 3
  %73 = ptrtoint ptr %left_value84 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %left_value84, align 8
  %right_text86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 4
  %74 = ptrtoint ptr %right_text86 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.33, ptr %right_text86, align 8
  %right_value87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 5
  %conv88 = sext i32 %61 to i64
  %75 = ptrtoint ptr %right_value87 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv88, ptr %right_value87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp90 = icmp eq i32 %61, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion72, i1 noundef zeroext %cmp90, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion72) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_test_api_dointvec_write_single_greater_int_max(ptr noundef %test) #0 align 64 {
entry:
  %data = alloca i32, align 4
  %table = alloca %struct.ctl_table, align 4
  %len = alloca i32, align 4
  %pos = alloca i64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table) #5
  %1 = getelementptr inbounds i8, ptr %table, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %table, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 420, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 5
  %8 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @proc_dointvec, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %10 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i_zero, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %11 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @i_one_hundred, ptr %extra2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #5
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %pos, align 8
  %call.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 32, i32 noundef 1052096) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #5
  %14 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 363, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.40, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.41, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2147483648, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.42, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 2147483647, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #5
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %call.i.i, i32 noundef 32, ptr noundef nonnull @.str.43, i32 noundef -2147483648)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #5
  %28 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %31 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %32 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 366, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %33 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.11, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %34 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %36 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %37 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.36, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %38 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.44, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %conv27 = zext i32 %call11 to i64
  %39 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv27, ptr %left_value26, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %40 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.38, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %41 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 32, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call11)
  %cmp32 = icmp ult i32 %call11, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #5
  %call41 = call i32 @proc_dointvec(ptr noundef nonnull %table, i32 noundef 1, ptr noundef %call.i.i, ptr noundef nonnull %len, ptr noundef nonnull %pos) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion43) #5
  %42 = getelementptr inbounds i8, ptr %__assertion43, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion43, align 8
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %45 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %46 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 368, ptr %line47, align 8
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %47 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.11, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %48 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message49, align 8
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %50 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format52, align 8
  %operation53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 1
  %51 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.12, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 2
  %52 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.39, ptr %left_text54, align 8
  %left_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 3
  %53 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -22, ptr %left_value55, align 8
  %right_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 4
  %54 = ptrtoint ptr %right_text57 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.29, ptr %right_text57, align 8
  %right_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 5
  %conv59 = sext i32 %call41 to i64
  %55 = ptrtoint ptr %right_value58 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv59, ptr %right_value58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call41)
  %cmp61 = icmp eq i32 %call41, -22
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp61, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion43) #5
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #5
  %58 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %59 = call ptr @memset(ptr %58, i32 255, i32 24)
  %60 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %61 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %62 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 369, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %63 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.11, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %64 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %66 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %67 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.12, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %68 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.38, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %69 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 32, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %70 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.15, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = zext i32 %57 to i64
  %71 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %57)
  %cmp89 = icmp eq i32 %57, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #5
  %72 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data1, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion100) #5
  %76 = getelementptr inbounds i8, ptr %__assertion100, i32 32
  %77 = call ptr @memset(ptr %76, i32 255, i32 24)
  %78 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %test, ptr %__assertion100, align 8
  %type103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %79 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %type103, align 4
  %line104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %80 = ptrtoint ptr %line104 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 370, ptr %line104, align 8
  %file105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %81 = ptrtoint ptr %file105 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.11, ptr %file105, align 4
  %message106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %82 = ptrtoint ptr %message106 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %message106, align 8
  %va108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %va108 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %va108, align 4
  %format109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %84 = ptrtoint ptr %format109 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @kunit_binary_assert_format, ptr %format109, align 8
  %operation110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 1
  %85 = ptrtoint ptr %operation110 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.12, ptr %operation110, align 4
  %left_text111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 2
  %86 = ptrtoint ptr %left_text111 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.13, ptr %left_text111, align 8
  %left_value112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 3
  %87 = ptrtoint ptr %left_value112 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %left_value112, align 8
  %right_text114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 4
  %88 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.33, ptr %right_text114, align 8
  %right_value115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 5
  %conv116 = sext i32 %75 to i64
  %89 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv116, ptr %right_value115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp118 = icmp eq i32 %75, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext %cmp118, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion100) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_str_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65, !66, !68, !70, !72, !74, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../kernel/sysctl-test.c", i32 392, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../kernel/sysctl-test.c", i32 394, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @sysctl_test_suite, !7, !"sysctl_test_suite", i1 false, i1 false}
!7 = !{!"../kernel/sysctl-test.c", i32 387, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/sysctl-test.c", i32 374, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/sysctl-test.c", i32 375, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/sysctl-test.c", i32 376, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/sysctl-test.c", i32 377, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/sysctl-test.c", i32 378, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/sysctl-test.c", i32 379, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/sysctl-test.c", i32 380, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/sysctl-test.c", i32 381, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/sysctl-test.c", i32 382, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/sysctl-test.c", i32 383, i32 2}
!28 = !{ptr @sysctl_test_cases, !29, !"sysctl_test_cases", i1 false, i1 false}
!29 = !{!"../kernel/sysctl-test.c", i32 373, i32 26}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/sysctl-test.c", i32 22, i32 15}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/sysctl-test.c", i32 49, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/sysctl-test.c", i32 52, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/sysctl-test.c", i32 58, i32 2}
!41 = !{ptr @i_zero, !42, !"i_zero", i1 false, i1 false}
!42 = !{!"../kernel/sysctl-test.c", i32 12, i32 12}
!43 = !{ptr @i_one_hundred, !44, !"i_one_hundred", i1 false, i1 false}
!44 = !{!"../kernel/sysctl-test.c", i32 13, i32 12}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/sysctl-test.c", i32 95, i32 2}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/sysctl-test.c", i32 104, i32 2}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/sysctl-test.c", i32 136, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/sysctl-test.c", i32 140, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/sysctl-test.c", i32 204, i32 2}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/sysctl-test.c", i32 206, i32 2}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/sysctl-test.c", i32 209, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/sysctl-test.c", i32 236, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/sysctl-test.c", i32 238, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/sysctl-test.c", i32 265, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/sysctl-test.c", i32 267, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/sysctl-test.c", i32 268, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/sysctl-test.c", i32 269, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/sysctl-test.c", i32 299, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/sysctl-test.c", i32 330, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/sysctl-test.c", i32 335, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/sysctl-test.c", i32 363, i32 2}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/sysctl-test.c", i32 364, i32 2}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
