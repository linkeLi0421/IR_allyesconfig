; ModuleID = '/llk/IR_all_yes/lib/test_kasan.c_pt.bc'
source_filename = "../lib/test_kasan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kunit_kasan_expectation = type { i8 }
%struct.kunit_resource = type { ptr, ptr, ptr, %struct.kref, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_fail_assert = type { %struct.kunit_assert }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }

@__UNIQUE_ID_array545 = internal global [2 x ptr] [ptr @kasan_kunit_test_suite, ptr null], align 4
@__UNIQUE_ID_suites546 = internal global ptr @__UNIQUE_ID_array545, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file547 = internal constant [31 x i8] c"test_kasan.file=lib/test_kasan\00", section ".modinfo", align 1
@__UNIQUE_ID_license548 = internal constant [23 x i8] c"test_kasan.license=GPL\00", section ".modinfo", align 1
@kasan_ptr_result = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kasan_int_result = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@kasan_kunit_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"kasan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kasan_test_init, ptr @kasan_test_exit, ptr @kasan_kunit_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@kasan_kunit_test_cases = internal global { [52 x %struct.kunit_case], [272 x i8] } { [52 x %struct.kunit_case] [%struct.kunit_case { ptr @kmalloc_oob_right, ptr @.str.6, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_oob_left, ptr @.str.7, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_node_oob_right, ptr @.str.8, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_pagealloc_oob_right, ptr @.str.9, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_pagealloc_uaf, ptr @.str.10, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_pagealloc_invalid_free, ptr @.str.11, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pagealloc_oob_right, ptr @.str.12, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pagealloc_uaf, ptr @.str.13, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_large_oob_right, ptr @.str.14, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @krealloc_more_oob, ptr @.str.15, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @krealloc_less_oob, ptr @.str.16, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @krealloc_pagealloc_more_oob, ptr @.str.17, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @krealloc_pagealloc_less_oob, ptr @.str.18, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @krealloc_uaf, ptr @.str.19, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_oob_16, ptr @.str.20, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_uaf_16, ptr @.str.21, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_oob_in_memset, ptr @.str.22, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_oob_memset_2, ptr @.str.23, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_oob_memset_4, ptr @.str.24, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_oob_memset_8, ptr @.str.25, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_oob_memset_16, ptr @.str.26, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_memmove_negative_size, ptr @.str.27, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_memmove_invalid_size, ptr @.str.28, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_uaf, ptr @.str.29, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_uaf_memset, ptr @.str.30, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_uaf2, ptr @.str.31, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kfree_via_page, ptr @.str.32, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kfree_via_phys, ptr @.str.33, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmem_cache_oob, ptr @.str.34, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmem_cache_accounted, ptr @.str.35, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmem_cache_bulk, ptr @.str.36, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_global_oob_right, ptr @.str.37, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_global_oob_left, ptr @.str.38, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_stack_oob, ptr @.str.39, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_alloca_oob_left, ptr @.str.40, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_alloca_oob_right, ptr @.str.41, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @ksize_unpoisons_memory, ptr @.str.42, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @ksize_uaf, ptr @.str.43, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmem_cache_double_free, ptr @.str.44, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmem_cache_invalid_free, ptr @.str.45, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmem_cache_double_destroy, ptr @.str.46, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_memchr, ptr @.str.47, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_memcmp, ptr @.str.48, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_strings, ptr @.str.49, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_bitops_generic, ptr @.str.50, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kasan_bitops_tags, ptr @.str.51, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @kmalloc_double_kzfree, ptr @.str.52, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @vmalloc_oob, ptr @.str.53, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @match_all_not_assigned, ptr @.str.54, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @match_all_ptr_tag, ptr @.str.55, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @match_all_mem_tag, ptr @.str.56, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [272 x i8] zeroinitializer }, align 32
@kasan_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013    # %s: can't run KASAN tests with KASAN disabled\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kasan_test_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/test_kasan.c\00", [47 x i8] zeroinitializer }, align 32
@kasan_test_init._entry_ptr = internal global ptr @kasan_test_init._entry, section ".printk_index", align 4
@multishot = internal global { i8, [31 x i8] } zeroinitializer, align 32
@fail_data = internal global { %struct.kunit_kasan_expectation, [31 x i8] } zeroinitializer, align 32
@resource = internal global { %struct.kunit_resource, [40 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kasan_data\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail_data.report_found\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmalloc_oob_right\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmalloc_oob_left\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kmalloc_node_oob_right\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kmalloc_pagealloc_oob_right\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmalloc_pagealloc_uaf\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kmalloc_pagealloc_invalid_free\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pagealloc_oob_right\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pagealloc_uaf\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kmalloc_large_oob_right\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"krealloc_more_oob\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"krealloc_less_oob\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"krealloc_pagealloc_more_oob\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"krealloc_pagealloc_less_oob\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"krealloc_uaf\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmalloc_oob_16\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmalloc_uaf_16\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmalloc_oob_in_memset\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmalloc_oob_memset_2\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmalloc_oob_memset_4\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmalloc_oob_memset_8\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmalloc_oob_memset_16\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kmalloc_memmove_negative_size\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kmalloc_memmove_invalid_size\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmalloc_uaf\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kmalloc_uaf_memset\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kmalloc_uaf2\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kfree_via_page\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kfree_via_phys\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmem_cache_oob\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmem_cache_accounted\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kmem_cache_bulk\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kasan_global_oob_right\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kasan_global_oob_left\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kasan_stack_oob\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kasan_alloca_oob_left\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kasan_alloca_oob_right\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksize_unpoisons_memory\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ksize_uaf\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kmem_cache_double_free\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kmem_cache_invalid_free\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kmem_cache_double_destroy\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kasan_memchr\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kasan_memcmp\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kasan_strings\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kasan_bitops_generic\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kasan_bitops_tags\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmalloc_double_kzfree\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vmalloc_oob\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"match_all_not_assigned\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"match_all_ptr_tag\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"match_all_mem_tag\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptr\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_227(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_227(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"    KASAN failure expected in \22ptr[size] = 'x'\22, but none occurred\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_231(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_231(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"    KASAN failure expected in \22ptr[size + 5] = 'y'\22, but none occurred\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_235(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_235(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"    KASAN failure expected in \22ptr[0] = ptr[size + KASAN_GRANULE_SIZE + 5]\22, but none occurred\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.64 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_239(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_239(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"    KASAN failure expected in \22*ptr = *(ptr - 1)\22, but none occurred\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_243(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_243(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"    KASAN failure expected in \22ptr[0] = ptr[size]\22, but none occurred\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_248(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_248(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"    KASAN failure expected in \22ptr[size + OOB_TAG_OFF] = 0\22, but none occurred\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_253(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_253(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"    KASAN failure expected in \22((volatile char *)ptr)[0]\22, but none occurred\00", [51 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_258(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_258(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"    KASAN failure expected in \22kfree(ptr + 1)\22, but none occurred\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Test requires CONFIG_KASAN_GENERIC=n\00", [59 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_267(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_267(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_271(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_271(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"    KASAN failure expected in \22ptr[size] = 0\22, but none occurred\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"<\00", [30 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"size1\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"size2\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptr1\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptr2\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_275(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_275(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"    KASAN failure expected in \22ptr2[size2] = 'x'\22, but none occurred\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_279(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_279(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"    KASAN failure expected in \22ptr2[round_up(size2, KASAN_GRANULE_SIZE)] = 'x'\22, but none occurred\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_283(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_283(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_287(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_287(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"((((size2)-1) | ((__typeof__(size2))(((1UL << 3))-1)))+1)\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"((middle) & ~((__typeof__(middle))(((1UL << 3))-1)))\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"((((middle)-1) | ((__typeof__(middle))(((1UL << 3))-1)))+1)\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"((size1) & ~((__typeof__(size1))(((1UL << 3))-1)))\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_291(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_291(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"    KASAN failure expected in \22ptr2[middle] = 'x'\22, but none occurred\00", [58 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_295(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_295(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"    KASAN failure expected in \22ptr2[size1 - 1] = 'x'\22, but none occurred\00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_299(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_299(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"    KASAN failure expected in \22ptr2[size1] = 'x'\22, but none occurred\00", [59 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_305(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_305(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"    KASAN failure expected in \22ptr2 = krealloc(ptr1, size2, GFP_KERNEL)\22, but none occurred\00", [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(void *)ptr2\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"((void *)0)\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_309(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_309(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"    KASAN failure expected in \22*(volatile char *)ptr1\22, but none occurred\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_314(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_314(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"    KASAN failure expected in \22*ptr1 = *ptr2\22, but none occurred\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_318(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_318(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_338(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_338(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"    KASAN failure expected in \22memset(ptr, 0, size + KASAN_GRANULE_SIZE)\22, but none occurred\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_322(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_322(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"    KASAN failure expected in \22memset(ptr + size - 1, 0, 2)\22, but none occurred\00", [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_326(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_326(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"    KASAN failure expected in \22memset(ptr + size - 3, 0, 4)\22, but none occurred\00", [48 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_330(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_330(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"    KASAN failure expected in \22memset(ptr + size - 7, 0, 8)\22, but none occurred\00", [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_334(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_334(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"    KASAN failure expected in \22memset(ptr + size - 15, 0, 16)\22, but none occurred\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_343(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_343(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"    KASAN failure expected in \22memmove((char *)ptr, (char *)ptr + 4, invalid_size)\22, but none occurred\00", [57 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_347(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_347(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_351(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_351(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"    KASAN failure expected in \22((volatile char *)ptr)[8]\22, but none occurred\00", [51 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_356(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_356(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"    KASAN failure expected in \22memset(ptr, 0, size)\22, but none occurred\00", [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_360(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_360(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"    KASAN failure expected in \22((volatile char *)ptr1)[40]\22, but none occurred\00", [49 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_cache\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@kmem_cache_oob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.34, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013    # %s: Allocation failed: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@kmem_cache_oob._entry_ptr = internal global ptr @kmem_cache_oob._entry, section ".printk_index", align 4
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"    # %s: Allocation failed: %s\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_364(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_364(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"    KASAN failure expected in \22*p = p[size + OOB_TAG_OFF]\22, but none occurred\00", [50 x i8] zeroinitializer }, align 32
@kmem_cache_bulk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.36, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmem_cache_bulk._entry_ptr = internal global ptr @kmem_cache_bulk._entry, section ".printk_index", align 4
@global_array = internal global { [10 x i8], [22 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_369(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_369(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"    KASAN failure expected in \22*(volatile char *)p\22, but none occurred\00", [57 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_375(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_375(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Test requires CONFIG_KASAN_STACK=y\00", [61 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_379(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_379(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"    KASAN failure expected in \22((volatile char *)ptr)[real_size]\22, but none occurred\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_383(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_383(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"    KASAN failure expected in \22ksize(ptr)\22, but none occurred\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_387(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_387(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_391(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_391(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"    KASAN failure expected in \22((volatile char *)ptr)[size]\22, but none occurred\00", [48 x i8] zeroinitializer }, align 32
@kmem_cache_double_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.44, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmem_cache_double_free._entry_ptr = internal global ptr @kmem_cache_double_free._entry, section ".printk_index", align 4
@.str.152 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_412(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_412(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"    KASAN failure expected in \22kmem_cache_free(cache, p)\22, but none occurred\00", [51 x i8] zeroinitializer }, align 32
@kmem_cache_invalid_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.45, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmem_cache_invalid_free._entry_ptr = internal global ptr @kmem_cache_invalid_free._entry, section ".printk_index", align 4
@.str.154 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_416(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_416(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"    KASAN failure expected in \22kmem_cache_free(cache, p + 1)\22, but none occurred\00", [47 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_420(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_420(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"    KASAN failure expected in \22kmem_cache_destroy(cache)\22, but none occurred\00", [51 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_425(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_425(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"    KASAN failure expected in \22kasan_ptr_result = memchr(ptr, '1', size + 1)\22, but none occurred\00", [63 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_430(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_430(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"    KASAN failure expected in \22kasan_int_result = memcmp(ptr, arr, size+1)\22, but none occurred\00", [33 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_435(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_435(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"    KASAN failure expected in \22kasan_ptr_result = strchr(ptr, '1')\22, but none occurred\00", [41 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_439(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_439(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"    KASAN failure expected in \22kasan_ptr_result = strrchr(ptr, '1')\22, but none occurred\00", [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_443(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_443(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"    KASAN failure expected in \22kasan_int_result = strcmp(ptr, \222\22)\22, but none occurred\00", [41 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_447(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_447(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"    KASAN failure expected in \22kasan_int_result = strncmp(ptr, \222\22, 1)\22, but none occurred\00", [37 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_451(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_451(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"    KASAN failure expected in \22kasan_int_result = strlen(ptr)\22, but none occurred\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_455(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_455(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"    KASAN failure expected in \22kasan_int_result = strnlen(ptr, 1)\22, but none occurred\00", [42 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bits\00", [27 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_459(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_459(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"    KASAN failure expected in \22set_bit(nr, addr)\22, but none occurred\00", [59 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_463(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_463(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"    KASAN failure expected in \22__set_bit(nr, addr)\22, but none occurred\00", [57 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_467(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_467(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"    KASAN failure expected in \22clear_bit(nr, addr)\22, but none occurred\00", [57 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_471(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_471(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"    KASAN failure expected in \22__clear_bit(nr, addr)\22, but none occurred\00", [55 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_475(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_475(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"    KASAN failure expected in \22clear_bit_unlock(nr, addr)\22, but none occurred\00", [50 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_479(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_479(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"    KASAN failure expected in \22__clear_bit_unlock(nr, addr)\22, but none occurred\00", [48 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_483(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_483(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"    KASAN failure expected in \22change_bit(nr, addr)\22, but none occurred\00", [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_487(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_487(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"    KASAN failure expected in \22__change_bit(nr, addr)\22, but none occurred\00", [54 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_491(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_491(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"    KASAN failure expected in \22test_and_set_bit(nr, addr)\22, but none occurred\00", [50 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_495(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_495(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"    KASAN failure expected in \22__test_and_set_bit(nr, addr)\22, but none occurred\00", [48 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_499(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_499(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"    KASAN failure expected in \22test_and_set_bit_lock(nr, addr)\22, but none occurred\00", [45 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_503(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_503(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"    KASAN failure expected in \22test_and_clear_bit(nr, addr)\22, but none occurred\00", [48 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_507(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_507(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"    KASAN failure expected in \22__test_and_clear_bit(nr, addr)\22, but none occurred\00", [46 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_511(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_511(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"    KASAN failure expected in \22test_and_change_bit(nr, addr)\22, but none occurred\00", [47 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_515(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_515(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"    KASAN failure expected in \22__test_and_change_bit(nr, addr)\22, but none occurred\00", [45 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_519(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_519(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"    KASAN failure expected in \22kasan_int_result = test_bit(nr, addr)\22, but none occurred\00", [39 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_523(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_523(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"    KASAN failure expected in \22kasan_int_result = clear_bit_unlock_is_negative_byte(nr, addr)\22, but none occurred\00", [46 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [939 x i8], [245 x i8] } { [939 x i8] c"({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_529(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(fail_data.report_found) == sizeof(char) || sizeof(fail_data.report_found) == sizeof(short) || sizeof(fail_data.report_found) == sizeof(int) || sizeof(fail_data.report_found) == sizeof(long)) || sizeof(fail_data.report_found) == sizeof(long long))) __compiletime_assert_529(); } while (0); (*(const volatile typeof( _Generic((fail_data.report_found), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (fail_data.report_found))) *)&(fail_data.report_found)); })\00", [245 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"    KASAN failure expected in \22kfree_sensitive(ptr)\22, but none occurred\00", [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Test requires CONFIG_KASAN_VMALLOC=y\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"kasan_ptr_result\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 35, i32 7 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"kasan_int_result\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 36, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant [23 x i8] c"kasan_kunit_test_suite\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1220, i32 27 }
@___asan_gen_.232 = private unnamed_addr constant [23 x i8] c"kasan_kunit_test_cases\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1165, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 51, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [10 x i8] c"multishot\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 40, i32 13 }
@___asan_gen_.250 = private unnamed_addr constant [10 x i8] c"fail_data\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 39, i32 39 }
@___asan_gen_.253 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 38, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 58, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 65, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1166, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1167, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1168, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1169, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1170, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1171, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1172, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1173, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1174, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1175, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1176, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1177, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1178, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1179, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1180, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1181, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1182, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1183, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1184, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1185, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1186, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1187, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1188, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1189, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1190, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1191, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1192, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1193, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1194, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1195, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1196, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1197, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1198, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1199, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1200, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1201, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1202, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1203, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1204, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1205, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1206, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1207, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1208, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1209, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1210, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1211, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1212, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1213, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1214, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1215, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1216, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 126, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 133, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 139, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 142, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 156, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 168, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 188, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 204, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 217, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 232, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 253, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 268, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 278, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 282, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 285, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 295, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 298, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 324, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 327, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 334, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 336, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 338, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 339, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 340, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 387, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 388, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 389, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 407, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 425, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 497, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 444, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 457, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 470, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 483, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 521, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 537, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 551, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 569, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 596, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 597, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 636, i32 28 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 637, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 641, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 646, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 692, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant [13 x i8] c"global_array\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 704, i32 13 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 726, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 740, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 787, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 757, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 775, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 776, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 777, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 833, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 839, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 855, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 861, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 882, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 904, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 931, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 959, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 961, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 963, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 965, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 967, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 969, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1013, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 974, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 975, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 976, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 977, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 978, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 979, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 980, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 981, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 986, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 987, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 988, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 989, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 990, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 991, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 992, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 993, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 996, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1057, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.881 = private constant [20 x i8] c"../lib/test_kasan.c\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 1064, i32 2 }
@llvm.compiler.used = appending global [228 x ptr] [ptr @__UNIQUE_ID_file547, ptr @__UNIQUE_ID_license548, ptr @__UNIQUE_ID_suites546, ptr @kasan_test_init._entry, ptr @kasan_test_init._entry_ptr, ptr @kmem_cache_bulk._entry, ptr @kmem_cache_bulk._entry_ptr, ptr @kmem_cache_double_free._entry, ptr @kmem_cache_double_free._entry_ptr, ptr @kmem_cache_invalid_free._entry, ptr @kmem_cache_invalid_free._entry_ptr, ptr @kmem_cache_oob._entry, ptr @kmem_cache_oob._entry_ptr, ptr @kasan_ptr_result, ptr @kasan_int_result, ptr @kasan_kunit_test_suite, ptr @kasan_kunit_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @multishot, ptr @fail_data, ptr @resource, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @global_array, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212], section "llvm.metadata"
@0 = internal global [220 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_ptr_result to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_int_result to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_kunit_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_kunit_test_cases to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multishot to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resource to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmem_cache_oob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmem_cache_bulk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_array to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmem_cache_double_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmem_cache_invalid_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 939, i32 1184, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kasan_test_init(ptr noundef %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call zeroext i1 @kasan_save_enable_multi_shot() #13
  %frombool = zext i1 %call5 to i8
  store i8 %frombool, ptr @multishot, align 1
  store i8 0, ptr @fail_data, align 1
  %call6 = tail call i32 @kunit_add_named_resource(ptr noundef %test, ptr noundef null, ptr noundef null, ptr noundef nonnull @resource, ptr noundef nonnull @.str.4, ptr noundef nonnull @fail_data) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_test_exit(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i8, ptr @multishot, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  tail call void @kasan_restore_multi_shot(i1 noundef zeroext %tobool) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
  %1 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !415
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
  store i32 65, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.5, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %expected_true, align 4
  %12 = load i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_log_append(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_save_enable_multi_shot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_add_named_resource(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_restore_multi_shot(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_right(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion36 = alloca %struct.kunit_fail_assert, align 4
  %__assertion62 = alloca %struct.kunit_unary_assert, align 4
  %__assertion99 = alloca %struct.kunit_fail_assert, align 4
  %__assertion126 = alloca %struct.kunit_unary_assert, align 4
  %__assertion166 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 115) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 126, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 133, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.58, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !416
  %arrayidx = getelementptr i8, ptr %call7.i, i32 115
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 120, ptr %arrayidx, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !417
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  br i1 %tobool32.not, label %do.body35, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion36) #14
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 2
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 3
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 5
  %30 = ptrtoint ptr %__assertion36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion36, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 133, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_fail_assert_format, ptr %29, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36, i1 noundef zeroext false, ptr noundef nonnull @.str.59) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion36) #14
  br label %do.body53

do.body53:                                        ; preds = %do.body35, %entry.do.body53_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion62) #14
  %37 = getelementptr inbounds i8, ptr %__assertion62, i32 32
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %37, align 4, !annotation !415
  %39 = ptrtoint ptr %__assertion62 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion62, align 4
  %type65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 1
  %40 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type65, align 4
  %line66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 2
  %41 = ptrtoint ptr %line66 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 139, ptr %line66, align 4
  %file67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 3
  %42 = ptrtoint ptr %file67 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.2, ptr %file67, align 4
  %message68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4
  %43 = ptrtoint ptr %message68 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message68, align 4
  %va70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va70 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va70, align 4
  %format71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 5
  %45 = ptrtoint ptr %format71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_unary_assert_format, ptr %format71, align 4
  %condition72 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion62, i32 0, i32 1
  %46 = ptrtoint ptr %condition72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.60, ptr %condition72, align 4
  %expected_true73 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion62, i32 0, i32 2
  %47 = ptrtoint ptr %expected_true73 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %expected_true73, align 4
  %48 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp86 = icmp eq i8 %48, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion62, i1 noundef zeroext %cmp86, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion62) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !418
  %arrayidx89 = getelementptr i8, ptr %call7.i, i32 120
  %49 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 121, ptr %arrayidx89, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !419
  %50 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool94.not = icmp eq i8 %50, 0
  br i1 %tobool94.not, label %do.body98, label %do.body53.do.body117_crit_edge

do.body53.do.body117_crit_edge:                   ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body117

do.body98:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion99) #14
  %51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 1
  %52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 2
  %53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 3
  %54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 4
  %55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 4, i32 1
  %56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 5
  %57 = ptrtoint ptr %__assertion99 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion99, align 4
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %51, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 139, ptr %52, align 4
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.2, ptr %53, align 4
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %54, align 4
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %55, align 4
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_fail_assert_format, ptr %56, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion99, i1 noundef zeroext false, ptr noundef nonnull @.str.61) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion99) #14
  br label %do.body117

do.body117:                                       ; preds = %do.body98, %do.body53.do.body117_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion126) #14
  %64 = getelementptr inbounds i8, ptr %__assertion126, i32 32
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %64, align 4, !annotation !415
  %66 = ptrtoint ptr %__assertion126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %test, ptr %__assertion126, align 4
  %type129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 1
  %67 = ptrtoint ptr %type129 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type129, align 4
  %line130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 2
  %68 = ptrtoint ptr %line130 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 143, ptr %line130, align 4
  %file131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 3
  %69 = ptrtoint ptr %file131 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.2, ptr %file131, align 4
  %message132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 4
  %70 = ptrtoint ptr %message132 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %message132, align 4
  %va134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %va134 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %va134, align 4
  %format135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 5
  %72 = ptrtoint ptr %format135 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @kunit_unary_assert_format, ptr %format135, align 4
  %condition136 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion126, i32 0, i32 1
  %73 = ptrtoint ptr %condition136 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.62, ptr %condition136, align 4
  %expected_true137 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion126, i32 0, i32 2
  %74 = ptrtoint ptr %expected_true137 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %expected_true137, align 4
  %75 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp150 = icmp eq i8 %75, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion126, i1 noundef zeroext %cmp150, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion126) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !420
  %arrayidx155 = getelementptr i8, ptr %call7.i, i32 128
  %76 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx155, align 8
  %78 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %call7.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !421
  %79 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool161.not = icmp eq i8 %79, 0
  br i1 %tobool161.not, label %do.body165, label %do.body117.do.body184_crit_edge

do.body117.do.body184_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184

do.body165:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion166) #14
  %80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion166, i32 0, i32 1
  %81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion166, i32 0, i32 2
  %82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion166, i32 0, i32 3
  %83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion166, i32 0, i32 4
  %84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion166, i32 0, i32 4, i32 1
  %85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion166, i32 0, i32 5
  %86 = ptrtoint ptr %__assertion166 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %test, ptr %__assertion166, align 4
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %80, align 4
  %88 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 143, ptr %81, align 4
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.2, ptr %82, align 4
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %83, align 4
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %84, align 4
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @kunit_fail_assert_format, ptr %85, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion166, i1 noundef zeroext false, ptr noundef nonnull @.str.63) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion166) #14
  br label %do.body184

do.body184:                                       ; preds = %do.body165, %do.body117.do.body184_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_left(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion36 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 15) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 154, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 156, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.64, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !422
  %add.ptr = getelementptr i8, ptr %call7.i, i32 -1
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr, align 1
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %call7.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !423
  %25 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not = icmp eq i8 %25, 0
  br i1 %tobool32.not, label %do.body35, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion36) #14
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 2
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 3
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4, i32 1
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 5
  %32 = ptrtoint ptr %__assertion36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion36, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 156, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.2, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_fail_assert_format, ptr %31, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36, i1 noundef zeroext false, ptr noundef nonnull @.str.65) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion36) #14
  br label %do.body53

do.body53:                                        ; preds = %do.body35, %entry.do.body53_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_node_oob_right(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion37 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 166, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 168, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.66, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !424
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 4096
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %call.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !425
  %25 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool33.not = icmp eq i8 %25, 0
  br i1 %tobool33.not, label %do.body36, label %entry.do.body54_crit_edge

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion37) #14
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 2
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 3
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4, i32 1
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 5
  %32 = ptrtoint ptr %__assertion37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion37, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 168, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.2, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_fail_assert_format, ptr %31, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion37, i1 noundef zeroext false, ptr noundef nonnull @.str.67) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion37) #14
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %entry.do.body54_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call.i.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_pagealloc_oob_right(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_unary_assert, align 4
  %__assertion39 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8202, i32 noundef 3264, i32 noundef 2) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 186, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call1.i.i, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool.not.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #14
  %9 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !415
  %11 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %12 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %13 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 188, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %14 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %file17, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format21, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.68, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %expected_true, align 4
  %20 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !426
  %arrayidx = getelementptr i8, ptr %call1.i.i, i32 8202
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx, align 2
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !427
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %do.body38, label %entry.do.body56_crit_edge

entry.do.body56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion39) #14
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 2
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4, i32 1
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 5
  %29 = ptrtoint ptr %__assertion39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion39, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 188, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.2, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_fail_assert_format, ptr %28, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion39, i1 noundef zeroext false, ptr noundef nonnull @.str.69) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion39) #14
  br label %do.body56

do.body56:                                        ; preds = %do.body38, %entry.do.body56_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call1.i.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_pagealloc_uaf(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_unary_assert, align 4
  %__assertion39 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8202, i32 noundef 3264, i32 noundef 2) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 201, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call1.i.i, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool.not.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree(ptr noundef %call1.i.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #14
  %9 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !415
  %11 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %12 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %13 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 204, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %14 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %file17, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format21, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.70, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %expected_true, align 4
  %20 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !428
  %21 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %call1.i.i, align 4096
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !429
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool35.not = icmp eq i8 %23, 0
  br i1 %tobool35.not, label %do.body38, label %entry.do.body56_crit_edge

entry.do.body56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion39) #14
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 2
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 3
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 5
  %30 = ptrtoint ptr %__assertion39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion39, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 204, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_fail_assert_format, ptr %29, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion39, i1 noundef zeroext false, ptr noundef nonnull @.str.71) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion39) #14
  br label %do.body56

do.body56:                                        ; preds = %do.body38, %entry.do.body56_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_pagealloc_invalid_free(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_unary_assert, align 4
  %__assertion39 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8202, i32 noundef 3264, i32 noundef 2) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 215, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call1.i.i, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool.not.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #14
  %9 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !415
  %11 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %12 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %13 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 217, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %14 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %file17, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format21, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.72, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %expected_true, align 4
  %20 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !430
  %add.ptr = getelementptr i8, ptr %call1.i.i, i32 1
  call void @kfree(ptr noundef %add.ptr) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !431
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool35.not = icmp eq i8 %21, 0
  br i1 %tobool35.not, label %do.body38, label %entry.do.body56_crit_edge

entry.do.body56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion39) #14
  %22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 1
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 2
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 3
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 4, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion39, i32 0, i32 5
  %28 = ptrtoint ptr %__assertion39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion39, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %22, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 217, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.2, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_fail_assert_format, ptr %27, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion39, i1 noundef zeroext false, ptr noundef nonnull @.str.73) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion39) #14
  br label %do.body56

do.body56:                                        ; preds = %do.body38, %entry.do.body56_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pagealloc_oob_right(ptr noundef %test) #4 align 64 {
entry:
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.74) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pagealloc_uaf(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion10 = alloca %struct.kunit_unary_assert, align 4
  %__assertion37 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 4, i32 noundef 0, ptr noundef null) #13
  %call1 = tail call ptr @page_address(ptr noundef %call38.i.i.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 250, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call1, null
  %cmp.i = icmp ule ptr %call1, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %9 = ptrtoint ptr %call1 to i32
  call void @free_pages(i32 noundef %9, i32 noundef 4) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion10) #14
  %10 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion10, align 4
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %13 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %14 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 253, ptr %line14, align 4
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %15 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %16 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message16, align 4
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %18 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format19, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.77, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion10) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !432
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %call1, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !433
  %24 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not = icmp eq i8 %24, 0
  br i1 %tobool33.not, label %do.body36, label %entry.do.body54_crit_edge

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion37) #14
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 1
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 2
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 3
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 5
  %31 = ptrtoint ptr %__assertion37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %test, ptr %__assertion37, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 253, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.2, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kunit_fail_assert_format, ptr %30, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion37, i1 noundef zeroext false, ptr noundef nonnull @.str.71) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion37) #14
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %entry.do.body54_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_large_oob_right(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion36 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 7936) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 266, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 268, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.78, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !434
  %arrayidx = getelementptr i8, ptr %call7.i, i32 7936
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !435
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  br i1 %tobool32.not, label %do.body35, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion36) #14
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 2
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 3
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 5
  %30 = ptrtoint ptr %__assertion36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion36, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 268, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_fail_assert_format, ptr %29, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36, i1 noundef zeroext false, ptr noundef nonnull @.str.79) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion36) #14
  br label %do.body53

do.body53:                                        ; preds = %do.body35, %entry.do.body53_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krealloc_more_oob(ptr noundef %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @krealloc_more_oob_helper(ptr noundef %test, i32 noundef 201, i32 noundef 235) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krealloc_less_oob(ptr noundef %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @krealloc_less_oob_helper(ptr noundef %test, i32 noundef 235, i32 noundef 201) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krealloc_pagealloc_more_oob(ptr noundef %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @krealloc_more_oob_helper(ptr noundef %test, i32 noundef 8393, i32 noundef 8427) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krealloc_pagealloc_less_oob(ptr noundef %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @krealloc_less_oob_helper(ptr noundef %test, i32 noundef 8427, i32 noundef 8393) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krealloc_uaf(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion37 = alloca %struct.kunit_fail_assert, align 4
  %__assertion63 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion81 = alloca %struct.kunit_unary_assert, align 4
  %__assertion117 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 201) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 384, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.83, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree(ptr noundef %call7.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 387, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.102, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !436
  %call28 = call noalias ptr @krealloc(ptr noundef %call7.i, i32 noundef 235, i32 noundef 3264) #19
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !437
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool33.not = icmp eq i8 %22, 0
  br i1 %tobool33.not, label %do.body36, label %entry.do.body54_crit_edge

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion37) #14
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 2
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4, i32 1
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 5
  %29 = ptrtoint ptr %__assertion37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion37, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 387, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.2, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_fail_assert_format, ptr %28, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion37, i1 noundef zeroext false, ptr noundef nonnull @.str.103) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion37) #14
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %entry.do.body54_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion63) #14
  %36 = ptrtoint ptr %__assertion63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion63, align 4
  %type66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 1
  %37 = ptrtoint ptr %type66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %type66, align 4
  %line67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 2
  %38 = ptrtoint ptr %line67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 388, ptr %line67, align 4
  %file68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 3
  %39 = ptrtoint ptr %file68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.2, ptr %file68, align 4
  %message69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 4
  %40 = ptrtoint ptr %message69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message69, align 4
  %va71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %va71 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va71, align 4
  %format72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 5
  %42 = ptrtoint ptr %format72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_binary_ptr_assert_format, ptr %format72, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion63, i32 0, i32 1
  %43 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.104, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion63, i32 0, i32 2
  %44 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.105, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion63, i32 0, i32 3
  %45 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call28, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion63, i32 0, i32 4
  %46 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.106, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion63, i32 0, i32 5
  %47 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %right_value, align 4
  %cmp74 = icmp eq ptr %call28, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion63, i1 noundef zeroext %cmp74, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion63) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion81) #14
  %48 = getelementptr inbounds i8, ptr %__assertion81, i32 32
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %48, align 4, !annotation !415
  %50 = ptrtoint ptr %__assertion81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %test, ptr %__assertion81, align 4
  %type84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion81, i32 0, i32 1
  %51 = ptrtoint ptr %type84 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type84, align 4
  %line85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion81, i32 0, i32 2
  %52 = ptrtoint ptr %line85 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 389, ptr %line85, align 4
  %file86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion81, i32 0, i32 3
  %53 = ptrtoint ptr %file86 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.2, ptr %file86, align 4
  %message87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion81, i32 0, i32 4
  %54 = ptrtoint ptr %message87 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %message87, align 4
  %va89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion81, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %va89 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %va89, align 4
  %format90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion81, i32 0, i32 5
  %56 = ptrtoint ptr %format90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @kunit_unary_assert_format, ptr %format90, align 4
  %condition91 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion81, i32 0, i32 1
  %57 = ptrtoint ptr %condition91 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.107, ptr %condition91, align 4
  %expected_true92 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion81, i32 0, i32 2
  %58 = ptrtoint ptr %expected_true92 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %expected_true92, align 4
  %59 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp105 = icmp eq i8 %59, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion81, i1 noundef zeroext %cmp105, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion81) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !438
  %60 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %call7.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !439
  %62 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool112.not = icmp eq i8 %62, 0
  br i1 %tobool112.not, label %do.body116, label %do.body54.do.body135_crit_edge

do.body54.do.body135_crit_edge:                   ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body135

do.body116:                                       ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion117) #14
  %63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion117, i32 0, i32 1
  %64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion117, i32 0, i32 2
  %65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion117, i32 0, i32 3
  %66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion117, i32 0, i32 4
  %67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion117, i32 0, i32 4, i32 1
  %68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion117, i32 0, i32 5
  %69 = ptrtoint ptr %__assertion117 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %test, ptr %__assertion117, align 4
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %63, align 4
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 389, ptr %64, align 4
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.2, ptr %65, align 4
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %66, align 4
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %67, align 4
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @kunit_fail_assert_format, ptr %68, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion117, i1 noundef zeroext false, ptr noundef nonnull @.str.108) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion117) #14
  br label %do.body135

do.body135:                                       ; preds = %do.body116, %do.body54.do.body135_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_16(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion14 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion35 = alloca %struct.kunit_unary_assert, align 4
  %__assertion62 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 13) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 402, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.83, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i99 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 16) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion14) #14
  %11 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion14, align 4
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %12 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %13 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 405, ptr %line18, align 4
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %14 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %15 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message20, align 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %17 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format23, align 4
  %text24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 1
  %18 = ptrtoint ptr %text24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.84, ptr %text24, align 4
  %value25 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion14, i32 0, i32 2
  %19 = ptrtoint ptr %value25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i99, ptr %value25, align 4
  %tobool.not.i100 = icmp ne ptr %call7.i99, null
  %cmp.i101 = icmp ule ptr %call7.i99, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i100, %cmp.i101
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %lnot28, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion14) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion35) #14
  %20 = getelementptr inbounds i8, ptr %__assertion35, i32 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !415
  %22 = ptrtoint ptr %__assertion35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion35, align 4
  %type38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 1
  %23 = ptrtoint ptr %type38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type38, align 4
  %line39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 2
  %24 = ptrtoint ptr %line39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 407, ptr %line39, align 4
  %file40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 3
  %25 = ptrtoint ptr %file40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.2, ptr %file40, align 4
  %message41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 4
  %26 = ptrtoint ptr %message41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message41, align 4
  %va43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va43 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va43, align 4
  %format44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion35, i32 0, i32 5
  %28 = ptrtoint ptr %format44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_unary_assert_format, ptr %format44, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion35, i32 0, i32 1
  %29 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.109, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion35, i32 0, i32 2
  %30 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %expected_true, align 4
  %31 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp = icmp eq i8 %31, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion35, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion35) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !440
  %32 = call ptr @memcpy(ptr %call7.i, ptr %call7.i99, i32 16)
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !441
  %33 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool58.not = icmp eq i8 %33, 0
  br i1 %tobool58.not, label %do.body61, label %entry.do.body79_crit_edge

entry.do.body79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

do.body61:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion62) #14
  %34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 1
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 2
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 3
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 5
  %40 = ptrtoint ptr %__assertion62 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion62, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %34, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 407, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.2, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_fail_assert_format, ptr %39, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion62, i1 noundef zeroext false, ptr noundef nonnull @.str.110) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion62) #14
  br label %do.body79

do.body79:                                        ; preds = %do.body61, %entry.do.body79_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  call void @kfree(ptr noundef %call7.i99) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_uaf_16(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion11 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion32 = alloca %struct.kunit_unary_assert, align 4
  %__assertion59 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 419, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.83, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i96 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 16) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion11) #14
  %11 = ptrtoint ptr %__assertion11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion11, align 4
  %type14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 1
  %12 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type14, align 4
  %line15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 2
  %13 = ptrtoint ptr %line15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 422, ptr %line15, align 4
  %file16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 3
  %14 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %file16, align 4
  %message17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4
  %15 = ptrtoint ptr %message17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message17, align 4
  %va19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va19, align 4
  %format20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 5
  %17 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format20, align 4
  %text21 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 1
  %18 = ptrtoint ptr %text21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.84, ptr %text21, align 4
  %value22 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 2
  %19 = ptrtoint ptr %value22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i96, ptr %value22, align 4
  %tobool.not.i97 = icmp ne ptr %call7.i96, null
  %cmp.i98 = icmp ule ptr %call7.i96, inttoptr (i32 -4096 to ptr)
  %lnot25 = and i1 %tobool.not.i97, %cmp.i98
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion11, i1 noundef zeroext %lnot25, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion11) #14
  call void @kfree(ptr noundef %call7.i96) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion32) #14
  %20 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !415
  %22 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion32, align 4
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %23 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %24 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 425, ptr %line36, align 4
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %25 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.2, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %26 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message38, align 4
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %28 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_unary_assert_format, ptr %format41, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 1
  %29 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.111, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 2
  %30 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %expected_true, align 4
  %31 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp = icmp eq i8 %31, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion32) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !442
  %32 = call ptr @memcpy(ptr %call7.i, ptr %call7.i96, i32 16)
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !443
  %33 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool55.not = icmp eq i8 %33, 0
  br i1 %tobool55.not, label %do.body58, label %entry.do.body76_crit_edge

entry.do.body76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion59) #14
  %34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 1
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 2
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 3
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 5
  %40 = ptrtoint ptr %__assertion59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion59, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %34, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 425, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.2, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_fail_assert_format, ptr %39, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion59, i1 noundef zeroext false, ptr noundef nonnull @.str.110) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion59) #14
  br label %do.body76

do.body76:                                        ; preds = %do.body58, %entry.do.body76_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_in_memset(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion37 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 493, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %10 = call ptr asm "", "=r,0"(ptr %call7.i) #20, !srcloc !444
  %11 = call i32 asm "", "=r,0"(i32 120) #20, !srcloc !445
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %12 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !415
  %14 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %15 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %16 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 498, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %17 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %18 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %20 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %21 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.112, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %22 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %expected_true, align 4
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %add = add i32 %11, 8
  %call28 = call ptr @memset(ptr noundef %10, i32 noundef 0, i32 noundef %add) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %24 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not = icmp eq i8 %24, 0
  br i1 %tobool33.not, label %do.body36, label %entry.do.body54_crit_edge

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion37) #14
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 1
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 2
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 3
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 5
  %31 = ptrtoint ptr %__assertion37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %test, ptr %__assertion37, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 498, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.2, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kunit_fail_assert_format, ptr %30, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion37, i1 noundef zeroext false, ptr noundef nonnull @.str.113) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion37) #14
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %entry.do.body54_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_memset_2(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion38 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 441, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %10 = call i32 asm "", "=r,0"(i32 120) #20, !srcloc !448
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %11 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !415
  %13 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %15 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 444, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %16 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %17 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %19 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %20 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.114, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %21 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %expected_true, align 4
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !449
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %10
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 -1
  %call29 = call ptr @memset(ptr noundef %add.ptr28, i32 noundef 0, i32 noundef 2) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !450
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %do.body37, label %entry.do.body55_crit_edge

entry.do.body55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion38) #14
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %30 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion38, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 444, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_fail_assert_format, ptr %29, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext false, ptr noundef nonnull @.str.115) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion38) #14
  br label %do.body55

do.body55:                                        ; preds = %do.body37, %entry.do.body55_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_memset_4(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion38 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 454, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %10 = call i32 asm "", "=r,0"(i32 120) #20, !srcloc !451
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %11 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !415
  %13 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %15 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 457, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %16 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %17 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %19 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %20 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.116, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %21 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %expected_true, align 4
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !452
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %10
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 -3
  %call29 = call ptr @memset(ptr noundef %add.ptr28, i32 noundef 0, i32 noundef 4) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !453
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %do.body37, label %entry.do.body55_crit_edge

entry.do.body55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion38) #14
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %30 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion38, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 457, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_fail_assert_format, ptr %29, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext false, ptr noundef nonnull @.str.117) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion38) #14
  br label %do.body55

do.body55:                                        ; preds = %do.body37, %entry.do.body55_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_memset_8(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion38 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 467, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %10 = call i32 asm "", "=r,0"(i32 120) #20, !srcloc !454
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %11 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !415
  %13 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %15 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 470, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %16 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %17 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %19 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %20 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.118, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %21 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %expected_true, align 4
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !455
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %10
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 -7
  %call29 = call ptr @memset(ptr noundef %add.ptr28, i32 noundef 0, i32 noundef 8) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !456
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %do.body37, label %entry.do.body55_crit_edge

entry.do.body55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion38) #14
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %30 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion38, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 470, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_fail_assert_format, ptr %29, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext false, ptr noundef nonnull @.str.119) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion38) #14
  br label %do.body55

do.body55:                                        ; preds = %do.body37, %entry.do.body55_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_oob_memset_16(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion38 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 480, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %10 = call i32 asm "", "=r,0"(i32 120) #20, !srcloc !457
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %11 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !415
  %13 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %15 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 483, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %16 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %17 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %19 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %20 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.120, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %21 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %expected_true, align 4
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !458
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %10
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 -15
  %call29 = call ptr @memset(ptr noundef %add.ptr28, i32 noundef 0, i32 noundef 16) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !459
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %do.body37, label %entry.do.body55_crit_edge

entry.do.body55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion38) #14
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %30 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion38, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 483, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_fail_assert_format, ptr %29, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext false, ptr noundef nonnull @.str.121) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion38) #14
  br label %do.body55

do.body55:                                        ; preds = %do.body37, %entry.do.body55_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_memmove_negative_size(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion13 = alloca %struct.kunit_unary_assert, align 4
  %__assertion41 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 516, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call10 = call ptr @memset(ptr noundef %call7.i, i32 noundef 0, i32 noundef 64) #13
  %10 = call ptr asm "", "=r,0"(ptr %call7.i) #20, !srcloc !460
  %11 = call i32 asm "", "=r,0"(i32 -2) #20, !srcloc !461
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion13) #14
  %12 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !415
  %14 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion13, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %15 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %16 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 522, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %17 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %18 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %20 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_unary_assert_format, ptr %format22, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion13, i32 0, i32 1
  %21 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.122, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion13, i32 0, i32 2
  %22 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %expected_true, align 4
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion13) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !462
  %add.ptr = getelementptr i8, ptr %10, i32 4
  %call32 = call ptr @memmove(ptr noundef %10, ptr noundef %add.ptr, i32 noundef %11) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !463
  %24 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool37.not = icmp eq i8 %24, 0
  br i1 %tobool37.not, label %do.body40, label %entry.do.body58_crit_edge

entry.do.body58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

do.body40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion41) #14
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %31 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %test, ptr %__assertion41, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 522, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.2, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kunit_fail_assert_format, ptr %30, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion41, i1 noundef zeroext false, ptr noundef nonnull @.str.123) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion41) #14
  br label %do.body58

do.body58:                                        ; preds = %do.body40, %entry.do.body58_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_memmove_invalid_size(ptr noundef %test) #0 align 64 {
entry:
  %invalid_size = alloca i32, align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion10 = alloca %struct.kunit_unary_assert, align 4
  %__assertion38 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %invalid_size)
  %0 = ptrtoint ptr %invalid_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %invalid_size, align 4
  store volatile i32 64, ptr %invalid_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 533, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call7 = call ptr @memset(ptr noundef %call7.i, i32 noundef 0, i32 noundef 64) #13
  %11 = call ptr asm "", "=r,0"(ptr %call7.i) #20, !srcloc !464
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion10) #14
  %12 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !415
  %14 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion10, align 4
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %15 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %16 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 538, ptr %line14, align 4
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %17 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %18 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message16, align 4
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %20 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_unary_assert_format, ptr %format19, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 1
  %21 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.124, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 2
  %22 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %expected_true, align 4
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion10) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !465
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %24 = ptrtoint ptr %invalid_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %invalid_size.0.invalid_size.0.invalid_size.0. = load volatile i32, ptr %invalid_size, align 4
  %call29 = call ptr @memmove(ptr noundef %11, ptr noundef %add.ptr, i32 noundef %invalid_size.0.invalid_size.0.invalid_size.0.) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !466
  %25 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not = icmp eq i8 %25, 0
  br i1 %tobool34.not, label %do.body37, label %entry.do.body55_crit_edge

entry.do.body55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion38) #14
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %32 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion38, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 538, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.2, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_fail_assert_format, ptr %31, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext false, ptr noundef nonnull @.str.123) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion38) #14
  br label %do.body55

do.body55:                                        ; preds = %do.body37, %entry.do.body55_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invalid_size)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_uaf(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion36 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 10) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 548, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree(ptr noundef %call7.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 551, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.125, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !467
  %arrayidx = getelementptr i8, ptr %call7.i, i32 8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %arrayidx, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !468
  %24 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool32.not = icmp eq i8 %24, 0
  br i1 %tobool32.not, label %do.body35, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion36) #14
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 1
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 2
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 3
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 5
  %31 = ptrtoint ptr %__assertion36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %test, ptr %__assertion36, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 551, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.2, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kunit_fail_assert_format, ptr %30, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36, i1 noundef zeroext false, ptr noundef nonnull @.str.126) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion36) #14
  br label %do.body53

do.body53:                                        ; preds = %do.body35, %entry.do.body53_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_uaf_memset(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_unary_assert, align 4
  %__assertion40 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 33) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 566, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree(ptr noundef %call7.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #14
  %10 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %13 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %14 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 569, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %15 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %16 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %18 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format21, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.127, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !469
  %call31 = call ptr @memset(ptr noundef %call7.i, i32 noundef 0, i32 noundef 33) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !470
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool36.not = icmp eq i8 %22, 0
  br i1 %tobool36.not, label %do.body39, label %entry.do.body57_crit_edge

entry.do.body57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

do.body39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion40) #14
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 2
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4, i32 1
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 5
  %29 = ptrtoint ptr %__assertion40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion40, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 569, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.2, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_fail_assert_format, ptr %28, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion40, i1 noundef zeroext false, ptr noundef nonnull @.str.128) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion40) #14
  br label %do.body57

do.body57:                                        ; preds = %do.body39, %entry.do.body57_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_uaf2(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion11 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion32 = alloca %struct.kunit_unary_assert, align 4
  %__assertion59 = alloca %struct.kunit_fail_assert, align 4
  %__assertion85 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 43) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 580, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.83, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree(ptr noundef %call7.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i120 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 43) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion11) #14
  %11 = ptrtoint ptr %__assertion11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion11, align 4
  %type14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 1
  %12 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type14, align 4
  %line15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 2
  %13 = ptrtoint ptr %line15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 585, ptr %line15, align 4
  %file16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 3
  %14 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %file16, align 4
  %message17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4
  %15 = ptrtoint ptr %message17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message17, align 4
  %va19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va19, align 4
  %format20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 5
  %17 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format20, align 4
  %text21 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 1
  %18 = ptrtoint ptr %text21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.84, ptr %text21, align 4
  %value22 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion11, i32 0, i32 2
  %19 = ptrtoint ptr %value22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i120, ptr %value22, align 4
  %tobool.not.i121 = icmp ne ptr %call7.i120, null
  %cmp.i122 = icmp ule ptr %call7.i120, inttoptr (i32 -4096 to ptr)
  %lnot25 = and i1 %tobool.not.i121, %cmp.i122
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion11, i1 noundef zeroext %lnot25, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion11) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion32) #14
  %20 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !415
  %22 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion32, align 4
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %23 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %24 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 596, ptr %line36, align 4
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %25 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.2, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %26 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message38, align 4
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %28 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_unary_assert_format, ptr %format41, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 1
  %29 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.129, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 2
  %30 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %expected_true, align 4
  %31 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp = icmp eq i8 %31, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion32) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !471
  %arrayidx = getelementptr i8, ptr %call7.i, i32 40
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %arrayidx, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !472
  %34 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool55.not = icmp eq i8 %34, 0
  br i1 %tobool55.not, label %do.body58, label %entry.do.body76_crit_edge

entry.do.body76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion59) #14
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 1
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 2
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 3
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4, i32 1
  %40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 5
  %41 = ptrtoint ptr %__assertion59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion59, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 596, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.2, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %39, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_fail_assert_format, ptr %40, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion59, i1 noundef zeroext false, ptr noundef nonnull @.str.130) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion59) #14
  br label %do.body76

do.body76:                                        ; preds = %do.body58, %entry.do.body76_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion85) #14
  %48 = ptrtoint ptr %__assertion85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %test, ptr %__assertion85, align 4
  %type88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 1
  %49 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type88, align 4
  %line89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 2
  %50 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 597, ptr %line89, align 4
  %file90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 3
  %51 = ptrtoint ptr %file90 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.2, ptr %file90, align 4
  %message91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4
  %52 = ptrtoint ptr %message91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %message91, align 4
  %va93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %va93 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %va93, align 4
  %format94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 5
  %54 = ptrtoint ptr %format94 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @kunit_binary_ptr_assert_format, ptr %format94, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85, i32 0, i32 1
  %55 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.131, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85, i32 0, i32 2
  %56 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.83, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85, i32 0, i32 3
  %57 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85, i32 0, i32 4
  %58 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.84, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion85, i32 0, i32 5
  %59 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i120, ptr %right_value, align 4
  %cmp96 = icmp ne ptr %call7.i, %call7.i120
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85, i1 noundef zeroext %cmp96, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion85) #14
  call void @kfree(ptr noundef %call7.i120) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kfree_via_page(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 610, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %call7.i to i32
  %sub = add i32 %11, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %10, i32 %shr
  %and = and i32 %11, 4088
  %call8 = call ptr @page_address(ptr noundef %add.ptr) #13
  %add.ptr9 = getelementptr i8, ptr %call8, i32 %and
  call void @kfree(ptr noundef %add.ptr9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kfree_via_phys(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 624, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %10 = ptrtoint ptr %call7.i to i32
  %call.i = call i32 @__virt_to_phys(i32 noundef %10) #13
  %11 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call.i, i32 -2130706432, i32 8454144) #20, !srcloc !473
  %12 = inttoptr i32 %11 to ptr
  call void @kfree(ptr noundef %12) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmem_cache_oob(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion18 = alloca %struct.kunit_unary_assert, align 4
  %__assertion48 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.132, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 637, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.133, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call7 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end11, label %do.body17

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %10, ptr noundef nonnull @.str.34) #21
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %11 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log, align 4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %12, ptr noundef nonnull @.str.135, ptr noundef %14, ptr noundef nonnull @.str.34) #13
  br label %cleanup

do.body17:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion18) #14
  %15 = getelementptr inbounds i8, ptr %__assertion18, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !415
  %17 = ptrtoint ptr %__assertion18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion18, align 4
  %type21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 1
  %18 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type21, align 4
  %line22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 2
  %19 = ptrtoint ptr %line22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 646, ptr %line22, align 4
  %file23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 3
  %20 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.2, ptr %file23, align 4
  %message24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4
  %21 = ptrtoint ptr %message24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message24, align 4
  %va26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va26, align 4
  %format27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 5
  %23 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_unary_assert_format, ptr %format27, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion18, i32 0, i32 1
  %24 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.136, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion18, i32 0, i32 2
  %25 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %expected_true, align 4
  %26 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion18, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion18) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !474
  %arrayidx = getelementptr i8, ptr %call7, i32 200
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 8
  %29 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %call7, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !475
  %30 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool43.not = icmp eq i8 %30, 0
  br i1 %tobool43.not, label %do.body47, label %do.body17.do.body66_crit_edge

do.body17.do.body66_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

do.body47:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion48) #14
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 1
  %32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 2
  %33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 3
  %34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4, i32 1
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 5
  %37 = ptrtoint ptr %__assertion48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %test, ptr %__assertion48, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %31, align 4
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 646, ptr %32, align 4
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.2, ptr %33, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %34, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @kunit_fail_assert_format, ptr %36, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion48, i1 noundef zeroext false, ptr noundef nonnull @.str.137) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion48) #14
  br label %do.body66

do.body66:                                        ; preds = %do.body47, %do.body17.do.body66_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body66, %do.end11
  call void @kmem_cache_destroy(ptr noundef %call) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmem_cache_accounted(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.132, i32 noundef 200, i32 noundef 0, i32 noundef 67108864, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 660, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.133, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call7 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.free_cache_crit_edge, label %if.end

entry.free_cache_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cache

if.end:                                           ; preds = %entry
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7) #13
  call void @msleep(i32 noundef 100) #13
  %call7.1 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not.1 = icmp eq ptr %call7.1, null
  br i1 %tobool.not.1, label %if.end.free_cache_crit_edge, label %if.end.1

if.end.free_cache_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cache

if.end.1:                                         ; preds = %if.end
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7.1) #13
  call void @msleep(i32 noundef 100) #13
  %call7.2 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not.2 = icmp eq ptr %call7.2, null
  br i1 %tobool.not.2, label %if.end.1.free_cache_crit_edge, label %if.end.2

if.end.1.free_cache_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cache

if.end.2:                                         ; preds = %if.end.1
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7.2) #13
  call void @msleep(i32 noundef 100) #13
  %call7.3 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not.3 = icmp eq ptr %call7.3, null
  br i1 %tobool.not.3, label %if.end.2.free_cache_crit_edge, label %if.end.3

if.end.2.free_cache_crit_edge:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cache

if.end.3:                                         ; preds = %if.end.2
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7.3) #13
  call void @msleep(i32 noundef 100) #13
  %call7.4 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not.4 = icmp eq ptr %call7.4, null
  br i1 %tobool.not.4, label %if.end.3.free_cache_crit_edge, label %if.end.4

if.end.3.free_cache_crit_edge:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cache

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7.4) #13
  call void @msleep(i32 noundef 100) #13
  br label %free_cache

free_cache:                                       ; preds = %if.end.4, %if.end.3.free_cache_crit_edge, %if.end.2.free_cache_crit_edge, %if.end.1.free_cache_crit_edge, %if.end.free_cache_crit_edge, %entry.free_cache_crit_edge
  call void @kmem_cache_destroy(ptr noundef %call) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmem_cache_bulk(ptr noundef %test) #0 align 64 {
entry:
  %p = alloca [10 x ptr], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %p) #14
  %0 = call ptr @memset(ptr %p, i32 255, i32 40)
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.132, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 688, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.133, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call7 = call i32 @kmem_cache_alloc_bulk(ptr noundef %call, i32 noundef 3264, i32 noundef 10, ptr noundef nonnull %p) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.end12, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  %arrayidx17 = getelementptr i8, ptr %11, i32 199
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 42, ptr %arrayidx17, align 1
  %13 = load ptr, ptr %p, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 42, ptr %13, align 1
  %arrayidx.1 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %arrayidx17.1 = getelementptr i8, ptr %16, i32 199
  %17 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 42, ptr %arrayidx17.1, align 1
  %18 = load ptr, ptr %arrayidx.1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 42, ptr %18, align 1
  %arrayidx.2 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %arrayidx17.2 = getelementptr i8, ptr %21, i32 199
  %22 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 42, ptr %arrayidx17.2, align 1
  %23 = load ptr, ptr %arrayidx.2, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 42, ptr %23, align 1
  %arrayidx.3 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.3, align 4
  %arrayidx17.3 = getelementptr i8, ptr %26, i32 199
  %27 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 42, ptr %arrayidx17.3, align 1
  %28 = load ptr, ptr %arrayidx.3, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 42, ptr %28, align 1
  %arrayidx.4 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.4, align 4
  %arrayidx17.4 = getelementptr i8, ptr %31, i32 199
  %32 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 42, ptr %arrayidx17.4, align 1
  %33 = load ptr, ptr %arrayidx.4, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 42, ptr %33, align 1
  %arrayidx.5 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.5, align 4
  %arrayidx17.5 = getelementptr i8, ptr %36, i32 199
  %37 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 42, ptr %arrayidx17.5, align 1
  %38 = load ptr, ptr %arrayidx.5, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 42, ptr %38, align 1
  %arrayidx.6 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.6, align 4
  %arrayidx17.6 = getelementptr i8, ptr %41, i32 199
  %42 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 42, ptr %arrayidx17.6, align 1
  %43 = load ptr, ptr %arrayidx.6, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 42, ptr %43, align 1
  %arrayidx.7 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.7, align 4
  %arrayidx17.7 = getelementptr i8, ptr %46, i32 199
  %47 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 42, ptr %arrayidx17.7, align 1
  %48 = load ptr, ptr %arrayidx.7, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 42, ptr %48, align 1
  %arrayidx.8 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 8
  %50 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.8, align 4
  %arrayidx17.8 = getelementptr i8, ptr %51, i32 199
  %52 = ptrtoint ptr %arrayidx17.8 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 42, ptr %arrayidx17.8, align 1
  %53 = load ptr, ptr %arrayidx.8, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 42, ptr %53, align 1
  %arrayidx.9 = getelementptr inbounds [10 x ptr], ptr %p, i32 0, i32 9
  %55 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.9, align 4
  %arrayidx17.9 = getelementptr i8, ptr %56, i32 199
  %57 = ptrtoint ptr %arrayidx17.9 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 42, ptr %arrayidx17.9, align 1
  %58 = load ptr, ptr %arrayidx.9, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 42, ptr %58, align 1
  call void @kmem_cache_free_bulk(ptr noundef %call, i32 noundef 10, ptr noundef nonnull %p) #13
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %60 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %61, ptr noundef nonnull @.str.36) #21
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %62 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %log, align 4
  %64 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %63, ptr noundef nonnull @.str.135, ptr noundef %65, ptr noundef nonnull @.str.36) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %for.body.preheader
  call void @kmem_cache_destroy(ptr noundef %call) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %p) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_global_oob_right(ptr noundef %test) #0 align 64 {
entry:
  %array = alloca ptr, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion20 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array)
  %0 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %array, align 4
  store volatile ptr @global_array, ptr %array, align 4
  %array.0.array.0.array.0. = load volatile ptr, ptr %array, align 4
  %arrayidx = getelementptr i8, ptr %array.0.array.0.array.0., i32 13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
  %1 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !415
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
  store i32 726, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.138, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %expected_true, align 4
  %12 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !476
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %arrayidx, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !477
  %15 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %do.body19, label %entry.do.body37_crit_edge

entry.do.body37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion20) #14
  %16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 1
  %17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 2
  %18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 3
  %19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4
  %20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4, i32 1
  %21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 5
  %22 = ptrtoint ptr %__assertion20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion20, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %16, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 726, ptr %17, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.2, ptr %18, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %19, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %20, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_fail_assert_format, ptr %21, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20, i1 noundef zeroext false, ptr noundef nonnull @.str.139) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion20) #14
  br label %do.body37

do.body37:                                        ; preds = %do.body19, %entry.do.body37_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_global_oob_left(ptr noundef %test) #0 align 64 {
entry:
  %array = alloca ptr, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion23 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array)
  %0 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %array, align 4
  store volatile ptr @global_array, ptr %array, align 4
  %array.0.array.0.array.0. = load volatile ptr, ptr %array, align 4
  %add.ptr = getelementptr i8, ptr %array.0.array.0.array.0., i32 -3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
  %1 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !415
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
  store i32 740, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.140, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %expected_true, align 4
  %12 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !478
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %add.ptr, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !479
  %15 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %do.body22, label %entry.do.body40_crit_edge

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion23) #14
  %16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 1
  %17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 2
  %18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 3
  %19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 4
  %20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 4, i32 1
  %21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 5
  %22 = ptrtoint ptr %__assertion23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion23, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %16, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 740, ptr %17, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.2, ptr %18, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %19, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %20, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_fail_assert_format, ptr %21, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion23, i1 noundef zeroext false, ptr noundef nonnull @.str.139) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion23) #14
  br label %do.body40

do.body40:                                        ; preds = %do.body22, %entry.do.body40_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array)
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_stack_oob(ptr noundef %test) #4 align 64 {
entry:
  %stack_array = alloca [10 x i8], align 1
  %array = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %stack_array) #14
  %0 = ptrtoint ptr %stack_array to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %stack_array, align 1, !annotation !415
  %1 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !415
  %3 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !415
  %5 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !415
  %7 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !415
  %9 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !415
  %11 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !415
  %13 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !415
  %15 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !415
  %17 = getelementptr inbounds [10 x i8], ptr %stack_array, i32 0, i32 9
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %17, align 1, !annotation !415
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array)
  %19 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %array, align 4
  store volatile ptr %stack_array, ptr %array, align 4
  %array.0.array.0.array.0. = load volatile ptr, ptr %array, align 4
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.141) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_alloca_oob_left(ptr noundef %test) #4 align 64 {
entry:
  %i = alloca i32, align 4
  %array = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i)
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %i, align 4
  store volatile i32 10, ptr %i, align 4
  %i.0.i.0.i.0. = load volatile i32, ptr %i, align 4
  %vla = alloca i8, i32 %i.0.i.0.i.0., align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.0.i.0.)
  %vla.iszerosized = icmp eq i32 %i.0.i.0.i.0., 0
  br i1 %vla.iszerosized, label %entry.vla-init.cont_crit_edge, label %vla-setup.loop

entry.vla-init.cont_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vla-init.cont

vla-setup.loop:                                   ; preds = %entry
  %vla.end = getelementptr inbounds i8, ptr %vla, i32 %i.0.i.0.i.0.
  br label %vla-init.loop

vla-init.loop:                                    ; preds = %vla-init.loop.vla-init.loop_crit_edge, %vla-setup.loop
  %vla.cur = phi ptr [ %vla, %vla-setup.loop ], [ %vla.next, %vla-init.loop.vla-init.loop_crit_edge ]
  %1 = ptrtoint ptr %vla.cur to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %vla.cur, align 1, !annotation !415
  %vla.next = getelementptr inbounds i8, ptr %vla.cur, i32 1
  %vla-init.isdone = icmp eq ptr %vla.next, %vla.end
  br i1 %vla-init.isdone, label %vla-init.loop.vla-init.cont_crit_edge, label %vla-init.loop.vla-init.loop_crit_edge

vla-init.loop.vla-init.loop_crit_edge:            ; preds = %vla-init.loop
  call void @__sanitizer_cov_trace_pc() #12
  br label %vla-init.loop

vla-init.loop.vla-init.cont_crit_edge:            ; preds = %vla-init.loop
  call void @__sanitizer_cov_trace_pc() #12
  br label %vla-init.cont

vla-init.cont:                                    ; preds = %vla-init.loop.vla-init.cont_crit_edge, %entry.vla-init.cont_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array)
  %2 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %array, align 4
  store volatile ptr %vla, ptr %array, align 4
  %array.0.array.0.array.0. = load volatile ptr, ptr %array, align 4
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.141) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_alloca_oob_right(ptr noundef %test) #4 align 64 {
entry:
  %i = alloca i32, align 4
  %array = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i)
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %i, align 4
  store volatile i32 10, ptr %i, align 4
  %i.0.i.0.i.0. = load volatile i32, ptr %i, align 4
  %vla = alloca i8, i32 %i.0.i.0.i.0., align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.0.i.0.)
  %vla.iszerosized = icmp eq i32 %i.0.i.0.i.0., 0
  br i1 %vla.iszerosized, label %entry.vla-init.cont_crit_edge, label %vla-setup.loop

entry.vla-init.cont_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vla-init.cont

vla-setup.loop:                                   ; preds = %entry
  %vla.end = getelementptr inbounds i8, ptr %vla, i32 %i.0.i.0.i.0.
  br label %vla-init.loop

vla-init.loop:                                    ; preds = %vla-init.loop.vla-init.loop_crit_edge, %vla-setup.loop
  %vla.cur = phi ptr [ %vla, %vla-setup.loop ], [ %vla.next, %vla-init.loop.vla-init.loop_crit_edge ]
  %1 = ptrtoint ptr %vla.cur to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %vla.cur, align 1, !annotation !415
  %vla.next = getelementptr inbounds i8, ptr %vla.cur, i32 1
  %vla-init.isdone = icmp eq ptr %vla.next, %vla.end
  br i1 %vla-init.isdone, label %vla-init.loop.vla-init.cont_crit_edge, label %vla-init.loop.vla-init.loop_crit_edge

vla-init.loop.vla-init.loop_crit_edge:            ; preds = %vla-init.loop
  call void @__sanitizer_cov_trace_pc() #12
  br label %vla-init.loop

vla-init.loop.vla-init.cont_crit_edge:            ; preds = %vla-init.loop
  call void @__sanitizer_cov_trace_pc() #12
  br label %vla-init.cont

vla-init.cont:                                    ; preds = %vla-init.loop.vla-init.cont_crit_edge, %entry.vla-init.cont_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array)
  %2 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %array, align 4
  store volatile ptr %vla, ptr %array, align 4
  %array.0.array.0.array.0. = load volatile ptr, ptr %array, align 4
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %i.0.i.0.i.0.62 = load volatile i32, ptr %i, align 4
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.141) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksize_unpoisons_memory(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion10 = alloca %struct.kunit_unary_assert, align 4
  %__assertion38 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 123) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 750, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call7 = call i32 @ksize(ptr noundef %call7.i) #13
  %arrayidx = getelementptr i8, ptr %call7.i, i32 123
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 120, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion10) #14
  %11 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !415
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
  store i32 757, ptr %line14, align 4
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %16 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.2, ptr %file15, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format19, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 1
  %20 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.145, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 2
  %21 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %expected_true, align 4
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion10) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !480
  %arrayidx29 = getelementptr i8, ptr %call7.i, i32 %call7
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %arrayidx29, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !481
  %25 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not = icmp eq i8 %25, 0
  br i1 %tobool34.not, label %do.body37, label %entry.do.body55_crit_edge

entry.do.body55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion38) #14
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %32 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion38, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 757, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.2, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_fail_assert_format, ptr %31, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext false, ptr noundef nonnull @.str.146) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion38) #14
  br label %do.body55

do.body55:                                        ; preds = %do.body37, %entry.do.body55_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksize_uaf(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion37 = alloca %struct.kunit_fail_assert, align 4
  %__assertion63 = alloca %struct.kunit_unary_assert, align 4
  %__assertion99 = alloca %struct.kunit_fail_assert, align 4
  %__assertion126 = alloca %struct.kunit_unary_assert, align 4
  %__assertion163 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 772, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree(ptr noundef %call7.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 775, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.147, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !482
  %call28 = call i32 @ksize(ptr noundef %call7.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !483
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool33.not = icmp eq i8 %22, 0
  br i1 %tobool33.not, label %do.body36, label %entry.do.body54_crit_edge

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion37) #14
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 2
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 4, i32 1
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion37, i32 0, i32 5
  %29 = ptrtoint ptr %__assertion37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion37, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 775, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.2, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_fail_assert_format, ptr %28, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion37, i1 noundef zeroext false, ptr noundef nonnull @.str.148) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion37) #14
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %entry.do.body54_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion63) #14
  %36 = getelementptr inbounds i8, ptr %__assertion63, i32 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %36, align 4, !annotation !415
  %38 = ptrtoint ptr %__assertion63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %test, ptr %__assertion63, align 4
  %type66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 1
  %39 = ptrtoint ptr %type66 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %type66, align 4
  %line67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 2
  %40 = ptrtoint ptr %line67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 776, ptr %line67, align 4
  %file68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 3
  %41 = ptrtoint ptr %file68 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.2, ptr %file68, align 4
  %message69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 4
  %42 = ptrtoint ptr %message69 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %message69, align 4
  %va71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %va71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %va71, align 4
  %format72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion63, i32 0, i32 5
  %44 = ptrtoint ptr %format72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @kunit_unary_assert_format, ptr %format72, align 4
  %condition73 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion63, i32 0, i32 1
  %45 = ptrtoint ptr %condition73 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.149, ptr %condition73, align 4
  %expected_true74 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion63, i32 0, i32 2
  %46 = ptrtoint ptr %expected_true74 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %expected_true74, align 4
  %47 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp87 = icmp eq i8 %47, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion63, i1 noundef zeroext %cmp87, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion63) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !484
  %48 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %call7.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !485
  %50 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool94.not = icmp eq i8 %50, 0
  br i1 %tobool94.not, label %do.body98, label %do.body54.do.body117_crit_edge

do.body54.do.body117_crit_edge:                   ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body117

do.body98:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion99) #14
  %51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 1
  %52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 2
  %53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 3
  %54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 4
  %55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 4, i32 1
  %56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion99, i32 0, i32 5
  %57 = ptrtoint ptr %__assertion99 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion99, align 4
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %51, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 776, ptr %52, align 4
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.2, ptr %53, align 4
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %54, align 4
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %55, align 4
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_fail_assert_format, ptr %56, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion99, i1 noundef zeroext false, ptr noundef nonnull @.str.71) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion99) #14
  br label %do.body117

do.body117:                                       ; preds = %do.body98, %do.body54.do.body117_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion126) #14
  %64 = getelementptr inbounds i8, ptr %__assertion126, i32 32
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %64, align 4, !annotation !415
  %66 = ptrtoint ptr %__assertion126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %test, ptr %__assertion126, align 4
  %type129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 1
  %67 = ptrtoint ptr %type129 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type129, align 4
  %line130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 2
  %68 = ptrtoint ptr %line130 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 777, ptr %line130, align 4
  %file131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 3
  %69 = ptrtoint ptr %file131 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.2, ptr %file131, align 4
  %message132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 4
  %70 = ptrtoint ptr %message132 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %message132, align 4
  %va134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %va134 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %va134, align 4
  %format135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion126, i32 0, i32 5
  %72 = ptrtoint ptr %format135 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @kunit_unary_assert_format, ptr %format135, align 4
  %condition136 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion126, i32 0, i32 1
  %73 = ptrtoint ptr %condition136 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.150, ptr %condition136, align 4
  %expected_true137 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion126, i32 0, i32 2
  %74 = ptrtoint ptr %expected_true137 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %expected_true137, align 4
  %75 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp150 = icmp eq i8 %75, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion126, i1 noundef zeroext %cmp150, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion126) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !486
  %arrayidx153 = getelementptr i8, ptr %call7.i, i32 120
  %76 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load volatile i8, ptr %arrayidx153, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !487
  %78 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool158.not = icmp eq i8 %78, 0
  br i1 %tobool158.not, label %do.body162, label %do.body117.do.body181_crit_edge

do.body117.do.body181_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body181

do.body162:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion163) #14
  %79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion163, i32 0, i32 1
  %80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion163, i32 0, i32 2
  %81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion163, i32 0, i32 3
  %82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion163, i32 0, i32 4
  %83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion163, i32 0, i32 4, i32 1
  %84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion163, i32 0, i32 5
  %85 = ptrtoint ptr %__assertion163 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %test, ptr %__assertion163, align 4
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %79, align 4
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 777, ptr %80, align 4
  %88 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.2, ptr %81, align 4
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %82, align 4
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %83, align 4
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @kunit_fail_assert_format, ptr %84, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion163, i1 noundef zeroext false, ptr noundef nonnull @.str.151) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion163) #14
  br label %do.body181

do.body181:                                       ; preds = %do.body162, %do.body117.do.body181_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmem_cache_double_free(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion18 = alloca %struct.kunit_unary_assert, align 4
  %__assertion48 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.132, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 829, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.133, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call7 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end11, label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %10, ptr noundef nonnull @.str.44) #21
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %11 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log, align 4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %12, ptr noundef nonnull @.str.135, ptr noundef %14, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion18) #14
  %15 = getelementptr inbounds i8, ptr %__assertion18, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !415
  %17 = ptrtoint ptr %__assertion18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion18, align 4
  %type21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 1
  %18 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type21, align 4
  %line22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 2
  %19 = ptrtoint ptr %line22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 839, ptr %line22, align 4
  %file23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 3
  %20 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.2, ptr %file23, align 4
  %message24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4
  %21 = ptrtoint ptr %message24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message24, align 4
  %va26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va26, align 4
  %format27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 5
  %23 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_unary_assert_format, ptr %format27, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion18, i32 0, i32 1
  %24 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.152, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion18, i32 0, i32 2
  %25 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %expected_true, align 4
  %26 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion18, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion18) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !488
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !489
  %27 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br i1 %tobool43.not, label %do.body47, label %if.end.do.body66_crit_edge

if.end.do.body66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

do.body47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion48) #14
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 2
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 3
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4
  %32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4, i32 1
  %33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 5
  %34 = ptrtoint ptr %__assertion48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test, ptr %__assertion48, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 839, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.2, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %31, align 4
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %32, align 4
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kunit_fail_assert_format, ptr %33, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion48, i1 noundef zeroext false, ptr noundef nonnull @.str.153) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion48) #14
  br label %do.body66

do.body66:                                        ; preds = %do.body47, %if.end.do.body66_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.body66, %do.end11
  call void @kmem_cache_destroy(ptr noundef %call) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmem_cache_invalid_free(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion18 = alloca %struct.kunit_unary_assert, align 4
  %__assertion48 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.132, i32 noundef 200, i32 noundef 0, i32 noundef 524288, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 851, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.133, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call7 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end11, label %do.body17

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %10, ptr noundef nonnull @.str.45) #21
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %11 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log, align 4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %12, ptr noundef nonnull @.str.135, ptr noundef %14, ptr noundef nonnull @.str.45) #13
  br label %cleanup

do.body17:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion18) #14
  %15 = getelementptr inbounds i8, ptr %__assertion18, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !415
  %17 = ptrtoint ptr %__assertion18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion18, align 4
  %type21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 1
  %18 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type21, align 4
  %line22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 2
  %19 = ptrtoint ptr %line22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 861, ptr %line22, align 4
  %file23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 3
  %20 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.2, ptr %file23, align 4
  %message24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4
  %21 = ptrtoint ptr %message24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message24, align 4
  %va26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va26, align 4
  %format27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 5
  %23 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_unary_assert_format, ptr %format27, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion18, i32 0, i32 1
  %24 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.154, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion18, i32 0, i32 2
  %25 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %expected_true, align 4
  %26 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion18, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion18) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !490
  %add.ptr = getelementptr i8, ptr %call7, i32 1
  call void @kmem_cache_free(ptr noundef %call, ptr noundef %add.ptr) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !491
  %27 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br i1 %tobool43.not, label %do.body47, label %do.body17.do.body66_crit_edge

do.body17.do.body66_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

do.body47:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion48) #14
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 1
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 2
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 3
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4
  %32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 4, i32 1
  %33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion48, i32 0, i32 5
  %34 = ptrtoint ptr %__assertion48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test, ptr %__assertion48, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 861, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.2, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %31, align 4
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %32, align 4
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kunit_fail_assert_format, ptr %33, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion48, i1 noundef zeroext false, ptr noundef nonnull @.str.155) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion48) #14
  br label %do.body66

do.body66:                                        ; preds = %do.body47, %do.body17.do.body66_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kmem_cache_free(ptr noundef %call, ptr noundef nonnull %call7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body66, %do.end11
  call void @kmem_cache_destroy(ptr noundef %call) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmem_cache_double_destroy(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion36 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.132, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @empty_cache_ctor) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 880, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.133, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kmem_cache_destroy(ptr noundef %call) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %9 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !415
  %11 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %12 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %13 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 882, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %14 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %15 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %17 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.156, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %expected_true, align 4
  %20 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !492
  call void @kmem_cache_destroy(ptr noundef %call) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !493
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  br i1 %tobool32.not, label %do.body35, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion36) #14
  %22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 1
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 2
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 3
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 5
  %28 = ptrtoint ptr %__assertion36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion36, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %22, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 882, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.2, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_fail_assert_format, ptr %27, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36, i1 noundef zeroext false, ptr noundef nonnull @.str.157) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion36) #14
  br label %do.body53

do.body53:                                        ; preds = %do.body35, %entry.do.body53_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_memchr(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_unary_assert, align 4
  %__assertion40 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 900, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %10 = call ptr asm "", "=r,0"(ptr %call7.i) #20, !srcloc !494
  %11 = call i32 asm "", "=r,0"(i32 24) #20, !srcloc !495
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #14
  %12 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !415
  %14 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %15 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %16 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 905, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %17 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %18 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %20 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_unary_assert_format, ptr %format21, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 1
  %21 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.158, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 2
  %22 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %expected_true, align 4
  %23 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !496
  %add = add i32 %11, 1
  %call31 = call ptr @memchr(ptr noundef %10, i32 noundef 49, i32 noundef %add) #13
  store ptr %call31, ptr @kasan_ptr_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !497
  %24 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp eq i8 %24, 0
  br i1 %tobool36.not, label %do.body39, label %entry.do.body57_crit_edge

entry.do.body57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

do.body39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion40) #14
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 1
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 2
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 3
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 5
  %31 = ptrtoint ptr %__assertion40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %test, ptr %__assertion40, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 905, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.2, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kunit_fail_assert_format, ptr %30, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion40, i1 noundef zeroext false, ptr noundef nonnull @.str.159) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion40) #14
  br label %do.body57

do.body57:                                        ; preds = %do.body39, %entry.do.body57_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_memcmp(ptr noundef %test) #0 align 64 {
entry:
  %arr = alloca [9 x i32], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion13 = alloca %struct.kunit_unary_assert, align 4
  %__assertion42 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %arr) #14
  %0 = call ptr @memset(ptr %arr, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 926, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  %call10 = call ptr @memset(ptr noundef nonnull %arr, i32 noundef 0, i32 noundef 36) #13
  %11 = call ptr asm "", "=r,0"(ptr %call7.i) #20, !srcloc !498
  %12 = call i32 asm "", "=r,0"(i32 24) #20, !srcloc !499
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion13) #14
  %13 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !415
  %15 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %test, ptr %__assertion13, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %16 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %17 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 932, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %18 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.2, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %19 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %21 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kunit_unary_assert_format, ptr %format22, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion13, i32 0, i32 1
  %22 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.160, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion13, i32 0, i32 2
  %23 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %expected_true, align 4
  %24 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp = icmp eq i8 %24, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion13) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !500
  %add = add i32 %12, 1
  %call33 = call i32 @memcmp(ptr noundef %11, ptr noundef nonnull %arr, i32 noundef %add) #13
  store i32 %call33, ptr @kasan_int_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !501
  %25 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool38.not = icmp eq i8 %25, 0
  br i1 %tobool38.not, label %do.body41, label %entry.do.body59_crit_edge

entry.do.body59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion42) #14
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %32 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion42, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 932, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.2, ptr %28, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_fail_assert_format, ptr %31, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext false, ptr noundef nonnull @.str.161) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion42) #14
  br label %do.body59

do.body59:                                        ; preds = %do.body41, %entry.do.body59_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %11) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %arr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_strings(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_unary_assert, align 4
  %__assertion40 = alloca %struct.kunit_fail_assert, align 4
  %__assertion66 = alloca %struct.kunit_unary_assert, align 4
  %__assertion103 = alloca %struct.kunit_fail_assert, align 4
  %__assertion130 = alloca %struct.kunit_unary_assert, align 4
  %__assertion167 = alloca %struct.kunit_fail_assert, align 4
  %__assertion194 = alloca %struct.kunit_unary_assert, align 4
  %__assertion231 = alloca %struct.kunit_fail_assert, align 4
  %__assertion258 = alloca %struct.kunit_unary_assert, align 4
  %__assertion295 = alloca %struct.kunit_fail_assert, align 4
  %__assertion322 = alloca %struct.kunit_unary_assert, align 4
  %__assertion359 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 948, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree(ptr noundef %call7.i) #13
  %add.ptr = getelementptr i8, ptr %call7.i, i32 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #14
  %10 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %13 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %14 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 959, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %15 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %16 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %18 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format21, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.162, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion12, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !502
  %call31 = call ptr @strchr(ptr noundef %add.ptr, i32 noundef 49) #13
  store ptr %call31, ptr @kasan_ptr_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !503
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool36.not = icmp eq i8 %22, 0
  br i1 %tobool36.not, label %do.body39, label %entry.do.body57_crit_edge

entry.do.body57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

do.body39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion40) #14
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 2
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 4, i32 1
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion40, i32 0, i32 5
  %29 = ptrtoint ptr %__assertion40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion40, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 959, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.2, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_fail_assert_format, ptr %28, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion40, i1 noundef zeroext false, ptr noundef nonnull @.str.163) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion40) #14
  br label %do.body57

do.body57:                                        ; preds = %do.body39, %entry.do.body57_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion66) #14
  %36 = getelementptr inbounds i8, ptr %__assertion66, i32 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %36, align 4, !annotation !415
  %38 = ptrtoint ptr %__assertion66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %test, ptr %__assertion66, align 4
  %type69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion66, i32 0, i32 1
  %39 = ptrtoint ptr %type69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %type69, align 4
  %line70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion66, i32 0, i32 2
  %40 = ptrtoint ptr %line70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 961, ptr %line70, align 4
  %file71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion66, i32 0, i32 3
  %41 = ptrtoint ptr %file71 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.2, ptr %file71, align 4
  %message72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion66, i32 0, i32 4
  %42 = ptrtoint ptr %message72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %message72, align 4
  %va74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion66, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %va74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %va74, align 4
  %format75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion66, i32 0, i32 5
  %44 = ptrtoint ptr %format75 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @kunit_unary_assert_format, ptr %format75, align 4
  %condition76 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion66, i32 0, i32 1
  %45 = ptrtoint ptr %condition76 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.164, ptr %condition76, align 4
  %expected_true77 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion66, i32 0, i32 2
  %46 = ptrtoint ptr %expected_true77 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %expected_true77, align 4
  %47 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp90 = icmp eq i8 %47, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion66, i1 noundef zeroext %cmp90, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion66) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !504
  %call93 = call ptr @strrchr(ptr noundef %add.ptr, i32 noundef 49) #13
  store ptr %call93, ptr @kasan_ptr_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !505
  %48 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool98.not = icmp eq i8 %48, 0
  br i1 %tobool98.not, label %do.body102, label %do.body57.do.body121_crit_edge

do.body57.do.body121_crit_edge:                   ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body121

do.body102:                                       ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion103) #14
  %49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 1
  %50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 2
  %51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 3
  %52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 4
  %53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 4, i32 1
  %54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion103, i32 0, i32 5
  %55 = ptrtoint ptr %__assertion103 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion103, align 4
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %49, align 4
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 961, ptr %50, align 4
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.2, ptr %51, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %52, align 4
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %53, align 4
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_fail_assert_format, ptr %54, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion103, i1 noundef zeroext false, ptr noundef nonnull @.str.165) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion103) #14
  br label %do.body121

do.body121:                                       ; preds = %do.body102, %do.body57.do.body121_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion130) #14
  %62 = getelementptr inbounds i8, ptr %__assertion130, i32 32
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %62, align 4, !annotation !415
  %64 = ptrtoint ptr %__assertion130 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion130, align 4
  %type133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion130, i32 0, i32 1
  %65 = ptrtoint ptr %type133 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type133, align 4
  %line134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion130, i32 0, i32 2
  %66 = ptrtoint ptr %line134 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 963, ptr %line134, align 4
  %file135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion130, i32 0, i32 3
  %67 = ptrtoint ptr %file135 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.2, ptr %file135, align 4
  %message136 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion130, i32 0, i32 4
  %68 = ptrtoint ptr %message136 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message136, align 4
  %va138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion130, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va138 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va138, align 4
  %format139 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion130, i32 0, i32 5
  %70 = ptrtoint ptr %format139 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_unary_assert_format, ptr %format139, align 4
  %condition140 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion130, i32 0, i32 1
  %71 = ptrtoint ptr %condition140 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.166, ptr %condition140, align 4
  %expected_true141 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion130, i32 0, i32 2
  %72 = ptrtoint ptr %expected_true141 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %expected_true141, align 4
  %73 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp154 = icmp eq i8 %73, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion130, i1 noundef zeroext %cmp154, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion130) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !506
  %call157 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef nonnull @.str.167) #13
  store i32 %call157, ptr @kasan_int_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !507
  %74 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool162.not = icmp eq i8 %74, 0
  br i1 %tobool162.not, label %do.body166, label %do.body121.do.body185_crit_edge

do.body121.do.body185_crit_edge:                  ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body185

do.body166:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion167) #14
  %75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 1
  %76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 2
  %77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 3
  %78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 4
  %79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 4, i32 1
  %80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion167, i32 0, i32 5
  %81 = ptrtoint ptr %__assertion167 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %test, ptr %__assertion167, align 4
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %75, align 4
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 963, ptr %76, align 4
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.2, ptr %77, align 4
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %78, align 4
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %79, align 4
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @kunit_fail_assert_format, ptr %80, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion167, i1 noundef zeroext false, ptr noundef nonnull @.str.168) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion167) #14
  br label %do.body185

do.body185:                                       ; preds = %do.body166, %do.body121.do.body185_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion194) #14
  %88 = getelementptr inbounds i8, ptr %__assertion194, i32 32
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %88, align 4, !annotation !415
  %90 = ptrtoint ptr %__assertion194 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %test, ptr %__assertion194, align 4
  %type197 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 1
  %91 = ptrtoint ptr %type197 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %type197, align 4
  %line198 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 2
  %92 = ptrtoint ptr %line198 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 965, ptr %line198, align 4
  %file199 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 3
  %93 = ptrtoint ptr %file199 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.2, ptr %file199, align 4
  %message200 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 4
  %94 = ptrtoint ptr %message200 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %message200, align 4
  %va202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %va202 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %va202, align 4
  %format203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 5
  %96 = ptrtoint ptr %format203 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @kunit_unary_assert_format, ptr %format203, align 4
  %condition204 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion194, i32 0, i32 1
  %97 = ptrtoint ptr %condition204 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.169, ptr %condition204, align 4
  %expected_true205 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion194, i32 0, i32 2
  %98 = ptrtoint ptr %expected_true205 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %expected_true205, align 4
  %99 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp218 = icmp eq i8 %99, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion194, i1 noundef zeroext %cmp218, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion194) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !508
  %call221 = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull @.str.167, i32 noundef 1) #13
  store i32 %call221, ptr @kasan_int_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !509
  %100 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool226.not = icmp eq i8 %100, 0
  br i1 %tobool226.not, label %do.body230, label %do.body185.do.body249_crit_edge

do.body185.do.body249_crit_edge:                  ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body249

do.body230:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion231) #14
  %101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion231, i32 0, i32 1
  %102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion231, i32 0, i32 2
  %103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion231, i32 0, i32 3
  %104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion231, i32 0, i32 4
  %105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion231, i32 0, i32 4, i32 1
  %106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion231, i32 0, i32 5
  %107 = ptrtoint ptr %__assertion231 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %test, ptr %__assertion231, align 4
  %108 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %101, align 4
  %109 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 965, ptr %102, align 4
  %110 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.2, ptr %103, align 4
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %104, align 4
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %105, align 4
  %113 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @kunit_fail_assert_format, ptr %106, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion231, i1 noundef zeroext false, ptr noundef nonnull @.str.170) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion231) #14
  br label %do.body249

do.body249:                                       ; preds = %do.body230, %do.body185.do.body249_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion258) #14
  %114 = getelementptr inbounds i8, ptr %__assertion258, i32 32
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %114, align 4, !annotation !415
  %116 = ptrtoint ptr %__assertion258 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %test, ptr %__assertion258, align 4
  %type261 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 1
  %117 = ptrtoint ptr %type261 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %type261, align 4
  %line262 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 2
  %118 = ptrtoint ptr %line262 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 967, ptr %line262, align 4
  %file263 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 3
  %119 = ptrtoint ptr %file263 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.2, ptr %file263, align 4
  %message264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 4
  %120 = ptrtoint ptr %message264 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %message264, align 4
  %va266 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 4, i32 1
  %121 = ptrtoint ptr %va266 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %va266, align 4
  %format267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 5
  %122 = ptrtoint ptr %format267 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @kunit_unary_assert_format, ptr %format267, align 4
  %condition268 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion258, i32 0, i32 1
  %123 = ptrtoint ptr %condition268 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.171, ptr %condition268, align 4
  %expected_true269 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion258, i32 0, i32 2
  %124 = ptrtoint ptr %expected_true269 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %expected_true269, align 4
  %125 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp282 = icmp eq i8 %125, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion258, i1 noundef zeroext %cmp282, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion258) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !510
  %call285 = call i32 @strlen(ptr noundef %add.ptr) #13
  store i32 %call285, ptr @kasan_int_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !511
  %126 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool290.not = icmp eq i8 %126, 0
  br i1 %tobool290.not, label %do.body294, label %do.body249.do.body313_crit_edge

do.body249.do.body313_crit_edge:                  ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body313

do.body294:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion295) #14
  %127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 1
  %128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 2
  %129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 3
  %130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 4
  %131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 4, i32 1
  %132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 5
  %133 = ptrtoint ptr %__assertion295 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %test, ptr %__assertion295, align 4
  %134 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %127, align 4
  %135 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 967, ptr %128, align 4
  %136 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.2, ptr %129, align 4
  %137 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %130, align 4
  %138 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %131, align 4
  %139 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @kunit_fail_assert_format, ptr %132, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion295, i1 noundef zeroext false, ptr noundef nonnull @.str.172) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion295) #14
  br label %do.body313

do.body313:                                       ; preds = %do.body294, %do.body249.do.body313_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion322) #14
  %140 = getelementptr inbounds i8, ptr %__assertion322, i32 32
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %140, align 4, !annotation !415
  %142 = ptrtoint ptr %__assertion322 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %test, ptr %__assertion322, align 4
  %type325 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion322, i32 0, i32 1
  %143 = ptrtoint ptr %type325 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %type325, align 4
  %line326 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion322, i32 0, i32 2
  %144 = ptrtoint ptr %line326 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 969, ptr %line326, align 4
  %file327 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion322, i32 0, i32 3
  %145 = ptrtoint ptr %file327 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.2, ptr %file327, align 4
  %message328 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion322, i32 0, i32 4
  %146 = ptrtoint ptr %message328 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %message328, align 4
  %va330 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion322, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %va330 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %va330, align 4
  %format331 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion322, i32 0, i32 5
  %148 = ptrtoint ptr %format331 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @kunit_unary_assert_format, ptr %format331, align 4
  %condition332 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion322, i32 0, i32 1
  %149 = ptrtoint ptr %condition332 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.173, ptr %condition332, align 4
  %expected_true333 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion322, i32 0, i32 2
  %150 = ptrtoint ptr %expected_true333 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %expected_true333, align 4
  %151 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp346 = icmp eq i8 %151, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion322, i1 noundef zeroext %cmp346, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion322) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !512
  %call349 = call i32 @strnlen(ptr noundef %add.ptr, i32 noundef 1) #13
  store i32 %call349, ptr @kasan_int_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !513
  %152 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool354.not = icmp eq i8 %152, 0
  br i1 %tobool354.not, label %do.body358, label %do.body313.do.body377_crit_edge

do.body313.do.body377_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body377

do.body358:                                       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion359) #14
  %153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion359, i32 0, i32 1
  %154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion359, i32 0, i32 2
  %155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion359, i32 0, i32 3
  %156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion359, i32 0, i32 4
  %157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion359, i32 0, i32 4, i32 1
  %158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion359, i32 0, i32 5
  %159 = ptrtoint ptr %__assertion359 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %test, ptr %__assertion359, align 4
  %160 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1, ptr %153, align 4
  %161 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 969, ptr %154, align 4
  %162 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @.str.2, ptr %155, align 4
  %163 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %156, align 4
  %164 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %157, align 4
  %165 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @kunit_fail_assert_format, ptr %158, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion359, i1 noundef zeroext false, ptr noundef nonnull @.str.174) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion359) #14
  br label %do.body377

do.body377:                                       ; preds = %do.body358, %do.body313.do.body377_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_bitops_generic(ptr noundef %test) #0 align 64 {
entry:
  %__assertion.i18 = alloca %struct.kunit_unary_assert, align 4
  %__assertion17.i19 = alloca %struct.kunit_fail_assert, align 4
  %__assertion43.i20 = alloca %struct.kunit_unary_assert, align 4
  %__assertion80.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion107.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion144.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion171.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion208.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion235.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion272.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion299.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion336.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion363.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion400.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion427.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion464.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion491.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion528.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion17.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion43.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion79.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion106.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion142.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion169.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion205.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion232.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion268.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion295.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion331.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion358.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion394.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion421.i = alloca %struct.kunit_unary_assert, align 4
  %__assertion457.i = alloca %struct.kunit_fail_assert, align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 1013, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.175, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i.i, null
  %cmp.i = icmp ule ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i) #14
  %10 = getelementptr inbounds i8, ptr %__assertion.i, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777215, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion.i, align 4
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type.i, align 4
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %14 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 974, ptr %line.i, align 4
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %15 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file.i, align 4
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %16 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message.i, align 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va.i, align 4
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %18 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format.i, align 4
  %condition.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion.i, i32 0, i32 1
  %19 = ptrtoint ptr %condition.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.176, ptr %condition.i, align 4
  %20 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i17 = icmp eq i8 %20, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %cmp.i17, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !514
  call void @_set_bit(i32 noundef 32, ptr noundef %call7.i.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !515
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not.i = icmp eq i8 %21, 0
  br i1 %tobool13.not.i, label %do.body16.i, label %entry.do.body34.i_crit_edge

entry.do.body34.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i

do.body16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion17.i) #14
  %22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i, i32 0, i32 3
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i, i32 0, i32 4
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i, i32 0, i32 4, i32 1
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i, i32 0, i32 5
  %28 = ptrtoint ptr %__assertion17.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion17.i, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %22, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 974, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.2, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_fail_assert_format, ptr %27, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17.i, i1 noundef zeroext false, ptr noundef nonnull @.str.177) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion17.i) #14
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.body16.i, %entry.do.body34.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion43.i) #14
  %35 = getelementptr inbounds i8, ptr %__assertion43.i, i32 32
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777215, ptr %35, align 4, !annotation !415
  %37 = ptrtoint ptr %__assertion43.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %test, ptr %__assertion43.i, align 4
  %type46.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i, i32 0, i32 1
  %38 = ptrtoint ptr %type46.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %type46.i, align 4
  %line47.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i, i32 0, i32 2
  %39 = ptrtoint ptr %line47.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 975, ptr %line47.i, align 4
  %file48.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i, i32 0, i32 3
  %40 = ptrtoint ptr %file48.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.2, ptr %file48.i, align 4
  %message49.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i, i32 0, i32 4
  %41 = ptrtoint ptr %message49.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %message49.i, align 4
  %va51.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %va51.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %va51.i, align 4
  %format52.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i, i32 0, i32 5
  %43 = ptrtoint ptr %format52.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @kunit_unary_assert_format, ptr %format52.i, align 4
  %condition53.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion43.i, i32 0, i32 1
  %44 = ptrtoint ptr %condition53.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.178, ptr %condition53.i, align 4
  %45 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp67.i = icmp eq i8 %45, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43.i, i1 noundef zeroext %cmp67.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion43.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !516
  %add.ptr.i.i = getelementptr i32, ptr %call7.i.i, i32 1
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %47, 1
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !517
  %48 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool74.not.i = icmp eq i8 %48, 0
  br i1 %tobool74.not.i, label %do.body78.i, label %do.body34.i.do.body97.i_crit_edge

do.body34.i.do.body97.i_crit_edge:                ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97.i

do.body78.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion79.i) #14
  %49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79.i, i32 0, i32 2
  %51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79.i, i32 0, i32 3
  %52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79.i, i32 0, i32 4
  %53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79.i, i32 0, i32 4, i32 1
  %54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79.i, i32 0, i32 5
  %55 = ptrtoint ptr %__assertion79.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion79.i, align 4
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %49, align 4
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 975, ptr %50, align 4
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.2, ptr %51, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %52, align 4
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %53, align 4
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_fail_assert_format, ptr %54, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion79.i, i1 noundef zeroext false, ptr noundef nonnull @.str.179) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion79.i) #14
  br label %do.body97.i

do.body97.i:                                      ; preds = %do.body78.i, %do.body34.i.do.body97.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion106.i) #14
  %62 = getelementptr inbounds i8, ptr %__assertion106.i, i32 32
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 16777215, ptr %62, align 4, !annotation !415
  %64 = ptrtoint ptr %__assertion106.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion106.i, align 4
  %type109.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106.i, i32 0, i32 1
  %65 = ptrtoint ptr %type109.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type109.i, align 4
  %line110.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106.i, i32 0, i32 2
  %66 = ptrtoint ptr %line110.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 976, ptr %line110.i, align 4
  %file111.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106.i, i32 0, i32 3
  %67 = ptrtoint ptr %file111.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.2, ptr %file111.i, align 4
  %message112.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106.i, i32 0, i32 4
  %68 = ptrtoint ptr %message112.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message112.i, align 4
  %va114.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106.i, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va114.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va114.i, align 4
  %format115.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106.i, i32 0, i32 5
  %70 = ptrtoint ptr %format115.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_unary_assert_format, ptr %format115.i, align 4
  %condition116.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion106.i, i32 0, i32 1
  %71 = ptrtoint ptr %condition116.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.180, ptr %condition116.i, align 4
  %72 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp130.i = icmp eq i8 %72, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion106.i, i1 noundef zeroext %cmp130.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion106.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !518
  call void @_clear_bit(i32 noundef 32, ptr noundef %call7.i.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !519
  %73 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool137.not.i = icmp eq i8 %73, 0
  br i1 %tobool137.not.i, label %do.body141.i, label %do.body97.i.do.body160.i_crit_edge

do.body97.i.do.body160.i_crit_edge:               ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body160.i

do.body141.i:                                     ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion142.i) #14
  %74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142.i, i32 0, i32 1
  %75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142.i, i32 0, i32 2
  %76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142.i, i32 0, i32 3
  %77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142.i, i32 0, i32 4
  %78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142.i, i32 0, i32 4, i32 1
  %79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142.i, i32 0, i32 5
  %80 = ptrtoint ptr %__assertion142.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %test, ptr %__assertion142.i, align 4
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %74, align 4
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 976, ptr %75, align 4
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.2, ptr %76, align 4
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %77, align 4
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %78, align 4
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @kunit_fail_assert_format, ptr %79, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion142.i, i1 noundef zeroext false, ptr noundef nonnull @.str.181) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion142.i) #14
  br label %do.body160.i

do.body160.i:                                     ; preds = %do.body141.i, %do.body97.i.do.body160.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion169.i) #14
  %87 = getelementptr inbounds i8, ptr %__assertion169.i, i32 32
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 16777215, ptr %87, align 4, !annotation !415
  %89 = ptrtoint ptr %__assertion169.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %test, ptr %__assertion169.i, align 4
  %type172.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169.i, i32 0, i32 1
  %90 = ptrtoint ptr %type172.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %type172.i, align 4
  %line173.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169.i, i32 0, i32 2
  %91 = ptrtoint ptr %line173.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 977, ptr %line173.i, align 4
  %file174.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169.i, i32 0, i32 3
  %92 = ptrtoint ptr %file174.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.2, ptr %file174.i, align 4
  %message175.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169.i, i32 0, i32 4
  %93 = ptrtoint ptr %message175.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %message175.i, align 4
  %va177.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169.i, i32 0, i32 4, i32 1
  %94 = ptrtoint ptr %va177.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %va177.i, align 4
  %format178.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169.i, i32 0, i32 5
  %95 = ptrtoint ptr %format178.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @kunit_unary_assert_format, ptr %format178.i, align 4
  %condition179.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion169.i, i32 0, i32 1
  %96 = ptrtoint ptr %condition179.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.182, ptr %condition179.i, align 4
  %97 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp193.i = icmp eq i8 %97, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion169.i, i1 noundef zeroext %cmp193.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion169.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !520
  %98 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %99, -2
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !521
  %100 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool200.not.i = icmp eq i8 %100, 0
  br i1 %tobool200.not.i, label %do.body204.i, label %do.body160.i.do.body223.i_crit_edge

do.body160.i.do.body223.i_crit_edge:              ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body223.i

do.body204.i:                                     ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion205.i) #14
  %101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion205.i, i32 0, i32 1
  %102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion205.i, i32 0, i32 2
  %103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion205.i, i32 0, i32 3
  %104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion205.i, i32 0, i32 4
  %105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion205.i, i32 0, i32 4, i32 1
  %106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion205.i, i32 0, i32 5
  %107 = ptrtoint ptr %__assertion205.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %test, ptr %__assertion205.i, align 4
  %108 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %101, align 4
  %109 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 977, ptr %102, align 4
  %110 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.2, ptr %103, align 4
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %104, align 4
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %105, align 4
  %113 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @kunit_fail_assert_format, ptr %106, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion205.i, i1 noundef zeroext false, ptr noundef nonnull @.str.183) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion205.i) #14
  br label %do.body223.i

do.body223.i:                                     ; preds = %do.body204.i, %do.body160.i.do.body223.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion232.i) #14
  %114 = getelementptr inbounds i8, ptr %__assertion232.i, i32 32
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 16777215, ptr %114, align 4, !annotation !415
  %116 = ptrtoint ptr %__assertion232.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %test, ptr %__assertion232.i, align 4
  %type235.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232.i, i32 0, i32 1
  %117 = ptrtoint ptr %type235.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %type235.i, align 4
  %line236.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232.i, i32 0, i32 2
  %118 = ptrtoint ptr %line236.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 978, ptr %line236.i, align 4
  %file237.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232.i, i32 0, i32 3
  %119 = ptrtoint ptr %file237.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.2, ptr %file237.i, align 4
  %message238.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232.i, i32 0, i32 4
  %120 = ptrtoint ptr %message238.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %message238.i, align 4
  %va240.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232.i, i32 0, i32 4, i32 1
  %121 = ptrtoint ptr %va240.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %va240.i, align 4
  %format241.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232.i, i32 0, i32 5
  %122 = ptrtoint ptr %format241.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @kunit_unary_assert_format, ptr %format241.i, align 4
  %condition242.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion232.i, i32 0, i32 1
  %123 = ptrtoint ptr %condition242.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.184, ptr %condition242.i, align 4
  %124 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp256.i = icmp eq i8 %124, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion232.i, i1 noundef zeroext %cmp256.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion232.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !522
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !523
  call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 1, i32 3, i32 1) #14
  %125 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i, ptr %add.ptr.i.i, i32 1, ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !524
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !525
  %126 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool263.not.i = icmp eq i8 %126, 0
  br i1 %tobool263.not.i, label %do.body267.i, label %do.body223.i.do.body286.i_crit_edge

do.body223.i.do.body286.i_crit_edge:              ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body286.i

do.body267.i:                                     ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion268.i) #14
  %127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268.i, i32 0, i32 1
  %128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268.i, i32 0, i32 2
  %129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268.i, i32 0, i32 3
  %130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268.i, i32 0, i32 4
  %131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268.i, i32 0, i32 4, i32 1
  %132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268.i, i32 0, i32 5
  %133 = ptrtoint ptr %__assertion268.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %test, ptr %__assertion268.i, align 4
  %134 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %127, align 4
  %135 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 978, ptr %128, align 4
  %136 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.2, ptr %129, align 4
  %137 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %130, align 4
  %138 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %131, align 4
  %139 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @kunit_fail_assert_format, ptr %132, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion268.i, i1 noundef zeroext false, ptr noundef nonnull @.str.185) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion268.i) #14
  br label %do.body286.i

do.body286.i:                                     ; preds = %do.body267.i, %do.body223.i.do.body286.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion295.i) #14
  %140 = getelementptr inbounds i8, ptr %__assertion295.i, i32 32
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 16777215, ptr %140, align 4, !annotation !415
  %142 = ptrtoint ptr %__assertion295.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %test, ptr %__assertion295.i, align 4
  %type298.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295.i, i32 0, i32 1
  %143 = ptrtoint ptr %type298.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %type298.i, align 4
  %line299.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295.i, i32 0, i32 2
  %144 = ptrtoint ptr %line299.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 979, ptr %line299.i, align 4
  %file300.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295.i, i32 0, i32 3
  %145 = ptrtoint ptr %file300.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.2, ptr %file300.i, align 4
  %message301.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295.i, i32 0, i32 4
  %146 = ptrtoint ptr %message301.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %message301.i, align 4
  %va303.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295.i, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %va303.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %va303.i, align 4
  %format304.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295.i, i32 0, i32 5
  %148 = ptrtoint ptr %format304.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @kunit_unary_assert_format, ptr %format304.i, align 4
  %condition305.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion295.i, i32 0, i32 1
  %149 = ptrtoint ptr %condition305.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.186, ptr %condition305.i, align 4
  %150 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp319.i = icmp eq i8 %150, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion295.i, i1 noundef zeroext %cmp319.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion295.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !526
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #13
  %151 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %add.ptr.i.i, align 4
  %and.i.i.i = and i32 %152, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !527
  %153 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 %and.i.i.i, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !528
  %154 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool326.not.i = icmp eq i8 %154, 0
  br i1 %tobool326.not.i, label %do.body330.i, label %do.body286.i.do.body349.i_crit_edge

do.body286.i.do.body349.i_crit_edge:              ; preds = %do.body286.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body349.i

do.body330.i:                                     ; preds = %do.body286.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion331.i) #14
  %155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion331.i, i32 0, i32 1
  %156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion331.i, i32 0, i32 2
  %157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion331.i, i32 0, i32 3
  %158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion331.i, i32 0, i32 4
  %159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion331.i, i32 0, i32 4, i32 1
  %160 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion331.i, i32 0, i32 5
  %161 = ptrtoint ptr %__assertion331.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %test, ptr %__assertion331.i, align 4
  %162 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %155, align 4
  %163 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 979, ptr %156, align 4
  %164 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.2, ptr %157, align 4
  %165 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %158, align 4
  %166 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %159, align 4
  %167 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @kunit_fail_assert_format, ptr %160, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion331.i, i1 noundef zeroext false, ptr noundef nonnull @.str.187) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion331.i) #14
  br label %do.body349.i

do.body349.i:                                     ; preds = %do.body330.i, %do.body286.i.do.body349.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion358.i) #14
  %168 = getelementptr inbounds i8, ptr %__assertion358.i, i32 32
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 16777215, ptr %168, align 4, !annotation !415
  %170 = ptrtoint ptr %__assertion358.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %test, ptr %__assertion358.i, align 4
  %type361.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358.i, i32 0, i32 1
  %171 = ptrtoint ptr %type361.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %type361.i, align 4
  %line362.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358.i, i32 0, i32 2
  %172 = ptrtoint ptr %line362.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 980, ptr %line362.i, align 4
  %file363.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358.i, i32 0, i32 3
  %173 = ptrtoint ptr %file363.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.2, ptr %file363.i, align 4
  %message364.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358.i, i32 0, i32 4
  %174 = ptrtoint ptr %message364.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %message364.i, align 4
  %va366.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358.i, i32 0, i32 4, i32 1
  %175 = ptrtoint ptr %va366.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %va366.i, align 4
  %format367.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358.i, i32 0, i32 5
  %176 = ptrtoint ptr %format367.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @kunit_unary_assert_format, ptr %format367.i, align 4
  %condition368.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion358.i, i32 0, i32 1
  %177 = ptrtoint ptr %condition368.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.188, ptr %condition368.i, align 4
  %178 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %cmp382.i = icmp eq i8 %178, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion358.i, i1 noundef zeroext %cmp382.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion358.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !529
  call void @_change_bit(i32 noundef 32, ptr noundef %call7.i.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !530
  %179 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool389.not.i = icmp eq i8 %179, 0
  br i1 %tobool389.not.i, label %do.body393.i, label %do.body349.i.do.body412.i_crit_edge

do.body349.i.do.body412.i_crit_edge:              ; preds = %do.body349.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body412.i

do.body393.i:                                     ; preds = %do.body349.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion394.i) #14
  %180 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394.i, i32 0, i32 1
  %181 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394.i, i32 0, i32 2
  %182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394.i, i32 0, i32 3
  %183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394.i, i32 0, i32 4
  %184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394.i, i32 0, i32 4, i32 1
  %185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394.i, i32 0, i32 5
  %186 = ptrtoint ptr %__assertion394.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %test, ptr %__assertion394.i, align 4
  %187 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %180, align 4
  %188 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 980, ptr %181, align 4
  %189 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @.str.2, ptr %182, align 4
  %190 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %183, align 4
  %191 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %184, align 4
  %192 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @kunit_fail_assert_format, ptr %185, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion394.i, i1 noundef zeroext false, ptr noundef nonnull @.str.189) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion394.i) #14
  br label %do.body412.i

do.body412.i:                                     ; preds = %do.body393.i, %do.body349.i.do.body412.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion421.i) #14
  %193 = getelementptr inbounds i8, ptr %__assertion421.i, i32 32
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 16777215, ptr %193, align 4, !annotation !415
  %195 = ptrtoint ptr %__assertion421.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %test, ptr %__assertion421.i, align 4
  %type424.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion421.i, i32 0, i32 1
  %196 = ptrtoint ptr %type424.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 1, ptr %type424.i, align 4
  %line425.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion421.i, i32 0, i32 2
  %197 = ptrtoint ptr %line425.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 981, ptr %line425.i, align 4
  %file426.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion421.i, i32 0, i32 3
  %198 = ptrtoint ptr %file426.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr @.str.2, ptr %file426.i, align 4
  %message427.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion421.i, i32 0, i32 4
  %199 = ptrtoint ptr %message427.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr null, ptr %message427.i, align 4
  %va429.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion421.i, i32 0, i32 4, i32 1
  %200 = ptrtoint ptr %va429.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %va429.i, align 4
  %format430.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion421.i, i32 0, i32 5
  %201 = ptrtoint ptr %format430.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @kunit_unary_assert_format, ptr %format430.i, align 4
  %condition431.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion421.i, i32 0, i32 1
  %202 = ptrtoint ptr %condition431.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @.str.190, ptr %condition431.i, align 4
  %203 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %cmp445.i = icmp eq i8 %203, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion421.i, i1 noundef zeroext %cmp445.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion421.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !531
  %204 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %205, 1
  store i32 %xor.i.i, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !532
  %206 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool452.not.i = icmp eq i8 %206, 0
  br i1 %tobool452.not.i, label %do.body456.i, label %do.body412.i.kasan_bitops_modify.exit_crit_edge

do.body412.i.kasan_bitops_modify.exit_crit_edge:  ; preds = %do.body412.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kasan_bitops_modify.exit

do.body456.i:                                     ; preds = %do.body412.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion457.i) #14
  %207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion457.i, i32 0, i32 1
  %208 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion457.i, i32 0, i32 2
  %209 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion457.i, i32 0, i32 3
  %210 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion457.i, i32 0, i32 4
  %211 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion457.i, i32 0, i32 4, i32 1
  %212 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion457.i, i32 0, i32 5
  %213 = ptrtoint ptr %__assertion457.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %test, ptr %__assertion457.i, align 4
  %214 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %207, align 4
  %215 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 981, ptr %208, align 4
  %216 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @.str.2, ptr %209, align 4
  %217 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %210, align 4
  %218 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %211, align 4
  %219 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @kunit_fail_assert_format, ptr %212, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion457.i, i1 noundef zeroext false, ptr noundef nonnull @.str.191) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion457.i) #14
  br label %kasan_bitops_modify.exit

kasan_bitops_modify.exit:                         ; preds = %do.body456.i, %do.body412.i.kasan_bitops_modify.exit_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion.i18) #14
  %220 = getelementptr inbounds i8, ptr %__assertion.i18, i32 32
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 16777215, ptr %220, align 4, !annotation !415
  %222 = ptrtoint ptr %__assertion.i18 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %test, ptr %__assertion.i18, align 4
  %type.i21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i18, i32 0, i32 1
  %223 = ptrtoint ptr %type.i21 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %type.i21, align 4
  %line.i22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i18, i32 0, i32 2
  %224 = ptrtoint ptr %line.i22 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 986, ptr %line.i22, align 4
  %file.i23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i18, i32 0, i32 3
  %225 = ptrtoint ptr %file.i23 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @.str.2, ptr %file.i23, align 4
  %message.i24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i18, i32 0, i32 4
  %226 = ptrtoint ptr %message.i24 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %message.i24, align 4
  %va.i25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i18, i32 0, i32 4, i32 1
  %227 = ptrtoint ptr %va.i25 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %va.i25, align 4
  %format.i26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i18, i32 0, i32 5
  %228 = ptrtoint ptr %format.i26 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @kunit_unary_assert_format, ptr %format.i26, align 4
  %condition.i27 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion.i18, i32 0, i32 1
  %229 = ptrtoint ptr %condition.i27 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.192, ptr %condition.i27, align 4
  %230 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %cmp.i29 = icmp eq i8 %230, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i18, i1 noundef zeroext %cmp.i29, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion.i18) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !533
  %call.i = call i32 @_test_and_set_bit(i32 noundef 40, ptr noundef %call7.i.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !534
  %231 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool13.not.i30 = icmp eq i8 %231, 0
  br i1 %tobool13.not.i30, label %do.body16.i31, label %kasan_bitops_modify.exit.do.body34.i43_crit_edge

kasan_bitops_modify.exit.do.body34.i43_crit_edge: ; preds = %kasan_bitops_modify.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i43

do.body16.i31:                                    ; preds = %kasan_bitops_modify.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion17.i19) #14
  %232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i19, i32 0, i32 1
  %233 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i19, i32 0, i32 2
  %234 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i19, i32 0, i32 3
  %235 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i19, i32 0, i32 4
  %236 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i19, i32 0, i32 4, i32 1
  %237 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17.i19, i32 0, i32 5
  %238 = ptrtoint ptr %__assertion17.i19 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %test, ptr %__assertion17.i19, align 4
  %239 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1, ptr %232, align 4
  %240 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 986, ptr %233, align 4
  %241 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @.str.2, ptr %234, align 4
  %242 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %235, align 4
  %243 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %236, align 4
  %244 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @kunit_fail_assert_format, ptr %237, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17.i19, i1 noundef zeroext false, ptr noundef nonnull @.str.193) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion17.i19) #14
  br label %do.body34.i43

do.body34.i43:                                    ; preds = %do.body16.i31, %kasan_bitops_modify.exit.do.body34.i43_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion43.i20) #14
  %245 = getelementptr inbounds i8, ptr %__assertion43.i20, i32 32
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 16777215, ptr %245, align 4, !annotation !415
  %247 = ptrtoint ptr %__assertion43.i20 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %test, ptr %__assertion43.i20, align 4
  %type46.i32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i20, i32 0, i32 1
  %248 = ptrtoint ptr %type46.i32 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 1, ptr %type46.i32, align 4
  %line47.i33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i20, i32 0, i32 2
  %249 = ptrtoint ptr %line47.i33 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 987, ptr %line47.i33, align 4
  %file48.i34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i20, i32 0, i32 3
  %250 = ptrtoint ptr %file48.i34 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @.str.2, ptr %file48.i34, align 4
  %message49.i35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i20, i32 0, i32 4
  %251 = ptrtoint ptr %message49.i35 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %message49.i35, align 4
  %va51.i36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i20, i32 0, i32 4, i32 1
  %252 = ptrtoint ptr %va51.i36 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr null, ptr %va51.i36, align 4
  %format52.i37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43.i20, i32 0, i32 5
  %253 = ptrtoint ptr %format52.i37 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @kunit_unary_assert_format, ptr %format52.i37, align 4
  %condition53.i38 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion43.i20, i32 0, i32 1
  %254 = ptrtoint ptr %condition53.i38 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr @.str.194, ptr %condition53.i38, align 4
  %255 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %cmp67.i40 = icmp eq i8 %255, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43.i20, i1 noundef zeroext %cmp67.i40, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion43.i20) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !535
  %256 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i42 = or i32 %257, 256
  store i32 %or.i.i42, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !536
  %258 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool75.not.i = icmp eq i8 %258, 0
  br i1 %tobool75.not.i, label %do.body79.i, label %do.body34.i43.do.body98.i_crit_edge

do.body34.i43.do.body98.i_crit_edge:              ; preds = %do.body34.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body98.i

do.body79.i:                                      ; preds = %do.body34.i43
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion80.i) #14
  %259 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80.i, i32 0, i32 1
  %260 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80.i, i32 0, i32 2
  %261 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80.i, i32 0, i32 3
  %262 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80.i, i32 0, i32 4
  %263 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80.i, i32 0, i32 4, i32 1
  %264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion80.i, i32 0, i32 5
  %265 = ptrtoint ptr %__assertion80.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %test, ptr %__assertion80.i, align 4
  %266 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 1, ptr %259, align 4
  %267 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 987, ptr %260, align 4
  %268 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @.str.2, ptr %261, align 4
  %269 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr null, ptr %262, align 4
  %270 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr null, ptr %263, align 4
  %271 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr @kunit_fail_assert_format, ptr %264, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion80.i, i1 noundef zeroext false, ptr noundef nonnull @.str.195) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion80.i) #14
  br label %do.body98.i

do.body98.i:                                      ; preds = %do.body79.i, %do.body34.i43.do.body98.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion107.i) #14
  %272 = getelementptr inbounds i8, ptr %__assertion107.i, i32 32
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 16777215, ptr %272, align 4, !annotation !415
  %274 = ptrtoint ptr %__assertion107.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %test, ptr %__assertion107.i, align 4
  %type110.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107.i, i32 0, i32 1
  %275 = ptrtoint ptr %type110.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 1, ptr %type110.i, align 4
  %line111.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107.i, i32 0, i32 2
  %276 = ptrtoint ptr %line111.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 988, ptr %line111.i, align 4
  %file112.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107.i, i32 0, i32 3
  %277 = ptrtoint ptr %file112.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr @.str.2, ptr %file112.i, align 4
  %message113.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107.i, i32 0, i32 4
  %278 = ptrtoint ptr %message113.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr null, ptr %message113.i, align 4
  %va115.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107.i, i32 0, i32 4, i32 1
  %279 = ptrtoint ptr %va115.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr null, ptr %va115.i, align 4
  %format116.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107.i, i32 0, i32 5
  %280 = ptrtoint ptr %format116.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr @kunit_unary_assert_format, ptr %format116.i, align 4
  %condition117.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion107.i, i32 0, i32 1
  %281 = ptrtoint ptr %condition117.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @.str.196, ptr %condition117.i, align 4
  %282 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %cmp131.i = icmp eq i8 %282, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion107.i, i1 noundef zeroext %cmp131.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion107.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !537
  %call.i.i.i44 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #13
  %283 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load volatile i32, ptr %add.ptr.i.i, align 4
  %and.i.i.i45 = and i32 %284, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i45)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i45, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.body98.i.test_and_set_bit_lock.exit.i_crit_edge

do.body98.i.test_and_set_bit_lock.exit.i_crit_edge: ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_and_set_bit_lock.exit.i

if.end.i.i.i:                                     ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 1, i32 3, i32 1) #14
  %285 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i, ptr %add.ptr.i.i, i32 256, ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !538
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !539
  br label %test_and_set_bit_lock.exit.i

test_and_set_bit_lock.exit.i:                     ; preds = %if.end.i.i.i, %do.body98.i.test_and_set_bit_lock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !540
  %286 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool139.not.i = icmp eq i8 %286, 0
  br i1 %tobool139.not.i, label %do.body143.i, label %test_and_set_bit_lock.exit.i.do.body162.i_crit_edge

test_and_set_bit_lock.exit.i.do.body162.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body162.i

do.body143.i:                                     ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion144.i) #14
  %287 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion144.i, i32 0, i32 1
  %288 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion144.i, i32 0, i32 2
  %289 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion144.i, i32 0, i32 3
  %290 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion144.i, i32 0, i32 4
  %291 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion144.i, i32 0, i32 4, i32 1
  %292 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion144.i, i32 0, i32 5
  %293 = ptrtoint ptr %__assertion144.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %test, ptr %__assertion144.i, align 4
  %294 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 1, ptr %287, align 4
  %295 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 988, ptr %288, align 4
  %296 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr @.str.2, ptr %289, align 4
  %297 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr null, ptr %290, align 4
  %298 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr null, ptr %291, align 4
  %299 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr @kunit_fail_assert_format, ptr %292, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion144.i, i1 noundef zeroext false, ptr noundef nonnull @.str.197) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion144.i) #14
  br label %do.body162.i

do.body162.i:                                     ; preds = %do.body143.i, %test_and_set_bit_lock.exit.i.do.body162.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion171.i) #14
  %300 = getelementptr inbounds i8, ptr %__assertion171.i, i32 32
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 16777215, ptr %300, align 4, !annotation !415
  %302 = ptrtoint ptr %__assertion171.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %test, ptr %__assertion171.i, align 4
  %type174.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion171.i, i32 0, i32 1
  %303 = ptrtoint ptr %type174.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 1, ptr %type174.i, align 4
  %line175.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion171.i, i32 0, i32 2
  %304 = ptrtoint ptr %line175.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 989, ptr %line175.i, align 4
  %file176.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion171.i, i32 0, i32 3
  %305 = ptrtoint ptr %file176.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr @.str.2, ptr %file176.i, align 4
  %message177.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion171.i, i32 0, i32 4
  %306 = ptrtoint ptr %message177.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr null, ptr %message177.i, align 4
  %va179.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion171.i, i32 0, i32 4, i32 1
  %307 = ptrtoint ptr %va179.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr null, ptr %va179.i, align 4
  %format180.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion171.i, i32 0, i32 5
  %308 = ptrtoint ptr %format180.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr @kunit_unary_assert_format, ptr %format180.i, align 4
  %condition181.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion171.i, i32 0, i32 1
  %309 = ptrtoint ptr %condition181.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @.str.198, ptr %condition181.i, align 4
  %310 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %cmp195.i = icmp eq i8 %310, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion171.i, i1 noundef zeroext %cmp195.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion171.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !541
  %call198.i = call i32 @_test_and_clear_bit(i32 noundef 40, ptr noundef %call7.i.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !542
  %311 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool203.not.i = icmp eq i8 %311, 0
  br i1 %tobool203.not.i, label %do.body207.i, label %do.body162.i.do.body226.i_crit_edge

do.body162.i.do.body226.i_crit_edge:              ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body226.i

do.body207.i:                                     ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion208.i) #14
  %312 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208.i, i32 0, i32 1
  %313 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208.i, i32 0, i32 2
  %314 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208.i, i32 0, i32 3
  %315 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208.i, i32 0, i32 4
  %316 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208.i, i32 0, i32 4, i32 1
  %317 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208.i, i32 0, i32 5
  %318 = ptrtoint ptr %__assertion208.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %test, ptr %__assertion208.i, align 4
  %319 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 1, ptr %312, align 4
  %320 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 989, ptr %313, align 4
  %321 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr @.str.2, ptr %314, align 4
  %322 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr null, ptr %315, align 4
  %323 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr null, ptr %316, align 4
  %324 = ptrtoint ptr %317 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr @kunit_fail_assert_format, ptr %317, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion208.i, i1 noundef zeroext false, ptr noundef nonnull @.str.199) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion208.i) #14
  br label %do.body226.i

do.body226.i:                                     ; preds = %do.body207.i, %do.body162.i.do.body226.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion235.i) #14
  %325 = getelementptr inbounds i8, ptr %__assertion235.i, i32 32
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 16777215, ptr %325, align 4, !annotation !415
  %327 = ptrtoint ptr %__assertion235.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %test, ptr %__assertion235.i, align 4
  %type238.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion235.i, i32 0, i32 1
  %328 = ptrtoint ptr %type238.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 1, ptr %type238.i, align 4
  %line239.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion235.i, i32 0, i32 2
  %329 = ptrtoint ptr %line239.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 990, ptr %line239.i, align 4
  %file240.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion235.i, i32 0, i32 3
  %330 = ptrtoint ptr %file240.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr @.str.2, ptr %file240.i, align 4
  %message241.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion235.i, i32 0, i32 4
  %331 = ptrtoint ptr %message241.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr null, ptr %message241.i, align 4
  %va243.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion235.i, i32 0, i32 4, i32 1
  %332 = ptrtoint ptr %va243.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr null, ptr %va243.i, align 4
  %format244.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion235.i, i32 0, i32 5
  %333 = ptrtoint ptr %format244.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr @kunit_unary_assert_format, ptr %format244.i, align 4
  %condition245.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion235.i, i32 0, i32 1
  %334 = ptrtoint ptr %condition245.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr @.str.200, ptr %condition245.i, align 4
  %335 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %cmp259.i = icmp eq i8 %335, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion235.i, i1 noundef zeroext %cmp259.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion235.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !543
  %336 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i46 = and i32 %337, -257
  store i32 %and.i.i46, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !544
  %338 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool267.not.i = icmp eq i8 %338, 0
  br i1 %tobool267.not.i, label %do.body271.i, label %do.body226.i.do.body290.i_crit_edge

do.body226.i.do.body290.i_crit_edge:              ; preds = %do.body226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body290.i

do.body271.i:                                     ; preds = %do.body226.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion272.i) #14
  %339 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272.i, i32 0, i32 1
  %340 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272.i, i32 0, i32 2
  %341 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272.i, i32 0, i32 3
  %342 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272.i, i32 0, i32 4
  %343 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272.i, i32 0, i32 4, i32 1
  %344 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272.i, i32 0, i32 5
  %345 = ptrtoint ptr %__assertion272.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %test, ptr %__assertion272.i, align 4
  %346 = ptrtoint ptr %339 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 1, ptr %339, align 4
  %347 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 990, ptr %340, align 4
  %348 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr @.str.2, ptr %341, align 4
  %349 = ptrtoint ptr %342 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr null, ptr %342, align 4
  %350 = ptrtoint ptr %343 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr null, ptr %343, align 4
  %351 = ptrtoint ptr %344 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @kunit_fail_assert_format, ptr %344, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion272.i, i1 noundef zeroext false, ptr noundef nonnull @.str.201) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion272.i) #14
  br label %do.body290.i

do.body290.i:                                     ; preds = %do.body271.i, %do.body226.i.do.body290.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion299.i) #14
  %352 = getelementptr inbounds i8, ptr %__assertion299.i, i32 32
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 16777215, ptr %352, align 4, !annotation !415
  %354 = ptrtoint ptr %__assertion299.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %test, ptr %__assertion299.i, align 4
  %type302.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion299.i, i32 0, i32 1
  %355 = ptrtoint ptr %type302.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 1, ptr %type302.i, align 4
  %line303.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion299.i, i32 0, i32 2
  %356 = ptrtoint ptr %line303.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 991, ptr %line303.i, align 4
  %file304.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion299.i, i32 0, i32 3
  %357 = ptrtoint ptr %file304.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr @.str.2, ptr %file304.i, align 4
  %message305.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion299.i, i32 0, i32 4
  %358 = ptrtoint ptr %message305.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr null, ptr %message305.i, align 4
  %va307.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion299.i, i32 0, i32 4, i32 1
  %359 = ptrtoint ptr %va307.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr null, ptr %va307.i, align 4
  %format308.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion299.i, i32 0, i32 5
  %360 = ptrtoint ptr %format308.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr @kunit_unary_assert_format, ptr %format308.i, align 4
  %condition309.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion299.i, i32 0, i32 1
  %361 = ptrtoint ptr %condition309.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr @.str.202, ptr %condition309.i, align 4
  %362 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %cmp323.i = icmp eq i8 %362, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion299.i, i1 noundef zeroext %cmp323.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion299.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !545
  %call326.i = call i32 @_test_and_change_bit(i32 noundef 40, ptr noundef %call7.i.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !546
  %363 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool331.not.i = icmp eq i8 %363, 0
  br i1 %tobool331.not.i, label %do.body335.i, label %do.body290.i.do.body354.i_crit_edge

do.body290.i.do.body354.i_crit_edge:              ; preds = %do.body290.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body354.i

do.body335.i:                                     ; preds = %do.body290.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion336.i) #14
  %364 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion336.i, i32 0, i32 1
  %365 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion336.i, i32 0, i32 2
  %366 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion336.i, i32 0, i32 3
  %367 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion336.i, i32 0, i32 4
  %368 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion336.i, i32 0, i32 4, i32 1
  %369 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion336.i, i32 0, i32 5
  %370 = ptrtoint ptr %__assertion336.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %test, ptr %__assertion336.i, align 4
  %371 = ptrtoint ptr %364 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 1, ptr %364, align 4
  %372 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 991, ptr %365, align 4
  %373 = ptrtoint ptr %366 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr @.str.2, ptr %366, align 4
  %374 = ptrtoint ptr %367 to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr null, ptr %367, align 4
  %375 = ptrtoint ptr %368 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr null, ptr %368, align 4
  %376 = ptrtoint ptr %369 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr @kunit_fail_assert_format, ptr %369, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion336.i, i1 noundef zeroext false, ptr noundef nonnull @.str.203) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion336.i) #14
  br label %do.body354.i

do.body354.i:                                     ; preds = %do.body335.i, %do.body290.i.do.body354.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion363.i) #14
  %377 = getelementptr inbounds i8, ptr %__assertion363.i, i32 32
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 16777215, ptr %377, align 4, !annotation !415
  %379 = ptrtoint ptr %__assertion363.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %test, ptr %__assertion363.i, align 4
  %type366.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion363.i, i32 0, i32 1
  %380 = ptrtoint ptr %type366.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 1, ptr %type366.i, align 4
  %line367.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion363.i, i32 0, i32 2
  %381 = ptrtoint ptr %line367.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 992, ptr %line367.i, align 4
  %file368.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion363.i, i32 0, i32 3
  %382 = ptrtoint ptr %file368.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr @.str.2, ptr %file368.i, align 4
  %message369.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion363.i, i32 0, i32 4
  %383 = ptrtoint ptr %message369.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr null, ptr %message369.i, align 4
  %va371.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion363.i, i32 0, i32 4, i32 1
  %384 = ptrtoint ptr %va371.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr null, ptr %va371.i, align 4
  %format372.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion363.i, i32 0, i32 5
  %385 = ptrtoint ptr %format372.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr @kunit_unary_assert_format, ptr %format372.i, align 4
  %condition373.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion363.i, i32 0, i32 1
  %386 = ptrtoint ptr %condition373.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr @.str.204, ptr %condition373.i, align 4
  %387 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %cmp387.i = icmp eq i8 %387, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion363.i, i1 noundef zeroext %cmp387.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion363.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !547
  %388 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i47 = xor i32 %389, 256
  store i32 %xor.i.i47, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !548
  %390 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool395.not.i = icmp eq i8 %390, 0
  br i1 %tobool395.not.i, label %do.body399.i, label %do.body354.i.do.body418.i_crit_edge

do.body354.i.do.body418.i_crit_edge:              ; preds = %do.body354.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body418.i

do.body399.i:                                     ; preds = %do.body354.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion400.i) #14
  %391 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion400.i, i32 0, i32 1
  %392 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion400.i, i32 0, i32 2
  %393 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion400.i, i32 0, i32 3
  %394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion400.i, i32 0, i32 4
  %395 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion400.i, i32 0, i32 4, i32 1
  %396 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion400.i, i32 0, i32 5
  %397 = ptrtoint ptr %__assertion400.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %test, ptr %__assertion400.i, align 4
  %398 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 1, ptr %391, align 4
  %399 = ptrtoint ptr %392 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 992, ptr %392, align 4
  %400 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr @.str.2, ptr %393, align 4
  %401 = ptrtoint ptr %394 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr null, ptr %394, align 4
  %402 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr null, ptr %395, align 4
  %403 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr @kunit_fail_assert_format, ptr %396, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion400.i, i1 noundef zeroext false, ptr noundef nonnull @.str.205) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion400.i) #14
  br label %do.body418.i

do.body418.i:                                     ; preds = %do.body399.i, %do.body354.i.do.body418.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion427.i) #14
  %404 = getelementptr inbounds i8, ptr %__assertion427.i, i32 32
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 16777215, ptr %404, align 4, !annotation !415
  %406 = ptrtoint ptr %__assertion427.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %test, ptr %__assertion427.i, align 4
  %type430.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion427.i, i32 0, i32 1
  %407 = ptrtoint ptr %type430.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 1, ptr %type430.i, align 4
  %line431.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion427.i, i32 0, i32 2
  %408 = ptrtoint ptr %line431.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 993, ptr %line431.i, align 4
  %file432.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion427.i, i32 0, i32 3
  %409 = ptrtoint ptr %file432.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr @.str.2, ptr %file432.i, align 4
  %message433.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion427.i, i32 0, i32 4
  %410 = ptrtoint ptr %message433.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr null, ptr %message433.i, align 4
  %va435.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion427.i, i32 0, i32 4, i32 1
  %411 = ptrtoint ptr %va435.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr null, ptr %va435.i, align 4
  %format436.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion427.i, i32 0, i32 5
  %412 = ptrtoint ptr %format436.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr @kunit_unary_assert_format, ptr %format436.i, align 4
  %condition437.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion427.i, i32 0, i32 1
  %413 = ptrtoint ptr %condition437.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr @.str.206, ptr %condition437.i, align 4
  %414 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %414)
  %cmp451.i = icmp eq i8 %414, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion427.i, i1 noundef zeroext %cmp451.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion427.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !549
  %415 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load volatile i32, ptr %add.ptr.i.i, align 4
  %shr.i.i = lshr i32 %416, 8
  %and1.i.i = and i32 %shr.i.i, 1
  store i32 %and1.i.i, ptr @kasan_int_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !550
  %417 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool459.not.i = icmp eq i8 %417, 0
  br i1 %tobool459.not.i, label %do.body463.i, label %do.body418.i.do.body482.i_crit_edge

do.body418.i.do.body482.i_crit_edge:              ; preds = %do.body418.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body482.i

do.body463.i:                                     ; preds = %do.body418.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion464.i) #14
  %418 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion464.i, i32 0, i32 1
  %419 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion464.i, i32 0, i32 2
  %420 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion464.i, i32 0, i32 3
  %421 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion464.i, i32 0, i32 4
  %422 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion464.i, i32 0, i32 4, i32 1
  %423 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion464.i, i32 0, i32 5
  %424 = ptrtoint ptr %__assertion464.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %test, ptr %__assertion464.i, align 4
  %425 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 1, ptr %418, align 4
  %426 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 993, ptr %419, align 4
  %427 = ptrtoint ptr %420 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr @.str.2, ptr %420, align 4
  %428 = ptrtoint ptr %421 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr null, ptr %421, align 4
  %429 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr null, ptr %422, align 4
  %430 = ptrtoint ptr %423 to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr @kunit_fail_assert_format, ptr %423, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion464.i, i1 noundef zeroext false, ptr noundef nonnull @.str.207) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion464.i) #14
  br label %do.body482.i

do.body482.i:                                     ; preds = %do.body463.i, %do.body418.i.do.body482.i_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion491.i) #14
  %431 = getelementptr inbounds i8, ptr %__assertion491.i, i32 32
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 16777215, ptr %431, align 4, !annotation !415
  %433 = ptrtoint ptr %__assertion491.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %test, ptr %__assertion491.i, align 4
  %type494.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion491.i, i32 0, i32 1
  %434 = ptrtoint ptr %type494.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 1, ptr %type494.i, align 4
  %line495.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion491.i, i32 0, i32 2
  %435 = ptrtoint ptr %line495.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 997, ptr %line495.i, align 4
  %file496.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion491.i, i32 0, i32 3
  %436 = ptrtoint ptr %file496.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr @.str.2, ptr %file496.i, align 4
  %message497.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion491.i, i32 0, i32 4
  %437 = ptrtoint ptr %message497.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr null, ptr %message497.i, align 4
  %va499.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion491.i, i32 0, i32 4, i32 1
  %438 = ptrtoint ptr %va499.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr null, ptr %va499.i, align 4
  %format500.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion491.i, i32 0, i32 5
  %439 = ptrtoint ptr %format500.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr @kunit_unary_assert_format, ptr %format500.i, align 4
  %condition501.i = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion491.i, i32 0, i32 1
  %440 = ptrtoint ptr %condition501.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr @.str.208, ptr %condition501.i, align 4
  %441 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %cmp515.i = icmp eq i8 %441, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion491.i, i1 noundef zeroext %cmp515.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion491.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !551
  %call.i.i5.i48 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !523
  call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 1, i32 3, i32 1) #14
  %442 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i, ptr %add.ptr.i.i, i32 256, ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !524
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %442, 0
  %and.i.i6.i = lshr i32 %asmresult.i.i.i.i.i.i, 7
  %and.i.i6.lobit.i = and i32 %and.i.i6.i, 1
  store i32 %and.i.i6.lobit.i, ptr @kasan_int_result, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !552
  %443 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool523.not.i = icmp eq i8 %443, 0
  br i1 %tobool523.not.i, label %do.body527.i, label %do.body482.i.kasan_bitops_test_and_modify.exit_crit_edge

do.body482.i.kasan_bitops_test_and_modify.exit_crit_edge: ; preds = %do.body482.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kasan_bitops_test_and_modify.exit

do.body527.i:                                     ; preds = %do.body482.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion528.i) #14
  %444 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion528.i, i32 0, i32 1
  %445 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion528.i, i32 0, i32 2
  %446 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion528.i, i32 0, i32 3
  %447 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion528.i, i32 0, i32 4
  %448 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion528.i, i32 0, i32 4, i32 1
  %449 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion528.i, i32 0, i32 5
  %450 = ptrtoint ptr %__assertion528.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %test, ptr %__assertion528.i, align 4
  %451 = ptrtoint ptr %444 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 1, ptr %444, align 4
  %452 = ptrtoint ptr %445 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 997, ptr %445, align 4
  %453 = ptrtoint ptr %446 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr @.str.2, ptr %446, align 4
  %454 = ptrtoint ptr %447 to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr null, ptr %447, align 4
  %455 = ptrtoint ptr %448 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr null, ptr %448, align 4
  %456 = ptrtoint ptr %449 to i32
  call void @__asan_store4_noabort(i32 %456)
  store ptr @kunit_fail_assert_format, ptr %449, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion528.i, i1 noundef zeroext false, ptr noundef nonnull @.str.209) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion528.i) #14
  br label %kasan_bitops_test_and_modify.exit

kasan_bitops_test_and_modify.exit:                ; preds = %do.body527.i, %do.body482.i.kasan_bitops_test_and_modify.exit_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call7.i.i) #13
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kasan_bitops_tags(ptr noundef %test) #4 align 64 {
entry:
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.74) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmalloc_double_kzfree(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion36 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #14
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
  store i32 1054, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.57, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call7.i, null
  %cmp.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #14
  call void @kfree_sensitive(ptr noundef %call7.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #14
  %10 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !415
  %12 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %14 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1057, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %16 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %19 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.210, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %20 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %expected_true, align 4
  %21 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !553
  call void @kfree_sensitive(ptr noundef %call7.i) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !554
  %22 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not = icmp eq i8 %22, 0
  br i1 %tobool32.not, label %do.body35, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion36) #14
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 2
  %25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4
  %27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 4, i32 1
  %28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36, i32 0, i32 5
  %29 = ptrtoint ptr %__assertion36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion36, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1057, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.2, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %26, align 4
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %27, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_fail_assert_format, ptr %28, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36, i1 noundef zeroext false, ptr noundef nonnull @.str.211) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion36) #14
  br label %do.body53

do.body53:                                        ; preds = %do.body35, %entry.do.body53_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmalloc_oob(ptr noundef %test) #4 align 64 {
entry:
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.212) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @match_all_not_assigned(ptr noundef %test) #4 align 64 {
entry:
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.74) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @match_all_ptr_tag(ptr noundef %test) #4 align 64 {
entry:
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.74) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @match_all_mem_tag(ptr noundef %test) #4 align 64 {
entry:
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.74) #13
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #17
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_fail_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kunit_try_catch_throw(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @krealloc_more_oob_helper(ptr noundef %test, i32 noundef %size1, i32 noundef %size2) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion10 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion30 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion56 = alloca %struct.kunit_unary_assert, align 4
  %__assertion86 = alloca %struct.kunit_fail_assert, align 4
  %__assertion112 = alloca %struct.kunit_unary_assert, align 4
  %__assertion152 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #14
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 278, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.80, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.81, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %size1 to i64
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.82, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = zext i32 %size2 to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size2, i32 %size1)
  %cmp = icmp ugt i32 %size2, %size1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #14
  %sub = sub i32 %size2, %size1
  %div212 = lshr i32 %sub, 1
  %add = add i32 %div212, %size1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size1, i32 noundef 3264) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion10) #14
  %14 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion10, align 4
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %15 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %16 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 282, ptr %line14, align 4
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %17 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %18 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message16, align 4
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %20 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format19, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion10, i32 0, i32 1
  %21 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.83, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion10, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call9.i, null
  %cmp.i213 = icmp ule ptr %call9.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i213
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion10) #14
  %call26 = call noalias ptr @krealloc(ptr noundef %call9.i, i32 noundef %size2, i32 noundef 3264) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion30) #14
  %23 = ptrtoint ptr %__assertion30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %test, ptr %__assertion30, align 4
  %type33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 1
  %24 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type33, align 4
  %line34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 2
  %25 = ptrtoint ptr %line34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 285, ptr %line34, align 4
  %file35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 3
  %26 = ptrtoint ptr %file35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.2, ptr %file35, align 4
  %message36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4
  %27 = ptrtoint ptr %message36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %message36, align 4
  %va38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %va38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %va38, align 4
  %format39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 5
  %29 = ptrtoint ptr %format39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format39, align 4
  %text40 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion30, i32 0, i32 1
  %30 = ptrtoint ptr %text40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.84, ptr %text40, align 4
  %value41 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion30, i32 0, i32 2
  %31 = ptrtoint ptr %value41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call26, ptr %value41, align 4
  %tobool.not.i214 = icmp ne ptr %call26, null
  %cmp.i215 = icmp ule ptr %call26, inttoptr (i32 -4096 to ptr)
  %lnot44 = and i1 %tobool.not.i214, %cmp.i215
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion30, i1 noundef zeroext %lnot44, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion30) #14
  %sub49 = add i32 %size1, -1
  %arrayidx = getelementptr i8, ptr %call26, i32 %sub49
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 120, ptr %arrayidx, align 1
  %arrayidx50 = getelementptr i8, ptr %call26, i32 %size1
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 120, ptr %arrayidx50, align 1
  %arrayidx51 = getelementptr i8, ptr %call26, i32 %add
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 120, ptr %arrayidx51, align 1
  %sub52 = add i32 %size2, -1
  %arrayidx53 = getelementptr i8, ptr %call26, i32 %sub52
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 120, ptr %arrayidx53, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion56) #14
  %36 = getelementptr inbounds i8, ptr %__assertion56, i32 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %36, align 4, !annotation !415
  %38 = ptrtoint ptr %__assertion56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %test, ptr %__assertion56, align 4
  %type59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 1
  %39 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %type59, align 4
  %line60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 2
  %40 = ptrtoint ptr %line60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 295, ptr %line60, align 4
  %file61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 3
  %41 = ptrtoint ptr %file61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.2, ptr %file61, align 4
  %message62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4
  %42 = ptrtoint ptr %message62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %message62, align 4
  %va64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %va64 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %va64, align 4
  %format65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 5
  %44 = ptrtoint ptr %format65 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @kunit_unary_assert_format, ptr %format65, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion56, i32 0, i32 1
  %45 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.85, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion56, i32 0, i32 2
  %46 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %expected_true, align 4
  %47 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp73 = icmp eq i8 %47, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion56, i1 noundef zeroext %cmp73, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion56) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !555
  %arrayidx77 = getelementptr i8, ptr %call26, i32 %size2
  %48 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 120, ptr %arrayidx77, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !556
  %49 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool82.not = icmp eq i8 %49, 0
  br i1 %tobool82.not, label %do.body85, label %entry.do.body103_crit_edge

entry.do.body103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body103

do.body85:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion86) #14
  %50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 1
  %51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 2
  %52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 3
  %53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4
  %54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4, i32 1
  %55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 5
  %56 = ptrtoint ptr %__assertion86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %test, ptr %__assertion86, align 4
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %50, align 4
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 295, ptr %51, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.2, ptr %52, align 4
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %53, align 4
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %54, align 4
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @kunit_fail_assert_format, ptr %55, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion86, i1 noundef zeroext false, ptr noundef nonnull @.str.86) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion86) #14
  br label %do.body103

do.body103:                                       ; preds = %do.body85, %entry.do.body103_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion112) #14
  %63 = getelementptr inbounds i8, ptr %__assertion112, i32 32
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %63, align 4, !annotation !415
  %65 = ptrtoint ptr %__assertion112 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion112, align 4
  %type115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion112, i32 0, i32 1
  %66 = ptrtoint ptr %type115 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type115, align 4
  %line116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion112, i32 0, i32 2
  %67 = ptrtoint ptr %line116 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 299, ptr %line116, align 4
  %file117 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion112, i32 0, i32 3
  %68 = ptrtoint ptr %file117 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.2, ptr %file117, align 4
  %message118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion112, i32 0, i32 4
  %69 = ptrtoint ptr %message118 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message118, align 4
  %va120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion112, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va120 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va120, align 4
  %format121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion112, i32 0, i32 5
  %71 = ptrtoint ptr %format121 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_unary_assert_format, ptr %format121, align 4
  %condition122 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion112, i32 0, i32 1
  %72 = ptrtoint ptr %condition122 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.87, ptr %condition122, align 4
  %expected_true123 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion112, i32 0, i32 2
  %73 = ptrtoint ptr %expected_true123 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %expected_true123, align 4
  %74 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp136 = icmp eq i8 %74, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion112, i1 noundef zeroext %cmp136, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion112) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !557
  %or = or i32 %sub52, 7
  %add141 = add i32 %or, 1
  %arrayidx142 = getelementptr i8, ptr %call26, i32 %add141
  %75 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 120, ptr %arrayidx142, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !558
  %76 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool147.not = icmp eq i8 %76, 0
  br i1 %tobool147.not, label %do.body151, label %do.body103.do.body170_crit_edge

do.body103.do.body170_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body170

do.body151:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion152) #14
  %77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 1
  %78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 2
  %79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 3
  %80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 4
  %81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 4, i32 1
  %82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion152, i32 0, i32 5
  %83 = ptrtoint ptr %__assertion152 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %test, ptr %__assertion152, align 4
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %77, align 4
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 299, ptr %78, align 4
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.2, ptr %79, align 4
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %80, align 4
  %88 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %81, align 4
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @kunit_fail_assert_format, ptr %82, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion152, i1 noundef zeroext false, ptr noundef nonnull @.str.88) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion152) #14
  br label %do.body170

do.body170:                                       ; preds = %do.body151, %do.body103.do.body170_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call26) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @krealloc_less_oob_helper(ptr noundef %test, i32 noundef %size1, i32 noundef %size2) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion10 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion30 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion52 = alloca %struct.kunit_unary_assert, align 4
  %__assertion82 = alloca %struct.kunit_fail_assert, align 4
  %__assertion108 = alloca %struct.kunit_unary_assert, align 4
  %__assertion148 = alloca %struct.kunit_fail_assert, align 4
  %__assertion180 = alloca %struct.kunit_binary_assert, align 8
  %__assertion212 = alloca %struct.kunit_binary_assert, align 8
  %__assertion238 = alloca %struct.kunit_unary_assert, align 4
  %__assertion276 = alloca %struct.kunit_fail_assert, align 4
  %__assertion303 = alloca %struct.kunit_unary_assert, align 4
  %__assertion342 = alloca %struct.kunit_fail_assert, align 4
  %__assertion369 = alloca %struct.kunit_unary_assert, align 4
  %__assertion407 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #14
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 310, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.80, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.82, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %size2 to i64
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.81, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = zext i32 %size1 to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size1, i32 %size2)
  %cmp = icmp ugt i32 %size1, %size2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #14
  %sub = sub i32 %size1, %size2
  %div491 = lshr i32 %sub, 1
  %add = add i32 %div491, %size2
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size1, i32 noundef 3264) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion10) #14
  %14 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion10, align 4
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %15 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %16 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 314, ptr %line14, align 4
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %17 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %18 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message16, align 4
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %20 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format19, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion10, i32 0, i32 1
  %21 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.83, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion10, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call9.i, null
  %cmp.i492 = icmp ule ptr %call9.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i492
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %lnot, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion10) #14
  %call26 = call noalias ptr @krealloc(ptr noundef %call9.i, i32 noundef %size2, i32 noundef 3264) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion30) #14
  %23 = ptrtoint ptr %__assertion30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %test, ptr %__assertion30, align 4
  %type33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 1
  %24 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type33, align 4
  %line34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 2
  %25 = ptrtoint ptr %line34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 317, ptr %line34, align 4
  %file35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 3
  %26 = ptrtoint ptr %file35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.2, ptr %file35, align 4
  %message36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4
  %27 = ptrtoint ptr %message36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %message36, align 4
  %va38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %va38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %va38, align 4
  %format39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 5
  %29 = ptrtoint ptr %format39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format39, align 4
  %text40 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion30, i32 0, i32 1
  %30 = ptrtoint ptr %text40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.84, ptr %text40, align 4
  %value41 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion30, i32 0, i32 2
  %31 = ptrtoint ptr %value41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call26, ptr %value41, align 4
  %tobool.not.i493 = icmp ne ptr %call26, null
  %cmp.i494 = icmp ule ptr %call26, inttoptr (i32 -4096 to ptr)
  %lnot44 = and i1 %tobool.not.i493, %cmp.i494
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion30, i1 noundef zeroext %lnot44, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion30) #14
  %sub49 = add i32 %size2, -1
  %arrayidx = getelementptr i8, ptr %call26, i32 %sub49
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 120, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion52) #14
  %33 = getelementptr inbounds i8, ptr %__assertion52, i32 32
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4, !annotation !415
  %35 = ptrtoint ptr %__assertion52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion52, align 4
  %type55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 1
  %36 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type55, align 4
  %line56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 2
  %37 = ptrtoint ptr %line56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 324, ptr %line56, align 4
  %file57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 3
  %38 = ptrtoint ptr %file57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.2, ptr %file57, align 4
  %message58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4
  %39 = ptrtoint ptr %message58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message58, align 4
  %va60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va60, align 4
  %format61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 5
  %41 = ptrtoint ptr %format61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_unary_assert_format, ptr %format61, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion52, i32 0, i32 1
  %42 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.89, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion52, i32 0, i32 2
  %43 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %expected_true, align 4
  %44 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp69 = icmp eq i8 %44, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion52, i1 noundef zeroext %cmp69, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion52) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !559
  %arrayidx73 = getelementptr i8, ptr %call26, i32 %size2
  %45 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 120, ptr %arrayidx73, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !560
  %46 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool78.not = icmp eq i8 %46, 0
  br i1 %tobool78.not, label %do.body81, label %entry.do.body99_crit_edge

entry.do.body99_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

do.body81:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion82) #14
  %47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 1
  %48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 2
  %49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 3
  %50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 4
  %51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 4, i32 1
  %52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 5
  %53 = ptrtoint ptr %__assertion82 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %test, ptr %__assertion82, align 4
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %47, align 4
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 324, ptr %48, align 4
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.2, ptr %49, align 4
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %50, align 4
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %51, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @kunit_fail_assert_format, ptr %52, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion82, i1 noundef zeroext false, ptr noundef nonnull @.str.86) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion82) #14
  br label %do.body99

do.body99:                                        ; preds = %do.body81, %entry.do.body99_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion108) #14
  %60 = getelementptr inbounds i8, ptr %__assertion108, i32 32
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %60, align 4, !annotation !415
  %62 = ptrtoint ptr %__assertion108 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %test, ptr %__assertion108, align 4
  %type111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion108, i32 0, i32 1
  %63 = ptrtoint ptr %type111 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %type111, align 4
  %line112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion108, i32 0, i32 2
  %64 = ptrtoint ptr %line112 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 328, ptr %line112, align 4
  %file113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion108, i32 0, i32 3
  %65 = ptrtoint ptr %file113 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.2, ptr %file113, align 4
  %message114 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion108, i32 0, i32 4
  %66 = ptrtoint ptr %message114 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %message114, align 4
  %va116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion108, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %va116 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %va116, align 4
  %format117 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion108, i32 0, i32 5
  %68 = ptrtoint ptr %format117 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @kunit_unary_assert_format, ptr %format117, align 4
  %condition118 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion108, i32 0, i32 1
  %69 = ptrtoint ptr %condition118 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.90, ptr %condition118, align 4
  %expected_true119 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion108, i32 0, i32 2
  %70 = ptrtoint ptr %expected_true119 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %expected_true119, align 4
  %71 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp132 = icmp eq i8 %71, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion108, i1 noundef zeroext %cmp132, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion108) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !561
  %or = or i32 %sub49, 7
  %add137 = add i32 %or, 1
  %arrayidx138 = getelementptr i8, ptr %call26, i32 %add137
  %72 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 120, ptr %arrayidx138, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !562
  %73 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool143.not = icmp eq i8 %73, 0
  br i1 %tobool143.not, label %do.body147, label %do.body99.do.body166_crit_edge

do.body99.do.body166_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body166

do.body147:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion148) #14
  %74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion148, i32 0, i32 1
  %75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion148, i32 0, i32 2
  %76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion148, i32 0, i32 3
  %77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion148, i32 0, i32 4
  %78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion148, i32 0, i32 4, i32 1
  %79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion148, i32 0, i32 5
  %80 = ptrtoint ptr %__assertion148 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %test, ptr %__assertion148, align 4
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %74, align 4
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 328, ptr %75, align 4
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.2, ptr %76, align 4
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %77, align 4
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %78, align 4
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @kunit_fail_assert_format, ptr %79, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion148, i1 noundef zeroext false, ptr noundef nonnull @.str.88) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion148) #14
  br label %do.body166

do.body166:                                       ; preds = %do.body147, %do.body99.do.body166_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  %and = and i32 %add, -8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion180) #14
  %87 = getelementptr inbounds i8, ptr %__assertion180, i32 32
  %88 = call ptr @memset(ptr %87, i32 255, i32 24)
  %89 = ptrtoint ptr %__assertion180 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %test, ptr %__assertion180, align 8
  %type183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 1
  %90 = ptrtoint ptr %type183 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %type183, align 4
  %line184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 2
  %91 = ptrtoint ptr %line184 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 335, ptr %line184, align 8
  %file185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 3
  %92 = ptrtoint ptr %file185 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.2, ptr %file185, align 4
  %message186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 4
  %93 = ptrtoint ptr %message186 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %message186, align 8
  %va188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 4, i32 1
  %94 = ptrtoint ptr %va188 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %va188, align 4
  %format189 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion180, i32 0, i32 5
  %95 = ptrtoint ptr %format189 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @kunit_binary_assert_format, ptr %format189, align 8
  %operation190 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 1
  %96 = ptrtoint ptr %operation190 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.91, ptr %operation190, align 4
  %left_text191 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 2
  %97 = ptrtoint ptr %left_text191 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.92, ptr %left_text191, align 8
  %left_value192 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 3
  %conv193 = zext i32 %add137 to i64
  %98 = ptrtoint ptr %left_value192 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv193, ptr %left_value192, align 8
  %right_text194 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 4
  %99 = ptrtoint ptr %right_text194 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.93, ptr %right_text194, align 8
  %right_value195 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion180, i32 0, i32 5
  %conv196 = zext i32 %and to i64
  %100 = ptrtoint ptr %right_value195 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv196, ptr %right_value195, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add137, i32 %and)
  %cmp198 = icmp ule i32 %add137, %and
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion180, i1 noundef zeroext %cmp198, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion180) #14
  %sub206 = add i32 %add, -1
  %or207 = or i32 %sub206, 7
  %add208 = add i32 %or207, 1
  %and210 = and i32 %size1, -8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion212) #14
  %101 = getelementptr inbounds i8, ptr %__assertion212, i32 32
  %102 = call ptr @memset(ptr %101, i32 255, i32 24)
  %103 = ptrtoint ptr %__assertion212 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %test, ptr %__assertion212, align 8
  %type215 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion212, i32 0, i32 1
  %104 = ptrtoint ptr %type215 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %type215, align 4
  %line216 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion212, i32 0, i32 2
  %105 = ptrtoint ptr %line216 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 337, ptr %line216, align 8
  %file217 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion212, i32 0, i32 3
  %106 = ptrtoint ptr %file217 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.2, ptr %file217, align 4
  %message218 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion212, i32 0, i32 4
  %107 = ptrtoint ptr %message218 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %message218, align 8
  %va220 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion212, i32 0, i32 4, i32 1
  %108 = ptrtoint ptr %va220 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %va220, align 4
  %format221 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion212, i32 0, i32 5
  %109 = ptrtoint ptr %format221 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @kunit_binary_assert_format, ptr %format221, align 8
  %operation222 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion212, i32 0, i32 1
  %110 = ptrtoint ptr %operation222 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.91, ptr %operation222, align 4
  %left_text223 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion212, i32 0, i32 2
  %111 = ptrtoint ptr %left_text223 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.94, ptr %left_text223, align 8
  %left_value224 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion212, i32 0, i32 3
  %conv225 = zext i32 %add208 to i64
  %112 = ptrtoint ptr %left_value224 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv225, ptr %left_value224, align 8
  %right_text226 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion212, i32 0, i32 4
  %113 = ptrtoint ptr %right_text226 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.95, ptr %right_text226, align 8
  %right_value227 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion212, i32 0, i32 5
  %conv228 = zext i32 %and210 to i64
  %114 = ptrtoint ptr %right_value227 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv228, ptr %right_value227, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add208, i32 %and210)
  %cmp230 = icmp ule i32 %add208, %and210
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion212, i1 noundef zeroext %cmp230, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion212) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion238) #14
  %115 = getelementptr inbounds i8, ptr %__assertion238, i32 32
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %115, align 4, !annotation !415
  %117 = ptrtoint ptr %__assertion238 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %test, ptr %__assertion238, align 4
  %type241 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion238, i32 0, i32 1
  %118 = ptrtoint ptr %type241 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %type241, align 4
  %line242 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion238, i32 0, i32 2
  %119 = ptrtoint ptr %line242 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 338, ptr %line242, align 4
  %file243 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion238, i32 0, i32 3
  %120 = ptrtoint ptr %file243 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.2, ptr %file243, align 4
  %message244 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion238, i32 0, i32 4
  %121 = ptrtoint ptr %message244 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %message244, align 4
  %va246 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion238, i32 0, i32 4, i32 1
  %122 = ptrtoint ptr %va246 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %va246, align 4
  %format247 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion238, i32 0, i32 5
  %123 = ptrtoint ptr %format247 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @kunit_unary_assert_format, ptr %format247, align 4
  %condition248 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion238, i32 0, i32 1
  %124 = ptrtoint ptr %condition248 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.96, ptr %condition248, align 4
  %expected_true249 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion238, i32 0, i32 2
  %125 = ptrtoint ptr %expected_true249 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %expected_true249, align 4
  %126 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp262 = icmp eq i8 %126, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion238, i1 noundef zeroext %cmp262, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion238) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !563
  %arrayidx266 = getelementptr i8, ptr %call26, i32 %add
  %127 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 120, ptr %arrayidx266, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !564
  %128 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool271.not = icmp eq i8 %128, 0
  br i1 %tobool271.not, label %do.body275, label %do.body166.do.body294_crit_edge

do.body166.do.body294_crit_edge:                  ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body294

do.body275:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion276) #14
  %129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion276, i32 0, i32 1
  %130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion276, i32 0, i32 2
  %131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion276, i32 0, i32 3
  %132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion276, i32 0, i32 4
  %133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion276, i32 0, i32 4, i32 1
  %134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion276, i32 0, i32 5
  %135 = ptrtoint ptr %__assertion276 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %test, ptr %__assertion276, align 4
  %136 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %129, align 4
  %137 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 338, ptr %130, align 4
  %138 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.2, ptr %131, align 4
  %139 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %132, align 4
  %140 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %133, align 4
  %141 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @kunit_fail_assert_format, ptr %134, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion276, i1 noundef zeroext false, ptr noundef nonnull @.str.97) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion276) #14
  br label %do.body294

do.body294:                                       ; preds = %do.body275, %do.body166.do.body294_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion303) #14
  %142 = getelementptr inbounds i8, ptr %__assertion303, i32 32
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %142, align 4, !annotation !415
  %144 = ptrtoint ptr %__assertion303 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %test, ptr %__assertion303, align 4
  %type306 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 1
  %145 = ptrtoint ptr %type306 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %type306, align 4
  %line307 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 2
  %146 = ptrtoint ptr %line307 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 339, ptr %line307, align 4
  %file308 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 3
  %147 = ptrtoint ptr %file308 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.2, ptr %file308, align 4
  %message309 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 4
  %148 = ptrtoint ptr %message309 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %message309, align 4
  %va311 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %va311 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %va311, align 4
  %format312 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 5
  %150 = ptrtoint ptr %format312 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @kunit_unary_assert_format, ptr %format312, align 4
  %condition313 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion303, i32 0, i32 1
  %151 = ptrtoint ptr %condition313 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.98, ptr %condition313, align 4
  %expected_true314 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion303, i32 0, i32 2
  %152 = ptrtoint ptr %expected_true314 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %expected_true314, align 4
  %153 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp327 = icmp eq i8 %153, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion303, i1 noundef zeroext %cmp327, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion303) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !565
  %sub331 = add i32 %size1, -1
  %arrayidx332 = getelementptr i8, ptr %call26, i32 %sub331
  %154 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 120, ptr %arrayidx332, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !566
  %155 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool337.not = icmp eq i8 %155, 0
  br i1 %tobool337.not, label %do.body341, label %do.body294.do.body360_crit_edge

do.body294.do.body360_crit_edge:                  ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body360

do.body341:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion342) #14
  %156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion342, i32 0, i32 1
  %157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion342, i32 0, i32 2
  %158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion342, i32 0, i32 3
  %159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion342, i32 0, i32 4
  %160 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion342, i32 0, i32 4, i32 1
  %161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion342, i32 0, i32 5
  %162 = ptrtoint ptr %__assertion342 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %test, ptr %__assertion342, align 4
  %163 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %156, align 4
  %164 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 339, ptr %157, align 4
  %165 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @.str.2, ptr %158, align 4
  %166 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %159, align 4
  %167 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %160, align 4
  %168 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @kunit_fail_assert_format, ptr %161, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion342, i1 noundef zeroext false, ptr noundef nonnull @.str.99) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion342) #14
  br label %do.body360

do.body360:                                       ; preds = %do.body341, %do.body294.do.body360_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion369) #14
  %169 = getelementptr inbounds i8, ptr %__assertion369, i32 32
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -1, ptr %169, align 4, !annotation !415
  %171 = ptrtoint ptr %__assertion369 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %test, ptr %__assertion369, align 4
  %type372 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 1
  %172 = ptrtoint ptr %type372 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %type372, align 4
  %line373 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 2
  %173 = ptrtoint ptr %line373 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 340, ptr %line373, align 4
  %file374 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 3
  %174 = ptrtoint ptr %file374 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.2, ptr %file374, align 4
  %message375 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 4
  %175 = ptrtoint ptr %message375 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %message375, align 4
  %va377 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 4, i32 1
  %176 = ptrtoint ptr %va377 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %va377, align 4
  %format378 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 5
  %177 = ptrtoint ptr %format378 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @kunit_unary_assert_format, ptr %format378, align 4
  %condition379 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion369, i32 0, i32 1
  %178 = ptrtoint ptr %condition379 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.100, ptr %condition379, align 4
  %expected_true380 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion369, i32 0, i32 2
  %179 = ptrtoint ptr %expected_true380 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %expected_true380, align 4
  %180 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %cmp393 = icmp eq i8 %180, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion369, i1 noundef zeroext %cmp393, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion369) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !567
  %arrayidx397 = getelementptr i8, ptr %call26, i32 %size1
  %181 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 120, ptr %arrayidx397, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !568
  %182 = load volatile i8, ptr @fail_data, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool402.not = icmp eq i8 %182, 0
  br i1 %tobool402.not, label %do.body406, label %do.body360.do.body425_crit_edge

do.body360.do.body425_crit_edge:                  ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body425

do.body406:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion407) #14
  %183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion407, i32 0, i32 1
  %184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion407, i32 0, i32 2
  %185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion407, i32 0, i32 3
  %186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion407, i32 0, i32 4
  %187 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion407, i32 0, i32 4, i32 1
  %188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion407, i32 0, i32 5
  %189 = ptrtoint ptr %__assertion407 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %test, ptr %__assertion407, align 4
  %190 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %183, align 4
  %191 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 340, ptr %184, align 4
  %192 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.2, ptr %185, align 4
  %193 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %186, align 4
  %194 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %187, align 4
  %195 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @kunit_fail_assert_format, ptr %188, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion407, i1 noundef zeroext false, ptr noundef nonnull @.str.101) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion407) #14
  br label %do.body425

do.body425:                                       ; preds = %do.body406, %do.body360.do.body425_crit_edge
  store volatile i8 0, ptr @fail_data, align 1
  call void @kfree(ptr noundef %call26) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_alloc_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free_bulk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @empty_cache_ctor(ptr nocapture noundef %object) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 220)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 220)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind uwtable(sync) }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind allocsize(2) "no-builtins" }
attributes #16 = { nobuiltin nounwind allocsize(0) "no-builtins" }
attributes #17 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nobuiltin nounwind allocsize(1) "no-builtins" }
attributes #20 = { nounwind readnone }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !163, !165, !167, !169, !170, !172, !173, !174, !176, !178, !180, !181, !183, !184, !186, !188, !190, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !211, !213, !214, !216, !217, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !241, !242, !244, !245, !247, !248, !250, !252, !254, !256, !257, !258, !259, !261, !262, !264, !265, !267, !268, !270, !272, !274, !276, !278, !280, !282, !283, !285, !286, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !322, !324, !325, !327, !328, !330, !331, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !391, !393, !394, !396, !397, !398, !400, !402, !404}
!llvm.named.register.sp = !{!405}
!llvm.module.flags = !{!406, !407, !408, !409, !410, !411, !412}
!llvm.ident = !{!413}

!0 = !{ptr @__UNIQUE_ID_suites546, !1, !"__UNIQUE_ID_suites546", i1 false, i1 false}
!1 = !{!"../lib/test_kasan.c", i32 1227, i32 1}
!2 = !{ptr @__UNIQUE_ID_file547, !3, !"__UNIQUE_ID_file547", i1 false, i1 false}
!3 = !{!"../lib/test_kasan.c", i32 1229, i32 1}
!4 = !{ptr @__UNIQUE_ID_license548, !3, !"__UNIQUE_ID_license548", i1 false, i1 false}
!5 = !{ptr @kasan_ptr_result, !6, !"kasan_ptr_result", i1 false, i1 false}
!6 = !{!"../lib/test_kasan.c", i32 35, i32 7}
!7 = !{ptr @kasan_int_result, !8, !"kasan_int_result", i1 false, i1 false}
!8 = !{!"../lib/test_kasan.c", i32 36, i32 5}
!9 = !{ptr @__UNIQUE_ID_array545, !1, !"__UNIQUE_ID_array545", i1 false, i1 false}
!10 = !{ptr @kasan_kunit_test_suite, !11, !"kasan_kunit_test_suite", i1 false, i1 false}
!11 = !{!"../lib/test_kasan.c", i32 1220, i32 27}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_kasan.c", i32 51, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @kasan_test_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @kasan_test_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test_kasan.c", i32 58, i32 6}
!21 = !{ptr @multishot, !22, !"multishot", i1 false, i1 false}
!22 = !{!"../lib/test_kasan.c", i32 40, i32 13}
!23 = !{ptr @fail_data, !24, !"fail_data", i1 false, i1 false}
!24 = !{!"../lib/test_kasan.c", i32 39, i32 39}
!25 = !{ptr @resource, !26, !"resource", i1 false, i1 false}
!26 = !{!"../lib/test_kasan.c", i32 38, i32 30}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_kasan.c", i32 65, i32 2}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/test_kasan.c", i32 1166, i32 2}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_kasan.c", i32 1167, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/test_kasan.c", i32 1168, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/test_kasan.c", i32 1169, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/test_kasan.c", i32 1170, i32 2}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/test_kasan.c", i32 1171, i32 2}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../lib/test_kasan.c", i32 1172, i32 2}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/test_kasan.c", i32 1173, i32 2}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/test_kasan.c", i32 1174, i32 2}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/test_kasan.c", i32 1175, i32 2}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../lib/test_kasan.c", i32 1176, i32 2}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test_kasan.c", i32 1177, i32 2}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/test_kasan.c", i32 1178, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/test_kasan.c", i32 1179, i32 2}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test_kasan.c", i32 1180, i32 2}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test_kasan.c", i32 1181, i32 2}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/test_kasan.c", i32 1182, i32 2}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test_kasan.c", i32 1183, i32 2}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/test_kasan.c", i32 1184, i32 2}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../lib/test_kasan.c", i32 1185, i32 2}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../lib/test_kasan.c", i32 1186, i32 2}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test_kasan.c", i32 1187, i32 2}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/test_kasan.c", i32 1188, i32 2}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/test_kasan.c", i32 1189, i32 2}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test_kasan.c", i32 1190, i32 2}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../lib/test_kasan.c", i32 1191, i32 2}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../lib/test_kasan.c", i32 1192, i32 2}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/test_kasan.c", i32 1193, i32 2}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/test_kasan.c", i32 1194, i32 2}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/test_kasan.c", i32 1195, i32 2}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/test_kasan.c", i32 1196, i32 2}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/test_kasan.c", i32 1197, i32 2}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/test_kasan.c", i32 1198, i32 2}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/test_kasan.c", i32 1199, i32 2}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../lib/test_kasan.c", i32 1200, i32 2}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../lib/test_kasan.c", i32 1201, i32 2}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../lib/test_kasan.c", i32 1202, i32 2}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/test_kasan.c", i32 1203, i32 2}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../lib/test_kasan.c", i32 1204, i32 2}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../lib/test_kasan.c", i32 1205, i32 2}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/test_kasan.c", i32 1206, i32 2}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../lib/test_kasan.c", i32 1207, i32 2}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/test_kasan.c", i32 1208, i32 2}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../lib/test_kasan.c", i32 1209, i32 2}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../lib/test_kasan.c", i32 1210, i32 2}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../lib/test_kasan.c", i32 1211, i32 2}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/test_kasan.c", i32 1212, i32 2}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/test_kasan.c", i32 1213, i32 2}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/test_kasan.c", i32 1214, i32 2}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../lib/test_kasan.c", i32 1215, i32 2}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/test_kasan.c", i32 1216, i32 2}
!131 = !{ptr @kasan_kunit_test_cases, !132, !"kasan_kunit_test_cases", i1 false, i1 false}
!132 = !{!"../lib/test_kasan.c", i32 1165, i32 26}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/test_kasan.c", i32 126, i32 2}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/test_kasan.c", i32 133, i32 3}
!137 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../lib/test_kasan.c", i32 139, i32 2}
!140 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../lib/test_kasan.c", i32 142, i32 2}
!143 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../lib/test_kasan.c", i32 156, i32 2}
!146 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../lib/test_kasan.c", i32 168, i32 2}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../lib/test_kasan.c", i32 188, i32 2}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../lib/test_kasan.c", i32 204, i32 2}
!155 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/test_kasan.c", i32 217, i32 2}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../lib/test_kasan.c", i32 232, i32 2}
!161 = distinct !{null, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../lib/test_kasan.c", i32 238, i32 2}
!163 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../lib/test_kasan.c", i32 253, i32 2}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../lib/test_kasan.c", i32 268, i32 2}
!169 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../lib/test_kasan.c", i32 278, i32 2}
!172 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../lib/test_kasan.c", i32 282, i32 2}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../lib/test_kasan.c", i32 285, i32 2}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../lib/test_kasan.c", i32 295, i32 3}
!180 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../lib/test_kasan.c", i32 298, i32 2}
!183 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../lib/test_kasan.c", i32 324, i32 3}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../lib/test_kasan.c", i32 327, i32 2}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../lib/test_kasan.c", i32 334, i32 2}
!190 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../lib/test_kasan.c", i32 336, i32 2}
!194 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../lib/test_kasan.c", i32 338, i32 2}
!197 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../lib/test_kasan.c", i32 339, i32 2}
!200 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../lib/test_kasan.c", i32 340, i32 2}
!203 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../lib/test_kasan.c", i32 387, i32 2}
!206 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../lib/test_kasan.c", i32 388, i32 2}
!209 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.106, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.107, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../lib/test_kasan.c", i32 389, i32 2}
!213 = !{ptr @.str.108, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../lib/test_kasan.c", i32 407, i32 2}
!216 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../lib/test_kasan.c", i32 425, i32 2}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../lib/test_kasan.c", i32 497, i32 2}
!221 = !{ptr @.str.113, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../lib/test_kasan.c", i32 444, i32 2}
!224 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../lib/test_kasan.c", i32 457, i32 2}
!227 = !{ptr @.str.117, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.118, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../lib/test_kasan.c", i32 470, i32 2}
!230 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.120, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../lib/test_kasan.c", i32 483, i32 2}
!233 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.122, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../lib/test_kasan.c", i32 521, i32 2}
!236 = !{ptr @.str.123, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.124, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../lib/test_kasan.c", i32 537, i32 2}
!239 = !{ptr @.str.125, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../lib/test_kasan.c", i32 551, i32 2}
!241 = !{ptr @.str.126, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../lib/test_kasan.c", i32 569, i32 2}
!244 = !{ptr @.str.128, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.129, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../lib/test_kasan.c", i32 596, i32 2}
!247 = !{ptr @.str.130, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.131, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../lib/test_kasan.c", i32 597, i32 2}
!250 = !{ptr @.str.132, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../lib/test_kasan.c", i32 636, i32 28}
!252 = !{ptr @.str.133, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../lib/test_kasan.c", i32 637, i32 2}
!254 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../lib/test_kasan.c", i32 641, i32 3}
!256 = !{ptr @kmem_cache_oob._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @kmem_cache_oob._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.135, !255, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.136, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../lib/test_kasan.c", i32 646, i32 2}
!261 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @kmem_cache_bulk._entry, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../lib/test_kasan.c", i32 692, i32 3}
!264 = !{ptr @kmem_cache_bulk._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.138, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../lib/test_kasan.c", i32 726, i32 2}
!267 = !{ptr @.str.139, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @global_array, !269, !"global_array", i1 false, i1 false}
!269 = !{!"../lib/test_kasan.c", i32 704, i32 13}
!270 = !{ptr @.str.140, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../lib/test_kasan.c", i32 740, i32 2}
!272 = !{ptr @.str.141, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../lib/test_kasan.c", i32 787, i32 2}
!274 = distinct !{null, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../lib/test_kasan.c", i32 789, i32 2}
!276 = distinct !{null, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../lib/test_kasan.c", i32 804, i32 2}
!278 = distinct !{null, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../lib/test_kasan.c", i32 819, i32 2}
!280 = !{ptr @.str.145, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../lib/test_kasan.c", i32 757, i32 2}
!282 = !{ptr @.str.146, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.147, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../lib/test_kasan.c", i32 775, i32 2}
!285 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.149, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../lib/test_kasan.c", i32 776, i32 2}
!288 = !{ptr @.str.150, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../lib/test_kasan.c", i32 777, i32 2}
!290 = !{ptr @.str.151, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @kmem_cache_double_free._entry, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../lib/test_kasan.c", i32 833, i32 3}
!293 = !{ptr @kmem_cache_double_free._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.152, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../lib/test_kasan.c", i32 839, i32 2}
!296 = !{ptr @.str.153, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @kmem_cache_invalid_free._entry, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../lib/test_kasan.c", i32 855, i32 3}
!299 = !{ptr @kmem_cache_invalid_free._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.154, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../lib/test_kasan.c", i32 861, i32 2}
!302 = !{ptr @.str.155, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../lib/test_kasan.c", i32 882, i32 2}
!305 = !{ptr @.str.157, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.158, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../lib/test_kasan.c", i32 904, i32 2}
!308 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.160, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../lib/test_kasan.c", i32 931, i32 2}
!311 = !{ptr @.str.161, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.162, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../lib/test_kasan.c", i32 959, i32 2}
!314 = !{ptr @.str.163, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.164, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../lib/test_kasan.c", i32 961, i32 2}
!317 = !{ptr @.str.165, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.166, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../lib/test_kasan.c", i32 963, i32 2}
!320 = !{ptr @.str.167, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.168, !319, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.169, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../lib/test_kasan.c", i32 965, i32 2}
!324 = !{ptr @.str.170, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.171, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../lib/test_kasan.c", i32 967, i32 2}
!327 = !{ptr @.str.172, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.173, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../lib/test_kasan.c", i32 969, i32 2}
!330 = !{ptr @.str.174, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.175, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../lib/test_kasan.c", i32 1013, i32 2}
!333 = !{ptr @.str.176, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../lib/test_kasan.c", i32 974, i32 2}
!335 = !{ptr @.str.177, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.178, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../lib/test_kasan.c", i32 975, i32 2}
!338 = !{ptr @.str.179, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.180, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../lib/test_kasan.c", i32 976, i32 2}
!341 = !{ptr @.str.181, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.182, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../lib/test_kasan.c", i32 977, i32 2}
!344 = !{ptr @.str.183, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.184, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../lib/test_kasan.c", i32 978, i32 2}
!347 = !{ptr @.str.185, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.186, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../lib/test_kasan.c", i32 979, i32 2}
!350 = !{ptr @.str.187, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.188, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../lib/test_kasan.c", i32 980, i32 2}
!353 = !{ptr @.str.189, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.190, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../lib/test_kasan.c", i32 981, i32 2}
!356 = !{ptr @.str.191, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.192, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../lib/test_kasan.c", i32 986, i32 2}
!359 = !{ptr @.str.193, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.194, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../lib/test_kasan.c", i32 987, i32 2}
!362 = !{ptr @.str.195, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.196, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../lib/test_kasan.c", i32 988, i32 2}
!365 = !{ptr @.str.197, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.198, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../lib/test_kasan.c", i32 989, i32 2}
!368 = !{ptr @.str.199, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.200, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../lib/test_kasan.c", i32 990, i32 2}
!371 = !{ptr @.str.201, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.202, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../lib/test_kasan.c", i32 991, i32 2}
!374 = !{ptr @.str.203, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.204, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../lib/test_kasan.c", i32 992, i32 2}
!377 = !{ptr @.str.205, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.206, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../lib/test_kasan.c", i32 993, i32 2}
!380 = !{ptr @.str.207, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.208, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../lib/test_kasan.c", i32 996, i32 2}
!383 = !{ptr @.str.209, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.210, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../lib/test_kasan.c", i32 1057, i32 2}
!386 = !{ptr @.str.211, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.212, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../lib/test_kasan.c", i32 1064, i32 2}
!389 = distinct !{null, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../lib/test_kasan.c", i32 1071, i32 2}
!391 = distinct !{null, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../lib/test_kasan.c", i32 1073, i32 2}
!393 = distinct !{null, !392, !"<string literal>", i1 false, i1 false}
!394 = distinct !{null, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../lib/test_kasan.c", i32 1094, i32 3}
!396 = distinct !{null, !395, !"<string literal>", i1 false, i1 false}
!397 = distinct !{null, !395, !"<string literal>", i1 false, i1 false}
!398 = distinct !{null, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../lib/test_kasan.c", i32 1095, i32 3}
!400 = distinct !{null, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../lib/test_kasan.c", i32 1123, i32 2}
!402 = distinct !{null, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../lib/test_kasan.c", i32 1157, i32 3}
!404 = distinct !{null, !403, !"<string literal>", i1 false, i1 false}
!405 = !{!"sp"}
!406 = !{i32 1, !"wchar_size", i32 2}
!407 = !{i32 1, !"min_enum_size", i32 4}
!408 = !{i32 8, !"branch-target-enforcement", i32 0}
!409 = !{i32 8, !"sign-return-address", i32 0}
!410 = !{i32 8, !"sign-return-address-all", i32 0}
!411 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!412 = !{i32 7, !"uwtable", i32 1}
!413 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!414 = !{i8 0, i8 2}
!415 = !{!"auto-init"}
!416 = !{i64 2153801368}
!417 = !{i64 2153801406}
!418 = !{i64 2153831335}
!419 = !{i64 2153831373}
!420 = !{i64 2153857335}
!421 = !{i64 2153857373}
!422 = !{i64 2153889493}
!423 = !{i64 2153889531}
!424 = !{i64 2153917514}
!425 = !{i64 2153917552}
!426 = !{i64 2153953858}
!427 = !{i64 2153953896}
!428 = !{i64 2153985515}
!429 = !{i64 2153985553}
!430 = !{i64 2154021205}
!431 = !{i64 2154021243}
!432 = !{i64 2154084890}
!433 = !{i64 2154084928}
!434 = !{i64 2154112973}
!435 = !{i64 2154113011}
!436 = !{i64 2154371222}
!437 = !{i64 2154371260}
!438 = !{i64 2154400431}
!439 = !{i64 2154400469}
!440 = !{i64 2154438214}
!441 = !{i64 2154438252}
!442 = !{i64 2154468338}
!443 = !{i64 2154468376}
!444 = !{i64 2154602352}
!445 = !{i64 2154602398}
!446 = !{i64 2154621378}
!447 = !{i64 2154621416}
!448 = !{i64 2154481588}
!449 = !{i64 2154500512}
!450 = !{i64 2154500550}
!451 = !{i64 2154513807}
!452 = !{i64 2154528670}
!453 = !{i64 2154528708}
!454 = !{i64 2154541965}
!455 = !{i64 2154560889}
!456 = !{i64 2154560927}
!457 = !{i64 2154574184}
!458 = !{i64 2154589051}
!459 = !{i64 2154589089}
!460 = !{i64 2154638539}
!461 = !{i64 2154638585}
!462 = !{i64 2154653510}
!463 = !{i64 2154653548}
!464 = !{i64 2154666838}
!465 = !{i64 2154685806}
!466 = !{i64 2154685844}
!467 = !{i64 2154713943}
!468 = !{i64 2154713981}
!469 = !{i64 2154749624}
!470 = !{i64 2154749662}
!471 = !{i64 2154780337}
!472 = !{i64 2154780375}
!473 = !{i64 2148868535, i64 2148868558, i64 2148868590, i64 2148868622, i64 2148868660, i64 2148868690}
!474 = !{i64 2154823152}
!475 = !{i64 2154823190}
!476 = !{i64 2154860298}
!477 = !{i64 2154860336}
!478 = !{i64 2154897413}
!479 = !{i64 2154897451}
!480 = !{i64 2154925470}
!481 = !{i64 2154925508}
!482 = !{i64 2154957620}
!483 = !{i64 2154957658}
!484 = !{i64 2154983523}
!485 = !{i64 2154983561}
!486 = !{i64 2155009477}
!487 = !{i64 2155009515}
!488 = !{i64 2155145168}
!489 = !{i64 2155145206}
!490 = !{i64 2155179437}
!491 = !{i64 2155179475}
!492 = !{i64 2155207341}
!493 = !{i64 2155207379}
!494 = !{i64 2155225919}
!495 = !{i64 2155225965}
!496 = !{i64 2155244923}
!497 = !{i64 2155244961}
!498 = !{i64 2155263561}
!499 = !{i64 2155263607}
!500 = !{i64 2155278500}
!501 = !{i64 2155278538}
!502 = !{i64 2155314627}
!503 = !{i64 2155314665}
!504 = !{i64 2155340627}
!505 = !{i64 2155340665}
!506 = !{i64 2155366630}
!507 = !{i64 2155366668}
!508 = !{i64 2155396705}
!509 = !{i64 2155396743}
!510 = !{i64 2155422711}
!511 = !{i64 2155422749}
!512 = !{i64 2155452753}
!513 = !{i64 2155452791}
!514 = !{i64 2155478791}
!515 = !{i64 2155478829}
!516 = !{i64 2155504724}
!517 = !{i64 2155504762}
!518 = !{i64 2155534788}
!519 = !{i64 2155534826}
!520 = !{i64 2155560733}
!521 = !{i64 2155560771}
!522 = !{i64 2155590732}
!523 = !{i64 2148290332}
!524 = !{i64 2148200751, i64 2148200783, i64 2148200812, i64 2148200846, i64 2148200877, i64 2148200900}
!525 = !{i64 2155590770}
!526 = !{i64 2155616689}
!527 = !{i64 2148275473}
!528 = !{i64 2155616727}
!529 = !{i64 2155642724}
!530 = !{i64 2155642762}
!531 = !{i64 2155672736}
!532 = !{i64 2155672774}
!533 = !{i64 2155698783}
!534 = !{i64 2155698821}
!535 = !{i64 2155728831}
!536 = !{i64 2155728869}
!537 = !{i64 2155754800}
!538 = !{i64 2148202364, i64 2148202396, i64 2148202425, i64 2148202459, i64 2148202490, i64 2148202513}
!539 = !{i64 2148291445}
!540 = !{i64 2155754838}
!541 = !{i64 2155780884}
!542 = !{i64 2155780922}
!543 = !{i64 2155810944}
!544 = !{i64 2155810982}
!545 = !{i64 2155837030}
!546 = !{i64 2155837068}
!547 = !{i64 2155867096}
!548 = !{i64 2155867134}
!549 = !{i64 2155893106}
!550 = !{i64 2155893144}
!551 = !{i64 2155923260}
!552 = !{i64 2155923298}
!553 = !{i64 2155962822}
!554 = !{i64 2155962860}
!555 = !{i64 2154150769}
!556 = !{i64 2154150807}
!557 = !{i64 2154176907}
!558 = !{i64 2154176945}
!559 = !{i64 2154214805}
!560 = !{i64 2154214843}
!561 = !{i64 2154240943}
!562 = !{i64 2154240981}
!563 = !{i64 2154279704}
!564 = !{i64 2154279742}
!565 = !{i64 2154305623}
!566 = !{i64 2154305661}
!567 = !{i64 2154331543}
!568 = !{i64 2154331581}
