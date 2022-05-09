; ModuleID = '/llk/IR_all_yes/lib/kunit/kunit-test.c_pt.bc'
source_filename = "../lib/kunit/kunit-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.kunit_try_catch_test_context = type { ptr, i8 }
%struct.kunit_fail_assert = type { %struct.kunit_assert }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_test_resource_context = type { %struct.kunit, i8, [2 x i32], [2 x i32] }
%struct.kunit_resource = type { ptr, ptr, ptr, %struct.kref, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_binary_str_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_array175 = internal global [5 x ptr] [ptr @kunit_try_catch_test_suite, ptr @kunit_resource_test_suite, ptr @kunit_log_test_suite, ptr @kunit_status_test_suite, ptr null], align 4
@__UNIQUE_ID_suites176 = internal global ptr @__UNIQUE_ID_array175, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file177 = internal constant [37 x i8] c"kunit_test.file=lib/kunit/kunit-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [26 x i8] c"kunit_test.license=GPL v2\00", section ".modinfo", align 1
@kunit_try_catch_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"kunit-try-catch-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kunit_try_catch_test_init, ptr null, ptr @kunit_try_catch_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@kunit_resource_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"kunit-resource-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kunit_resource_test_init, ptr @kunit_resource_test_exit, ptr @kunit_resource_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@kunit_log_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"kunit-log-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @kunit_log_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@kunit_status_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"kunit_status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @kunit_status_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@kunit_try_catch_test_cases = internal global { [3 x %struct.kunit_case], [36 x i8] } { [3 x %struct.kunit_case] [%struct.kunit_case { ptr @kunit_test_try_catch_successful_try_no_catch, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_test_try_catch_unsuccessful_try_does_catch, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lib/kunit/kunit-test.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctx\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctx->try_catch\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"kunit_test_try_catch_successful_try_no_catch\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"kunit_test_try_catch_unsuccessful_try_does_catch\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ctx->function_called\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Catch should not be called\0A\00", [36 x i8] zeroinitializer }, align 32
@kunit_resource_test_cases = internal global { [8 x %struct.kunit_case], [32 x i8] } { [8 x %struct.kunit_case] [%struct.kunit_case { ptr @kunit_resource_test_init_resources, ptr @.str.8, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_resource_test_alloc_resource, ptr @.str.9, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_resource_test_destroy_resource, ptr @.str.10, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_resource_test_cleanup_resources, ptr @.str.11, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_resource_test_proper_free_ordering, ptr @.str.12, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_resource_test_static, ptr @.str.13, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_resource_test_named, ptr @.str.14, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_test_context\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kunit_resource_test_init_resources\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kunit_resource_test_alloc_resource\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"kunit_resource_test_destroy_resource\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"kunit_resource_test_cleanup_resources\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"kunit_resource_test_proper_free_ordering\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kunit_resource_test_static\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kunit_resource_test_named\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"testing_test_init_test\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"list_empty(&ctx->test.resources)\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"res\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&ctx->is_resource_initialized\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(bool *)res->data\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"list_is_last(&res->node, &ctx->test.resources)\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"res->free\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"kunit_destroy_resource(&ctx->test, kunit_resource_instance_match, res->data)\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ctx->is_resource_initialized\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctx->allocate_order[0]\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctx->allocate_order[1]\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ctx->free_order[0]\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ctx->free_order[1]\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"kunit_add_resource(test, ((void *)0), ((void *)0), &res, &ctx)\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"res.data\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(void *)&ctx\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list_empty(&test->resources)\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resource_1\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"kunit_add_named_resource(test, ((void *)0), ((void *)0), &res1, \22resource_1\22, &ctx)\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"res1.data\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-17\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resource_2\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"kunit_add_named_resource(test, ((void *)0), ((void *)0), &res2, \22resource_2\22, &ctx)\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"&res1\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"kunit_destroy_named_resource(test, \22resource_2\22)\00", [47 x i8] zeroinitializer }, align 32
@kunit_log_test_cases = internal global { [2 x %struct.kunit_case], [56 x i8] } { [2 x %struct.kunit_case] [%struct.kunit_case { ptr @kunit_log_test, ptr @.str.46, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kunit_log_test\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"suite.log\00", [22 x i8] zeroinitializer }, align 32
@kunit_log_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016put this in log.\00", [45 x i8] zeroinitializer }, align 32
@kunit_log_test._entry_ptr = internal global ptr @kunit_log_test._entry, section ".printk_index", align 4
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"put this in log.\0A\00", [46 x i8] zeroinitializer }, align 32
@kunit_log_test._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016this too.\00", [20 x i8] zeroinitializer }, align 32
@kunit_log_test._entry_ptr.52 = internal global ptr @kunit_log_test._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"this too.\0A\00", [21 x i8] zeroinitializer }, align 32
@kunit_log_test._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.46, ptr @.str, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016add to suite log.\00", [44 x i8] zeroinitializer }, align 32
@kunit_log_test._entry_ptr.56 = internal global ptr @kunit_log_test._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add to suite log.\0A\00", [45 x i8] zeroinitializer }, align 32
@kunit_log_test._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.46, ptr @.str, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016along with this.\00", [45 x i8] zeroinitializer }, align 32
@kunit_log_test._entry_ptr.60 = internal global ptr @kunit_log_test._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"along with this.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"put this in log.\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"strstr(test->log, \22put this in log.\22)\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"this too.\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"strstr(test->log, \22this too.\22)\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"add to suite log.\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"strstr(suite.log, \22add to suite log.\22)\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"along with this.\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"strstr(suite.log, \22along with this.\22)\00", [58 x i8] zeroinitializer }, align 32
@kunit_status_test_cases = internal global { [3 x %struct.kunit_case], [36 x i8] } { [3 x %struct.kunit_case] [%struct.kunit_case { ptr @kunit_status_set_failure_test, ptr @.str.70, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kunit_status_mark_skipped_test, ptr @.str.71, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kunit_status_set_failure_test\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kunit_status_mark_skipped_test\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fake test\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fake.status\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(enum kunit_status)KUNIT_SUCCESS\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(enum kunit_status)KUNIT_FAILURE\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"KUNIT_SUCCESS\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fake.status_comment\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\22\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Accepts format string: %s\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(enum kunit_status)KUNIT_SKIPPED\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Accepts format string: YES\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\22Accepts format string: YES\22\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"kunit_try_catch_test_suite\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 100, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"kunit_resource_test_suite\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 397, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"kunit_log_test_suite\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 411, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"kunit_status_test_suite\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 477, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"kunit_try_catch_test_cases\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 94, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 83, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 89, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 95, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 96, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 43, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 29, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"kunit_resource_test_cases\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 386, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 373, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 387, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 388, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 389, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 390, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 391, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 392, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 393, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 137, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 139, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 154, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 155, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 158, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 159, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 184, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 189, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 297, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 298, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 309, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 310, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 318, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 321, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 325, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 333, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 337, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 339, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 344, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 351, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 356, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [21 x i8] c"kunit_log_test_cases\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 406, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 407, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 421, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 423, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 424, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 425, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 426, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 429, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 431, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 433, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 435, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [24 x i8] c"kunit_status_test_cases\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 471, i32 26 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 472, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 473, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 446, i32 25 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 448, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 450, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 460, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 461, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 464, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 467, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.356 = private constant [26 x i8] c"../lib/kunit/kunit-test.c\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 468, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_suites176, ptr @kunit_log_test._entry, ptr @kunit_log_test._entry.50, ptr @kunit_log_test._entry.54, ptr @kunit_log_test._entry.58, ptr @kunit_log_test._entry_ptr, ptr @kunit_log_test._entry_ptr.52, ptr @kunit_log_test._entry_ptr.56, ptr @kunit_log_test._entry_ptr.60, ptr @kunit_try_catch_test_suite, ptr @kunit_resource_test_suite, ptr @kunit_log_test_suite, ptr @kunit_status_test_suite, ptr @kunit_try_catch_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @kunit_resource_test_cases, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @kunit_log_test_cases, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @kunit_status_test_cases, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_try_catch_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_resource_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_log_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_status_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_try_catch_test_cases to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_resource_test_cases to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_log_test_cases to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_log_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_log_test._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_log_test._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_log_test._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_status_test_cases to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kunit_try_catch_test_init(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 8, i32 noundef 3520) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 83, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.1, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  %9 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %test, align 4
  %call.i = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 24, i32 noundef 3264) #15
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %call.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #15
  %11 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %12 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %13 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 89, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %14 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %15 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %17 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format21, align 4
  %text22 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %18 = ptrtoint ptr %text22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.2, ptr %text22, align 4
  %value23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %19 = ptrtoint ptr %value23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %value23, align 4
  %tobool.not.i42 = icmp ne ptr %call.i, null
  %cmp.i43 = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot26 = and i1 %tobool.not.i42, %cmp.i43
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot26, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #15
  ret i32 0
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
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_test_try_catch_successful_try_no_catch(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %3, align 4
  %try2.i = getelementptr inbounds %struct.kunit_try_catch, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %try2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @kunit_test_successful_try, ptr %try2.i, align 4
  %catch3.i = getelementptr inbounds %struct.kunit_try_catch, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %catch3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_test_no_catch, ptr %catch3.i, align 4
  tail call void @kunit_try_catch_run(ptr noundef %3, ptr noundef %test) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %7 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !173
  %9 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 43, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %12 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %13 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %15 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %16 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %17 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %expected_true, align 4
  %function_called = getelementptr inbounds %struct.kunit_try_catch_test_context, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %function_called to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %function_called, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool = icmp ne i8 %19, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_test_try_catch_unsuccessful_try_does_catch(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %3, align 4
  %try2.i = getelementptr inbounds %struct.kunit_try_catch, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %try2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @kunit_test_unsuccessful_try, ptr %try2.i, align 4
  %catch3.i = getelementptr inbounds %struct.kunit_try_catch, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %catch3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_test_catch, ptr %catch3.i, align 4
  tail call void @kunit_try_catch_run(ptr noundef %3, ptr noundef %test) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %7 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !173
  %9 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 75, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %12 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %13 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %15 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %16 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %17 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %expected_true, align 4
  %function_called = getelementptr inbounds %struct.kunit_try_catch_test_context, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %function_called to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %function_called, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool = icmp ne i8 %19, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kunit_test_successful_try(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %function_called = getelementptr inbounds %struct.kunit_try_catch_test_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %function_called to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %function_called, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_test_no_catch(ptr noundef %data) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion) #15
  %0 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %__assertion, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 29, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kunit_fail_assert_format, ptr %5, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %data, ptr noundef nonnull %__assertion, i1 noundef zeroext false, ptr noundef nonnull @.str.6) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_try_catch_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_fail_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_test_unsuccessful_try(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %3) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kunit_test_catch(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %function_called = getelementptr inbounds %struct.kunit_try_catch_test_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %function_called to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %function_called, align 4
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kunit_try_catch_throw(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kunit_resource_test_init(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 376) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %1 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %3 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 369, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %5 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %8 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.1, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i.i, null
  %cmp.i = icmp ule ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  %10 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %test, align 4
  call void @kunit_init_test(ptr noundef %call7.i.i, ptr noundef nonnull @.str.7, ptr noundef null) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_exit(ptr nocapture noundef readonly %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  tail call void @kunit_cleanup(ptr noundef %1) #15
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_init_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_init_resources(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  tail call void @kunit_init_test(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef null) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !173
  %4 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 139, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %8 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.16, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %expected_true, align 4
  %resources = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %resources, align 4
  %cmp.i = icmp eq ptr %14, %resources
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_alloc_resource(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion10 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion26 = alloca %struct.kunit_unary_assert, align 4
  %__assertion49 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call = tail call ptr @kunit_alloc_and_get_resource(ptr noundef %1, ptr noundef nonnull @fake_resource_init, ptr noundef nonnull @fake_resource_free, i32 noundef 3264, ptr noundef %1) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 154, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.17, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  %is_resource_initialized = getelementptr inbounds %struct.kunit_test_resource_context, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion10) #15
  %13 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion10, align 4
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %14 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %15 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 157, ptr %line14, align 4
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %16 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %17 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message16, align 4
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %19 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_binary_ptr_assert_format, ptr %format19, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion10, i32 0, i32 1
  %20 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.18, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion10, i32 0, i32 2
  %21 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.19, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion10, i32 0, i32 3
  %22 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %is_resource_initialized, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion10, i32 0, i32 4
  %23 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.20, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion10, i32 0, i32 5
  %24 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %12, ptr %right_value, align 4
  %cmp = icmp eq ptr %is_resource_initialized, %12
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %cmp, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion10) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion26) #15
  %25 = getelementptr inbounds i8, ptr %__assertion26, i32 32
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4, !annotation !173
  %27 = ptrtoint ptr %__assertion26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %test, ptr %__assertion26, align 4
  %type29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion26, i32 0, i32 1
  %28 = ptrtoint ptr %type29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type29, align 4
  %line30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion26, i32 0, i32 2
  %29 = ptrtoint ptr %line30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 158, ptr %line30, align 4
  %file31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion26, i32 0, i32 3
  %30 = ptrtoint ptr %file31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str, ptr %file31, align 4
  %message32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion26, i32 0, i32 4
  %31 = ptrtoint ptr %message32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %message32, align 4
  %va34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion26, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %va34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %va34, align 4
  %format35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion26, i32 0, i32 5
  %33 = ptrtoint ptr %format35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @kunit_unary_assert_format, ptr %format35, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion26, i32 0, i32 1
  %34 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.21, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion26, i32 0, i32 2
  %35 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %expected_true, align 4
  %node = getelementptr inbounds %struct.kunit_resource, ptr %call, i32 0, i32 4
  %resources = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %node, align 4
  %cmp.i90 = icmp eq ptr %37, %resources
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion26, i1 noundef zeroext %cmp.i90, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion26) #15
  %free47 = getelementptr inbounds %struct.kunit_resource, ptr %call, i32 0, i32 2
  %38 = ptrtoint ptr %free47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %free47, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion49) #15
  %40 = ptrtoint ptr %__assertion49 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion49, align 4
  %type52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion49, i32 0, i32 1
  %41 = ptrtoint ptr %type52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type52, align 4
  %line53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion49, i32 0, i32 2
  %42 = ptrtoint ptr %line53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 159, ptr %line53, align 4
  %file54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion49, i32 0, i32 3
  %43 = ptrtoint ptr %file54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str, ptr %file54, align 4
  %message55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion49, i32 0, i32 4
  %44 = ptrtoint ptr %message55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message55, align 4
  %va57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion49, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %va57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va57, align 4
  %format58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion49, i32 0, i32 5
  %46 = ptrtoint ptr %format58 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_ptr_assert_format, ptr %format58, align 4
  %operation59 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion49, i32 0, i32 1
  %47 = ptrtoint ptr %operation59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.18, ptr %operation59, align 4
  %left_text60 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion49, i32 0, i32 2
  %48 = ptrtoint ptr %left_text60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.22, ptr %left_text60, align 4
  %left_value61 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion49, i32 0, i32 3
  %49 = ptrtoint ptr %left_value61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @fake_resource_free, ptr %left_value61, align 4
  %right_text62 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion49, i32 0, i32 4
  %50 = ptrtoint ptr %right_text62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.23, ptr %right_text62, align 4
  %right_value63 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion49, i32 0, i32 5
  %51 = ptrtoint ptr %right_value63 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %39, ptr %right_value63, align 4
  %cmp65 = icmp eq ptr %39, @fake_resource_free
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion49, i1 noundef zeroext %cmp65, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion49) #15
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !177

if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #15
  br label %kunit_put_resource.exit

if.then.i.i:                                      ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  %53 = ptrtoint ptr %free47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %free47, align 4
  %tobool.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.kunit_put_resource.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.kunit_put_resource.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %54(ptr noundef %call) #15
  call void @kfree(ptr noundef %call) #15
  br label %kunit_put_resource.exit

kunit_put_resource.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.kunit_put_resource.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_destroy_resource(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion8 = alloca %struct.kunit_unary_assert, align 4
  %__assertion30 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call = tail call ptr @kunit_alloc_and_get_resource(ptr noundef %1, ptr noundef nonnull @fake_resource_init, ptr noundef nonnull @fake_resource_free, i32 noundef 3264, ptr noundef %1) #15
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !177

if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #15
  br label %kunit_put_resource.exit

if.then.i.i:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  %free.i.i.i = getelementptr %struct.kunit_resource, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.kunit_put_resource.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.kunit_put_resource.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %4(ptr noundef %call) #15
  tail call void @kfree(ptr noundef %call) #15
  br label %kunit_put_resource.exit

kunit_put_resource.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.kunit_put_resource.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %5 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !173
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 187, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %14 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.24, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %15 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %expected_true, align 4
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %call5 = tail call i32 @kunit_destroy_resource(ptr noundef %1, ptr noundef nonnull @kunit_resource_instance_match, ptr noundef %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool.not, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion8) #15
  %18 = getelementptr inbounds i8, ptr %__assertion8, i32 32
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !173
  %20 = ptrtoint ptr %__assertion8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion8, align 4
  %type11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 1
  %21 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type11, align 4
  %line12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 2
  %22 = ptrtoint ptr %line12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 189, ptr %line12, align 4
  %file13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 3
  %23 = ptrtoint ptr %file13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %file13, align 4
  %message14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4
  %24 = ptrtoint ptr %message14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message14, align 4
  %va16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %va16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va16, align 4
  %format17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 5
  %26 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_unary_assert_format, ptr %format17, align 4
  %condition18 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 1
  %27 = ptrtoint ptr %condition18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.25, ptr %condition18, align 4
  %expected_true19 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 2
  %28 = ptrtoint ptr %expected_true19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %expected_true19, align 4
  %is_resource_initialized = getelementptr inbounds %struct.kunit_test_resource_context, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %is_resource_initialized to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_resource_initialized, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp26 = icmp eq i8 %30, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion8, i1 noundef zeroext %cmp26, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion8) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion30) #15
  %31 = getelementptr inbounds i8, ptr %__assertion30, i32 32
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %31, align 4, !annotation !173
  %33 = ptrtoint ptr %__assertion30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion30, align 4
  %type33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 1
  %34 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type33, align 4
  %line34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 2
  %35 = ptrtoint ptr %line34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 190, ptr %line34, align 4
  %file35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 3
  %36 = ptrtoint ptr %file35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str, ptr %file35, align 4
  %message36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4
  %37 = ptrtoint ptr %message36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message36, align 4
  %va38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va38, align 4
  %format39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 5
  %39 = ptrtoint ptr %format39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_unary_assert_format, ptr %format39, align 4
  %condition40 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion30, i32 0, i32 1
  %40 = ptrtoint ptr %condition40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.16, ptr %condition40, align 4
  %expected_true41 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion30, i32 0, i32 2
  %41 = ptrtoint ptr %expected_true41 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %expected_true41, align 4
  %resources = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %resources, align 4
  %cmp.i = icmp eq ptr %43, %resources
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion30, i1 noundef zeroext %cmp.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion30) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_cleanup_resources(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  br label %for.body

for.body:                                         ; preds = %kunit_put_resource.exit.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %kunit_put_resource.exit.for.body_crit_edge ]
  %call = tail call ptr @kunit_alloc_and_get_resource(ptr noundef %1, ptr noundef nonnull @fake_resource_init, ptr noundef nonnull @fake_resource_free, i32 noundef 3264, ptr noundef %1) #15
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !177

if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #15
  br label %kunit_put_resource.exit

if.then.i.i:                                      ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  %free.i.i.i = getelementptr %struct.kunit_resource, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.kunit_put_resource.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.kunit_put_resource.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %4(ptr noundef %call) #15
  tail call void @kfree(ptr noundef %call) #15
  br label %kunit_put_resource.exit

kunit_put_resource.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.kunit_put_resource.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %kunit_put_resource.exit.for.body_crit_edge

kunit_put_resource.exit.for.body_crit_edge:       ; preds = %kunit_put_resource.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %kunit_put_resource.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kunit_cleanup(ptr noundef %1) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %5 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !173
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 210, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %14 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.16, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %15 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %expected_true, align 4
  %resources7 = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %resources7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %resources7, align 4
  %cmp.i = icmp eq ptr %17, %resources7
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_proper_free_ordering(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion45 = alloca %struct.kunit_binary_assert, align 8
  %__assertion75 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call = tail call ptr @kunit_alloc_and_get_resource(ptr noundef %1, ptr noundef nonnull @fake_resource_1_init, ptr noundef nonnull @fake_resource_1_free, i32 noundef 3264, ptr noundef %1) #15
  %allocate_order = getelementptr inbounds %struct.kunit_test_resource_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %allocate_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %allocate_order, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #15
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
  store i32 297, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %file, align 4
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
  store ptr @.str.18, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %14 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.26, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %3 to i64
  %15 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %16 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.27, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %17 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #15
  %arrayidx12 = getelementptr %struct.kunit_test_resource_context, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx12, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #15
  %20 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %21 = call ptr @memset(ptr %20, i32 255, i32 24)
  %22 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %23 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %24 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 298, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %25 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %26 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %28 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %29 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.18, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %30 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.28, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %conv28 = sext i32 %19 to i64
  %31 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv28, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %32 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.29, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %33 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp33 = icmp eq i32 %19, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #15
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !177

if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #15
  br label %kunit_put_resource.exit

if.then.i.i:                                      ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  %free.i.i.i = getelementptr %struct.kunit_resource, ptr %call, i32 0, i32 2
  %35 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.kunit_put_resource.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.kunit_put_resource.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %36(ptr noundef %call) #15
  call void @kfree(ptr noundef %call) #15
  br label %kunit_put_resource.exit

kunit_put_resource.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.kunit_put_resource.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge
  call void @kunit_cleanup(ptr noundef %1) #15
  %free_order = getelementptr inbounds %struct.kunit_test_resource_context, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %free_order to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %free_order, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion45) #15
  %39 = getelementptr inbounds i8, ptr %__assertion45, i32 32
  %40 = call ptr @memset(ptr %39, i32 255, i32 24)
  %41 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion45, align 8
  %type48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %42 = ptrtoint ptr %type48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type48, align 4
  %line49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %43 = ptrtoint ptr %line49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 309, ptr %line49, align 8
  %file50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %44 = ptrtoint ptr %file50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str, ptr %file50, align 4
  %message51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %45 = ptrtoint ptr %message51 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message51, align 8
  %va53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %va53 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va53, align 4
  %format54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %47 = ptrtoint ptr %format54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_binary_assert_format, ptr %format54, align 8
  %operation55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 1
  %48 = ptrtoint ptr %operation55 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.18, ptr %operation55, align 4
  %left_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 2
  %49 = ptrtoint ptr %left_text56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.30, ptr %left_text56, align 8
  %left_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 3
  %conv58 = sext i32 %38 to i64
  %50 = ptrtoint ptr %left_value57 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv58, ptr %left_value57, align 8
  %right_text59 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 4
  %51 = ptrtoint ptr %right_text59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.29, ptr %right_text59, align 8
  %right_value60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 5
  %52 = ptrtoint ptr %right_value60 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1, ptr %right_value60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp63 = icmp eq i32 %38, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext %cmp63, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion45) #15
  %arrayidx72 = getelementptr %struct.kunit_test_resource_context, ptr %1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx72, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion75) #15
  %55 = getelementptr inbounds i8, ptr %__assertion75, i32 32
  %56 = call ptr @memset(ptr %55, i32 255, i32 24)
  %57 = ptrtoint ptr %__assertion75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion75, align 8
  %type78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 1
  %58 = ptrtoint ptr %type78 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type78, align 4
  %line79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 2
  %59 = ptrtoint ptr %line79 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 310, ptr %line79, align 8
  %file80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 3
  %60 = ptrtoint ptr %file80 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str, ptr %file80, align 4
  %message81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 4
  %61 = ptrtoint ptr %message81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message81, align 8
  %va83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %va83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va83, align 4
  %format84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 5
  %63 = ptrtoint ptr %format84 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_binary_assert_format, ptr %format84, align 8
  %operation85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 1
  %64 = ptrtoint ptr %operation85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.18, ptr %operation85, align 4
  %left_text86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 2
  %65 = ptrtoint ptr %left_text86 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.31, ptr %left_text86, align 8
  %left_value87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 3
  %conv88 = sext i32 %54 to i64
  %66 = ptrtoint ptr %left_value87 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv88, ptr %left_value87, align 8
  %right_text89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 4
  %67 = ptrtoint ptr %right_text89 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.27, ptr %right_text89, align 8
  %right_value90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 5
  %68 = ptrtoint ptr %right_value90 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 2, ptr %right_value90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp93 = icmp eq i32 %54, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion75, i1 noundef zeroext %cmp93, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion75) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_static(ptr noundef %test) #0 align 64 {
entry:
  %ctx = alloca %struct.kunit_test_resource_context, align 4
  %res = alloca %struct.kunit_resource, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion35 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %ctx) #15
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res) #15
  %1 = call ptr @memset(ptr %res, i32 255, i32 24)
  %call = call i32 @kunit_add_resource(ptr noundef %test, ptr noundef null, ptr noundef null, ptr noundef nonnull %res, ptr noundef nonnull %ctx) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #15
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 319, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %8 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.18, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.32, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %call to i64
  %13 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %14 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.33, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %15 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #15
  %16 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #15
  %18 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %19 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %20 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 321, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %21 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %22 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %24 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %25 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.18, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %26 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.34, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %27 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %17, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %28 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.35, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %29 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ctx, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %17, %ctx
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #15
  call void @kunit_cleanup(ptr noundef %test) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion35) #15
  %30 = getelementptr inbounds i8, ptr %__assertion35, i32 32
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %30, align 4, !annotation !173
  %32 = ptrtoint ptr %__assertion35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion35, align 4
  %type38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 1
  %33 = ptrtoint ptr %type38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type38, align 4
  %line39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 2
  %34 = ptrtoint ptr %line39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 325, ptr %line39, align 4
  %file40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 3
  %35 = ptrtoint ptr %file40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str, ptr %file40, align 4
  %message41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 4
  %36 = ptrtoint ptr %message41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message41, align 4
  %va43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va43, align 4
  %format44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 5
  %38 = ptrtoint ptr %format44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_unary_assert_format, ptr %format44, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion35, i32 0, i32 1
  %39 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.36, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion35, i32 0, i32 2
  %40 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %expected_true, align 4
  %resources = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %41 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %resources, align 4
  %cmp.i = icmp eq ptr %42, %resources
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion35, i1 noundef zeroext %cmp.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion35) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res) #15
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %ctx) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_resource_test_named(ptr noundef %test) #0 align 64 {
entry:
  %res1 = alloca %struct.kunit_resource, align 4
  %res2 = alloca %struct.kunit_resource, align 4
  %ctx = alloca %struct.kunit_test_resource_context, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion39 = alloca %struct.kunit_binary_assert, align 8
  %__assertion68 = alloca %struct.kunit_binary_assert, align 8
  %__assertion97 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion124 = alloca %struct.kunit_binary_assert, align 8
  %__assertion149 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res1) #15
  %0 = getelementptr inbounds %struct.kunit_resource, ptr %res1, i32 0, i32 2
  %1 = getelementptr inbounds %struct.kunit_resource, ptr %res1, i32 0, i32 3
  %2 = call ptr @memset(ptr %res1, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res2) #15
  %3 = call ptr @memset(ptr %res2, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %ctx) #15
  %4 = call ptr @memset(ptr %ctx, i32 255, i32 376)
  %call = call i32 @kunit_add_named_resource(ptr noundef %test, ptr noundef null, ptr noundef null, ptr noundef nonnull %res1, ptr noundef nonnull @.str.37, ptr noundef nonnull %ctx) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #15
  %5 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %6 = call ptr @memset(ptr %5, i32 255, i32 24)
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 336, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.18, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %15 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.38, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %call to i64
  %16 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %17 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.33, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %18 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #15
  %19 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %res1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #15
  %21 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %22 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %23 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 337, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %24 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %25 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %27 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %28 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.18, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %29 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.39, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %30 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %20, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %31 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.35, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %32 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ctx, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %20, %ctx
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #15
  %call36 = call i32 @kunit_add_named_resource(ptr noundef %test, ptr noundef null, ptr noundef null, ptr noundef nonnull %res1, ptr noundef nonnull @.str.37, ptr noundef nonnull %ctx) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion39) #15
  %33 = getelementptr inbounds i8, ptr %__assertion39, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion39, align 8
  %type42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 1
  %36 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type42, align 4
  %line43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 2
  %37 = ptrtoint ptr %line43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 342, ptr %line43, align 8
  %file44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 3
  %38 = ptrtoint ptr %file44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str, ptr %file44, align 4
  %message45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4
  %39 = ptrtoint ptr %message45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message45, align 8
  %va47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va47, align 4
  %format48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 5
  %41 = ptrtoint ptr %format48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format48, align 8
  %operation49 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion39, i32 0, i32 1
  %42 = ptrtoint ptr %operation49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.18, ptr %operation49, align 4
  %left_text50 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion39, i32 0, i32 2
  %43 = ptrtoint ptr %left_text50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.38, ptr %left_text50, align 8
  %left_value51 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion39, i32 0, i32 3
  %conv52 = sext i32 %call36 to i64
  %44 = ptrtoint ptr %left_value51 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv52, ptr %left_value51, align 8
  %right_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion39, i32 0, i32 4
  %45 = ptrtoint ptr %right_text53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.40, ptr %right_text53, align 8
  %right_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion39, i32 0, i32 5
  %46 = ptrtoint ptr %right_value54 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 -17, ptr %right_value54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call36)
  %cmp57 = icmp eq i32 %call36, -17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion39, i1 noundef zeroext %cmp57, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion39) #15
  %call65 = call i32 @kunit_add_named_resource(ptr noundef %test, ptr noundef null, ptr noundef null, ptr noundef nonnull %res2, ptr noundef nonnull @.str.41, ptr noundef nonnull %ctx) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion68) #15
  %47 = getelementptr inbounds i8, ptr %__assertion68, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion68, align 8
  %type71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 1
  %50 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type71, align 4
  %line72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 2
  %51 = ptrtoint ptr %line72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 347, ptr %line72, align 8
  %file73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 3
  %52 = ptrtoint ptr %file73 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str, ptr %file73, align 4
  %message74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4
  %53 = ptrtoint ptr %message74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message74, align 8
  %va76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va76 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va76, align 4
  %format77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion68, i32 0, i32 5
  %55 = ptrtoint ptr %format77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format77, align 8
  %operation78 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 1
  %56 = ptrtoint ptr %operation78 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.18, ptr %operation78, align 4
  %left_text79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 2
  %57 = ptrtoint ptr %left_text79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.42, ptr %left_text79, align 8
  %left_value80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 3
  %conv81 = sext i32 %call65 to i64
  %58 = ptrtoint ptr %left_value80 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv81, ptr %left_value80, align 8
  %right_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 4
  %59 = ptrtoint ptr %right_text82 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.33, ptr %right_text82, align 8
  %right_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion68, i32 0, i32 5
  %60 = ptrtoint ptr %right_value83 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %right_value83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp86 = icmp eq i32 %call65, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion68, i1 noundef zeroext %cmp86, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion68) #15
  %lock.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #15
  %resources.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn3.i.i = load ptr, ptr %prev.i.i, align 4
  %cmp7.not4.i.i = icmp eq ptr %.pn3.i.i, %resources.i.i
  br i1 %cmp7.not4.i.i, label %entry.kunit_find_named_resource.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.kunit_find_named_resource.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_find_named_resource.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn5.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn3.i.i, %entry.for.body.i.i_crit_edge ]
  %name.i.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -12
  %62 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %kunit_resource_name_match.exit.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

kunit_resource_name_match.exit.i.i:               ; preds = %for.body.i.i
  %call.i.i.i = call i32 @strcmp(ptr noundef nonnull %63, ptr noundef nonnull dereferenceable(11) @.str.37) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %kunit_resource_name_match.exit.i.i.for.inc.i.i_crit_edge

kunit_resource_name_match.exit.i.i.for.inc.i.i_crit_edge: ; preds = %kunit_resource_name_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %kunit_resource_name_match.exit.i.i
  %res.0.le.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -16
  %refcount.i.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -4
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #15
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #15, !srcloc !179
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !180

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %65 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %65, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.kunit_find_named_resource.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !177

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.kunit_find_named_resource.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_find_named_resource.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #15
  br label %kunit_find_named_resource.exit

for.inc.i.i:                                      ; preds = %kunit_resource_name_match.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %prev12.i.i = getelementptr inbounds %struct.list_head, ptr %.pn5.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev12.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i.i = load ptr, ptr %prev12.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, %resources.i.i
  br i1 %cmp7.not.i.i, label %for.inc.i.i.kunit_find_named_resource.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.kunit_find_named_resource.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_find_named_resource.exit

kunit_find_named_resource.exit:                   ; preds = %for.inc.i.i.kunit_find_named_resource.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.kunit_find_named_resource.exit_crit_edge, %entry.kunit_find_named_resource.exit_crit_edge
  %found.0.i.i = phi ptr [ %res.0.le.i.i, %if.else.i.i.i.i.i.i.i.kunit_find_named_resource.exit_crit_edge ], [ %res.0.le.i.i, %if.end15.sink.split.i.i.i.i.i.i.i ], [ null, %entry.kunit_find_named_resource.exit_crit_edge ], [ null, %for.inc.i.i.kunit_find_named_resource.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion97) #15
  %67 = ptrtoint ptr %__assertion97 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %test, ptr %__assertion97, align 4
  %type100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 1
  %68 = ptrtoint ptr %type100 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %type100, align 4
  %line101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 2
  %69 = ptrtoint ptr %line101 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 351, ptr %line101, align 4
  %file102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 3
  %70 = ptrtoint ptr %file102 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str, ptr %file102, align 4
  %message103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 4
  %71 = ptrtoint ptr %message103 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %message103, align 4
  %va105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %va105 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %va105, align 4
  %format106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 5
  %73 = ptrtoint ptr %format106 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @kunit_binary_ptr_assert_format, ptr %format106, align 4
  %operation107 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion97, i32 0, i32 1
  %74 = ptrtoint ptr %operation107 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.18, ptr %operation107, align 4
  %left_text108 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion97, i32 0, i32 2
  %75 = ptrtoint ptr %left_text108 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.43, ptr %left_text108, align 4
  %left_value109 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion97, i32 0, i32 3
  %76 = ptrtoint ptr %left_value109 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %found.0.i.i, ptr %left_value109, align 4
  %right_text110 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion97, i32 0, i32 4
  %77 = ptrtoint ptr %right_text110 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.44, ptr %right_text110, align 4
  %right_value111 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion97, i32 0, i32 5
  %78 = ptrtoint ptr %right_value111 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %res1, ptr %right_value111, align 4
  %cmp113 = icmp eq ptr %found.0.i.i, %res1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion97, i1 noundef zeroext %cmp113, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion97) #15
  %tobool.not = icmp eq ptr %found.0.i.i, null
  br i1 %tobool.not, label %kunit_find_named_resource.exit.do.body119_crit_edge, label %if.then

kunit_find_named_resource.exit.do.body119_crit_edge: ; preds = %kunit_find_named_resource.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body119

if.then:                                          ; preds = %kunit_find_named_resource.exit
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #15
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #15, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i201, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body119_crit_edge, label %if.then10.i.i.i.i.i, !prof !177

if.end5.i.i.i.i.i.do.body119_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body119

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #15
  br label %do.body119

if.then.i.i201:                                   ; preds = %if.then
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %0, align 4
  %tobool.not.i.i.i200 = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i200, label %if.then.i.i201.do.body119_crit_edge, label %if.then.i.i.i

if.then.i.i201.do.body119_crit_edge:              ; preds = %if.then.i.i201
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body119

if.then.i.i.i:                                    ; preds = %if.then.i.i201
  call void @__sanitizer_cov_trace_pc() #17
  call void %81(ptr noundef nonnull %res1) #15
  call void @kfree(ptr noundef nonnull %res1) #15
  br label %do.body119

do.body119:                                       ; preds = %if.then.i.i.i, %if.then.i.i201.do.body119_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body119_crit_edge, %kunit_find_named_resource.exit.do.body119_crit_edge
  %call.i = call i32 @kunit_destroy_resource(ptr noundef %test, ptr noundef nonnull @kunit_resource_name_match, ptr noundef nonnull @.str.41) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion124) #15
  %82 = getelementptr inbounds i8, ptr %__assertion124, i32 32
  %83 = call ptr @memset(ptr %82, i32 255, i32 24)
  %84 = ptrtoint ptr %__assertion124 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %test, ptr %__assertion124, align 8
  %type127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 1
  %85 = ptrtoint ptr %type127 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %type127, align 4
  %line128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 2
  %86 = ptrtoint ptr %line128 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 357, ptr %line128, align 8
  %file129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 3
  %87 = ptrtoint ptr %file129 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str, ptr %file129, align 4
  %message130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4
  %88 = ptrtoint ptr %message130 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %message130, align 8
  %va132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %va132 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %va132, align 4
  %format133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 5
  %90 = ptrtoint ptr %format133 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @kunit_binary_assert_format, ptr %format133, align 8
  %operation134 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 1
  %91 = ptrtoint ptr %operation134 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.18, ptr %operation134, align 4
  %left_text135 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 2
  %92 = ptrtoint ptr %left_text135 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.45, ptr %left_text135, align 8
  %left_value136 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 3
  %conv137 = sext i32 %call.i to i64
  %93 = ptrtoint ptr %left_value136 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv137, ptr %left_value136, align 8
  %right_text138 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 4
  %94 = ptrtoint ptr %right_text138 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.33, ptr %right_text138, align 8
  %right_value139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion124, i32 0, i32 5
  %95 = ptrtoint ptr %right_value139 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 0, ptr %right_value139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp142 = icmp eq i32 %call.i, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion124, i1 noundef zeroext %cmp142, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion124) #15
  call void @kunit_cleanup(ptr noundef %test) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion149) #15
  %96 = getelementptr inbounds i8, ptr %__assertion149, i32 32
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %96, align 4, !annotation !173
  %98 = ptrtoint ptr %__assertion149 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %test, ptr %__assertion149, align 4
  %type152 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 1
  %99 = ptrtoint ptr %type152 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %type152, align 4
  %line153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 2
  %100 = ptrtoint ptr %line153 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 361, ptr %line153, align 4
  %file154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 3
  %101 = ptrtoint ptr %file154 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str, ptr %file154, align 4
  %message155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4
  %102 = ptrtoint ptr %message155 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %message155, align 4
  %va157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %va157 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %va157, align 4
  %format158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 5
  %104 = ptrtoint ptr %format158 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @kunit_unary_assert_format, ptr %format158, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion149, i32 0, i32 1
  %105 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.36, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion149, i32 0, i32 2
  %106 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %expected_true, align 4
  %107 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %resources.i.i, align 4
  %cmp.i = icmp eq ptr %108, %resources.i.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion149, i1 noundef zeroext %cmp.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion149) #15
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %ctx) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res2) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fake_resource_free(ptr nocapture noundef readonly %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_alloc_and_get_resource(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fake_resource_init(ptr nocapture noundef writeonly %res, ptr noundef %context) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_resource_initialized = getelementptr inbounds %struct.kunit_test_resource_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %is_resource_initialized, ptr %res, align 4
  %1 = ptrtoint ptr %is_resource_initialized to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %is_resource_initialized, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_destroy_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @kunit_resource_instance_match(ptr nocapture noundef readnone %test, ptr nocapture noundef readonly %res, ptr noundef readnone %match_data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %cmp = icmp eq ptr %1, %match_data
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_resource_1_init(ptr nocapture noundef writeonly %res, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kunit_alloc_and_get_resource(ptr noundef %context, ptr noundef nonnull @fake_resource_2_init, ptr noundef nonnull @fake_resource_2_free, i32 noundef 3264, ptr noundef %context) #15
  %allocate_order = getelementptr inbounds %struct.kunit_test_resource_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %allocate_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %allocate_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.kunit_resource_test_mark_order.exit_crit_edge, label %for.inc.i

entry.kunit_resource_test_mark_order.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_resource_test_mark_order.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1.i = getelementptr %struct.kunit_test_resource_context, ptr %context, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1.i = icmp eq i32 %3, 0
  %spec.select.i = select i1 %tobool.not.1.i, i32 1, i32 2
  br label %kunit_resource_test_mark_order.exit

kunit_resource_test_mark_order.exit:              ; preds = %for.inc.i, %entry.kunit_resource_test_mark_order.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.kunit_resource_test_mark_order.exit_crit_edge ], [ %spec.select.i, %for.inc.i ]
  %arrayidx1.i = getelementptr i32, ptr %allocate_order, i32 %i.0.lcssa.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx1.i, align 4
  %5 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %context, ptr %res, align 4
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %kunit_resource_test_mark_order.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !177

if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #15
  br label %kunit_put_resource.exit

if.then.i.i:                                      ; preds = %kunit_resource_test_mark_order.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !178
  %free.i.i.i = getelementptr %struct.kunit_resource, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.kunit_put_resource.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.kunit_put_resource.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_put_resource.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %8(ptr noundef %call) #15
  tail call void @kfree(ptr noundef %call) #15
  br label %kunit_put_resource.exit

kunit_put_resource.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.kunit_put_resource.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fake_resource_1_free(ptr nocapture noundef readonly %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %free_order = getelementptr inbounds %struct.kunit_test_resource_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %free_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.kunit_resource_test_mark_order.exit_crit_edge, label %for.inc.i

entry.kunit_resource_test_mark_order.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_resource_test_mark_order.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1.i = getelementptr %struct.kunit_test_resource_context, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %tobool.not.1.i, i32 1, i32 2
  br label %kunit_resource_test_mark_order.exit

kunit_resource_test_mark_order.exit:              ; preds = %for.inc.i, %entry.kunit_resource_test_mark_order.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.kunit_resource_test_mark_order.exit_crit_edge ], [ %spec.select.i, %for.inc.i ]
  %arrayidx1.i = getelementptr i32, ptr %free_order, i32 %i.0.lcssa.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx1.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fake_resource_2_init(ptr nocapture noundef writeonly %res, ptr noundef %context) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %allocate_order = getelementptr inbounds %struct.kunit_test_resource_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %allocate_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %allocate_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.kunit_resource_test_mark_order.exit_crit_edge, label %for.inc.i

entry.kunit_resource_test_mark_order.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_resource_test_mark_order.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1.i = getelementptr %struct.kunit_test_resource_context, ptr %context, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1.i = icmp eq i32 %3, 0
  %spec.select.i = select i1 %tobool.not.1.i, i32 1, i32 2
  br label %kunit_resource_test_mark_order.exit

kunit_resource_test_mark_order.exit:              ; preds = %for.inc.i, %entry.kunit_resource_test_mark_order.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.kunit_resource_test_mark_order.exit_crit_edge ], [ %spec.select.i, %for.inc.i ]
  %arrayidx1.i = getelementptr i32, ptr %allocate_order, i32 %i.0.lcssa.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %arrayidx1.i, align 4
  %5 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %context, ptr %res, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fake_resource_2_free(ptr nocapture noundef readonly %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %free_order = getelementptr inbounds %struct.kunit_test_resource_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %free_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.kunit_resource_test_mark_order.exit_crit_edge, label %for.inc.i

entry.kunit_resource_test_mark_order.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunit_resource_test_mark_order.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1.i = getelementptr %struct.kunit_test_resource_context, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %tobool.not.1.i, i32 1, i32 2
  br label %kunit_resource_test_mark_order.exit

kunit_resource_test_mark_order.exit:              ; preds = %for.inc.i, %entry.kunit_resource_test_mark_order.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.kunit_resource_test_mark_order.exit_crit_edge ], [ %spec.select.i, %for.inc.i ]
  %arrayidx1.i = getelementptr i32, ptr %free_order, i32 %i.0.lcssa.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %arrayidx1.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_add_resource(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_add_named_resource(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @kunit_resource_name_match(ptr nocapture noundef readnone %test, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %match_name) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %match_name) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_log_test(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion48 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion72 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion96 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion120 = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 512, i32 noundef 3520) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #15
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 421, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.47, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #15
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #22
  %log13 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %9 = ptrtoint ptr %log13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log13, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %10, ptr noundef nonnull @.str.49) #15
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #22
  %11 = ptrtoint ptr %log13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log13, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %12, ptr noundef nonnull @.str.53) #15
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #22
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %call.i.i, ptr noundef nonnull @.str.57) #15
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #22
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %call.i.i, ptr noundef nonnull @.str.61) #15
  %13 = ptrtoint ptr %log13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log13, align 4
  %call46 = call ptr @strstr(ptr noundef %14, ptr noundef nonnull @.str.62)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion48) #15
  %15 = ptrtoint ptr %__assertion48 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %test, ptr %__assertion48, align 4
  %type51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 1
  %16 = ptrtoint ptr %type51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type51, align 4
  %line52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 2
  %17 = ptrtoint ptr %line52 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 430, ptr %line52, align 4
  %file53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 3
  %18 = ptrtoint ptr %file53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %file53, align 4
  %message54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4
  %19 = ptrtoint ptr %message54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %message54, align 4
  %va56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %va56 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %va56, align 4
  %format57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 5
  %21 = ptrtoint ptr %format57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format57, align 4
  %text58 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion48, i32 0, i32 1
  %22 = ptrtoint ptr %text58 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.63, ptr %text58, align 4
  %value59 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion48, i32 0, i32 2
  %23 = ptrtoint ptr %value59 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call46, ptr %value59, align 4
  %tobool.not.i162 = icmp ne ptr %call46, null
  %cmp.i163 = icmp ule ptr %call46, inttoptr (i32 -4096 to ptr)
  %lnot62 = and i1 %tobool.not.i162, %cmp.i163
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion48, i1 noundef zeroext %lnot62, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion48) #15
  %24 = ptrtoint ptr %log13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log13, align 4
  %call70 = call ptr @strstr(ptr noundef %25, ptr noundef nonnull @.str.64)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion72) #15
  %26 = ptrtoint ptr %__assertion72 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion72, align 4
  %type75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 1
  %27 = ptrtoint ptr %type75 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type75, align 4
  %line76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 2
  %28 = ptrtoint ptr %line76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 432, ptr %line76, align 4
  %file77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 3
  %29 = ptrtoint ptr %file77 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str, ptr %file77, align 4
  %message78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4
  %30 = ptrtoint ptr %message78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message78, align 4
  %va80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %va80 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va80, align 4
  %format81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 5
  %32 = ptrtoint ptr %format81 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format81, align 4
  %text82 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion72, i32 0, i32 1
  %33 = ptrtoint ptr %text82 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.65, ptr %text82, align 4
  %value83 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion72, i32 0, i32 2
  %34 = ptrtoint ptr %value83 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call70, ptr %value83, align 4
  %tobool.not.i165 = icmp ne ptr %call70, null
  %cmp.i166 = icmp ule ptr %call70, inttoptr (i32 -4096 to ptr)
  %lnot86 = and i1 %tobool.not.i165, %cmp.i166
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion72, i1 noundef zeroext %lnot86, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion72) #15
  %call94 = call ptr @strstr(ptr noundef %call.i.i, ptr noundef nonnull @.str.66)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion96) #15
  %35 = ptrtoint ptr %__assertion96 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion96, align 4
  %type99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 1
  %36 = ptrtoint ptr %type99 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type99, align 4
  %line100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 2
  %37 = ptrtoint ptr %line100 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 434, ptr %line100, align 4
  %file101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 3
  %38 = ptrtoint ptr %file101 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str, ptr %file101, align 4
  %message102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 4
  %39 = ptrtoint ptr %message102 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message102, align 4
  %va104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va104 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va104, align 4
  %format105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion96, i32 0, i32 5
  %41 = ptrtoint ptr %format105 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format105, align 4
  %text106 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion96, i32 0, i32 1
  %42 = ptrtoint ptr %text106 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.67, ptr %text106, align 4
  %value107 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion96, i32 0, i32 2
  %43 = ptrtoint ptr %value107 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call94, ptr %value107, align 4
  %tobool.not.i168 = icmp ne ptr %call94, null
  %cmp.i169 = icmp ule ptr %call94, inttoptr (i32 -4096 to ptr)
  %lnot110 = and i1 %tobool.not.i168, %cmp.i169
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion96, i1 noundef zeroext %lnot110, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion96) #15
  %call118 = call ptr @strstr(ptr noundef %call.i.i, ptr noundef nonnull @.str.68)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion120) #15
  %44 = ptrtoint ptr %__assertion120 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion120, align 4
  %type123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 1
  %45 = ptrtoint ptr %type123 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type123, align 4
  %line124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 2
  %46 = ptrtoint ptr %line124 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 436, ptr %line124, align 4
  %file125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 3
  %47 = ptrtoint ptr %file125 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str, ptr %file125, align 4
  %message126 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 4
  %48 = ptrtoint ptr %message126 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message126, align 4
  %va128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va128 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va128, align 4
  %format129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion120, i32 0, i32 5
  %50 = ptrtoint ptr %format129 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format129, align 4
  %text130 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion120, i32 0, i32 1
  %51 = ptrtoint ptr %text130 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.69, ptr %text130, align 4
  %value131 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion120, i32 0, i32 2
  %52 = ptrtoint ptr %value131 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call118, ptr %value131, align 4
  %tobool.not.i171 = icmp ne ptr %call118, null
  %cmp.i172 = icmp ule ptr %call118, inttoptr (i32 -4096 to ptr)
  %lnot134 = and i1 %tobool.not.i171, %cmp.i172
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion120, i1 noundef zeroext %lnot134, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion120) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_log_append(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_status_set_failure_test(ptr noundef %test) #0 align 64 {
entry:
  %fake = alloca %struct.kunit, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 356, ptr nonnull %fake) #15
  %0 = call ptr @memset(ptr %fake, i32 255, i32 356)
  call void @kunit_init_test(ptr noundef nonnull %fake, ptr noundef nonnull @.str.72, ptr noundef null) #15
  %status = getelementptr inbounds %struct.kunit, ptr %fake, i32 0, i32 7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #15
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
  store i32 448, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %file, align 4
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
  store ptr @.str.18, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.73, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %2 to i64
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.74, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #15
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #15
  %18 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %19 = call ptr @memset(ptr %18, i32 255, i32 24)
  %20 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %21 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %22 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 450, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %23 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %24 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %26 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %27 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.18, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %28 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.73, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %29 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %30 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.75, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %31 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1, ptr %right_value28, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext true, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #15
  call void @llvm.lifetime.end.p0(i64 356, ptr nonnull %fake) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_status_mark_skipped_test(ptr noundef %test) #0 align 64 {
entry:
  %fake = alloca %struct.kunit, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion12 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion55 = alloca %struct.kunit_binary_assert, align 8
  %__assertion85 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 356, ptr nonnull %fake) #15
  %0 = call ptr @memset(ptr %fake, i32 255, i32 356)
  call void @kunit_init_test(ptr noundef nonnull %fake, ptr noundef nonnull @.str.72, ptr noundef null) #15
  %status = getelementptr inbounds %struct.kunit, ptr %fake, i32 0, i32 7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #15
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
  store i32 460, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %file, align 4
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
  store ptr @.str.18, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.73, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %2 to i64
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.76, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #15
  %status_comment = getelementptr inbounds %struct.kunit, ptr %fake, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #15
  %17 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %18 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %19 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 461, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %20 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %21 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %23 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_binary_str_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion12, i32 0, i32 1
  %24 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.18, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion12, i32 0, i32 2
  %25 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.78, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion12, i32 0, i32 3
  %26 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %status_comment, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion12, i32 0, i32 4
  %27 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.79, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion12, i32 0, i32 5
  %28 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.77, ptr %right_value26, align 4
  %29 = ptrtoint ptr %status_comment to i32
  call void @__asan_load1_noabort(i32 %29)
  %strcmpload = load i8, ptr %status_comment, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %cmp28 = icmp eq i8 %strcmpload, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #15
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 2, ptr %status, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #15
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion55) #15
  %33 = getelementptr inbounds i8, ptr %__assertion55, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion55, align 8
  %type58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 1
  %36 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type58, align 4
  %line59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 2
  %37 = ptrtoint ptr %line59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 467, ptr %line59, align 8
  %file60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 3
  %38 = ptrtoint ptr %file60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str, ptr %file60, align 4
  %message61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4
  %39 = ptrtoint ptr %message61 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message61, align 8
  %va63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va63, align 4
  %format64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 5
  %41 = ptrtoint ptr %format64 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format64, align 8
  %operation65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 1
  %42 = ptrtoint ptr %operation65 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.18, ptr %operation65, align 4
  %left_text66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 2
  %43 = ptrtoint ptr %left_text66 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.73, ptr %left_text66, align 8
  %left_value67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 3
  %conv68 = zext i32 %32 to i64
  %44 = ptrtoint ptr %left_value67 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv68, ptr %left_value67, align 8
  %right_text69 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 4
  %45 = ptrtoint ptr %right_text69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.82, ptr %right_text69, align 8
  %right_value70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 5
  %46 = ptrtoint ptr %right_value70 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 2, ptr %right_value70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp73 = icmp eq i32 %32, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion55, i1 noundef zeroext %cmp73, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion55) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion85) #15
  %47 = ptrtoint ptr %__assertion85 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion85, align 4
  %type88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 1
  %48 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type88, align 4
  %line89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 2
  %49 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 468, ptr %line89, align 4
  %file90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 3
  %50 = ptrtoint ptr %file90 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str, ptr %file90, align 4
  %message91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4
  %51 = ptrtoint ptr %message91 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message91, align 4
  %va93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %va93 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va93, align 4
  %format94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 5
  %53 = ptrtoint ptr %format94 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_str_assert_format, ptr %format94, align 4
  %operation95 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion85, i32 0, i32 1
  %54 = ptrtoint ptr %operation95 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.18, ptr %operation95, align 4
  %left_text96 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion85, i32 0, i32 2
  %55 = ptrtoint ptr %left_text96 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.78, ptr %left_text96, align 4
  %left_value97 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion85, i32 0, i32 3
  %56 = ptrtoint ptr %left_value97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %status_comment, ptr %left_value97, align 4
  %right_text98 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion85, i32 0, i32 4
  %57 = ptrtoint ptr %right_text98 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.84, ptr %right_text98, align 4
  %right_value99 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion85, i32 0, i32 5
  %58 = ptrtoint ptr %right_value99 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.83, ptr %right_value99, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(27) %status_comment, ptr noundef nonnull dereferenceable(27) @.str.83, i32 27) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp102 = icmp eq i32 %bcmp, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85, i1 noundef zeroext %cmp102, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion85) #15
  call void @llvm.lifetime.end.p0(i64 356, ptr nonnull %fake) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_str_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !58, !60, !62, !64, !65, !67, !68, !70, !72, !74, !75, !77, !78, !80, !82, !83, !85, !87, !89, !90, !92, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !139, !141, !143, !145, !147, !148, !150, !152, !154, !155, !156, !158, !159, !161, !163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__UNIQUE_ID_suites176, !1, !"__UNIQUE_ID_suites176", i1 false, i1 false}
!1 = !{!"../lib/kunit/kunit-test.c", i32 482, i32 1}
!2 = !{ptr @__UNIQUE_ID_file177, !3, !"__UNIQUE_ID_file177", i1 false, i1 false}
!3 = !{!"../lib/kunit/kunit-test.c", i32 485, i32 1}
!4 = !{ptr @__UNIQUE_ID_license178, !3, !"__UNIQUE_ID_license178", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array175, !1, !"__UNIQUE_ID_array175", i1 false, i1 false}
!6 = !{ptr @kunit_try_catch_test_suite, !7, !"kunit_try_catch_test_suite", i1 false, i1 false}
!7 = !{!"../lib/kunit/kunit-test.c", i32 100, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/kunit/kunit-test.c", i32 83, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/kunit/kunit-test.c", i32 89, i32 2}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/kunit/kunit-test.c", i32 95, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/kunit/kunit-test.c", i32 96, i32 2}
!17 = !{ptr @kunit_try_catch_test_cases, !18, !"kunit_try_catch_test_cases", i1 false, i1 false}
!18 = !{!"../lib/kunit/kunit-test.c", i32 94, i32 26}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/kunit/kunit-test.c", i32 43, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/kunit/kunit-test.c", i32 29, i32 2}
!23 = !{ptr @kunit_resource_test_suite, !24, !"kunit_resource_test_suite", i1 false, i1 false}
!24 = !{!"../lib/kunit/kunit-test.c", i32 397, i32 27}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/kunit/kunit-test.c", i32 373, i32 30}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/kunit/kunit-test.c", i32 387, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/kunit/kunit-test.c", i32 388, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/kunit/kunit-test.c", i32 389, i32 2}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/kunit/kunit-test.c", i32 390, i32 2}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/kunit/kunit-test.c", i32 391, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/kunit/kunit-test.c", i32 392, i32 2}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/kunit/kunit-test.c", i32 393, i32 2}
!41 = !{ptr @kunit_resource_test_cases, !42, !"kunit_resource_test_cases", i1 false, i1 false}
!42 = !{!"../lib/kunit/kunit-test.c", i32 386, i32 26}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/kunit/kunit-test.c", i32 137, i32 30}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/kunit/kunit-test.c", i32 139, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/kunit/kunit-test.c", i32 154, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../lib/kunit/kunit-test.c", i32 155, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/kunit/kunit-test.c", i32 158, i32 2}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/kunit/kunit-test.c", i32 159, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../lib/kunit/kunit-test.c", i32 184, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/kunit/kunit-test.c", i32 189, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/kunit/kunit-test.c", i32 297, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/kunit/kunit-test.c", i32 298, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/kunit/kunit-test.c", i32 309, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/kunit/kunit-test.c", i32 310, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/kunit/kunit-test.c", i32 318, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/kunit/kunit-test.c", i32 321, i32 2}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/kunit/kunit-test.c", i32 325, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/kunit/kunit-test.c", i32 333, i32 2}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/kunit/kunit-test.c", i32 337, i32 2}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/kunit/kunit-test.c", i32 339, i32 2}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/kunit/kunit-test.c", i32 344, i32 2}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../lib/kunit/kunit-test.c", i32 351, i32 2}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/kunit/kunit-test.c", i32 356, i32 2}
!95 = !{ptr @kunit_log_test_suite, !96, !"kunit_log_test_suite", i1 false, i1 false}
!96 = !{!"../lib/kunit/kunit-test.c", i32 411, i32 27}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../lib/kunit/kunit-test.c", i32 407, i32 2}
!99 = !{ptr @kunit_log_test_cases, !100, !"kunit_log_test_cases", i1 false, i1 false}
!100 = !{!"../lib/kunit/kunit-test.c", i32 406, i32 26}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../lib/kunit/kunit-test.c", i32 421, i32 2}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/kunit/kunit-test.c", i32 423, i32 2}
!105 = !{ptr @kunit_log_test._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @kunit_log_test._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../lib/kunit/kunit-test.c", i32 424, i32 2}
!110 = !{ptr @kunit_log_test._entry.50, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @kunit_log_test._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/kunit/kunit-test.c", i32 425, i32 2}
!115 = !{ptr @kunit_log_test._entry.54, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @kunit_log_test._entry_ptr.56, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../lib/kunit/kunit-test.c", i32 426, i32 2}
!120 = !{ptr @kunit_log_test._entry.58, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @kunit_log_test._entry_ptr.60, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/kunit/kunit-test.c", i32 429, i32 2}
!125 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../lib/kunit/kunit-test.c", i32 431, i32 2}
!128 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/kunit/kunit-test.c", i32 433, i32 2}
!131 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../lib/kunit/kunit-test.c", i32 435, i32 2}
!134 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @kunit_status_test_suite, !136, !"kunit_status_test_suite", i1 false, i1 false}
!136 = !{!"../lib/kunit/kunit-test.c", i32 477, i32 27}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../lib/kunit/kunit-test.c", i32 472, i32 2}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../lib/kunit/kunit-test.c", i32 473, i32 2}
!141 = !{ptr @kunit_status_test_cases, !142, !"kunit_status_test_cases", i1 false, i1 false}
!142 = !{!"../lib/kunit/kunit-test.c", i32 471, i32 26}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../lib/kunit/kunit-test.c", i32 446, i32 25}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../lib/kunit/kunit-test.c", i32 448, i32 2}
!147 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../lib/kunit/kunit-test.c", i32 450, i32 2}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../lib/kunit/kunit-test.c", i32 460, i32 2}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../lib/kunit/kunit-test.c", i32 461, i32 2}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/kunit/kunit-test.c", i32 464, i32 2}
!158 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../lib/kunit/kunit-test.c", i32 467, i32 2}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../lib/kunit/kunit-test.c", i32 468, i32 2}
!163 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"auto-init"}
!174 = !{i8 0, i8 2}
!175 = !{i64 2148662266}
!176 = !{i64 2148576706, i64 2148576738, i64 2148576767, i64 2148576801, i64 2148576832, i64 2148576855}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 2149296990}
!179 = !{i64 2148574241, i64 2148574273, i64 2148574302, i64 2148574336, i64 2148574367, i64 2148574390}
!180 = !{!"branch_weights", i32 1, i32 2000}
