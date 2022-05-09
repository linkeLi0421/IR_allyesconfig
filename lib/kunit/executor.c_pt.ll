; ModuleID = '/llk/IR_all_yes/lib/kunit/executor.c_pt.bc'
source_filename = "../lib/kunit/executor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.suite_set = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_test_filter = type { ptr, ptr }
%struct.kunit_binary_str_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }

@__param_str_filter_glob = internal constant [18 x i8] c"kunit.filter_glob\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@filter_glob_param = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_filter_glob = internal constant %struct.kernel_param { ptr @__param_str_filter_glob, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @filter_glob_param } }, section "__param", align 4
@__UNIQUE_ID_filter_globtype174 = internal constant [33 x i8] c"kunit.parmtype=filter_glob:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_filter_glob175 = internal constant [108 x i8] c"kunit.parm=filter_glob:Filter which KUnit test suites/tests run at boot-time, e.g. list* or list*.*del_test\00", section ".modinfo", align 1
@__param_str_action = internal constant [13 x i8] c"kunit.action\00", align 1
@action_param = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_action = internal constant %struct.kernel_param { ptr @__param_str_action, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @action_param } }, section "__param", align 4
@__UNIQUE_ID_actiontype176 = internal constant [28 x i8] c"kunit.parmtype=action:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_action177 = internal constant [155 x i8] c"kunit.parm=action:Changes KUnit executor behavior, valid values are:\0A<none>: run the tests like normal\0A'list' to list test names instead of running them.\0A\00", section ".modinfo", align 1
@kunit_shutdown = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_kunit_shutdown = internal constant %struct.kernel_param { ptr @___asan_gen_.59, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @kunit_shutdown } }, section "__param", align 4
@__kunit_suites_start = external dso_local constant [0 x ptr], align 4
@__kunit_suites_end = external dso_local constant [0 x ptr], align 4
@__const.kunit_run_all_tests.suite_set = private unnamed_addr constant %struct.suite_set { ptr @__kunit_suites_start, ptr @__kunit_suites_end }, align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"list\00", [27 x i8] zeroinitializer }, align 32
@kunit_run_all_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013kunit executor: unknown action '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kunit_run_all_tests\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/kunit/executor.c\00", [43 x i8] zeroinitializer }, align 32
@kunit_run_all_tests._entry_ptr = internal global ptr @kunit_run_all_tests._entry, section ".printk_index", align 4
@__UNIQUE_ID_array178 = internal global [2 x ptr] [ptr @executor_test_suite, ptr null], align 4
@__UNIQUE_ID_suites179 = internal global ptr @__UNIQUE_ID_array178, section ".kunit_test_suites", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kunit_print_tap_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016TAP version 14\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kunit_print_tap_header\00", [41 x i8] zeroinitializer }, align 32
@kunit_print_tap_header._entry_ptr = internal global ptr @kunit_print_tap_header._entry, section ".printk_index", align 4
@kunit_print_tap_header._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0161..%d\0A\00", [23 x i8] zeroinitializer }, align 32
@kunit_print_tap_header._entry_ptr.8 = internal global ptr @kunit_print_tap_header._entry.6, section ".printk_index", align 4
@kunit_exec_list_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kunit_exec_list_tests\00", [42 x i8] zeroinitializer }, align 32
@kunit_exec_list_tests._entry_ptr = internal global ptr @kunit_exec_list_tests._entry, section ".printk_index", align 4
@kunit_exec_list_tests._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s.%s\0A\00", [23 x i8] zeroinitializer }, align 32
@kunit_exec_list_tests._entry_ptr.12 = internal global ptr @kunit_exec_list_tests._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poweroff\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"halt\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reboot\00", [25 x i8] zeroinitializer }, align 32
@executor_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"kunit_executor_test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @executor_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@executor_test_cases = internal global { [6 x %struct.kunit_case], [40 x i8] } { [6 x %struct.kunit_case] [%struct.kunit_case { ptr @parse_filter_test, ptr @.str.16, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @filter_subsuite_test, ptr @.str.17, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @filter_subsuite_test_glob_test, ptr @.str.18, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @filter_subsuite_to_empty_test, ptr @.str.19, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @filter_suites_test, ptr @.str.20, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parse_filter_test\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"filter_subsuite_test\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"filter_subsuite_test_glob_test\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"filter_subsuite_to_empty_test\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"filter_suites_test\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"suite\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lib/kunit/executor_test.c\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"filter.suite_glob\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\22suite\22\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"filter.test_glob\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"suite.test\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\22test\22\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"suite2\00", [25 x i8] zeroinitializer }, align 32
@__const.filter_subsuite_test.filter = private unnamed_addr constant %struct.kunit_test_filter { ptr @.str.30, ptr null }, align 8
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"suite1\00", [25 x i8] zeroinitializer }, align 32
@dummy_test_cases = internal global { [3 x %struct.kunit_case], [36 x i8] } { [3 x %struct.kunit_case] [%struct.kunit_case { ptr @dummy_test, ptr @.str.37, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @dummy_test, ptr @.str.38, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"filtered\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"filtered[0]\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(const char *)filtered[0]->name\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\22suite2\22\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"filtered[1]\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test1\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test2\00", [26 x i8] zeroinitializer }, align 32
@__const.filter_subsuite_test_glob_test.filter = private unnamed_addr constant %struct.kunit_test_filter { ptr @.str.30, ptr @.str.38 }, align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"filtered[0]->test_cases\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(const char *)filtered[0]->test_cases[0].name\00", [50 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\22test2\22\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"filtered[0]->test_cases[1].name\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not_found\00", [22 x i8] zeroinitializer }, align 32
@__const.filter_subsuite_to_empty_test.filter = private unnamed_addr constant %struct.kunit_test_filter { ptr @.str.43, ptr null }, align 8
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"should be NULL to indicate no match\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"suite0\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"filtered.end - filtered.start\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(ptrdiff_t)1\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"filtered.start\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"filtered.start[0]\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"filtered.start[0][0]\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(const char *)filtered.start[0][0]->name\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\22suite0\22\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"filter_glob_param\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 17, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"action_param\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 18, i32 14 }
@___asan_gen_.59 = private constant [15 x i8] c"kunit_shutdown\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 88, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 245, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 248, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 202, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 203, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 223, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 228, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 184, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 186, i32 35 }
@___asan_gen_.111 = private constant [24 x i8] c"../lib/kunit/executor.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 188, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"executor_test_suite\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 165, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"executor_test_cases\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 156, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 157, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 158, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 159, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 160, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 161, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 31, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 32, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 33, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 37, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 39, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 49, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 53, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"dummy_test_cases\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 20, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 58, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 62, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 63, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 64, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 22, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 23, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 90, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 91, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 92, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 100, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 110, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 142, i32 43 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 148, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 150, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 151, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 152, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [29 x i8] c"../lib/kunit/executor_test.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 153, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_action177, ptr @__UNIQUE_ID_actiontype176, ptr @__UNIQUE_ID_filter_glob175, ptr @__UNIQUE_ID_filter_globtype174, ptr @__UNIQUE_ID_suites179, ptr @__param_action, ptr @__param_filter_glob, ptr @__param_kunit_shutdown, ptr @kunit_exec_list_tests._entry, ptr @kunit_exec_list_tests._entry.10, ptr @kunit_exec_list_tests._entry_ptr, ptr @kunit_exec_list_tests._entry_ptr.12, ptr @kunit_print_tap_header._entry, ptr @kunit_print_tap_header._entry.6, ptr @kunit_print_tap_header._entry_ptr, ptr @kunit_print_tap_header._entry_ptr.8, ptr @kunit_run_all_tests._entry, ptr @kunit_run_all_tests._entry_ptr, ptr @filter_glob_param, ptr @action_param, ptr @kunit_shutdown, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @executor_test_suite, ptr @executor_test_cases, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @dummy_test_cases, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_glob_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_shutdown to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_run_all_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_tap_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_tap_header._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_exec_list_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_exec_list_tests._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @executor_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @executor_test_cases to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_test_cases to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_run_all_tests() local_unnamed_addr #0 align 64 {
entry:
  %suite_set = alloca %struct.suite_set, align 8
  %tmp = alloca %struct.suite_set, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %suite_set) #11
  %0 = load i64, ptr @__const.kunit_run_all_tests.suite_set, align 8
  %1 = ptrtoint ptr %suite_set to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %suite_set, align 8
  %2 = load ptr, ptr @filter_glob_param, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #11
  call fastcc void @kunit_filter_suites(ptr nonnull sret(%struct.suite_set) align 4 %tmp, ptr noundef nonnull %suite_set, ptr noundef nonnull %2)
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tmp, align 8
  %5 = ptrtoint ptr %suite_set to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %suite_set, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = load ptr, ptr @action_param, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %suite_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %suite_set, align 8
  %end.i.i = getelementptr inbounds %struct.suite_set, ptr %suite_set, i32 0, i32 1
  %9 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i, align 4
  %cmp20.i.i = icmp ult ptr %8, %10
  br i1 %cmp20.i.i, label %if.then2.for.body.i.i_crit_edge, label %if.end8.critedge

if.then2.for.body.i.i_crit_edge:                  ; preds = %if.then2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc4.i.i.for.body.i.i_crit_edge, %if.then2.for.body.i.i_crit_edge
  %suites.022.i.i = phi ptr [ %incdec.ptr5.i.i, %for.inc4.i.i.for.body.i.i_crit_edge ], [ %8, %if.then2.for.body.i.i_crit_edge ]
  %num_of_suites.021.i.i = phi i32 [ %num_of_suites.1.lcssa.i.i, %for.inc4.i.i.for.body.i.i_crit_edge ], [ 0, %if.then2.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %suites.022.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %suites.022.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp2.not17.i.i = icmp eq ptr %14, null
  br i1 %cmp2.not17.i.i, label %for.body.i.i.for.inc4.i.i_crit_edge, label %for.body.i.i.for.body3.i.i_crit_edge

for.body.i.i.for.body3.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body3.i.i

for.body.i.i.for.inc4.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc4.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.body.i.i.for.body3.i.i_crit_edge
  %subsuite.019.i.i = phi ptr [ %incdec.ptr.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ %12, %for.body.i.i.for.body3.i.i_crit_edge ]
  %num_of_suites.118.i.i = phi i32 [ %inc.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ %num_of_suites.021.i.i, %for.body.i.i.for.body3.i.i_crit_edge ]
  %inc.i.i = add i32 %num_of_suites.118.i.i, 1
  %incdec.ptr.i.i = getelementptr ptr, ptr %subsuite.019.i.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %16, null
  br i1 %cmp2.not.i.i, label %for.body3.i.i.for.inc4.i.i_crit_edge, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i.i

for.body3.i.i.for.inc4.i.i_crit_edge:             ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc4.i.i

for.inc4.i.i:                                     ; preds = %for.body3.i.i.for.inc4.i.i_crit_edge, %for.body.i.i.for.inc4.i.i_crit_edge
  %num_of_suites.1.lcssa.i.i = phi i32 [ %num_of_suites.021.i.i, %for.body.i.i.for.inc4.i.i_crit_edge ], [ %inc.i.i, %for.body3.i.i.for.inc4.i.i_crit_edge ]
  %incdec.ptr5.i.i = getelementptr ptr, ptr %suites.022.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr5.i.i, %10
  br i1 %cmp.i.i, label %for.inc4.i.i.for.body.i.i_crit_edge, label %for.body.i.preheader

for.inc4.i.i.for.body.i.i_crit_edge:              ; preds = %for.inc4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.preheader:                             ; preds = %for.inc4.i.i
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %num_of_suites.1.lcssa.i.i) #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %suites.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %8, %for.body.i.preheader ]
  %17 = ptrtoint ptr %suites.06.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %suites.06.i, align 4
  %call.i = tail call i32 @__kunit_test_suites_init(ptr noundef %18) #11
  %incdec.ptr.i = getelementptr ptr, ptr %suites.06.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end8_crit_edge

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.else:                                          ; preds = %if.end
  %call = tail call i32 @strcmp(ptr noundef nonnull %6, ptr noundef nonnull dereferenceable(5) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.else
  %call.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %19 = ptrtoint ptr %suite_set to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %suite_set, align 8
  %end.i = getelementptr inbounds %struct.suite_set, ptr %suite_set, i32 0, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %cmp34.i = icmp ult ptr %20, %22
  br i1 %cmp34.i, label %if.then3.for.cond1.preheader.i_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3.for.cond1.preheader.i_crit_edge:         ; preds = %if.then3
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc16.i.for.cond1.preheader.i_crit_edge, %if.then3.for.cond1.preheader.i_crit_edge
  %suites.035.i = phi ptr [ %incdec.ptr17.i, %for.inc16.i.for.cond1.preheader.i_crit_edge ], [ %20, %if.then3.for.cond1.preheader.i_crit_edge ]
  %23 = ptrtoint ptr %suites.035.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %suites.035.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cmp2.not32.i = icmp eq ptr %26, null
  br i1 %cmp2.not32.i, label %for.cond1.preheader.i.for.inc16.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.inc16.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16.i

for.body3.i:                                      ; preds = %for.inc14.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %27 = phi ptr [ %43, %for.inc14.i.for.body3.i_crit_edge ], [ %26, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %i.033.i = phi i32 [ %inc.i, %for.inc14.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %test_cases.i = getelementptr inbounds %struct.kunit_suite, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %test_cases.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %test_cases.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not29.i = icmp eq ptr %31, null
  br i1 %tobool.not29.i, label %for.body3.i.for.inc14.i_crit_edge, label %for.body3.i.do.end9.i_crit_edge

for.body3.i.do.end9.i_crit_edge:                  ; preds = %for.body3.i
  br label %do.end9.i

for.body3.i.for.inc14.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.i

do.end9.i:                                        ; preds = %do.end9.i.do.end9.i_crit_edge, %for.body3.i.do.end9.i_crit_edge
  %test_case.030.i = phi ptr [ %incdec.ptr.i13, %do.end9.i.do.end9.i_crit_edge ], [ %29, %for.body3.i.do.end9.i_crit_edge ]
  %32 = ptrtoint ptr %suites.035.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %suites.035.i, align 4
  %arrayidx11.i = getelementptr ptr, ptr %33, i32 %i.033.i
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx11.i, align 4
  %name12.i = getelementptr inbounds %struct.kunit_case, ptr %test_case.030.i, i32 0, i32 1
  %36 = ptrtoint ptr %name12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name12.i, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %35, ptr noundef %37) #14
  %incdec.ptr.i13 = getelementptr %struct.kunit_case, ptr %test_case.030.i, i32 1
  %38 = ptrtoint ptr %incdec.ptr.i13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %incdec.ptr.i13, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %do.end9.i.for.inc14.i_crit_edge, label %do.end9.i.do.end9.i_crit_edge

do.end9.i.do.end9.i_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

do.end9.i.for.inc14.i_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %do.end9.i.for.inc14.i_crit_edge, %for.body3.i.for.inc14.i_crit_edge
  %inc.i = add i32 %i.033.i, 1
  %40 = ptrtoint ptr %suites.035.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %suites.035.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %inc.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %43, null
  br i1 %cmp2.not.i, label %for.inc14.i.for.inc16.i_crit_edge, label %for.inc14.i.for.body3.i_crit_edge

for.inc14.i.for.body3.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc14.i.for.inc16.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %for.inc14.i.for.inc16.i_crit_edge, %for.cond1.preheader.i.for.inc16.i_crit_edge
  %incdec.ptr17.i = getelementptr ptr, ptr %suites.035.i, i32 1
  %cmp.i14 = icmp ult ptr %incdec.ptr17.i, %22
  br i1 %cmp.i14, label %for.inc16.i.for.cond1.preheader.i_crit_edge, label %for.inc16.i.if.end8_crit_edge

for.inc16.i.if.end8_crit_edge:                    ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc16.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %6) #14
  br label %if.end8

if.end8.critedge:                                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %call11.i.i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 0) #14
  br label %if.end8

if.end8:                                          ; preds = %if.end8.critedge, %do.end, %for.inc16.i.if.end8_crit_edge, %if.then3.if.end8_crit_edge, %for.body.i.if.end8_crit_edge
  %44 = load ptr, ptr @filter_glob_param, align 4
  %tobool9.not = icmp eq ptr %44, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  %45 = ptrtoint ptr %suite_set to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.0.load = load i32, ptr %suite_set, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i32], ptr %suite_set, i32 0, i32 1
  %46 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %47 = inttoptr i32 %.fca.0.load to ptr
  %48 = inttoptr i32 %.fca.1.load to ptr
  %cmp5.i15 = icmp ult ptr %47, %48
  br i1 %cmp5.i15, label %if.then10.for.body.i17_crit_edge, label %if.then10.kunit_free_suite_set.exit_crit_edge

if.then10.kunit_free_suite_set.exit_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_free_suite_set.exit

if.then10.for.body.i17_crit_edge:                 ; preds = %if.then10
  br label %for.body.i17

for.body.i17:                                     ; preds = %kunit_free_subsuite.exit.i.for.body.i17_crit_edge, %if.then10.for.body.i17_crit_edge
  %suites.06.i16 = phi ptr [ %incdec.ptr.i20, %kunit_free_subsuite.exit.i.for.body.i17_crit_edge ], [ %47, %if.then10.for.body.i17_crit_edge ]
  %49 = ptrtoint ptr %suites.06.i16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %suites.06.i16, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool.not6.i.i = icmp eq ptr %52, null
  br i1 %tobool.not6.i.i, label %for.body.i17.kunit_free_subsuite.exit.i_crit_edge, label %for.body.i17.for.body.i.i19_crit_edge

for.body.i17.for.body.i.i19_crit_edge:            ; preds = %for.body.i17
  br label %for.body.i.i19

for.body.i17.kunit_free_subsuite.exit.i_crit_edge: ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_free_subsuite.exit.i

for.body.i.i19:                                   ; preds = %for.body.i.i19.for.body.i.i19_crit_edge, %for.body.i17.for.body.i.i19_crit_edge
  %53 = phi ptr [ %55, %for.body.i.i19.for.body.i.i19_crit_edge ], [ %52, %for.body.i17.for.body.i.i19_crit_edge ]
  %i.07.i.i = phi i32 [ %inc.i.i18, %for.body.i.i19.for.body.i.i19_crit_edge ], [ 0, %for.body.i17.for.body.i.i19_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %53) #11
  %inc.i.i18 = add i32 %i.07.i.i, 1
  %arrayidx.i.i = getelementptr ptr, ptr %50, i32 %inc.i.i18
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %for.body.i.i19.kunit_free_subsuite.exit.i_crit_edge, label %for.body.i.i19.for.body.i.i19_crit_edge

for.body.i.i19.for.body.i.i19_crit_edge:          ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i19

for.body.i.i19.kunit_free_subsuite.exit.i_crit_edge: ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_free_subsuite.exit.i

kunit_free_subsuite.exit.i:                       ; preds = %for.body.i.i19.kunit_free_subsuite.exit.i_crit_edge, %for.body.i17.kunit_free_subsuite.exit.i_crit_edge
  tail call void @kfree(ptr noundef %50) #11
  %incdec.ptr.i20 = getelementptr ptr, ptr %suites.06.i16, i32 1
  %cmp.i21 = icmp ult ptr %incdec.ptr.i20, %48
  br i1 %cmp.i21, label %kunit_free_subsuite.exit.i.for.body.i17_crit_edge, label %kunit_free_subsuite.exit.i.kunit_free_suite_set.exit_crit_edge

kunit_free_subsuite.exit.i.kunit_free_suite_set.exit_crit_edge: ; preds = %kunit_free_subsuite.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_free_suite_set.exit

kunit_free_subsuite.exit.i.for.body.i17_crit_edge: ; preds = %kunit_free_subsuite.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i17

kunit_free_suite_set.exit:                        ; preds = %kunit_free_subsuite.exit.i.kunit_free_suite_set.exit_crit_edge, %if.then10.kunit_free_suite_set.exit_crit_edge
  tail call void @kfree(ptr noundef %47) #11
  br label %if.end11

if.end11:                                         ; preds = %kunit_free_suite_set.exit, %if.end8.if.end11_crit_edge
  %56 = load ptr, ptr @kunit_shutdown, align 4
  %tobool.not.i22 = icmp eq ptr %56, null
  br i1 %tobool.not.i22, label %if.end11.kunit_handle_shutdown.exit_crit_edge, label %if.end.i

if.end11.kunit_handle_shutdown.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_handle_shutdown.exit

if.end.i:                                         ; preds = %if.end11
  %call.i23 = tail call i32 @strcmp(ptr noundef nonnull %56, ptr noundef nonnull dereferenceable(9) @.str.13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool1.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kernel_power_off() #11
  br label %kunit_handle_shutdown.exit

if.else.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull %56, ptr noundef nonnull dereferenceable(5) @.str.14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kernel_halt() #11
  br label %kunit_handle_shutdown.exit

if.else6.i:                                       ; preds = %if.else.i
  %call7.i = tail call i32 @strcmp(ptr noundef nonnull %56, ptr noundef nonnull dereferenceable(7) @.str.15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else6.i.kunit_handle_shutdown.exit_crit_edge

if.else6.i.kunit_handle_shutdown.exit_crit_edge:  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_handle_shutdown.exit

if.then9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kernel_restart(ptr noundef null) #11
  br label %kunit_handle_shutdown.exit

kunit_handle_shutdown.exit:                       ; preds = %if.then9.i, %if.else6.i.kunit_handle_shutdown.exit_crit_edge, %if.then5.i, %if.then2.i, %if.end11.kunit_handle_shutdown.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %suite_set) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunit_filter_suites(ptr noalias nocapture writeonly sret(%struct.suite_set) align 4 %agg.result, ptr nocapture noundef readonly %suite_set, ptr noundef %filter_glob) unnamed_addr #0 align 64 {
entry:
  %filter = alloca %struct.kunit_test_filter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.suite_set, ptr %agg.result, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #11
  %1 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %filter, align 4, !annotation !136
  %2 = getelementptr inbounds %struct.kunit_test_filter, ptr %filter, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !136
  %end = getelementptr inbounds %struct.suite_set, ptr %suite_set, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end, align 4
  %6 = ptrtoint ptr %suite_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suite_set, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr i32 %sub.ptr.sub, 2
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.ptr.div, i32 4) #11
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !137

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %agg.result, align 4
  br label %if.then

if.end7.i:                                        ; preds = %entry
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #17
  %12 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %agg.result, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.if.then_crit_edge, label %if.end

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.end7.i.if.then_crit_edge, %kmalloc_array.exit.thread
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %0, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  call fastcc void @kunit_parse_filter_glob(ptr noundef nonnull %filter, ptr noundef %filter_glob)
  %cmp29.not = icmp eq ptr %5, %7
  br i1 %cmp29.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %umax = call i32 @llvm.umax.i32(i32 %sub.ptr.div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %copy.031 = phi ptr [ %copy.1, %for.inc.for.body_crit_edge ], [ %call8.i, %for.body.preheader ]
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %14 = ptrtoint ptr %suite_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suite_set, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.030
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call4 = call fastcc ptr @kunit_filter_subsuite(ptr noundef %17, ptr noundef nonnull %filter)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr ptr, ptr %copy.031, i32 1
  %18 = ptrtoint ptr %copy.031 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4, ptr %copy.031, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %copy.1 = phi ptr [ %incdec.ptr, %if.then6 ], [ %copy.031, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %copy.0.lcssa = phi ptr [ %call8.i, %if.end.for.end_crit_edge ], [ %copy.1, %for.inc.for.end_crit_edge ]
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %copy.0.lcssa, ptr %0, align 4
  %20 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %filter, align 4
  tail call void @kfree(ptr noundef %21) #11
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunit_parse_filter_glob(ptr nocapture noundef %parsed, ptr noundef %filter_glob) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %filter_glob) #15
  %call1 = tail call ptr @strchr(ptr noundef %filter_glob, i32 noundef 46)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end8.i.i, label %if.end

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %call, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %0 = ptrtoint ptr %parsed to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %parsed, align 4
  %test_glob = getelementptr inbounds %struct.kunit_test_filter, ptr %parsed, i32 0, i32 1
  %1 = ptrtoint ptr %test_glob to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %test_glob, align 4
  %call4 = tail call ptr @strcpy(ptr noundef %call9.i.i, ptr noundef %filter_glob) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %filter_glob to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add5 = add i32 %sub.ptr.sub, 1
  %call9.i.i70 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add5, i32 noundef 3520) #17
  %2 = ptrtoint ptr %parsed to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i70, ptr %parsed, align 4
  %sub = sub i32 %call, %sub.ptr.sub
  %add11 = add i32 %sub, 1
  %call9.i.i98 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add11, i32 noundef 3520) #17
  %test_glob13 = getelementptr inbounds %struct.kunit_test_filter, ptr %parsed, i32 0, i32 1
  %3 = ptrtoint ptr %test_glob13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i98, ptr %test_glob13, align 4
  %4 = ptrtoint ptr %parsed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parsed, align 4
  %call18 = tail call ptr @strncpy(ptr noundef %5, ptr noundef %filter_glob, i32 noundef %sub.ptr.sub)
  %6 = ptrtoint ptr %test_glob13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %test_glob13, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 1
  %call24 = tail call ptr @strncpy(ptr noundef %7, ptr noundef %add.ptr, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kunit_filter_subsuite(ptr nocapture noundef readonly %subsuite, ptr nocapture noundef readonly %filter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subsuite to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsuite, align 4
  %tobool.not62 = icmp eq ptr %1, null
  br i1 %tobool.not62, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %6, %for.body.for.body_crit_edge ]
  %n.064 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc2, %for.body.for.body_crit_edge ]
  %call = tail call zeroext i1 @glob_match(ptr noundef %3, ptr noundef nonnull %4) #18
  %inc = zext i1 %call to i32
  %spec.select = add i32 %n.064, %inc
  %inc2 = add i32 %i.063, 1
  %arrayidx = getelementptr ptr, ptr %subsuite, i32 %inc2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp = icmp eq i32 %spec.select, 0
  br i1 %cmp, label %for.end.cleanup_crit_edge, label %if.end4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %for.end
  %add = add i32 %spec.select, 1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #11
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end4.cleanup_crit_edge, label %if.end7.i, !prof !137

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #17
  %tobool6.not = icmp eq ptr %call8.i, null
  br i1 %tobool6.not, label %if.end7.i.cleanup_crit_edge, label %for.cond9.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond9.preheader:                              ; preds = %if.end7.i
  %10 = ptrtoint ptr %subsuite to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subsuite, align 4
  %cmp11.not65 = icmp eq ptr %11, null
  br i1 %cmp11.not65, label %for.cond9.preheader.for.end29_crit_edge, label %for.body12.lr.ph

for.cond9.preheader.for.end29_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end29

for.body12.lr.ph:                                 ; preds = %for.cond9.preheader
  %test_glob = getelementptr inbounds %struct.kunit_test_filter, ptr %filter, i32 0, i32 1
  br label %for.body12

for.body12:                                       ; preds = %for.inc27.for.body12_crit_edge, %for.body12.lr.ph
  %12 = phi ptr [ %11, %for.body12.lr.ph ], [ %42, %for.inc27.for.body12_crit_edge ]
  %n.267 = phi i32 [ 0, %for.body12.lr.ph ], [ %n.3, %for.inc27.for.body12_crit_edge ]
  %i.166 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc28, %for.inc27.for.body12_crit_edge ]
  %13 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filter, align 4
  %call17 = tail call zeroext i1 @glob_match(ptr noundef %14, ptr noundef nonnull %12) #18
  br i1 %call17, label %if.end19, label %for.body12.for.inc27_crit_edge

for.body12.for.inc27_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

if.end19:                                         ; preds = %for.body12
  %15 = ptrtoint ptr %test_glob to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %test_glob, align 4
  %test_cases.i = getelementptr inbounds %struct.kunit_suite, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %test_cases.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %test_cases.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not42.i = icmp eq ptr %20, null
  br i1 %tobool.not42.i, label %if.end19.for.inc27_crit_edge, label %for.body.lr.ph.i

if.end19.for.inc27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

for.body.lr.ph.i:                                 ; preds = %if.end19
  %tobool1.not.i = icmp eq ptr %16, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %test_case.045.i = phi ptr [ %18, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %n.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %n.1.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool1.not.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.kunit_case, ptr %test_case.045.i, i32 0, i32 1
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %call.i = tail call zeroext i1 @glob_match(ptr noundef nonnull %16, ptr noundef %22) #18
  br i1 %call.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %inc.i = add i32 %n.043.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ %inc.i, %if.then.i ], [ %n.043.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.kunit_case, ptr %test_case.045.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1.i)
  %cmp.i = icmp eq i32 %n.1.i, 0
  br i1 %cmp.i, label %for.end.i.for.inc27_crit_edge, label %if.end3.i

for.end.i.for.inc27_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

if.end3.i:                                        ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 532) #19
  %26 = call ptr @memcpy(ptr %call7.i.i55, ptr %12, i32 532)
  %add.i = add i32 %n.1.i, 1
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 20) #11
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %if.end3.i.kcalloc.exit.i_crit_edge, label %if.end7.i.i.i, !prof !137

if.end3.i.kcalloc.exit.i_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kcalloc.exit.i

if.end7.i.i.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = extractvalue { i32, i1 } %27, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #17
  br label %kcalloc.exit.i

kcalloc.exit.i:                                   ; preds = %if.end7.i.i.i, %if.end3.i.kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %if.end3.i.kcalloc.exit.i_crit_edge ]
  %30 = ptrtoint ptr %test_cases.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %test_cases.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool9.not46.i = icmp eq ptr %33, null
  br i1 %tobool9.not46.i, label %kcalloc.exit.i.kunit_filter_tests.exit_crit_edge, label %kcalloc.exit.i.for.body10.i_crit_edge

kcalloc.exit.i.for.body10.i_crit_edge:            ; preds = %kcalloc.exit.i
  br label %for.body10.i

kcalloc.exit.i.kunit_filter_tests.exit_crit_edge: ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_filter_tests.exit

for.body10.i:                                     ; preds = %for.inc18.i.for.body10.i_crit_edge, %kcalloc.exit.i.for.body10.i_crit_edge
  %test_case.149.i = phi ptr [ %incdec.ptr19.i, %for.inc18.i.for.body10.i_crit_edge ], [ %31, %kcalloc.exit.i.for.body10.i_crit_edge ]
  %n.247.i = phi i32 [ %n.3.i, %for.inc18.i.for.body10.i_crit_edge ], [ 0, %kcalloc.exit.i.for.body10.i_crit_edge ]
  br i1 %tobool1.not.i, label %for.body10.i.if.then15.i_crit_edge, label %lor.lhs.false12.i

for.body10.i.if.then15.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

lor.lhs.false12.i:                                ; preds = %for.body10.i
  %name13.i = getelementptr inbounds %struct.kunit_case, ptr %test_case.149.i, i32 0, i32 1
  %34 = ptrtoint ptr %name13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name13.i, align 4
  %call14.i = tail call zeroext i1 @glob_match(ptr noundef nonnull %16, ptr noundef %35) #18
  br i1 %call14.i, label %lor.lhs.false12.i.if.then15.i_crit_edge, label %lor.lhs.false12.i.for.inc18.i_crit_edge

lor.lhs.false12.i.for.inc18.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc18.i

lor.lhs.false12.i.if.then15.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false12.i.if.then15.i_crit_edge, %for.body10.i.if.then15.i_crit_edge
  %inc16.i = add i32 %n.247.i, 1
  %arrayidx.i = getelementptr %struct.kunit_case, ptr %retval.0.i.i.i, i32 %n.247.i
  %36 = call ptr @memcpy(ptr %arrayidx.i, ptr %test_case.149.i, i32 20)
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %if.then15.i, %lor.lhs.false12.i.for.inc18.i_crit_edge
  %n.3.i = phi i32 [ %inc16.i, %if.then15.i ], [ %n.247.i, %lor.lhs.false12.i.for.inc18.i_crit_edge ]
  %incdec.ptr19.i = getelementptr %struct.kunit_case, ptr %test_case.149.i, i32 1
  %37 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %incdec.ptr19.i, align 4
  %tobool9.not.i = icmp eq ptr %38, null
  br i1 %tobool9.not.i, label %for.inc18.i.kunit_filter_tests.exit_crit_edge, label %for.inc18.i.for.body10.i_crit_edge

for.inc18.i.for.body10.i_crit_edge:               ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10.i

for.inc18.i.kunit_filter_tests.exit_crit_edge:    ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_filter_tests.exit

kunit_filter_tests.exit:                          ; preds = %for.inc18.i.kunit_filter_tests.exit_crit_edge, %kcalloc.exit.i.kunit_filter_tests.exit_crit_edge
  %test_cases21.i = getelementptr inbounds %struct.kunit_suite, ptr %call7.i.i55, i32 0, i32 3
  %39 = ptrtoint ptr %test_cases21.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i.i.i, ptr %test_cases21.i, align 8
  %tobool22.not = icmp eq ptr %call7.i.i55, null
  br i1 %tobool22.not, label %kunit_filter_tests.exit.for.inc27_crit_edge, label %if.then23

kunit_filter_tests.exit.for.inc27_crit_edge:      ; preds = %kunit_filter_tests.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

if.then23:                                        ; preds = %kunit_filter_tests.exit
  call void @__sanitizer_cov_trace_pc() #13
  %inc24 = add i32 %n.267, 1
  %arrayidx25 = getelementptr ptr, ptr %call8.i, i32 %n.267
  %40 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i55, ptr %arrayidx25, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %if.then23, %kunit_filter_tests.exit.for.inc27_crit_edge, %for.end.i.for.inc27_crit_edge, %if.end19.for.inc27_crit_edge, %for.body12.for.inc27_crit_edge
  %n.3 = phi i32 [ %inc24, %if.then23 ], [ %n.267, %kunit_filter_tests.exit.for.inc27_crit_edge ], [ %n.267, %for.body12.for.inc27_crit_edge ], [ %n.267, %for.end.i.for.inc27_crit_edge ], [ %n.267, %if.end19.for.inc27_crit_edge ]
  %inc28 = add i32 %i.166, 1
  %arrayidx10 = getelementptr ptr, ptr %subsuite, i32 %inc28
  %41 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx10, align 4
  %cmp11.not = icmp eq ptr %42, null
  br i1 %cmp11.not, label %for.inc27.for.end29_crit_edge, label %for.inc27.for.body12_crit_edge

for.inc27.for.body12_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end29

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %for.cond9.preheader.for.end29_crit_edge
  %n.2.lcssa = phi i32 [ 0, %for.cond9.preheader.for.end29_crit_edge ], [ %n.3, %for.inc27.for.end29_crit_edge ]
  %arrayidx30 = getelementptr ptr, ptr %call8.i, i32 %n.2.lcssa
  %43 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx30, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %if.end7.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8.i, %for.end29 ], [ null, %for.end.cleanup_crit_edge ], [ null, %if.end7.i.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local zeroext i1 @glob_match(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kunit_test_suites_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_halt() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_filter_test(ptr noundef %test) #0 align 64 {
entry:
  %filter = alloca %struct.kunit_test_filter, align 8
  %__assertion = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion7 = alloca %struct.kunit_unary_assert, align 4
  %__assertion29 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion56 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #11
  %0 = ptrtoint ptr %filter to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %filter, align 8
  call fastcc void @kunit_parse_filter_glob(ptr noundef nonnull %filter, ptr noundef nonnull @.str.21)
  %1 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %filter, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #11
  %3 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %5 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.22, ptr %file, align 4
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
  store ptr @kunit_binary_str_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.23, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.24, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 3
  %12 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 4
  %13 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.25, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 5
  %14 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.21, ptr %right_value, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion7) #11
  %15 = getelementptr inbounds i8, ptr %__assertion7, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !136
  %17 = ptrtoint ptr %__assertion7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion7, align 4
  %type10 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 1
  %18 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type10, align 4
  %line11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 2
  %19 = ptrtoint ptr %line11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 33, ptr %line11, align 4
  %file12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 3
  %20 = ptrtoint ptr %file12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.22, ptr %file12, align 4
  %message13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 4
  %21 = ptrtoint ptr %message13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message13, align 4
  %va15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va15, align 4
  %format16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 5
  %23 = ptrtoint ptr %format16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_unary_assert_format, ptr %format16, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion7, i32 0, i32 1
  %24 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.26, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion7, i32 0, i32 2
  %25 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %expected_true, align 4
  %test_glob = getelementptr inbounds %struct.kunit_test_filter, ptr %filter, i32 0, i32 1
  %26 = ptrtoint ptr %test_glob to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %test_glob, align 4
  %tobool.not = icmp eq ptr %27, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion7, i1 noundef zeroext %tobool.not, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion7) #11
  call void @kfree(ptr noundef %2) #11
  call void @kfree(ptr noundef %27) #11
  call fastcc void @kunit_parse_filter_glob(ptr noundef nonnull %filter, ptr noundef nonnull @.str.27)
  %28 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %filter, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion29) #11
  %30 = ptrtoint ptr %__assertion29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion29, align 4
  %type32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 1
  %31 = ptrtoint ptr %type32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type32, align 4
  %line33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 2
  %32 = ptrtoint ptr %line33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 38, ptr %line33, align 4
  %file34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 3
  %33 = ptrtoint ptr %file34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.22, ptr %file34, align 4
  %message35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 4
  %34 = ptrtoint ptr %message35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message35, align 4
  %va37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va37, align 4
  %format38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 5
  %36 = ptrtoint ptr %format38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_str_assert_format, ptr %format38, align 4
  %operation39 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion29, i32 0, i32 1
  %37 = ptrtoint ptr %operation39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.23, ptr %operation39, align 4
  %left_text40 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion29, i32 0, i32 2
  %38 = ptrtoint ptr %left_text40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.24, ptr %left_text40, align 4
  %left_value41 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion29, i32 0, i32 3
  %39 = ptrtoint ptr %left_value41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %29, ptr %left_value41, align 4
  %right_text42 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion29, i32 0, i32 4
  %40 = ptrtoint ptr %right_text42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.25, ptr %right_text42, align 4
  %right_value43 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion29, i32 0, i32 5
  %41 = ptrtoint ptr %right_value43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.21, ptr %right_value43, align 4
  %call45 = call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(6) @.str.21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion29, i1 noundef zeroext %cmp46, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion29) #11
  %42 = ptrtoint ptr %test_glob to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %test_glob, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion56) #11
  %44 = ptrtoint ptr %__assertion56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion56, align 4
  %type59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 1
  %45 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type59, align 4
  %line60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 2
  %46 = ptrtoint ptr %line60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 39, ptr %line60, align 4
  %file61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 3
  %47 = ptrtoint ptr %file61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.22, ptr %file61, align 4
  %message62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4
  %48 = ptrtoint ptr %message62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message62, align 4
  %va64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va64, align 4
  %format65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 5
  %50 = ptrtoint ptr %format65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_str_assert_format, ptr %format65, align 4
  %operation66 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion56, i32 0, i32 1
  %51 = ptrtoint ptr %operation66 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.23, ptr %operation66, align 4
  %left_text67 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion56, i32 0, i32 2
  %52 = ptrtoint ptr %left_text67 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.26, ptr %left_text67, align 4
  %left_value68 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion56, i32 0, i32 3
  %53 = ptrtoint ptr %left_value68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %43, ptr %left_value68, align 4
  %right_text69 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion56, i32 0, i32 4
  %54 = ptrtoint ptr %right_text69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.29, ptr %right_text69, align 4
  %right_value70 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion56, i32 0, i32 5
  %55 = ptrtoint ptr %right_value70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.28, ptr %right_value70, align 4
  %call72 = call i32 @strcmp(ptr noundef %43, ptr noundef nonnull dereferenceable(5) @.str.28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp eq i32 %call72, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion56, i1 noundef zeroext %cmp73, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion56) #11
  call void @kfree(ptr noundef %29) #11
  call void @kfree(ptr noundef %43) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filter_subsuite_test(ptr noundef %test) #0 align 64 {
entry:
  %subsuite = alloca [3 x ptr], align 4
  %filter = alloca %struct.kunit_test_filter, align 8
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion14 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion37 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion54 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %subsuite) #11
  %0 = getelementptr inbounds i8, ptr %subsuite, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #11
  %2 = load i64, ptr @__const.filter_subsuite_test.filter, align 8
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %filter, align 8
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i = tail call ptr @strncpy(ptr noundef %call.i.i.i, ptr noundef nonnull dereferenceable(7) @.str.31, i32 noundef 255) #11
  %test_cases2.i = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %test_cases2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dummy_test_cases, ptr %test_cases2.i, align 4
  %5 = ptrtoint ptr %subsuite to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %subsuite, align 4
  %call.i.i.i89 = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i90 = tail call ptr @strncpy(ptr noundef %call.i.i.i89, ptr noundef nonnull dereferenceable(7) @.str.30, i32 noundef 255) #11
  %test_cases2.i91 = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i89, i32 0, i32 3
  %6 = ptrtoint ptr %test_cases2.i91 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dummy_test_cases, ptr %test_cases2.i91, align 4
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr %subsuite, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i.i89, ptr %arrayidx2, align 4
  %call3 = call fastcc ptr @kunit_filter_subsuite(ptr noundef nonnull %subsuite, ptr noundef nonnull %filter)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #11
  %8 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 58, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.22, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %15 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.32, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %value, align 4
  %tobool.not.i = icmp eq ptr %call3, null
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %17 = xor i1 %cmp.i, %tobool.not.i
  %lnot = xor i1 %17, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #11
  br i1 %spec.select.i, label %entry.free_subsuite_at_end.exit_crit_edge, label %if.end.i

entry.free_subsuite_at_end.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 24) #19
  %tobool.not.i3.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i3.i, label %if.end.i.free_subsuite_at_end.exit_crit_edge, label %if.end.i.i

if.end.i.free_subsuite_at_end.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = call i32 @kunit_add_resource(ptr noundef %test, ptr noundef null, ptr noundef nonnull @free_subsuite_res_free, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call3) #11
  br label %free_subsuite_at_end.exit

free_subsuite_at_end.exit:                        ; preds = %if.end.i.i, %if.end.i.free_subsuite_at_end.exit_crit_edge, %entry.free_subsuite_at_end.exit_crit_edge
  %19 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call3, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion14) #11
  %21 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion14, align 4
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %22 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %23 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 62, ptr %line18, align 4
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %24 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.22, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %25 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message20, align 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %27 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format23, align 4
  %text24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 1
  %28 = ptrtoint ptr %text24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.33, ptr %text24, align 4
  %value25 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 2
  %29 = ptrtoint ptr %value25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %20, ptr %value25, align 4
  %tobool.not.i92 = icmp ne ptr %20, null
  %cmp.i93 = icmp ule ptr %20, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i92, %cmp.i93
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %lnot28, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion14) #11
  %30 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call3, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion37) #11
  %32 = ptrtoint ptr %__assertion37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion37, align 4
  %type40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 1
  %33 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type40, align 4
  %line41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 2
  %34 = ptrtoint ptr %line41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 63, ptr %line41, align 4
  %file42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 3
  %35 = ptrtoint ptr %file42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.22, ptr %file42, align 4
  %message43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4
  %36 = ptrtoint ptr %message43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message43, align 4
  %va45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va45, align 4
  %format46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 5
  %38 = ptrtoint ptr %format46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_str_assert_format, ptr %format46, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 1
  %39 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.23, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 2
  %40 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.34, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 3
  %41 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %31, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 4
  %42 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.35, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 5
  %43 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.30, ptr %right_value, align 4
  %call48 = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(7) @.str.30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp = icmp eq i32 %call48, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion37, i1 noundef zeroext %cmp, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion37) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion54) #11
  %44 = getelementptr inbounds i8, ptr %__assertion54, i32 32
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %44, align 4, !annotation !136
  %46 = ptrtoint ptr %__assertion54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion54, align 4
  %type57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 1
  %47 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type57, align 4
  %line58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 2
  %48 = ptrtoint ptr %line58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 64, ptr %line58, align 4
  %file59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 3
  %49 = ptrtoint ptr %file59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.22, ptr %file59, align 4
  %message60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 4
  %50 = ptrtoint ptr %message60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message60, align 4
  %va62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va62, align 4
  %format63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 5
  %52 = ptrtoint ptr %format63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_unary_assert_format, ptr %format63, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion54, i32 0, i32 1
  %53 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.36, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion54, i32 0, i32 2
  %54 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %expected_true, align 4
  %arrayidx65 = getelementptr ptr, ptr %call3, i32 1
  %55 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx65, align 4
  %tobool.not = icmp eq ptr %56, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion54, i1 noundef zeroext %tobool.not, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion54) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %subsuite) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filter_subsuite_test_glob_test(ptr noundef %test) #0 align 64 {
entry:
  %subsuite = alloca [3 x ptr], align 4
  %filter = alloca %struct.kunit_test_filter, align 8
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion14 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion37 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion54 = alloca %struct.kunit_unary_assert, align 4
  %__assertion75 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion103 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion126 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %subsuite) #11
  %0 = getelementptr inbounds i8, ptr %subsuite, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #11
  %2 = load i64, ptr @__const.filter_subsuite_test_glob_test.filter, align 8
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %filter, align 8
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i = tail call ptr @strncpy(ptr noundef %call.i.i.i, ptr noundef nonnull dereferenceable(7) @.str.31, i32 noundef 255) #11
  %test_cases2.i = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %test_cases2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dummy_test_cases, ptr %test_cases2.i, align 4
  %5 = ptrtoint ptr %subsuite to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %subsuite, align 4
  %call.i.i.i181 = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i182 = tail call ptr @strncpy(ptr noundef %call.i.i.i181, ptr noundef nonnull dereferenceable(7) @.str.30, i32 noundef 255) #11
  %test_cases2.i183 = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i181, i32 0, i32 3
  %6 = ptrtoint ptr %test_cases2.i183 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dummy_test_cases, ptr %test_cases2.i183, align 4
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr %subsuite, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i.i181, ptr %arrayidx2, align 4
  %call3 = call fastcc ptr @kunit_filter_subsuite(ptr noundef nonnull %subsuite, ptr noundef nonnull %filter)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #11
  %8 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 81, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.22, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %15 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.32, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %value, align 4
  %tobool.not.i = icmp eq ptr %call3, null
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %17 = xor i1 %cmp.i, %tobool.not.i
  %lnot = xor i1 %17, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #11
  br i1 %spec.select.i, label %entry.free_subsuite_at_end.exit_crit_edge, label %if.end.i

entry.free_subsuite_at_end.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 24) #19
  %tobool.not.i3.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i3.i, label %if.end.i.free_subsuite_at_end.exit_crit_edge, label %if.end.i.i

if.end.i.free_subsuite_at_end.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = call i32 @kunit_add_resource(ptr noundef %test, ptr noundef null, ptr noundef nonnull @free_subsuite_res_free, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call3) #11
  br label %free_subsuite_at_end.exit

free_subsuite_at_end.exit:                        ; preds = %if.end.i.i, %if.end.i.free_subsuite_at_end.exit_crit_edge, %entry.free_subsuite_at_end.exit_crit_edge
  %19 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call3, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion14) #11
  %21 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion14, align 4
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %22 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %23 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 85, ptr %line18, align 4
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %24 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.22, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %25 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message20, align 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %27 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format23, align 4
  %text24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 1
  %28 = ptrtoint ptr %text24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.33, ptr %text24, align 4
  %value25 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 2
  %29 = ptrtoint ptr %value25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %20, ptr %value25, align 4
  %tobool.not.i184 = icmp ne ptr %20, null
  %cmp.i185 = icmp ule ptr %20, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i184, %cmp.i185
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %lnot28, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion14) #11
  %30 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call3, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion37) #11
  %32 = ptrtoint ptr %__assertion37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion37, align 4
  %type40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 1
  %33 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type40, align 4
  %line41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 2
  %34 = ptrtoint ptr %line41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 86, ptr %line41, align 4
  %file42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 3
  %35 = ptrtoint ptr %file42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.22, ptr %file42, align 4
  %message43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4
  %36 = ptrtoint ptr %message43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message43, align 4
  %va45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va45, align 4
  %format46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 5
  %38 = ptrtoint ptr %format46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_str_assert_format, ptr %format46, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 1
  %39 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.23, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 2
  %40 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.34, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 3
  %41 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %31, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 4
  %42 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.35, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion37, i32 0, i32 5
  %43 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.30, ptr %right_value, align 4
  %call48 = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(7) @.str.30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp = icmp eq i32 %call48, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion37, i1 noundef zeroext %cmp, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion37) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion54) #11
  %44 = getelementptr inbounds i8, ptr %__assertion54, i32 32
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %44, align 4, !annotation !136
  %46 = ptrtoint ptr %__assertion54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion54, align 4
  %type57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 1
  %47 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type57, align 4
  %line58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 2
  %48 = ptrtoint ptr %line58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 87, ptr %line58, align 4
  %file59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 3
  %49 = ptrtoint ptr %file59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.22, ptr %file59, align 4
  %message60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 4
  %50 = ptrtoint ptr %message60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message60, align 4
  %va62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va62, align 4
  %format63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion54, i32 0, i32 5
  %52 = ptrtoint ptr %format63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_unary_assert_format, ptr %format63, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion54, i32 0, i32 1
  %53 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.36, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion54, i32 0, i32 2
  %54 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %expected_true, align 4
  %arrayidx65 = getelementptr ptr, ptr %call3, i32 1
  %55 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx65, align 4
  %tobool.not = icmp eq ptr %56, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion54, i1 noundef zeroext %tobool.not, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion54) #11
  %57 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call3, align 4
  %test_cases = getelementptr inbounds %struct.kunit_suite, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %test_cases to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %test_cases, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion75) #11
  %61 = ptrtoint ptr %__assertion75 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %test, ptr %__assertion75, align 4
  %type78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 1
  %62 = ptrtoint ptr %type78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %type78, align 4
  %line79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 2
  %63 = ptrtoint ptr %line79 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 90, ptr %line79, align 4
  %file80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 3
  %64 = ptrtoint ptr %file80 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.22, ptr %file80, align 4
  %message81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 4
  %65 = ptrtoint ptr %message81 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %message81, align 4
  %va83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %va83 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %va83, align 4
  %format84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 5
  %67 = ptrtoint ptr %format84 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format84, align 4
  %text85 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion75, i32 0, i32 1
  %68 = ptrtoint ptr %text85 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.39, ptr %text85, align 4
  %value86 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion75, i32 0, i32 2
  %69 = ptrtoint ptr %value86 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %60, ptr %value86, align 4
  %tobool.not.i187 = icmp ne ptr %60, null
  %cmp.i188 = icmp ule ptr %60, inttoptr (i32 -4096 to ptr)
  %lnot89 = and i1 %tobool.not.i187, %cmp.i188
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion75, i1 noundef zeroext %lnot89, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion75) #11
  %70 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call3, align 4
  %test_cases98 = getelementptr inbounds %struct.kunit_suite, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %test_cases98 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %test_cases98, align 4
  %name100 = getelementptr inbounds %struct.kunit_case, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %name100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name100, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion103) #11
  %76 = ptrtoint ptr %__assertion103 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %test, ptr %__assertion103, align 4
  %type106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 1
  %77 = ptrtoint ptr %type106 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %type106, align 4
  %line107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 2
  %78 = ptrtoint ptr %line107 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 91, ptr %line107, align 4
  %file108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 3
  %79 = ptrtoint ptr %file108 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.22, ptr %file108, align 4
  %message109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 4
  %80 = ptrtoint ptr %message109 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %message109, align 4
  %va111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %va111 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %va111, align 4
  %format112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 5
  %82 = ptrtoint ptr %format112 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @kunit_binary_str_assert_format, ptr %format112, align 4
  %operation113 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion103, i32 0, i32 1
  %83 = ptrtoint ptr %operation113 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.23, ptr %operation113, align 4
  %left_text114 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion103, i32 0, i32 2
  %84 = ptrtoint ptr %left_text114 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.40, ptr %left_text114, align 4
  %left_value115 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion103, i32 0, i32 3
  %85 = ptrtoint ptr %left_value115 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %75, ptr %left_value115, align 4
  %right_text116 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion103, i32 0, i32 4
  %86 = ptrtoint ptr %right_text116 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.41, ptr %right_text116, align 4
  %right_value117 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion103, i32 0, i32 5
  %87 = ptrtoint ptr %right_value117 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.38, ptr %right_value117, align 4
  %call119 = call i32 @strcmp(ptr noundef %75, ptr noundef nonnull dereferenceable(6) @.str.38) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion103, i1 noundef zeroext %cmp120, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion103) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion126) #11
  %88 = getelementptr inbounds i8, ptr %__assertion126, i32 32
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %88, align 4, !annotation !136
  %90 = ptrtoint ptr %__assertion126 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %test, ptr %__assertion126, align 4
  %type129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 1
  %91 = ptrtoint ptr %type129 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %type129, align 4
  %line130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 2
  %92 = ptrtoint ptr %line130 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 92, ptr %line130, align 4
  %file131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 3
  %93 = ptrtoint ptr %file131 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.22, ptr %file131, align 4
  %message132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 4
  %94 = ptrtoint ptr %message132 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %message132, align 4
  %va134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %va134 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %va134, align 4
  %format135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 5
  %96 = ptrtoint ptr %format135 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @kunit_unary_assert_format, ptr %format135, align 4
  %condition136 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion126, i32 0, i32 1
  %97 = ptrtoint ptr %condition136 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.42, ptr %condition136, align 4
  %expected_true137 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion126, i32 0, i32 2
  %98 = ptrtoint ptr %expected_true137 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %expected_true137, align 4
  %99 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call3, align 4
  %test_cases140 = getelementptr inbounds %struct.kunit_suite, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %test_cases140 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %test_cases140, align 4
  %name142 = getelementptr %struct.kunit_case, ptr %102, i32 1, i32 1
  %103 = ptrtoint ptr %name142 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name142, align 4
  %tobool143.not = icmp eq ptr %104, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion126, i1 noundef zeroext %tobool143.not, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion126) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %subsuite) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filter_subsuite_to_empty_test(ptr noundef %test) #0 align 64 {
entry:
  %subsuite = alloca [3 x ptr], align 4
  %filter = alloca %struct.kunit_test_filter, align 8
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %subsuite) #11
  %0 = getelementptr inbounds i8, ptr %subsuite, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #11
  %2 = load i64, ptr @__const.filter_subsuite_to_empty_test.filter, align 8
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %filter, align 8
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i = tail call ptr @strncpy(ptr noundef %call.i.i.i, ptr noundef nonnull dereferenceable(7) @.str.31, i32 noundef 255) #11
  %test_cases2.i = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %test_cases2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dummy_test_cases, ptr %test_cases2.i, align 4
  %5 = ptrtoint ptr %subsuite to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %subsuite, align 4
  %call.i.i.i12 = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i13 = tail call ptr @strncpy(ptr noundef %call.i.i.i12, ptr noundef nonnull dereferenceable(7) @.str.30, i32 noundef 255) #11
  %test_cases2.i14 = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i12, i32 0, i32 3
  %6 = ptrtoint ptr %test_cases2.i14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dummy_test_cases, ptr %test_cases2.i14, align 4
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr %subsuite, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i.i12, ptr %arrayidx2, align 4
  %call3 = call fastcc ptr @kunit_filter_subsuite(ptr noundef nonnull %subsuite, ptr noundef nonnull %filter)
  %tobool.not.i.i = icmp eq ptr %call3, null
  %cmp.i.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.free_subsuite_at_end.exit_crit_edge, label %if.end.i

entry.free_subsuite_at_end.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 24) #19
  %tobool.not.i3.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i3.i, label %if.end.i.free_subsuite_at_end.exit_crit_edge, label %if.end.i.i

if.end.i.free_subsuite_at_end.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @kunit_add_resource(ptr noundef %test, ptr noundef null, ptr noundef nonnull @free_subsuite_res_free, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call3) #11
  br label %free_subsuite_at_end.exit

free_subsuite_at_end.exit:                        ; preds = %if.end.i.i, %if.end.i.free_subsuite_at_end.exit_crit_edge, %entry.free_subsuite_at_end.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #11
  %9 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !136
  %11 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 111, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %14 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.22, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.32, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %expected_true, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool.not.i.i, ptr noundef nonnull @.str.44) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %subsuite) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filter_suites_test(ptr noundef %test) #0 align 64 {
entry:
  %subsuites = alloca [2 x [2 x ptr]], align 4
  %suites = alloca [2 x ptr], align 4
  %suite_set = alloca %struct.suite_set, align 4
  %tmp = alloca %struct.suite_set, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion22 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion43 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion68 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion95 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %subsuites) #11
  %0 = call ptr @memset(ptr %subsuites, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %suites) #11
  %1 = getelementptr inbounds [2 x ptr], ptr %suites, i32 0, i32 1
  %2 = ptrtoint ptr %suites to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %subsuites, ptr %suites, align 4
  %arrayidx1 = getelementptr inbounds [2 x [2 x ptr]], ptr %subsuites, i32 0, i32 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %suite_set) #11
  %4 = getelementptr inbounds %struct.suite_set, ptr %suite_set, i32 0, i32 1
  %5 = ptrtoint ptr %suite_set to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %suites, ptr %suite_set, align 4
  %add.ptr = getelementptr inbounds ptr, ptr %suites, i32 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %4, align 4
  %call.i.i.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i = call ptr @strncpy(ptr noundef %call.i.i.i, ptr noundef nonnull dereferenceable(7) @.str.45, i32 noundef 255) #11
  %test_cases2.i = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %test_cases2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dummy_test_cases, ptr %test_cases2.i, align 4
  %8 = ptrtoint ptr %subsuites to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %subsuites, align 4
  %call.i.i.i137 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 532, i32 noundef 3520) #11
  %call1.i138 = call ptr @strncpy(ptr noundef %call.i.i.i137, ptr noundef nonnull dereferenceable(7) @.str.31, i32 noundef 255) #11
  %test_cases2.i139 = getelementptr inbounds %struct.kunit_suite, ptr %call.i.i.i137, i32 0, i32 3
  %9 = ptrtoint ptr %test_cases2.i139 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dummy_test_cases, ptr %test_cases2.i139, align 4
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i.i137, ptr %arrayidx1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #11
  call fastcc void @kunit_filter_suites(ptr nonnull sret(%struct.suite_set) align 4 %tmp, ptr noundef nonnull %suite_set, ptr noundef nonnull @.str.45)
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp, align 8
  %tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %13 = ptrtoint ptr %tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp.sroa_idx, align 4
  %15 = inttoptr i32 %12 to ptr
  %16 = inttoptr i32 %14 to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  %cmp.i.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.kfree_at_end.exit.i_crit_edge, label %if.end.i.i

entry.kfree_at_end.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kfree_at_end.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 24) #19
  %tobool.not.i3.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.kfree_at_end.exit.i_crit_edge, label %if.end.i.i.i

if.end.i.i.kfree_at_end.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kfree_at_end.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i.i = call i32 @kunit_add_resource(ptr noundef %test, ptr noundef null, ptr noundef nonnull @kfree_res_free, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull %15) #11
  br label %kfree_at_end.exit.i

kfree_at_end.exit.i:                              ; preds = %if.end.i.i.i, %if.end.i.i.kfree_at_end.exit.i_crit_edge, %entry.kfree_at_end.exit.i_crit_edge
  %cmp15.i = icmp ult ptr %15, %16
  br i1 %cmp15.i, label %kfree_at_end.exit.i.for.body.i_crit_edge, label %kfree_at_end.exit.i.kfree_subsuites_at_end.exit_crit_edge

kfree_at_end.exit.i.kfree_subsuites_at_end.exit_crit_edge: ; preds = %kfree_at_end.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kfree_subsuites_at_end.exit

kfree_at_end.exit.i.for.body.i_crit_edge:         ; preds = %kfree_at_end.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %free_subsuite_at_end.exit.i.for.body.i_crit_edge, %kfree_at_end.exit.i.for.body.i_crit_edge
  %suites.016.i = phi ptr [ %incdec.ptr.i, %free_subsuite_at_end.exit.i.for.body.i_crit_edge ], [ %15, %kfree_at_end.exit.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %suites.016.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %suites.016.i, align 4
  %tobool.not.i.i7.i = icmp eq ptr %19, null
  %cmp.i.i8.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i9.i = or i1 %tobool.not.i.i7.i, %cmp.i.i8.i
  br i1 %spec.select.i.i9.i, label %for.body.i.free_subsuite_at_end.exit.i_crit_edge, label %if.end.i12.i

for.body.i.free_subsuite_at_end.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit.i

if.end.i12.i:                                     ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i10.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 24) #19
  %tobool.not.i3.i11.i = icmp eq ptr %call7.i.i.i.i10.i, null
  br i1 %tobool.not.i3.i11.i, label %if.end.i12.i.free_subsuite_at_end.exit.i_crit_edge, label %if.end.i.i14.i

if.end.i12.i.free_subsuite_at_end.exit.i_crit_edge: ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subsuite_at_end.exit.i

if.end.i.i14.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i13.i = call i32 @kunit_add_resource(ptr noundef %test, ptr noundef null, ptr noundef nonnull @free_subsuite_res_free, ptr noundef nonnull %call7.i.i.i.i10.i, ptr noundef nonnull %19) #11
  br label %free_subsuite_at_end.exit.i

free_subsuite_at_end.exit.i:                      ; preds = %if.end.i.i14.i, %if.end.i12.i.free_subsuite_at_end.exit.i_crit_edge, %for.body.i.free_subsuite_at_end.exit.i_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %suites.016.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %16
  br i1 %cmp.i, label %free_subsuite_at_end.exit.i.for.body.i_crit_edge, label %free_subsuite_at_end.exit.i.kfree_subsuites_at_end.exit_crit_edge

free_subsuite_at_end.exit.i.kfree_subsuites_at_end.exit_crit_edge: ; preds = %free_subsuite_at_end.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kfree_subsuites_at_end.exit

free_subsuite_at_end.exit.i.for.body.i_crit_edge: ; preds = %free_subsuite_at_end.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

kfree_subsuites_at_end.exit:                      ; preds = %free_subsuite_at_end.exit.i.kfree_subsuites_at_end.exit_crit_edge, %kfree_at_end.exit.i.kfree_subsuites_at_end.exit_crit_edge
  %sub.ptr.sub = sub i32 %14, %12
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #11
  %21 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %22 = call ptr @memset(ptr %21, i32 255, i32 24)
  %23 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %25 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 148, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %26 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.22, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %27 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %29 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %30 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.23, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %31 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.46, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %sub.ptr.div to i64
  %32 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %33 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.47, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %34 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub)
  %cmp = icmp eq i32 %sub.ptr.sub, 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion22) #11
  %35 = ptrtoint ptr %__assertion22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion22, align 4
  %type25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 1
  %36 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %type25, align 4
  %line26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 2
  %37 = ptrtoint ptr %line26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 150, ptr %line26, align 4
  %file27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 3
  %38 = ptrtoint ptr %file27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.22, ptr %file27, align 4
  %message28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 4
  %39 = ptrtoint ptr %message28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message28, align 4
  %va30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va30, align 4
  %format31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 5
  %41 = ptrtoint ptr %format31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format31, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion22, i32 0, i32 1
  %42 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.48, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion22, i32 0, i32 2
  %43 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %15, ptr %value, align 4
  %lnot.demorgan = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  %lnot = xor i1 %lnot.demorgan, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion22, i1 noundef zeroext %lnot, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion22) #11
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion43) #11
  %46 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion43, align 4
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %47 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %48 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 151, ptr %line47, align 4
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %49 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.22, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %50 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message49, align 4
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %52 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format52, align 4
  %text53 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion43, i32 0, i32 1
  %53 = ptrtoint ptr %text53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.49, ptr %text53, align 4
  %value54 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion43, i32 0, i32 2
  %54 = ptrtoint ptr %value54 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %45, ptr %value54, align 4
  %tobool.not.i141 = icmp ne ptr %45, null
  %cmp.i142 = icmp ule ptr %45, inttoptr (i32 -4096 to ptr)
  %lnot57 = and i1 %tobool.not.i141, %cmp.i142
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %lnot57, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion43) #11
  %55 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %15, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion68) #11
  %59 = ptrtoint ptr %__assertion68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %test, ptr %__assertion68, align 4
  %type71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 1
  %60 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %type71, align 4
  %line72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 2
  %61 = ptrtoint ptr %line72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 152, ptr %line72, align 4
  %file73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 3
  %62 = ptrtoint ptr %file73 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.22, ptr %file73, align 4
  %message74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4
  %63 = ptrtoint ptr %message74 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %message74, align 4
  %va76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %va76 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %va76, align 4
  %format77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 5
  %65 = ptrtoint ptr %format77 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format77, align 4
  %text78 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion68, i32 0, i32 1
  %66 = ptrtoint ptr %text78 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.50, ptr %text78, align 4
  %value79 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion68, i32 0, i32 2
  %67 = ptrtoint ptr %value79 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %58, ptr %value79, align 4
  %tobool.not.i144 = icmp ne ptr %58, null
  %cmp.i145 = icmp ule ptr %58, inttoptr (i32 -4096 to ptr)
  %lnot82 = and i1 %tobool.not.i144, %cmp.i145
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion68, i1 noundef zeroext %lnot82, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion68) #11
  %68 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %15, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion95) #11
  %72 = ptrtoint ptr %__assertion95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %test, ptr %__assertion95, align 4
  %type98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 1
  %73 = ptrtoint ptr %type98 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %type98, align 4
  %line99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 2
  %74 = ptrtoint ptr %line99 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 153, ptr %line99, align 4
  %file100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 3
  %75 = ptrtoint ptr %file100 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.22, ptr %file100, align 4
  %message101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 4
  %76 = ptrtoint ptr %message101 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %message101, align 4
  %va103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %va103 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %va103, align 4
  %format104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 5
  %78 = ptrtoint ptr %format104 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @kunit_binary_str_assert_format, ptr %format104, align 4
  %operation105 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 1
  %79 = ptrtoint ptr %operation105 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.23, ptr %operation105, align 4
  %left_text106 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 2
  %80 = ptrtoint ptr %left_text106 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.51, ptr %left_text106, align 4
  %left_value107 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 3
  %81 = ptrtoint ptr %left_value107 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %71, ptr %left_value107, align 4
  %right_text108 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 4
  %82 = ptrtoint ptr %right_text108 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.52, ptr %right_text108, align 4
  %right_value109 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 5
  %83 = ptrtoint ptr %right_value109 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.45, ptr %right_value109, align 4
  %call111 = call i32 @strcmp(ptr noundef %71, ptr noundef nonnull dereferenceable(7) @.str.45) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp eq i32 %call111, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion95, i1 noundef zeroext %cmp112, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion95) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %suite_set) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %suites) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %subsuites) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_str_assert_format(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummy_test(ptr nocapture noundef %test) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_subsuite_res_free(ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not6.i = icmp eq ptr %3, null
  br i1 %tobool.not6.i, label %entry.kunit_free_subsuite.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kunit_free_subsuite.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_free_subsuite.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %4 = phi ptr [ %6, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %4) #11
  %inc.i = add i32 %i.07.i, 1
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %inc.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.kunit_free_subsuite.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.kunit_free_subsuite.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunit_free_subsuite.exit

kunit_free_subsuite.exit:                         ; preds = %for.body.i.kunit_free_subsuite.exit_crit_edge, %entry.kunit_free_subsuite.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_add_resource(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kfree_res_free(ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__param_filter_glob, !1, !"__param_filter_glob", i1 false, i1 false}
!1 = !{!"../lib/kunit/executor.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_filter_globtype174, !1, !"__UNIQUE_ID_filter_globtype174", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_filter_glob175, !4, !"__UNIQUE_ID_filter_glob175", i1 false, i1 false}
!4 = !{!"../lib/kunit/executor.c", i32 21, i32 1}
!5 = !{ptr @__param_action, !6, !"__param_action", i1 false, i1 false}
!6 = !{!"../lib/kunit/executor.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_actiontype176, !6, !"__UNIQUE_ID_actiontype176", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_action177, !9, !"__UNIQUE_ID_action177", i1 false, i1 false}
!9 = !{!"../lib/kunit/executor.c", i32 24, i32 1}
!10 = !{ptr @__param_kunit_shutdown, !11, !"__param_kunit_shutdown", i1 false, i1 false}
!11 = !{!"../lib/kunit/executor.c", i32 89, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/kunit/executor.c", i32 245, i32 32}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/kunit/executor.c", i32 248, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @kunit_run_all_tests._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @kunit_run_all_tests._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_suites179, !21, !"__UNIQUE_ID_suites179", i1 false, i1 false}
!21 = !{!"../lib/kunit/executor_test.c", i32 170, i32 1}
!22 = !{ptr @filter_glob_param, !23, !"filter_glob_param", i1 false, i1 false}
!23 = !{!"../lib/kunit/executor.c", i32 17, i32 14}
!24 = !{ptr @action_param, !25, !"action_param", i1 false, i1 false}
!25 = !{!"../lib/kunit/executor.c", i32 18, i32 14}
!26 = !{ptr @kunit_shutdown, !27, !"kunit_shutdown", i1 false, i1 false}
!27 = !{!"../lib/kunit/executor.c", i32 88, i32 14}
!28 = !{ptr @__param_str_filter_glob, !1, !"__param_str_filter_glob", i1 false, i1 false}
!29 = !{ptr @__param_str_action, !6, !"__param_str_action", i1 false, i1 false}
!30 = !{ptr @___asan_gen_.59, !11, !"__param_str_kunit_shutdown", i1 false, i1 false}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/kunit/executor.c", i32 202, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @kunit_print_tap_header._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @kunit_print_tap_header._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/kunit/executor.c", i32 203, i32 2}
!38 = !{ptr @kunit_print_tap_header._entry.6, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @kunit_print_tap_header._entry_ptr.8, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/kunit/executor.c", i32 223, i32 2}
!42 = !{ptr @kunit_exec_list_tests._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @kunit_exec_list_tests._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/kunit/executor.c", i32 228, i32 5}
!46 = !{ptr @kunit_exec_list_tests._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @kunit_exec_list_tests._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/kunit/executor.c", i32 184, i32 30}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/kunit/executor.c", i32 186, i32 35}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/kunit/executor.c", i32 188, i32 35}
!54 = !{ptr @__UNIQUE_ID_array178, !21, !"__UNIQUE_ID_array178", i1 false, i1 false}
!55 = !{ptr @executor_test_suite, !56, !"executor_test_suite", i1 false, i1 false}
!56 = !{!"../lib/kunit/executor_test.c", i32 165, i32 27}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/kunit/executor_test.c", i32 157, i32 2}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/kunit/executor_test.c", i32 158, i32 2}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/kunit/executor_test.c", i32 159, i32 2}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/kunit/executor_test.c", i32 160, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/kunit/executor_test.c", i32 161, i32 2}
!67 = !{ptr @executor_test_cases, !68, !"executor_test_cases", i1 false, i1 false}
!68 = !{!"../lib/kunit/executor_test.c", i32 156, i32 26}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../lib/kunit/executor_test.c", i32 31, i32 35}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/kunit/executor_test.c", i32 32, i32 2}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/kunit/executor_test.c", i32 33, i32 2}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/kunit/executor_test.c", i32 37, i32 35}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/kunit/executor_test.c", i32 39, i32 2}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/kunit/executor_test.c", i32 49, i32 17}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/kunit/executor_test.c", i32 53, i32 39}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/kunit/executor_test.c", i32 58, i32 2}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/kunit/executor_test.c", i32 62, i32 2}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/kunit/executor_test.c", i32 63, i32 2}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../lib/kunit/executor_test.c", i32 64, i32 2}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../lib/kunit/executor_test.c", i32 22, i32 12}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../lib/kunit/executor_test.c", i32 23, i32 12}
!100 = !{ptr @dummy_test_cases, !101, !"dummy_test_cases", i1 false, i1 false}
!101 = !{!"../lib/kunit/executor_test.c", i32 20, i32 26}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../lib/kunit/executor_test.c", i32 90, i32 2}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/kunit/executor_test.c", i32 91, i32 2}
!106 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../lib/kunit/executor_test.c", i32 92, i32 2}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/kunit/executor_test.c", i32 100, i32 17}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../lib/kunit/executor_test.c", i32 110, i32 2}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/kunit/executor_test.c", i32 142, i32 43}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../lib/kunit/executor_test.c", i32 148, i32 2}
!117 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../lib/kunit/executor_test.c", i32 150, i32 2}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../lib/kunit/executor_test.c", i32 151, i32 2}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../lib/kunit/executor_test.c", i32 152, i32 2}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../lib/kunit/executor_test.c", i32 153, i32 2}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
!137 = !{!"branch_weights", i32 1, i32 2000}
