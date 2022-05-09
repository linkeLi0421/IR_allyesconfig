; ModuleID = '/llk/IR_all_yes/lib/list-test.c_pt.bc'
source_filename = "../lib/list-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.list_test_struct = type { i32, %struct.list_head }

@__UNIQUE_ID_array176 = internal global [2 x ptr] [ptr @list_test_module, ptr null], align 4
@__UNIQUE_ID_suites177 = internal global ptr @__UNIQUE_ID_array176, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file178 = internal constant [29 x i8] c"list_test.file=lib/list-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [25 x i8] c"list_test.license=GPL v2\00", section ".modinfo", align 1
@list_test_module = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"list-kunit-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @list_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@list_test_cases = internal global { [37 x %struct.kunit_case], [188 x i8] } { [37 x %struct.kunit_case] [%struct.kunit_case { ptr @list_test_list_init, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_add, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_add_tail, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_del, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_replace, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_replace_init, ptr @.str.5, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_swap, ptr @.str.6, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_del_init, ptr @.str.7, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_move, ptr @.str.8, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_move_tail, ptr @.str.9, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_bulk_move_tail, ptr @.str.10, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_is_first, ptr @.str.11, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_is_last, ptr @.str.12, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_empty, ptr @.str.13, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_empty_careful, ptr @.str.14, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_rotate_left, ptr @.str.15, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_rotate_to_front, ptr @.str.16, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_is_singular, ptr @.str.17, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_cut_position, ptr @.str.18, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_cut_before, ptr @.str.19, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_splice, ptr @.str.20, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_splice_tail, ptr @.str.21, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_splice_init, ptr @.str.22, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_splice_tail_init, ptr @.str.23, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_entry, ptr @.str.24, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_first_entry, ptr @.str.25, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_last_entry, ptr @.str.26, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_first_entry_or_null, ptr @.str.27, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_next_entry, ptr @.str.28, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_prev_entry, ptr @.str.29, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_for_each, ptr @.str.30, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_for_each_prev, ptr @.str.31, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_for_each_safe, ptr @.str.32, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_for_each_prev_safe, ptr @.str.33, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_for_each_entry, ptr @.str.34, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @list_test_list_for_each_entry_reverse, ptr @.str.35, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [188 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"list_test_list_init\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"list_test_list_add\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_test_list_add_tail\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"list_test_list_del\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"list_test_list_replace\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"list_test_list_replace_init\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"list_test_list_swap\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_test_list_del_init\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"list_test_list_move\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_test_list_move_tail\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"list_test_list_bulk_move_tail\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_test_list_is_first\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"list_test_list_is_last\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"list_test_list_empty\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list_test_list_empty_careful\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_test_list_rotate_left\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"list_test_list_rotate_to_front\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_test_list_is_singular\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"list_test_list_cut_position\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_test_list_cut_before\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"list_test_list_splice\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_test_list_splice_tail\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_test_list_splice_init\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"list_test_list_splice_tail_init\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"list_test_list_entry\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_test_list_first_entry\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_test_list_last_entry\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"list_test_list_first_entry_or_null\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_test_list_next_entry\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_test_list_prev_entry\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_test_list_for_each\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list_test_list_for_each_prev\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list_test_list_for_each_safe\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"list_test_list_for_each_prev_safe\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"list_test_list_for_each_entry\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"list_test_list_for_each_entry_reverse\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/list-test.c\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty_careful(&list1)\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty_careful(&list2)\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty_careful(&list3)\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_empty_careful(list4)\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_empty_careful(list5)\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list.next\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"&b\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b.prev\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"&list\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b.next\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"&a\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a.prev\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a.next\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"&a_new\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty_careful(&a_old)\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list.prev\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"list_empty_careful(&a)\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"list_empty(&list1)\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"list2.next\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptr\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"list1_values[i]\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"list2_values[i]\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_is_first(&a, &list)\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_is_first(&b, &list)\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_is_last(&a, &list)\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_is_last(&b, &list)\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"list_empty(&list2)\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"list_values[i]\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_is_singular(&list)\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cur\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&entries[i]\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&test_struct\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [388 x i8], [124 x i8] } { [388 x i8] c"({ void *__mptr = (void *)(&(test_struct.list)); _Static_assert(__builtin_types_compatible_p(typeof(*(&(test_struct.list))), typeof(((struct list_test_struct *)0)->list)) || __builtin_types_compatible_p(typeof(*(&(test_struct.list))), typeof(void)), \22pointer type mismatch in container_of()\22); ((struct list_test_struct *)(__mptr - __builtin_offsetof(struct list_test_struct, list))); })\00", [124 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&test_struct1\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [370 x i8], [78 x i8] } { [370 x i8] c"({ void *__mptr = (void *)((&list)->next); _Static_assert(__builtin_types_compatible_p(typeof(*((&list)->next)), typeof(((struct list_test_struct *)0)->list)) || __builtin_types_compatible_p(typeof(*((&list)->next)), typeof(void)), \22pointer type mismatch in container_of()\22); ((struct list_test_struct *)(__mptr - __builtin_offsetof(struct list_test_struct, list))); })\00", [78 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&test_struct2\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [370 x i8], [78 x i8] } { [370 x i8] c"({ void *__mptr = (void *)((&list)->prev); _Static_assert(__builtin_types_compatible_p(typeof(*((&list)->prev)), typeof(((struct list_test_struct *)0)->list)) || __builtin_types_compatible_p(typeof(*((&list)->prev)), typeof(void)), \22pointer type mismatch in container_of()\22); ((struct list_test_struct *)(__mptr - __builtin_offsetof(struct list_test_struct, list))); })\00", [78 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [1307 x i8], [325 x i8] } { [1307 x i8] c"({ struct list_head *head__ = (&list); struct list_head *pos__ = ({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_174(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(head__->next) == sizeof(char) || sizeof(head__->next) == sizeof(short) || sizeof(head__->next) == sizeof(int) || sizeof(head__->next) == sizeof(long)) || sizeof(head__->next) == sizeof(long long))) __compiletime_assert_174(); } while (0); (*(const volatile typeof( _Generic((head__->next), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (head__->next))) *)&(head__->next)); }); pos__ != head__ ? ({ void *__mptr = (void *)(pos__); _Static_assert(__builtin_types_compatible_p(typeof(*(pos__)), typeof(((struct list_test_struct *)0)->list)) || __builtin_types_compatible_p(typeof(*(pos__)), typeof(void)), \22pointer type mismatch in container_of()\22); ((struct list_test_struct *)(__mptr - __builtin_offsetof(struct list_test_struct, list))); }) : ((void *)0); })\00", [325 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1307 x i8], [325 x i8] } { [1307 x i8] c"({ struct list_head *head__ = (&list); struct list_head *pos__ = ({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_175(void) __attribute__((__error__(\22Unsupported access size for {READ,WRITE}_ONCE().\22))); if (!((sizeof(head__->next) == sizeof(char) || sizeof(head__->next) == sizeof(short) || sizeof(head__->next) == sizeof(int) || sizeof(head__->next) == sizeof(long)) || sizeof(head__->next) == sizeof(long long))) __compiletime_assert_175(); } while (0); (*(const volatile typeof( _Generic((head__->next), char: (char)0, unsigned char: (unsigned char)0, signed char: (signed char)0, unsigned short: (unsigned short)0, signed short: (signed short)0, unsigned int: (unsigned int)0, signed int: (signed int)0, unsigned long: (unsigned long)0, signed long: (signed long)0, unsigned long long: (unsigned long long)0, signed long long: (signed long long)0, default: (head__->next))) *)&(head__->next)); }); pos__ != head__ ? ({ void *__mptr = (void *)(pos__); _Static_assert(__builtin_types_compatible_p(typeof(*(pos__)), typeof(((struct list_test_struct *)0)->list)) || __builtin_types_compatible_p(typeof(*(pos__)), typeof(void)), \22pointer type mismatch in container_of()\22); ((struct list_test_struct *)(__mptr - __builtin_offsetof(struct list_test_struct, list))); }) : ((void *)0); })\00", [325 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [412 x i8], [100 x i8] } { [412 x i8] c"({ void *__mptr = (void *)((&test_struct1)->list.next); _Static_assert(__builtin_types_compatible_p(typeof(*((&test_struct1)->list.next)), typeof(((typeof(*(&test_struct1)) *)0)->list)) || __builtin_types_compatible_p(typeof(*((&test_struct1)->list.next)), typeof(void)), \22pointer type mismatch in container_of()\22); ((typeof(*(&test_struct1)) *)(__mptr - __builtin_offsetof(typeof(*(&test_struct1)), list))); })\00", [100 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [412 x i8], [100 x i8] } { [412 x i8] c"({ void *__mptr = (void *)((&test_struct2)->list.prev); _Static_assert(__builtin_types_compatible_p(typeof(*((&test_struct2)->list.prev)), typeof(((typeof(*(&test_struct2)) *)0)->list)) || __builtin_types_compatible_p(typeof(*((&test_struct2)->list.prev)), typeof(void)), \22pointer type mismatch in container_of()\22); ((typeof(*(&test_struct2)) *)(__mptr - __builtin_offsetof(typeof(*(&test_struct2)), list))); })\00", [100 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-1\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"list_empty(&list)\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cur->data\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"list_test_module\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 741, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"list_test_cases\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 701, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 702, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 703, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 704, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 705, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 706, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 707, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 708, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 709, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 710, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 711, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 712, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 713, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 714, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 715, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 716, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 717, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 718, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 719, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 720, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 721, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 722, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 723, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 724, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 725, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 726, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 727, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 728, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 729, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 730, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 731, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 732, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 733, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 734, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 735, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 736, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 737, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 36, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 37, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 38, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 39, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 40, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 55, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 56, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 57, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 70, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 71, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 102, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 122, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 138, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 161, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 177, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 179, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 225, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 228, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 231, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 234, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 245, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 246, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 257, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 258, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 270, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 321, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 333, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 362, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 394, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 424, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 510, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 523, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 536, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 545, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 551, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 565, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 578, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 597, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 615, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 636, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.356 = private constant [19 x i8] c"../lib/list-test.c\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 673, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__UNIQUE_ID_suites177, ptr @list_test_module, ptr @list_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_test_module to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_test_cases to i32), i32 740, i32 928, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 388, i32 512, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 370, i32 448, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 370, i32 448, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 1307, i32 1632, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1307, i32 1632, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 412, i32 512, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 412, i32 512, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_init(ptr noundef %test) #0 align 64 {
entry:
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %list3 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion9 = alloca %struct.kunit_unary_assert, align 4
  %__assertion32 = alloca %struct.kunit_unary_assert, align 4
  %__assertion55 = alloca %struct.kunit_unary_assert, align 4
  %__assertion78 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %1 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list1, ptr %list1, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %3 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list3) #6
  %4 = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 1
  %5 = ptrtoint ptr %list3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list3, ptr %list3, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list3, ptr %4, align 4
  %7 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list2, ptr %list2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list2, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 36288, i32 noundef 8) #7
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i114 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i114, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 36032, i32 noundef 8) #7
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i115 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %prev.i115, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %15 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !183
  %17 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 36, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %21 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %24 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.37, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %25 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %expected_true, align 4
  %26 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %list1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i = icmp eq ptr %27, %list1
  br i1 %cmp.i.not.i, label %land.rhs.i, label %entry.list_empty_careful.exit_crit_edge

entry.list_empty_careful.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  %cmp.i = icmp eq ptr %29, %list1
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %entry.list_empty_careful.exit_crit_edge
  %30 = phi i1 [ false, %entry.list_empty_careful.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %30, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion9) #6
  %31 = getelementptr inbounds i8, ptr %__assertion9, i32 32
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %31, align 4, !annotation !183
  %33 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %34 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %35 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 37, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %36 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.36, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %37 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %39 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_unary_assert_format, ptr %format18, align 4
  %condition19 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 1
  %40 = ptrtoint ptr %condition19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.38, ptr %condition19, align 4
  %expected_true20 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion9, i32 0, i32 2
  %41 = ptrtoint ptr %expected_true20 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %expected_true20, align 4
  %42 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %list2, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i117 = icmp eq ptr %43, %list2
  br i1 %cmp.i.not.i117, label %land.rhs.i121, label %list_empty_careful.exit.list_empty_careful.exit122_crit_edge

list_empty_careful.exit.list_empty_careful.exit122_crit_edge: ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit122

land.rhs.i121:                                    ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %cmp.i119 = icmp eq ptr %45, %list2
  br label %list_empty_careful.exit122

list_empty_careful.exit122:                       ; preds = %land.rhs.i121, %list_empty_careful.exit.list_empty_careful.exit122_crit_edge
  %46 = phi i1 [ false, %list_empty_careful.exit.list_empty_careful.exit122_crit_edge ], [ %cmp.i119, %land.rhs.i121 ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %46, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion9) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion32) #6
  %47 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %47, align 4, !annotation !183
  %49 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion32, align 4
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %50 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %51 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 38, ptr %line36, align 4
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %52 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.36, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %53 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message38, align 4
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %55 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_unary_assert_format, ptr %format41, align 4
  %condition42 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 1
  %56 = ptrtoint ptr %condition42 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.39, ptr %condition42, align 4
  %expected_true43 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion32, i32 0, i32 2
  %57 = ptrtoint ptr %expected_true43 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %expected_true43, align 4
  %58 = ptrtoint ptr %list3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %list3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i123 = icmp eq ptr %59, %list3
  br i1 %cmp.i.not.i123, label %land.rhs.i127, label %list_empty_careful.exit122.list_empty_careful.exit128_crit_edge

list_empty_careful.exit122.list_empty_careful.exit128_crit_edge: ; preds = %list_empty_careful.exit122
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit128

land.rhs.i127:                                    ; preds = %list_empty_careful.exit122
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %4, align 4
  %cmp.i125 = icmp eq ptr %61, %list3
  br label %list_empty_careful.exit128

list_empty_careful.exit128:                       ; preds = %land.rhs.i127, %list_empty_careful.exit122.list_empty_careful.exit128_crit_edge
  %62 = phi i1 [ false, %list_empty_careful.exit122.list_empty_careful.exit128_crit_edge ], [ %cmp.i125, %land.rhs.i127 ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %62, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion32) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion55) #6
  %63 = getelementptr inbounds i8, ptr %__assertion55, i32 32
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %63, align 4, !annotation !183
  %65 = ptrtoint ptr %__assertion55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion55, align 4
  %type58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 1
  %66 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type58, align 4
  %line59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 2
  %67 = ptrtoint ptr %line59 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 39, ptr %line59, align 4
  %file60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 3
  %68 = ptrtoint ptr %file60 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.36, ptr %file60, align 4
  %message61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4
  %69 = ptrtoint ptr %message61 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message61, align 4
  %va63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va63, align 4
  %format64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 5
  %71 = ptrtoint ptr %format64 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_unary_assert_format, ptr %format64, align 4
  %condition65 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion55, i32 0, i32 1
  %72 = ptrtoint ptr %condition65 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.40, ptr %condition65, align 4
  %expected_true66 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion55, i32 0, i32 2
  %73 = ptrtoint ptr %expected_true66 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %expected_true66, align 4
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %call7.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i129 = icmp eq ptr %75, %call7.i.i
  br i1 %cmp.i.not.i129, label %land.rhs.i133, label %list_empty_careful.exit128.list_empty_careful.exit134_crit_edge

list_empty_careful.exit128.list_empty_careful.exit134_crit_edge: ; preds = %list_empty_careful.exit128
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit134

land.rhs.i133:                                    ; preds = %list_empty_careful.exit128
  call void @__sanitizer_cov_trace_pc() #5
  %76 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i114, align 4
  %cmp.i131 = icmp eq ptr %77, %call7.i.i
  br label %list_empty_careful.exit134

list_empty_careful.exit134:                       ; preds = %land.rhs.i133, %list_empty_careful.exit128.list_empty_careful.exit134_crit_edge
  %78 = phi i1 [ false, %list_empty_careful.exit128.list_empty_careful.exit134_crit_edge ], [ %cmp.i131, %land.rhs.i133 ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion55, i1 noundef zeroext %78, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion55) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion78) #6
  %79 = getelementptr inbounds i8, ptr %__assertion78, i32 32
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %79, align 4, !annotation !183
  %81 = ptrtoint ptr %__assertion78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %test, ptr %__assertion78, align 4
  %type81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 1
  %82 = ptrtoint ptr %type81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %type81, align 4
  %line82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 2
  %83 = ptrtoint ptr %line82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 40, ptr %line82, align 4
  %file83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 3
  %84 = ptrtoint ptr %file83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.36, ptr %file83, align 4
  %message84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 4
  %85 = ptrtoint ptr %message84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %message84, align 4
  %va86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %va86 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %va86, align 4
  %format87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 5
  %87 = ptrtoint ptr %format87 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @kunit_unary_assert_format, ptr %format87, align 4
  %condition88 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion78, i32 0, i32 1
  %88 = ptrtoint ptr %condition88 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.41, ptr %condition88, align 4
  %expected_true89 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion78, i32 0, i32 2
  %89 = ptrtoint ptr %expected_true89 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %expected_true89, align 4
  %90 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %call7.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i135 = icmp eq ptr %91, %call7.i
  br i1 %cmp.i.not.i135, label %land.rhs.i139, label %list_empty_careful.exit134.list_empty_careful.exit140_crit_edge

list_empty_careful.exit134.list_empty_careful.exit140_crit_edge: ; preds = %list_empty_careful.exit134
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit140

land.rhs.i139:                                    ; preds = %list_empty_careful.exit134
  call void @__sanitizer_cov_trace_pc() #5
  %92 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i115, align 4
  %cmp.i137 = icmp eq ptr %93, %call7.i
  br label %list_empty_careful.exit140

list_empty_careful.exit140:                       ; preds = %land.rhs.i139, %list_empty_careful.exit134.list_empty_careful.exit140_crit_edge
  %94 = phi i1 [ false, %list_empty_careful.exit134.list_empty_careful.exit140_crit_edge ], [ %cmp.i137, %land.rhs.i139 ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion78, i1 noundef zeroext %94, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion78) #6
  call void @kfree(ptr noundef %call7.i.i) #6
  call void @kfree(ptr noundef %call7.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_add(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion38 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %call.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef nonnull %list, ptr noundef %14) #6
  br i1 %call.i.i70, label %if.end.i.i73, label %list_add.exit.list_add.exit74_crit_edge

list_add.exit.list_add.exit74_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit74

if.end.i.i73:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i71 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i71 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %prev1.i.i71, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %4, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %list, align 4
  br label %list_add.exit74

list_add.exit74:                                  ; preds = %if.end.i.i73, %list_add.exit.list_add.exit74_crit_edge
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %21 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 55, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %24 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %25 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %28 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %29 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.43, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %30 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %20, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %31 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.44, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %32 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b, ptr %right_value, align 4
  %cmp = icmp eq ptr %20, %b
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %35 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %36 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %37 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 56, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %38 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %39 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %41 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %42 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %43 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.45, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %44 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %34, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %45 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.46, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %46 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %34, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  %47 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion38) #6
  %49 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion38, align 4
  %type41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %50 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type41, align 4
  %line42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %51 = ptrtoint ptr %line42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 57, ptr %line42, align 4
  %file43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %52 = ptrtoint ptr %file43 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.36, ptr %file43, align 4
  %message44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %53 = ptrtoint ptr %message44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message44, align 4
  %va46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va46, align 4
  %format47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %55 = ptrtoint ptr %format47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_ptr_assert_format, ptr %format47, align 4
  %operation48 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 1
  %56 = ptrtoint ptr %operation48 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.42, ptr %operation48, align 4
  %left_text49 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 2
  %57 = ptrtoint ptr %left_text49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.47, ptr %left_text49, align 4
  %left_value50 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 3
  %58 = ptrtoint ptr %left_value50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %48, ptr %left_value50, align 4
  %right_text51 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 4
  %59 = ptrtoint ptr %right_text51 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.48, ptr %right_text51, align 4
  %right_value52 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 5
  %60 = ptrtoint ptr %right_value52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %a, ptr %right_value52, align 4
  %cmp54 = icmp eq ptr %48, %a
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext %cmp54, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion38) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_add_tail(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion38 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i.i71 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i71, label %if.end.i.i73, label %list_add_tail.exit.list_add_tail.exit74_crit_edge

list_add_tail.exit.list_add_tail.exit74_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit74

if.end.i.i73:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %6, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %4, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %14, align 4
  br label %list_add_tail.exit74

list_add_tail.exit74:                             ; preds = %if.end.i.i73, %list_add_tail.exit.list_add_tail.exit74_crit_edge
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %21 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 69, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %24 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %25 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %28 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %29 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.43, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %30 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %20, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %31 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.48, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %32 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %a, ptr %right_value, align 4
  %cmp = icmp eq ptr %20, %a
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %35 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %36 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %37 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 70, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %38 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %39 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %41 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %42 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %43 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.49, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %44 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %34, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %45 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.46, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %46 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %34, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  %47 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion38) #6
  %49 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion38, align 4
  %type41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %50 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type41, align 4
  %line42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %51 = ptrtoint ptr %line42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 71, ptr %line42, align 4
  %file43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %52 = ptrtoint ptr %file43 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.36, ptr %file43, align 4
  %message44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %53 = ptrtoint ptr %message44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message44, align 4
  %va46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va46, align 4
  %format47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %55 = ptrtoint ptr %format47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_ptr_assert_format, ptr %format47, align 4
  %operation48 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 1
  %56 = ptrtoint ptr %operation48 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.42, ptr %operation48, align 4
  %left_text49 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 2
  %57 = ptrtoint ptr %left_text49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.50, ptr %left_text49, align 4
  %left_value50 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 3
  %58 = ptrtoint ptr %left_value50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %48, ptr %left_value50, align 4
  %right_text51 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 4
  %59 = ptrtoint ptr %right_text51 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.44, ptr %right_text51, align 4
  %right_value52 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 5
  %60 = ptrtoint ptr %right_value52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %b, ptr %right_value52, align 4
  %cmp54 = icmp eq ptr %48, %b
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext %cmp54, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion38) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_del(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i.i41 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i41, label %if.end.i.i43, label %list_add_tail.exit.list_add_tail.exit44_crit_edge

list_add_tail.exit.list_add_tail.exit44_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit44

if.end.i.i43:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %6, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %4, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %14, align 4
  br label %list_add_tail.exit44

list_add_tail.exit44:                             ; preds = %if.end.i.i43, %list_add_tail.exit.list_add_tail.exit44_crit_edge
  %call.i.i45 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %a) #6
  br i1 %call.i.i45, label %if.end.i.i46, label %list_add_tail.exit44.list_del.exit_crit_edge

list_add_tail.exit44.list_del.exit_crit_edge:     ; preds = %list_add_tail.exit44
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i46:                                     ; preds = %list_add_tail.exit44
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %a, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i46, %list_add_tail.exit44.list_del.exit_crit_edge
  %25 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %a, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %1, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %29 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %31 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 86, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %32 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %33 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %35 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %36 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %37 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.43, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %38 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %28, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %39 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.44, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %40 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b, ptr %right_value, align 4
  %cmp = icmp eq ptr %28, %b
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %43 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %44 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %45 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 87, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %46 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %47 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %49 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %50 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %51 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.45, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %52 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %42, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %53 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.46, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %54 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %42, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_replace(ptr noundef %test) #0 align 64 {
entry:
  %a_old = alloca %struct.list_head, align 4
  %a_new = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a_old) #6
  %0 = ptrtoint ptr %a_old to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a_old, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a_old, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a_new) #6
  %3 = ptrtoint ptr %a_new to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %a_new, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %a_new, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %6 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %7 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %9 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %list, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %9, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a_old, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %a_old, ptr %9, align 4
  %13 = ptrtoint ptr %a_old to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %a_old, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %1, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %a_old, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call.i.i41 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %17, ptr noundef nonnull %list) #6
  br i1 %call.i.i41, label %if.end.i.i43, label %list_add_tail.exit.list_add_tail.exit44_crit_edge

list_add_tail.exit.list_add_tail.exit44_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit44

if.end.i.i43:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b, ptr %9, align 4
  %19 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %b, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %7, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %b, ptr %17, align 4
  br label %list_add_tail.exit44

list_add_tail.exit44:                             ; preds = %if.end.i.i43, %list_add_tail.exit.list_add_tail.exit44_crit_edge
  %22 = ptrtoint ptr %a_old to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a_old, align 4
  %24 = ptrtoint ptr %a_new to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %a_new, align 4
  %prev.i45 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %a_new, ptr %prev.i45, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %4, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %a_new, ptr %27, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %32 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %34 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 102, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %35 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %36 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %38 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %39 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %40 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.43, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %41 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %31, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %42 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.51, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %43 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %a_new, ptr %right_value, align 4
  %cmp = icmp eq ptr %31, %a_new
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %46 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %47 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %48 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 103, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %49 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %50 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %52 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %53 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %54 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.45, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %55 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %45, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %56 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.51, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %57 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %a_new, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %45, %a_new
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a_new) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a_old) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_replace_init(ptr noundef %test) #0 align 64 {
entry:
  %a_old = alloca %struct.list_head, align 4
  %a_new = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion34 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a_old) #6
  %0 = ptrtoint ptr %a_old to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a_old, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a_old, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a_new) #6
  %3 = ptrtoint ptr %a_new to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %a_new, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %a_new, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %6 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %7 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %9 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %list, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %9, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a_old, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %a_old, ptr %9, align 4
  %13 = ptrtoint ptr %a_old to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %a_old, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %1, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %a_old, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call.i.i59 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %17, ptr noundef nonnull %list) #6
  br i1 %call.i.i59, label %if.end.i.i61, label %list_add_tail.exit.list_add_tail.exit62_crit_edge

list_add_tail.exit.list_add_tail.exit62_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit62

if.end.i.i61:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b, ptr %9, align 4
  %19 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %b, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %7, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %b, ptr %17, align 4
  br label %list_add_tail.exit62

list_add_tail.exit62:                             ; preds = %if.end.i.i61, %list_add_tail.exit.list_add_tail.exit62_crit_edge
  %22 = ptrtoint ptr %a_old to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a_old, align 4
  %24 = ptrtoint ptr %a_new to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %a_new, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %a_new, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %4, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %a_new, ptr %27, align 4
  store volatile ptr %a_old, ptr %a_old, align 4
  store ptr %a_old, ptr %1, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %32 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %34 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 118, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %35 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %36 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %38 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %39 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %40 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.43, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %41 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %31, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %42 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.51, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %43 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %a_new, ptr %right_value, align 4
  %cmp = icmp eq ptr %31, %a_new
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %46 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %47 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %48 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 119, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %49 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %50 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %52 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %53 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %54 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.45, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %55 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %45, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %56 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.51, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %57 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %a_new, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %45, %a_new
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion34) #6
  %58 = getelementptr inbounds i8, ptr %__assertion34, i32 32
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %58, align 4, !annotation !183
  %60 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %61 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %62 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 122, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %63 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.36, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %64 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %66 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @kunit_unary_assert_format, ptr %format43, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion34, i32 0, i32 1
  %67 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.52, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion34, i32 0, i32 2
  %68 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %expected_true, align 4
  %69 = ptrtoint ptr %a_old to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %a_old, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i = icmp eq ptr %70, %a_old
  br i1 %cmp.i.not.i, label %land.rhs.i, label %list_add_tail.exit62.list_empty_careful.exit_crit_edge

list_add_tail.exit62.list_empty_careful.exit_crit_edge: ; preds = %list_add_tail.exit62
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %list_add_tail.exit62
  call void @__sanitizer_cov_trace_pc() #5
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %72, %a_old
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %list_add_tail.exit62.list_empty_careful.exit_crit_edge
  %73 = phi i1 [ false, %list_add_tail.exit62.list_empty_careful.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %73, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion34) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a_new) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a_old) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_swap(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion38 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion64 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion90 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion116 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i.i161 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i161, label %if.end.i.i163, label %list_add_tail.exit.list_add_tail.exit164_crit_edge

list_add_tail.exit.list_add_tail.exit164_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit164

if.end.i.i163:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %6, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %4, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %14, align 4
  br label %list_add_tail.exit164

list_add_tail.exit164:                            ; preds = %if.end.i.i163, %list_add_tail.exit.list_add_tail.exit164_crit_edge
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %b) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add_tail.exit164.list_del.exit.i_crit_edge

list_add_tail.exit164.list_del.exit.i_crit_edge:  ; preds = %list_add_tail.exit164
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %list_add_tail.exit164
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 4
  %23 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %list_add_tail.exit164.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a, align 4
  %29 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %b, align 4
  %prev.i7.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %b, ptr %prev.i7.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %4, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b, ptr %32, align 4
  %cmp.i = icmp eq ptr %20, %a
  %spec.select.i = select i1 %cmp.i, ptr %b, ptr %20
  %35 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spec.select.i, align 4
  %call.i.i8.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef %spec.select.i, ptr noundef %36) #6
  br i1 %call.i.i8.i, label %if.end.i.i9.i, label %list_del.exit.i.list_swap.exit_crit_edge

list_del.exit.i.list_swap.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_swap.exit

if.end.i.i9.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %a, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %a, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %spec.select.i, ptr %1, align 4
  %40 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %a, ptr %spec.select.i, align 4
  br label %list_swap.exit

list_swap.exit:                                   ; preds = %if.end.i.i9.i, %list_del.exit.i.list_swap.exit_crit_edge
  %41 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %43 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %45 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 137, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %46 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %47 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %49 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %50 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %51 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.44, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %52 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %b, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %53 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.43, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %54 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %42, ptr %right_value, align 4
  %cmp = icmp eq ptr %b, %42
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %57 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %58 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %59 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 138, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %60 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %61 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %63 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %64 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %65 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.48, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %66 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %a, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %67 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.53, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %68 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %56, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %a, %56
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  %69 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion38) #6
  %71 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %test, ptr %__assertion38, align 4
  %type41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %72 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %type41, align 4
  %line42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %73 = ptrtoint ptr %line42 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 140, ptr %line42, align 4
  %file43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %74 = ptrtoint ptr %file43 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.36, ptr %file43, align 4
  %message44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %75 = ptrtoint ptr %message44 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %message44, align 4
  %va46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %va46 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %va46, align 4
  %format47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %77 = ptrtoint ptr %format47 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @kunit_binary_ptr_assert_format, ptr %format47, align 4
  %operation48 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 1
  %78 = ptrtoint ptr %operation48 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.42, ptr %operation48, align 4
  %left_text49 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 2
  %79 = ptrtoint ptr %left_text49 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.48, ptr %left_text49, align 4
  %left_value50 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 3
  %80 = ptrtoint ptr %left_value50 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %a, ptr %left_value50, align 4
  %right_text51 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 4
  %81 = ptrtoint ptr %right_text51 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.47, ptr %right_text51, align 4
  %right_value52 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 5
  %82 = ptrtoint ptr %right_value52 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %70, ptr %right_value52, align 4
  %cmp54 = icmp eq ptr %a, %70
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext %cmp54, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion38) #6
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion64) #6
  %85 = ptrtoint ptr %__assertion64 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %test, ptr %__assertion64, align 4
  %type67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion64, i32 0, i32 1
  %86 = ptrtoint ptr %type67 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %type67, align 4
  %line68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion64, i32 0, i32 2
  %87 = ptrtoint ptr %line68 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 141, ptr %line68, align 4
  %file69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion64, i32 0, i32 3
  %88 = ptrtoint ptr %file69 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.36, ptr %file69, align 4
  %message70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion64, i32 0, i32 4
  %89 = ptrtoint ptr %message70 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %message70, align 4
  %va72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion64, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %va72 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %va72, align 4
  %format73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion64, i32 0, i32 5
  %91 = ptrtoint ptr %format73 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @kunit_binary_ptr_assert_format, ptr %format73, align 4
  %operation74 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion64, i32 0, i32 1
  %92 = ptrtoint ptr %operation74 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.42, ptr %operation74, align 4
  %left_text75 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion64, i32 0, i32 2
  %93 = ptrtoint ptr %left_text75 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.46, ptr %left_text75, align 4
  %left_value76 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion64, i32 0, i32 3
  %94 = ptrtoint ptr %left_value76 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %list, ptr %left_value76, align 4
  %right_text77 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion64, i32 0, i32 4
  %95 = ptrtoint ptr %right_text77 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.45, ptr %right_text77, align 4
  %right_value78 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion64, i32 0, i32 5
  %96 = ptrtoint ptr %right_value78 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %84, ptr %right_value78, align 4
  %cmp80 = icmp eq ptr %list, %84
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion64, i1 noundef zeroext %cmp80, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion64) #6
  %97 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion90) #6
  %99 = ptrtoint ptr %__assertion90 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %test, ptr %__assertion90, align 4
  %type93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 1
  %100 = ptrtoint ptr %type93 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %type93, align 4
  %line94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 2
  %101 = ptrtoint ptr %line94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 143, ptr %line94, align 4
  %file95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 3
  %102 = ptrtoint ptr %file95 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.36, ptr %file95, align 4
  %message96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 4
  %103 = ptrtoint ptr %message96 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %message96, align 4
  %va98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %va98 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %va98, align 4
  %format99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 5
  %105 = ptrtoint ptr %format99 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @kunit_binary_ptr_assert_format, ptr %format99, align 4
  %operation100 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion90, i32 0, i32 1
  %106 = ptrtoint ptr %operation100 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.42, ptr %operation100, align 4
  %left_text101 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion90, i32 0, i32 2
  %107 = ptrtoint ptr %left_text101 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.46, ptr %left_text101, align 4
  %left_value102 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion90, i32 0, i32 3
  %108 = ptrtoint ptr %left_value102 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %list, ptr %left_value102, align 4
  %right_text103 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion90, i32 0, i32 4
  %109 = ptrtoint ptr %right_text103 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.50, ptr %right_text103, align 4
  %right_value104 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion90, i32 0, i32 5
  %110 = ptrtoint ptr %right_value104 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %98, ptr %right_value104, align 4
  %cmp106 = icmp eq ptr %list, %98
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion90, i1 noundef zeroext %cmp106, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion90) #6
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion116) #6
  %113 = ptrtoint ptr %__assertion116 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %test, ptr %__assertion116, align 4
  %type119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 1
  %114 = ptrtoint ptr %type119 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %type119, align 4
  %line120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 2
  %115 = ptrtoint ptr %line120 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 144, ptr %line120, align 4
  %file121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 3
  %116 = ptrtoint ptr %file121 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.36, ptr %file121, align 4
  %message122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4
  %117 = ptrtoint ptr %message122 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %message122, align 4
  %va124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %va124 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %va124, align 4
  %format125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 5
  %119 = ptrtoint ptr %format125 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @kunit_binary_ptr_assert_format, ptr %format125, align 4
  %operation126 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 1
  %120 = ptrtoint ptr %operation126 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.42, ptr %operation126, align 4
  %left_text127 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 2
  %121 = ptrtoint ptr %left_text127 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.44, ptr %left_text127, align 4
  %left_value128 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 3
  %122 = ptrtoint ptr %left_value128 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %b, ptr %left_value128, align 4
  %right_text129 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 4
  %123 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.49, ptr %right_text129, align 4
  %right_value130 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion116, i32 0, i32 5
  %124 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %112, ptr %right_value130, align 4
  %cmp132 = icmp eq ptr %b, %112
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion116, i1 noundef zeroext %cmp132, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion116) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_del_init(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion34 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i.i59 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i59, label %if.end.i.i61, label %list_add_tail.exit.list_add_tail.exit62_crit_edge

list_add_tail.exit.list_add_tail.exit62_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit62

if.end.i.i61:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %6, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %4, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %14, align 4
  br label %list_add_tail.exit62

list_add_tail.exit62:                             ; preds = %if.end.i.i61, %list_add_tail.exit.list_add_tail.exit62_crit_edge
  %call.i.i63 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %a) #6
  br i1 %call.i.i63, label %if.end.i.i64, label %list_add_tail.exit62.list_del_init.exit_crit_edge

list_add_tail.exit62.list_del_init.exit_crit_edge: ; preds = %list_add_tail.exit62
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i64:                                     ; preds = %list_add_tail.exit62
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %a, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i64, %list_add_tail.exit62.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %a, ptr %a, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %a, ptr %1, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %29 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %31 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 159, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %32 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %33 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %35 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %36 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %37 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.43, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %38 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %28, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %39 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.44, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %40 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b, ptr %right_value, align 4
  %cmp = icmp eq ptr %28, %b
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %43 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %44 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %45 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 160, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %46 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %47 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %49 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %50 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %51 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.45, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %52 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %42, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %53 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.46, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %54 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %42, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion34) #6
  %55 = getelementptr inbounds i8, ptr %__assertion34, i32 32
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %55, align 4, !annotation !183
  %57 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %58 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %59 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 161, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %60 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.36, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %61 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %63 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_unary_assert_format, ptr %format43, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion34, i32 0, i32 1
  %64 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.54, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion34, i32 0, i32 2
  %65 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %expected_true, align 4
  %66 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %a, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i = icmp eq ptr %67, %a
  br i1 %cmp.i.not.i, label %land.rhs.i, label %list_del_init.exit.list_empty_careful.exit_crit_edge

list_del_init.exit.list_empty_careful.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %69, %a
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %list_del_init.exit.list_empty_careful.exit_crit_edge
  %70 = phi i1 [ false, %list_del_init.exit.list_empty_careful.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %70, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion34) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_move(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion9 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion30 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %7 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list1, ptr %list1, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %9 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %10 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list2, ptr %list2, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list2, ptr %9, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %a, ptr %6, align 4
  %13 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list1, ptr %a, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %1, align 4
  %15 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %a, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call.i.i61 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %17, ptr noundef nonnull %list2) #6
  br i1 %call.i.i61, label %if.end.i.i63, label %list_add_tail.exit.list_add_tail.exit64_crit_edge

list_add_tail.exit.list_add_tail.exit64_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit64

if.end.i.i63:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b, ptr %9, align 4
  %19 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list2, ptr %b, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %4, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %b, ptr %17, align 4
  br label %list_add_tail.exit64

list_add_tail.exit64:                             ; preds = %if.end.i.i63, %list_add_tail.exit.list_add_tail.exit64_crit_edge
  %call.i.i65 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %a) #6
  br i1 %call.i.i65, label %if.end.i.i66, label %list_add_tail.exit64.__list_del_entry.exit.i_crit_edge

list_add_tail.exit64.__list_del_entry.exit.i_crit_edge: ; preds = %list_add_tail.exit64
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i

if.end.i.i66:                                     ; preds = %list_add_tail.exit64
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %a, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i66, %list_add_tail.exit64.__list_del_entry.exit.i_crit_edge
  %28 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list2, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list2, ptr noundef %29) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %a, ptr %prev1.i.i2.i, align 4
  %31 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %a, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list2, ptr %1, align 4
  %33 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %a, ptr %list2, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %34 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %34, align 4, !annotation !183
  %36 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %38 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 177, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %39 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %40 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %42 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %43 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.55, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %44 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %expected_true, align 4
  %45 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %list1, align 4
  %cmp.i = icmp eq ptr %46, %list1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  %47 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion9) #6
  %49 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %50 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %51 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 179, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %52 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.36, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %53 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %55 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_ptr_assert_format, ptr %format18, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 1
  %56 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 2
  %57 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.48, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 3
  %58 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %a, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 4
  %59 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.56, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 5
  %60 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %48, ptr %right_value, align 4
  %cmp20 = icmp eq ptr %a, %48
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp20, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion9) #6
  %61 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion30) #6
  %63 = ptrtoint ptr %__assertion30 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion30, align 4
  %type33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 1
  %64 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type33, align 4
  %line34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 2
  %65 = ptrtoint ptr %line34 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 180, ptr %line34, align 4
  %file35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 3
  %66 = ptrtoint ptr %file35 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.36, ptr %file35, align 4
  %message36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4
  %67 = ptrtoint ptr %message36 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message36, align 4
  %va38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va38 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va38, align 4
  %format39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 5
  %69 = ptrtoint ptr %format39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_ptr_assert_format, ptr %format39, align 4
  %operation40 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 1
  %70 = ptrtoint ptr %operation40 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.42, ptr %operation40, align 4
  %left_text41 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 2
  %71 = ptrtoint ptr %left_text41 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.44, ptr %left_text41, align 4
  %left_value42 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 3
  %72 = ptrtoint ptr %left_value42 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %b, ptr %left_value42, align 4
  %right_text43 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 4
  %73 = ptrtoint ptr %right_text43 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.50, ptr %right_text43, align 4
  %right_value44 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 5
  %74 = ptrtoint ptr %right_value44 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %62, ptr %right_value44, align 4
  %cmp46 = icmp eq ptr %b, %62
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion30, i1 noundef zeroext %cmp46, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion30) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_move_tail(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion9 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion30 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %7 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list1, ptr %list1, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %9 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %10 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list2, ptr %list2, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list2, ptr %9, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %a, ptr %6, align 4
  %13 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list1, ptr %a, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %1, align 4
  %15 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %a, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call.i.i61 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %17, ptr noundef nonnull %list2) #6
  br i1 %call.i.i61, label %if.end.i.i63, label %list_add_tail.exit.list_add_tail.exit64_crit_edge

list_add_tail.exit.list_add_tail.exit64_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit64

if.end.i.i63:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b, ptr %9, align 4
  %19 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list2, ptr %b, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %4, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %b, ptr %17, align 4
  br label %list_add_tail.exit64

list_add_tail.exit64:                             ; preds = %if.end.i.i63, %list_add_tail.exit.list_add_tail.exit64_crit_edge
  %call.i.i65 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %a) #6
  br i1 %call.i.i65, label %if.end.i.i66, label %list_add_tail.exit64.__list_del_entry.exit.i_crit_edge

list_add_tail.exit64.__list_del_entry.exit.i_crit_edge: ; preds = %list_add_tail.exit64
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i

if.end.i.i66:                                     ; preds = %list_add_tail.exit64
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %a, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i66, %list_add_tail.exit64.__list_del_entry.exit.i_crit_edge
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef %29, ptr noundef nonnull %list2) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %a, ptr %9, align 4
  %31 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list2, ptr %a, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %1, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %a, ptr %29, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %34 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %34, align 4, !annotation !183
  %36 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %38 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %39 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %40 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %42 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %43 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.55, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %44 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %expected_true, align 4
  %45 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %list1, align 4
  %cmp.i = icmp eq ptr %46, %list1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  %47 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion9) #6
  %49 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion9, align 4
  %type12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %50 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type12, align 4
  %line13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %51 = ptrtoint ptr %line13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 198, ptr %line13, align 4
  %file14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %52 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.36, ptr %file14, align 4
  %message15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %53 = ptrtoint ptr %message15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message15, align 4
  %va17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va17 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va17, align 4
  %format18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %55 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_ptr_assert_format, ptr %format18, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 1
  %56 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 2
  %57 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.44, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 3
  %58 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 4
  %59 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.56, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion9, i32 0, i32 5
  %60 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %48, ptr %right_value, align 4
  %cmp20 = icmp eq ptr %b, %48
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext %cmp20, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion9) #6
  %61 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion30) #6
  %63 = ptrtoint ptr %__assertion30 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion30, align 4
  %type33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 1
  %64 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type33, align 4
  %line34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 2
  %65 = ptrtoint ptr %line34 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 199, ptr %line34, align 4
  %file35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 3
  %66 = ptrtoint ptr %file35 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.36, ptr %file35, align 4
  %message36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4
  %67 = ptrtoint ptr %message36 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message36, align 4
  %va38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va38 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va38, align 4
  %format39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 5
  %69 = ptrtoint ptr %format39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_ptr_assert_format, ptr %format39, align 4
  %operation40 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 1
  %70 = ptrtoint ptr %operation40 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.42, ptr %operation40, align 4
  %left_text41 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 2
  %71 = ptrtoint ptr %left_text41 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.48, ptr %left_text41, align 4
  %left_value42 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 3
  %72 = ptrtoint ptr %left_value42 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %a, ptr %left_value42, align 4
  %right_text43 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 4
  %73 = ptrtoint ptr %right_text43 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.47, ptr %right_text43, align 4
  %right_value44 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion30, i32 0, i32 5
  %74 = ptrtoint ptr %right_value44 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %62, ptr %right_value44, align 4
  %cmp46 = icmp eq ptr %a, %62
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion30, i1 noundef zeroext %cmp46, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion30) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_bulk_move_tail(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %c = alloca %struct.list_head, align 4
  %d = alloca %struct.list_head, align 4
  %x = alloca %struct.list_head, align 4
  %y = alloca %struct.list_head, align 4
  %list1_values = alloca [4 x ptr], align 4
  %list2_values = alloca [2 x ptr], align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion18 = alloca %struct.kunit_binary_assert, align 8
  %__assertion52 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion82 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %c, align 4, !annotation !183
  %7 = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d) #6
  %9 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %d, align 4, !annotation !183
  %10 = getelementptr inbounds %struct.list_head, ptr %d, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x) #6
  %12 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %x, align 4, !annotation !183
  %13 = getelementptr inbounds %struct.list_head, ptr %x, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %13, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y) #6
  %15 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %y, align 4, !annotation !183
  %16 = getelementptr inbounds %struct.list_head, ptr %y, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list1_values) #6
  %18 = getelementptr inbounds [4 x ptr], ptr %list1_values, i32 0, i32 1
  %19 = getelementptr inbounds [4 x ptr], ptr %list1_values, i32 0, i32 2
  %20 = getelementptr inbounds [4 x ptr], ptr %list1_values, i32 0, i32 3
  %21 = ptrtoint ptr %list1_values to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %x, ptr %list1_values, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b, ptr %18, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %c, ptr %19, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %y, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2_values) #6
  %25 = getelementptr inbounds [2 x ptr], ptr %list2_values, i32 0, i32 1
  %26 = ptrtoint ptr %list2_values to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %a, ptr %list2_values, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %d, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %28 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %29 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list1, ptr %list1, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list1, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %31 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %32 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list2, ptr %list2, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list2, ptr %31, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %x, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %x, ptr %28, align 4
  %35 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list1, ptr %x, align 4
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list1, ptr %13, align 4
  %37 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %x, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %28, align 4
  %call.i.i132 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %y, ptr noundef %39, ptr noundef nonnull %list1) #6
  br i1 %call.i.i132, label %if.end.i.i134, label %list_add_tail.exit.list_add_tail.exit135_crit_edge

list_add_tail.exit.list_add_tail.exit135_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit135

if.end.i.i134:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %y, ptr %28, align 4
  %41 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list1, ptr %y, align 4
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %16, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %y, ptr %39, align 4
  br label %list_add_tail.exit135

list_add_tail.exit135:                            ; preds = %if.end.i.i134, %list_add_tail.exit.list_add_tail.exit135_crit_edge
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %31, align 4
  %call.i.i137 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef %45, ptr noundef nonnull %list2) #6
  br i1 %call.i.i137, label %if.end.i.i139, label %list_add_tail.exit135.list_add_tail.exit140_crit_edge

list_add_tail.exit135.list_add_tail.exit140_crit_edge: ; preds = %list_add_tail.exit135
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit140

if.end.i.i139:                                    ; preds = %list_add_tail.exit135
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %a, ptr %31, align 4
  %47 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list2, ptr %a, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %1, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %a, ptr %45, align 4
  br label %list_add_tail.exit140

list_add_tail.exit140:                            ; preds = %if.end.i.i139, %list_add_tail.exit135.list_add_tail.exit140_crit_edge
  %50 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %31, align 4
  %call.i.i142 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %51, ptr noundef nonnull %list2) #6
  br i1 %call.i.i142, label %if.end.i.i144, label %list_add_tail.exit140.list_add_tail.exit145_crit_edge

list_add_tail.exit140.list_add_tail.exit145_crit_edge: ; preds = %list_add_tail.exit140
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit145

if.end.i.i144:                                    ; preds = %list_add_tail.exit140
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %b, ptr %31, align 4
  %53 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list2, ptr %b, align 4
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %4, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %b, ptr %51, align 4
  br label %list_add_tail.exit145

list_add_tail.exit145:                            ; preds = %if.end.i.i144, %list_add_tail.exit140.list_add_tail.exit145_crit_edge
  %56 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %31, align 4
  %call.i.i147 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %c, ptr noundef %57, ptr noundef nonnull %list2) #6
  br i1 %call.i.i147, label %if.end.i.i149, label %list_add_tail.exit145.list_add_tail.exit150_crit_edge

list_add_tail.exit145.list_add_tail.exit150_crit_edge: ; preds = %list_add_tail.exit145
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit150

if.end.i.i149:                                    ; preds = %list_add_tail.exit145
  call void @__sanitizer_cov_trace_pc() #5
  %58 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %c, ptr %31, align 4
  %59 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %list2, ptr %c, align 4
  %60 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %7, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %c, ptr %57, align 4
  br label %list_add_tail.exit150

list_add_tail.exit150:                            ; preds = %if.end.i.i149, %list_add_tail.exit145.list_add_tail.exit150_crit_edge
  %62 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %31, align 4
  %call.i.i152 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %d, ptr noundef %63, ptr noundef nonnull %list2) #6
  br i1 %call.i.i152, label %if.end.i.i154, label %list_add_tail.exit150.list_add_tail.exit155_crit_edge

list_add_tail.exit150.list_add_tail.exit155_crit_edge: ; preds = %list_add_tail.exit150
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit155

if.end.i.i154:                                    ; preds = %list_add_tail.exit150
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %d, ptr %31, align 4
  %65 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list2, ptr %d, align 4
  %66 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %10, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %d, ptr %63, align 4
  br label %list_add_tail.exit155

list_add_tail.exit155:                            ; preds = %if.end.i.i154, %list_add_tail.exit150.list_add_tail.exit155_crit_edge
  %68 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %c, align 4
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %4, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %71, align 4
  %73 = load ptr, ptr %4, align 4
  %74 = load ptr, ptr %c, align 4
  %prev4.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %prev4.i, align 4
  %76 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %16, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %b, ptr %77, align 4
  %79 = load ptr, ptr %16, align 4
  store ptr %79, ptr %4, align 4
  store ptr %y, ptr %c, align 4
  store ptr %c, ptr %16, align 4
  %80 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %ptr.0159 = load ptr, ptr %list1, align 4
  %cmp.i.not160 = icmp eq ptr %ptr.0159, %list1
  br i1 %cmp.i.not160, label %list_add_tail.exit155.do.body14_crit_edge, label %do.body.lr.ph

list_add_tail.exit155.do.body14_crit_edge:        ; preds = %list_add_tail.exit155
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body14

do.body.lr.ph:                                    ; preds = %list_add_tail.exit155
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %ptr.0162 = phi ptr [ %ptr.0159, %do.body.lr.ph ], [ %ptr.0, %do.body.do.body_crit_edge ]
  %i.0161 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %list1_values, i32 0, i32 %i.0161
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %83 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %test, ptr %__assertion, align 4
  %84 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %type, align 4
  %85 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 225, ptr %line, align 4
  %86 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.36, ptr %file, align 4
  %87 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %message, align 4
  %88 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %va, align 4
  %89 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %90 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.42, ptr %operation, align 4
  %91 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.57, ptr %left_text, align 4
  %92 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %ptr.0162, ptr %left_value, align 4
  %93 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.58, ptr %right_text, align 4
  %94 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %82, ptr %right_value, align 4
  %cmp = icmp eq ptr %ptr.0162, %82
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.0161, 1
  %95 = ptrtoint ptr %ptr.0162 to i32
  call void @__asan_load4_noabort(i32 %95)
  %ptr.0 = load ptr, ptr %ptr.0162, align 4
  %cmp.i.not = icmp eq ptr %ptr.0, %list1
  br i1 %cmp.i.not, label %do.body.do.body14_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body14

do.body14:                                        ; preds = %do.body.do.body14_crit_edge, %list_add_tail.exit155.do.body14_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_add_tail.exit155.do.body14_crit_edge ], [ %inc, %do.body.do.body14_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion18) #6
  %96 = getelementptr inbounds i8, ptr %__assertion18, i32 32
  %97 = call ptr @memset(ptr %96, i32 255, i32 24)
  %98 = ptrtoint ptr %__assertion18 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %test, ptr %__assertion18, align 8
  %type21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 1
  %99 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %type21, align 4
  %line22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 2
  %100 = ptrtoint ptr %line22 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 228, ptr %line22, align 8
  %file23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 3
  %101 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.36, ptr %file23, align 4
  %message24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4
  %102 = ptrtoint ptr %message24 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %message24, align 8
  %va26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %va26 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %va26, align 4
  %format27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 5
  %104 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @kunit_binary_assert_format, ptr %format27, align 8
  %operation28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 1
  %105 = ptrtoint ptr %operation28 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.42, ptr %operation28, align 4
  %left_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 2
  %106 = ptrtoint ptr %left_text29 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.59, ptr %left_text29, align 8
  %left_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %107 = ptrtoint ptr %left_value30 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv, ptr %left_value30, align 8
  %right_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 4
  %108 = ptrtoint ptr %right_text31 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.60, ptr %right_text31, align 8
  %right_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 5
  %109 = ptrtoint ptr %right_value32 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 4, ptr %right_value32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0.lcssa)
  %cmp35 = icmp eq i32 %i.0.lcssa, 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion18, i1 noundef zeroext %cmp35, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion18) #6
  %110 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %ptr.1163 = load ptr, ptr %list2, align 4
  %cmp.i157.not164 = icmp eq ptr %ptr.1163, %list2
  br i1 %cmp.i157.not164, label %do.body14.do.body78_crit_edge, label %do.body47.lr.ph

do.body14.do.body78_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body78

do.body47.lr.ph:                                  ; preds = %do.body14
  %type55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 1
  %line56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 2
  %file57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 3
  %message58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4
  %va60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4, i32 1
  %format61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 5
  %operation62 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 1
  %left_text63 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 2
  %left_value64 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 3
  %right_text65 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 4
  %right_value66 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 5
  br label %do.body47

do.body47:                                        ; preds = %do.body47.do.body47_crit_edge, %do.body47.lr.ph
  %ptr.1166 = phi ptr [ %ptr.1163, %do.body47.lr.ph ], [ %ptr.1, %do.body47.do.body47_crit_edge ]
  %i.1165 = phi i32 [ 0, %do.body47.lr.ph ], [ %inc74, %do.body47.do.body47_crit_edge ]
  %arrayidx50 = getelementptr [2 x ptr], ptr %list2_values, i32 0, i32 %i.1165
  %111 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx50, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion52) #6
  %113 = ptrtoint ptr %__assertion52 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %test, ptr %__assertion52, align 4
  %114 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %type55, align 4
  %115 = ptrtoint ptr %line56 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 231, ptr %line56, align 4
  %116 = ptrtoint ptr %file57 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.36, ptr %file57, align 4
  %117 = ptrtoint ptr %message58 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %message58, align 4
  %118 = ptrtoint ptr %va60 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %va60, align 4
  %119 = ptrtoint ptr %format61 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @kunit_binary_ptr_assert_format, ptr %format61, align 4
  %120 = ptrtoint ptr %operation62 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.42, ptr %operation62, align 4
  %121 = ptrtoint ptr %left_text63 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.57, ptr %left_text63, align 4
  %122 = ptrtoint ptr %left_value64 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %ptr.1166, ptr %left_value64, align 4
  %123 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.61, ptr %right_text65, align 4
  %124 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %112, ptr %right_value66, align 4
  %cmp68 = icmp eq ptr %ptr.1166, %112
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion52, i1 noundef zeroext %cmp68, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion52) #6
  %inc74 = add i32 %i.1165, 1
  %125 = ptrtoint ptr %ptr.1166 to i32
  call void @__asan_load4_noabort(i32 %125)
  %ptr.1 = load ptr, ptr %ptr.1166, align 4
  %cmp.i157.not = icmp eq ptr %ptr.1, %list2
  br i1 %cmp.i157.not, label %do.body47.do.body78_crit_edge, label %do.body47.do.body47_crit_edge

do.body47.do.body47_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body47

do.body47.do.body78_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body78

do.body78:                                        ; preds = %do.body47.do.body78_crit_edge, %do.body14.do.body78_crit_edge
  %i.1.lcssa = phi i32 [ 0, %do.body14.do.body78_crit_edge ], [ %inc74, %do.body47.do.body78_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion82) #6
  %126 = getelementptr inbounds i8, ptr %__assertion82, i32 32
  %127 = call ptr @memset(ptr %126, i32 255, i32 24)
  %128 = ptrtoint ptr %__assertion82 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %test, ptr %__assertion82, align 8
  %type85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 1
  %129 = ptrtoint ptr %type85 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %type85, align 4
  %line86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 2
  %130 = ptrtoint ptr %line86 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 234, ptr %line86, align 8
  %file87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 3
  %131 = ptrtoint ptr %file87 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @.str.36, ptr %file87, align 4
  %message88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 4
  %132 = ptrtoint ptr %message88 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %message88, align 8
  %va90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %va90 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %va90, align 4
  %format91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 5
  %134 = ptrtoint ptr %format91 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @kunit_binary_assert_format, ptr %format91, align 8
  %operation92 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 1
  %135 = ptrtoint ptr %operation92 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.42, ptr %operation92, align 4
  %left_text93 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 2
  %136 = ptrtoint ptr %left_text93 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.59, ptr %left_text93, align 8
  %left_value94 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 3
  %conv95 = sext i32 %i.1.lcssa to i64
  %137 = ptrtoint ptr %left_value94 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv95, ptr %left_value94, align 8
  %right_text96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 4
  %138 = ptrtoint ptr %right_text96 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.62, ptr %right_text96, align 8
  %right_value97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 5
  %139 = ptrtoint ptr %right_value97 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 2, ptr %right_value97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1.lcssa)
  %cmp100 = icmp eq i32 %i.1.lcssa, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion82, i1 noundef zeroext %cmp100, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion82) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2_values) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list1_values) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_is_first(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion5 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i.i31 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i31, label %if.end.i.i33, label %list_add_tail.exit.list_add_tail.exit34_crit_edge

list_add_tail.exit.list_add_tail.exit34_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit34

if.end.i.i33:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %6, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %4, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %14, align 4
  br label %list_add_tail.exit34

list_add_tail.exit34:                             ; preds = %if.end.i.i33, %list_add_tail.exit.list_add_tail.exit34_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %19 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !183
  %21 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 245, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %24 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %25 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %28 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.63, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %29 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %expected_true, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %31, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion5) #6
  %32 = getelementptr inbounds i8, ptr %__assertion5, i32 32
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !183
  %34 = ptrtoint ptr %__assertion5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test, ptr %__assertion5, align 4
  %type8 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 1
  %35 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %type8, align 4
  %line9 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 2
  %36 = ptrtoint ptr %line9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 246, ptr %line9, align 4
  %file10 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 3
  %37 = ptrtoint ptr %file10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.36, ptr %file10, align 4
  %message11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 4
  %38 = ptrtoint ptr %message11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %message11, align 4
  %va13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %va13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %va13, align 4
  %format14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 5
  %40 = ptrtoint ptr %format14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kunit_unary_assert_format, ptr %format14, align 4
  %condition15 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion5, i32 0, i32 1
  %41 = ptrtoint ptr %condition15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.64, ptr %condition15, align 4
  %expected_true16 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion5, i32 0, i32 2
  %42 = ptrtoint ptr %expected_true16 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %expected_true16, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 4
  %cmp.i37 = icmp ne ptr %44, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion5, i1 noundef zeroext %cmp.i37, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_is_last(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion5 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i.i31 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i31, label %if.end.i.i33, label %list_add_tail.exit.list_add_tail.exit34_crit_edge

list_add_tail.exit.list_add_tail.exit34_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit34

if.end.i.i33:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %6, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %4, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %14, align 4
  br label %list_add_tail.exit34

list_add_tail.exit34:                             ; preds = %if.end.i.i33, %list_add_tail.exit.list_add_tail.exit34_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %19 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !183
  %21 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 257, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %24 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %25 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %28 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.65, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %29 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %expected_true, align 4
  %30 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %a, align 4
  %cmp.i = icmp ne ptr %31, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion5) #6
  %32 = getelementptr inbounds i8, ptr %__assertion5, i32 32
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !183
  %34 = ptrtoint ptr %__assertion5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test, ptr %__assertion5, align 4
  %type8 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 1
  %35 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %type8, align 4
  %line9 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 2
  %36 = ptrtoint ptr %line9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 258, ptr %line9, align 4
  %file10 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 3
  %37 = ptrtoint ptr %file10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.36, ptr %file10, align 4
  %message11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 4
  %38 = ptrtoint ptr %message11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %message11, align 4
  %va13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %va13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %va13, align 4
  %format14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 5
  %40 = ptrtoint ptr %format14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kunit_unary_assert_format, ptr %format14, align 4
  %condition15 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion5, i32 0, i32 1
  %41 = ptrtoint ptr %condition15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.66, ptr %condition15, align 4
  %expected_true16 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion5, i32 0, i32 2
  %42 = ptrtoint ptr %expected_true16 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %expected_true16, align 4
  %43 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b, align 4
  %cmp.i35 = icmp eq ptr %44, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion5, i1 noundef zeroext %cmp.i35, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_empty(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion7 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %3 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %4 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list1, ptr %list1, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %7 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list2, ptr %list2, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list2, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %3, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list1, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list1, ptr %1, align 4
  %12 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %13 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !183
  %15 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %17 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 269, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %18 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %19 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.55, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %expected_true, align 4
  %24 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %list1, align 4
  %cmp.i = icmp ne ptr %25, %list1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion7) #6
  %26 = getelementptr inbounds i8, ptr %__assertion7, i32 32
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4, !annotation !183
  %28 = ptrtoint ptr %__assertion7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion7, align 4
  %type10 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 1
  %29 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %type10, align 4
  %line11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 2
  %30 = ptrtoint ptr %line11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 270, ptr %line11, align 4
  %file12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 3
  %31 = ptrtoint ptr %file12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.36, ptr %file12, align 4
  %message13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 4
  %32 = ptrtoint ptr %message13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %message13, align 4
  %va15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %va15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %va15, align 4
  %format16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 5
  %34 = ptrtoint ptr %format16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_unary_assert_format, ptr %format16, align 4
  %condition17 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion7, i32 0, i32 1
  %35 = ptrtoint ptr %condition17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.67, ptr %condition17, align 4
  %expected_true18 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion7, i32 0, i32 2
  %36 = ptrtoint ptr %expected_true18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %expected_true18, align 4
  %37 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %list2, align 4
  %cmp.i32 = icmp eq ptr %38, %list2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion7, i1 noundef zeroext %cmp.i32, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_empty_careful(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion7 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %3 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %4 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list1, ptr %list1, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %7 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list2, ptr %list2, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list2, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %3, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list1, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list1, ptr %1, align 4
  %12 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %13 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !183
  %15 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %17 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 282, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %18 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %19 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.37, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %expected_true, align 4
  %24 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %list1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i = icmp eq ptr %25, %list1
  br i1 %cmp.i.not.i, label %land.rhs.i, label %list_add_tail.exit.list_empty_careful.exit_crit_edge

list_add_tail.exit.list_empty_careful.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %cmp.i = icmp ne ptr %27, %list1
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %list_add_tail.exit.list_empty_careful.exit_crit_edge
  %28 = phi i1 [ true, %list_add_tail.exit.list_empty_careful.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion7) #6
  %29 = getelementptr inbounds i8, ptr %__assertion7, i32 32
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !183
  %31 = ptrtoint ptr %__assertion7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %test, ptr %__assertion7, align 4
  %type10 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 1
  %32 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %type10, align 4
  %line11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 2
  %33 = ptrtoint ptr %line11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 283, ptr %line11, align 4
  %file12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 3
  %34 = ptrtoint ptr %file12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.36, ptr %file12, align 4
  %message13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 4
  %35 = ptrtoint ptr %message13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %message13, align 4
  %va15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %va15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %va15, align 4
  %format16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion7, i32 0, i32 5
  %37 = ptrtoint ptr %format16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kunit_unary_assert_format, ptr %format16, align 4
  %condition17 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion7, i32 0, i32 1
  %38 = ptrtoint ptr %condition17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.38, ptr %condition17, align 4
  %expected_true18 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion7, i32 0, i32 2
  %39 = ptrtoint ptr %expected_true18 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %expected_true18, align 4
  %40 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %list2, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i33 = icmp eq ptr %41, %list2
  br i1 %cmp.i.not.i33, label %land.rhs.i37, label %list_empty_careful.exit.list_empty_careful.exit38_crit_edge

list_empty_careful.exit.list_empty_careful.exit38_crit_edge: ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit38

land.rhs.i37:                                     ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 4
  %cmp.i35 = icmp eq ptr %43, %list2
  br label %list_empty_careful.exit38

list_empty_careful.exit38:                        ; preds = %land.rhs.i37, %list_empty_careful.exit.list_empty_careful.exit38_crit_edge
  %44 = phi i1 [ false, %list_empty_careful.exit.list_empty_careful.exit38_crit_edge ], [ %cmp.i35, %land.rhs.i37 ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion7, i1 noundef zeroext %44, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_rotate_left(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion38 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %a, ptr %6, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %a, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %1, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i.i71 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i71, label %if.end.i.i73, label %list_add_tail.exit.list_add_tail.exit74_crit_edge

list_add_tail.exit.list_add_tail.exit74_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit74

if.end.i.i73:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %6, align 4
  %16 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %b, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %4, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %b, ptr %14, align 4
  br label %list_add_tail.exit74

list_add_tail.exit74:                             ; preds = %if.end.i.i73, %list_add_tail.exit.list_add_tail.exit74_crit_edge
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %20, %list
  br i1 %cmp.i.not.i, label %list_add_tail.exit74.list_rotate_left.exit_crit_edge, label %if.then.i

list_add_tail.exit74.list_rotate_left.exit_crit_edge: ; preds = %list_add_tail.exit74
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_rotate_left.exit

if.then.i:                                        ; preds = %list_add_tail.exit74
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %6, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %28, ptr noundef nonnull %list) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_rotate_left.exit_crit_edge

__list_del_entry.exit.i.i.list_rotate_left.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_rotate_left.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %20, ptr %6, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list, ptr %20, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %20, ptr %28, align 4
  br label %list_rotate_left.exit

list_rotate_left.exit:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_rotate_left.exit_crit_edge, %list_add_tail.exit74.list_rotate_left.exit_crit_edge
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %35 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %37 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 298, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %38 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %39 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %41 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %42 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %43 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.43, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %44 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %34, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %45 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.44, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %46 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %b, ptr %right_value, align 4
  %cmp = icmp eq ptr %34, %b
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion12) #6
  %49 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion12, align 4
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %50 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %51 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 299, ptr %line16, align 4
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %52 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.36, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %53 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message18, align 4
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %55 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_ptr_assert_format, ptr %format21, align 4
  %operation22 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 1
  %56 = ptrtoint ptr %operation22 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.42, ptr %operation22, align 4
  %left_text23 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 2
  %57 = ptrtoint ptr %left_text23 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.45, ptr %left_text23, align 4
  %left_value24 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 3
  %58 = ptrtoint ptr %left_value24 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %48, ptr %left_value24, align 4
  %right_text25 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 4
  %59 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.46, ptr %right_text25, align 4
  %right_value26 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion12, i32 0, i32 5
  %60 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list, ptr %right_value26, align 4
  %cmp28 = icmp eq ptr %48, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp28, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion12) #6
  %61 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion38) #6
  %63 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion38, align 4
  %type41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %64 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type41, align 4
  %line42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %65 = ptrtoint ptr %line42 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 300, ptr %line42, align 4
  %file43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %66 = ptrtoint ptr %file43 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.36, ptr %file43, align 4
  %message44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %67 = ptrtoint ptr %message44 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message44, align 4
  %va46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va46 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va46, align 4
  %format47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %69 = ptrtoint ptr %format47 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_ptr_assert_format, ptr %format47, align 4
  %operation48 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 1
  %70 = ptrtoint ptr %operation48 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.42, ptr %operation48, align 4
  %left_text49 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 2
  %71 = ptrtoint ptr %left_text49 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.47, ptr %left_text49, align 4
  %left_value50 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 3
  %72 = ptrtoint ptr %left_value50 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %62, ptr %left_value50, align 4
  %right_text51 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 4
  %73 = ptrtoint ptr %right_text51 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.48, ptr %right_text51, align 4
  %right_value52 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion38, i32 0, i32 5
  %74 = ptrtoint ptr %right_value52 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %a, ptr %right_value52, align 4
  %cmp54 = icmp eq ptr %62, %a
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext %cmp54, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion38) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_rotate_to_front(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %c = alloca %struct.list_head, align 4
  %d = alloca %struct.list_head, align 4
  %list_values = alloca [4 x ptr], align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %c, align 4, !annotation !183
  %7 = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d) #6
  %9 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %d, align 4, !annotation !183
  %10 = getelementptr inbounds %struct.list_head, ptr %d, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list_values) #6
  %12 = getelementptr inbounds [4 x ptr], ptr %list_values, i32 0, i32 1
  %13 = getelementptr inbounds [4 x ptr], ptr %list_values, i32 0, i32 2
  %14 = getelementptr inbounds [4 x ptr], ptr %list_values, i32 0, i32 3
  %15 = ptrtoint ptr %list_values to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %c, ptr %list_values, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %d, ptr %12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %a, ptr %13, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %19 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %list, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %19, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %a, ptr %19, align 4
  %23 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %a, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %1, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %a, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %19, align 4
  %call.i.i49 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %27, ptr noundef nonnull %list) #6
  br i1 %call.i.i49, label %if.end.i.i51, label %list_add_tail.exit.list_add_tail.exit52_crit_edge

list_add_tail.exit.list_add_tail.exit52_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit52

if.end.i.i51:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b, ptr %19, align 4
  %29 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %b, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %4, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %b, ptr %27, align 4
  br label %list_add_tail.exit52

list_add_tail.exit52:                             ; preds = %if.end.i.i51, %list_add_tail.exit.list_add_tail.exit52_crit_edge
  %32 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %19, align 4
  %call.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %c, ptr noundef %33, ptr noundef nonnull %list) #6
  br i1 %call.i.i54, label %if.end.i.i56, label %list_add_tail.exit52.list_add_tail.exit57_crit_edge

list_add_tail.exit52.list_add_tail.exit57_crit_edge: ; preds = %list_add_tail.exit52
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit57

if.end.i.i56:                                     ; preds = %list_add_tail.exit52
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %c, ptr %19, align 4
  %35 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %c, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %7, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %c, ptr %33, align 4
  br label %list_add_tail.exit57

list_add_tail.exit57:                             ; preds = %if.end.i.i56, %list_add_tail.exit52.list_add_tail.exit57_crit_edge
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %19, align 4
  %call.i.i59 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %d, ptr noundef %39, ptr noundef nonnull %list) #6
  br i1 %call.i.i59, label %if.end.i.i61, label %list_add_tail.exit57.list_add_tail.exit62_crit_edge

list_add_tail.exit57.list_add_tail.exit62_crit_edge: ; preds = %list_add_tail.exit57
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit62

if.end.i.i61:                                     ; preds = %list_add_tail.exit57
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %d, ptr %19, align 4
  %41 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list, ptr %d, align 4
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %10, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %d, ptr %39, align 4
  br label %list_add_tail.exit62

list_add_tail.exit62:                             ; preds = %if.end.i.i61, %list_add_tail.exit57.list_add_tail.exit62_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add_tail.exit62.__list_del_entry.exit.i.i_crit_edge

list_add_tail.exit62.__list_del_entry.exit.i.i_crit_edge: ; preds = %list_add_tail.exit62
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %list_add_tail.exit62
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %19, align 4
  %46 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %list_add_tail.exit62.__list_del_entry.exit.i.i_crit_edge
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %list, ptr noundef %51, ptr noundef nonnull %c) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_rotate_to_front.exit_crit_edge

__list_del_entry.exit.i.i.list_rotate_to_front.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_rotate_to_front.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list, ptr %7, align 4
  %53 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %c, ptr %list, align 4
  %54 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %19, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list, ptr %51, align 4
  br label %list_rotate_to_front.exit

list_rotate_to_front.exit:                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_rotate_to_front.exit_crit_edge
  %56 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %56)
  %ptr.063 = load ptr, ptr %list, align 4
  %cmp.i.not64 = icmp eq ptr %ptr.063, %list
  br i1 %cmp.i.not64, label %list_rotate_to_front.exit.do.body10_crit_edge, label %do.body.lr.ph

list_rotate_to_front.exit.do.body10_crit_edge:    ; preds = %list_rotate_to_front.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body10

do.body.lr.ph:                                    ; preds = %list_rotate_to_front.exit
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %ptr.066 = phi ptr [ %ptr.063, %do.body.lr.ph ], [ %ptr.0, %do.body.do.body_crit_edge ]
  %i.065 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %list_values, i32 0, i32 %i.065
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %59 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %test, ptr %__assertion, align 4
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %type, align 4
  %61 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 321, ptr %line, align 4
  %62 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.36, ptr %file, align 4
  %63 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %message, align 4
  %64 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %va, align 4
  %65 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %66 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.42, ptr %operation, align 4
  %67 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.57, ptr %left_text, align 4
  %68 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %ptr.066, ptr %left_value, align 4
  %69 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.68, ptr %right_text, align 4
  %70 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %58, ptr %right_value, align 4
  %cmp = icmp eq ptr %ptr.066, %58
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.065, 1
  %71 = ptrtoint ptr %ptr.066 to i32
  call void @__asan_load4_noabort(i32 %71)
  %ptr.0 = load ptr, ptr %ptr.066, align 4
  %cmp.i.not = icmp eq ptr %ptr.0, %list
  br i1 %cmp.i.not, label %do.body.do.body10_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body10

do.body10:                                        ; preds = %do.body.do.body10_crit_edge, %list_rotate_to_front.exit.do.body10_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_rotate_to_front.exit.do.body10_crit_edge ], [ %inc, %do.body.do.body10_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #6
  %72 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %73 = call ptr @memset(ptr %72, i32 255, i32 24)
  %74 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %75 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %76 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 324, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %77 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.36, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %78 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %80 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %81 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.42, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %82 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.59, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %83 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv, ptr %left_value26, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %84 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.60, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %85 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 4, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0.lcssa)
  %cmp31 = icmp eq i32 %i.0.lcssa, 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp31, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list_values) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_is_singular(ptr noundef %test) #0 align 64 {
entry:
  %a = alloca %struct.list_head, align 4
  %b = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion5 = alloca %struct.kunit_unary_assert, align 4
  %__assertion28 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %a, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !183
  %4 = getelementptr inbounds %struct.list_head, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %9 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !183
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
  store i32 333, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %14 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.36, ptr %file, align 4
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
  store ptr @.str.69, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %expected_true, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %a, ptr noundef %23, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %a, ptr %6, align 4
  %25 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %a, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %1, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %a, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion5) #6
  %28 = getelementptr inbounds i8, ptr %__assertion5, i32 32
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4, !annotation !183
  %30 = ptrtoint ptr %__assertion5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion5, align 4
  %type8 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 1
  %31 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type8, align 4
  %line9 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 2
  %32 = ptrtoint ptr %line9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 338, ptr %line9, align 4
  %file10 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 3
  %33 = ptrtoint ptr %file10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.36, ptr %file10, align 4
  %message11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 4
  %34 = ptrtoint ptr %message11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message11, align 4
  %va13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va13, align 4
  %format14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion5, i32 0, i32 5
  %36 = ptrtoint ptr %format14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_unary_assert_format, ptr %format14, align 4
  %condition15 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion5, i32 0, i32 1
  %37 = ptrtoint ptr %condition15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.69, ptr %condition15, align 4
  %expected_true16 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion5, i32 0, i32 2
  %38 = ptrtoint ptr %expected_true16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %expected_true16, align 4
  %39 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i56 = icmp eq ptr %40, %list
  br i1 %cmp.i.not.i56, label %list_add_tail.exit.list_is_singular.exit61_crit_edge, label %land.rhs.i60

list_add_tail.exit.list_is_singular.exit61_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_is_singular.exit61

land.rhs.i60:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %6, align 4
  %cmp.i58 = icmp eq ptr %40, %42
  br label %list_is_singular.exit61

list_is_singular.exit61:                          ; preds = %land.rhs.i60, %list_add_tail.exit.list_is_singular.exit61_crit_edge
  %43 = phi i1 [ false, %list_add_tail.exit.list_is_singular.exit61_crit_edge ], [ %cmp.i58, %land.rhs.i60 ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion5, i1 noundef zeroext %43, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion5) #6
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %6, align 4
  %call.i.i63 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %b, ptr noundef %45, ptr noundef nonnull %list) #6
  br i1 %call.i.i63, label %if.end.i.i65, label %list_is_singular.exit61.list_add_tail.exit66_crit_edge

list_is_singular.exit61.list_add_tail.exit66_crit_edge: ; preds = %list_is_singular.exit61
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit66

if.end.i.i65:                                     ; preds = %list_is_singular.exit61
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %b, ptr %6, align 4
  %47 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list, ptr %b, align 4
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %4, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %b, ptr %45, align 4
  br label %list_add_tail.exit66

list_add_tail.exit66:                             ; preds = %if.end.i.i65, %list_is_singular.exit61.list_add_tail.exit66_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion28) #6
  %50 = getelementptr inbounds i8, ptr %__assertion28, i32 32
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !183
  %52 = ptrtoint ptr %__assertion28 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %test, ptr %__assertion28, align 4
  %type31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 1
  %53 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %type31, align 4
  %line32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 2
  %54 = ptrtoint ptr %line32 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 343, ptr %line32, align 4
  %file33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 3
  %55 = ptrtoint ptr %file33 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.36, ptr %file33, align 4
  %message34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 4
  %56 = ptrtoint ptr %message34 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %message34, align 4
  %va36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %va36 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %va36, align 4
  %format37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 5
  %58 = ptrtoint ptr %format37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @kunit_unary_assert_format, ptr %format37, align 4
  %condition38 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion28, i32 0, i32 1
  %59 = ptrtoint ptr %condition38 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.69, ptr %condition38, align 4
  %expected_true39 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion28, i32 0, i32 2
  %60 = ptrtoint ptr %expected_true39 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %expected_true39, align 4
  %61 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i67 = icmp eq ptr %62, %list
  br i1 %cmp.i.not.i67, label %list_add_tail.exit66.list_is_singular.exit72_crit_edge, label %land.rhs.i71

list_add_tail.exit66.list_is_singular.exit72_crit_edge: ; preds = %list_add_tail.exit66
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_is_singular.exit72

land.rhs.i71:                                     ; preds = %list_add_tail.exit66
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %6, align 4
  %cmp.i69 = icmp ne ptr %62, %64
  br label %list_is_singular.exit72

list_is_singular.exit72:                          ; preds = %land.rhs.i71, %list_add_tail.exit66.list_is_singular.exit72_crit_edge
  %65 = phi i1 [ true, %list_add_tail.exit66.list_is_singular.exit72_crit_edge ], [ %cmp.i69, %land.rhs.i71 ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion28, i1 noundef zeroext %65, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion28) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_cut_position(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [3 x %struct.list_head], align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion18 = alloca %struct.kunit_binary_assert, align 8
  %__assertion52 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %entries) #6
  %0 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2
  %3 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %entries, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %6 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list1, ptr %list1, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %8 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %9 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list2, ptr %list2, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list2, ptr %8, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entries, ptr %5, align 4
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list1, ptr %entries, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %11, align 4
  %15 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entries, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.i.i99 = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %list1) #6
  br i1 %call.i.i99, label %if.end.i.i101, label %list_add_tail.exit.list_add_tail.exit102_crit_edge

list_add_tail.exit.list_add_tail.exit102_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit102

if.end.i.i101:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %0, ptr %5, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list1, ptr %0, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %1, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %0, ptr %17, align 4
  br label %list_add_tail.exit102

list_add_tail.exit102:                            ; preds = %if.end.i.i101, %list_add_tail.exit.list_add_tail.exit102_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call.i.i104 = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %23, ptr noundef nonnull %list1) #6
  br i1 %call.i.i104, label %if.end.i.i106, label %list_add_tail.exit102.list_add_tail.exit107_crit_edge

list_add_tail.exit102.list_add_tail.exit107_crit_edge: ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit107

if.end.i.i106:                                    ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %2, ptr %5, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list1, ptr %2, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %3, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %2, ptr %23, align 4
  br label %list_add_tail.exit107

list_add_tail.exit107:                            ; preds = %if.end.i.i106, %list_add_tail.exit102.list_add_tail.exit107_crit_edge
  %28 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %list1, align 4
  %cmp.i.not.i = icmp eq ptr %29, %list1
  br i1 %cmp.i.not.i, label %list_add_tail.exit107.list_cut_position.exit_crit_edge, label %if.end.i

list_add_tail.exit107.list_cut_position.exit_crit_edge: ; preds = %list_add_tail.exit107
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_cut_position.exit

if.end.i:                                         ; preds = %list_add_tail.exit107
  %30 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %list1, align 4
  %cmp.i.not.i.i = icmp eq ptr %31, %list1
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end8.i_crit_edge, label %list_is_singular.exit.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

list_is_singular.exit.i:                          ; preds = %if.end.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %cmp.i22.not.i = icmp ne ptr %31, %33
  %cmp.not.i = icmp eq ptr %31, %0
  %or.cond = or i1 %cmp.not.i, %cmp.i22.not.i
  br i1 %or.cond, label %list_is_singular.exit.i.if.end8.i_crit_edge, label %list_is_singular.exit.i.list_cut_position.exit_crit_edge

list_is_singular.exit.i.list_cut_position.exit_crit_edge: ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_cut_position.exit

list_is_singular.exit.i.if.end8.i_crit_edge:      ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %list_is_singular.exit.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  %36 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %31, ptr %list2, align 4
  %prev.i28.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list2, ptr %prev.i28.i, align 4
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %0, ptr %8, align 4
  store ptr %list2, ptr %0, align 4
  %39 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %35, ptr %list1, align 4
  %prev8.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev8.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list1, ptr %prev8.i.i, align 4
  br label %list_cut_position.exit

list_cut_position.exit:                           ; preds = %if.end8.i, %list_is_singular.exit.i.list_cut_position.exit_crit_edge, %list_add_tail.exit107.list_cut_position.exit_crit_edge
  %41 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %cur.0110 = load ptr, ptr %list2, align 4
  %cmp.i.not111 = icmp eq ptr %cur.0110, %list2
  br i1 %cmp.i.not111, label %list_cut_position.exit.do.body14_crit_edge, label %do.body.lr.ph

list_cut_position.exit.do.body14_crit_edge:       ; preds = %list_cut_position.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body14

do.body.lr.ph:                                    ; preds = %list_cut_position.exit
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.0113 = phi ptr [ %cur.0110, %do.body.lr.ph ], [ %cur.0, %do.body.do.body_crit_edge ]
  %i.0112 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx7 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.0112
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %42 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %test, ptr %__assertion, align 4
  %43 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %type, align 4
  %44 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 362, ptr %line, align 4
  %45 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.36, ptr %file, align 4
  %46 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %message, align 4
  %47 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %va, align 4
  %48 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %49 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.42, ptr %operation, align 4
  %50 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.70, ptr %left_text, align 4
  %51 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cur.0113, ptr %left_value, align 4
  %52 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.71, ptr %right_text, align 4
  %53 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx7, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.0113, %arrayidx7
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.0112, 1
  %54 = ptrtoint ptr %cur.0113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %cur.0 = load ptr, ptr %cur.0113, align 4
  %cmp.i.not = icmp eq ptr %cur.0, %list2
  br i1 %cmp.i.not, label %do.body.do.body14_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body14

do.body14:                                        ; preds = %do.body.do.body14_crit_edge, %list_cut_position.exit.do.body14_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_cut_position.exit.do.body14_crit_edge ], [ %inc, %do.body.do.body14_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion18) #6
  %55 = getelementptr inbounds i8, ptr %__assertion18, i32 32
  %56 = call ptr @memset(ptr %55, i32 255, i32 24)
  %57 = ptrtoint ptr %__assertion18 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion18, align 8
  %type21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 1
  %58 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type21, align 4
  %line22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 2
  %59 = ptrtoint ptr %line22 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 366, ptr %line22, align 8
  %file23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 3
  %60 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.36, ptr %file23, align 4
  %message24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4
  %61 = ptrtoint ptr %message24 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message24, align 8
  %va26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %va26 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va26, align 4
  %format27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 5
  %63 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_binary_assert_format, ptr %format27, align 8
  %operation28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 1
  %64 = ptrtoint ptr %operation28 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.42, ptr %operation28, align 4
  %left_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 2
  %65 = ptrtoint ptr %left_text29 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.59, ptr %left_text29, align 8
  %left_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %66 = ptrtoint ptr %left_value30 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv, ptr %left_value30, align 8
  %right_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 4
  %67 = ptrtoint ptr %right_text31 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.62, ptr %right_text31, align 8
  %right_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 5
  %68 = ptrtoint ptr %right_value32 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 2, ptr %right_value32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0.lcssa)
  %cmp35 = icmp eq i32 %i.0.lcssa, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion18, i1 noundef zeroext %cmp35, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion18) #6
  %69 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %cur.1114 = load ptr, ptr %list1, align 4
  %cmp.i108.not115 = icmp eq ptr %cur.1114, %list1
  br i1 %cmp.i108.not115, label %do.body14.for.end77_crit_edge, label %do.body47.lr.ph

do.body14.for.end77_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end77

do.body47.lr.ph:                                  ; preds = %do.body14
  %type55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 1
  %line56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 2
  %file57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 3
  %message58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4
  %va60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4, i32 1
  %format61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 5
  %operation62 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 1
  %left_text63 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 2
  %left_value64 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 3
  %right_text65 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 4
  %right_value66 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 5
  br label %do.body47

do.body47:                                        ; preds = %do.body47.do.body47_crit_edge, %do.body47.lr.ph
  %cur.1117 = phi ptr [ %cur.1114, %do.body47.lr.ph ], [ %cur.1, %do.body47.do.body47_crit_edge ]
  %i.1116 = phi i32 [ %i.0.lcssa, %do.body47.lr.ph ], [ %inc74, %do.body47.do.body47_crit_edge ]
  %arrayidx50 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.1116
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion52) #6
  %70 = ptrtoint ptr %__assertion52 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %test, ptr %__assertion52, align 4
  %71 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %type55, align 4
  %72 = ptrtoint ptr %line56 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 369, ptr %line56, align 4
  %73 = ptrtoint ptr %file57 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.36, ptr %file57, align 4
  %74 = ptrtoint ptr %message58 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %message58, align 4
  %75 = ptrtoint ptr %va60 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %va60, align 4
  %76 = ptrtoint ptr %format61 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @kunit_binary_ptr_assert_format, ptr %format61, align 4
  %77 = ptrtoint ptr %operation62 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.42, ptr %operation62, align 4
  %78 = ptrtoint ptr %left_text63 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.70, ptr %left_text63, align 4
  %79 = ptrtoint ptr %left_value64 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %cur.1117, ptr %left_value64, align 4
  %80 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.71, ptr %right_text65, align 4
  %81 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx50, ptr %right_value66, align 4
  %cmp68 = icmp eq ptr %cur.1117, %arrayidx50
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion52, i1 noundef zeroext %cmp68, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion52) #6
  %inc74 = add i32 %i.1116, 1
  %82 = ptrtoint ptr %cur.1117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %cur.1 = load ptr, ptr %cur.1117, align 4
  %cmp.i108.not = icmp eq ptr %cur.1, %list1
  br i1 %cmp.i108.not, label %do.body47.for.end77_crit_edge, label %do.body47.do.body47_crit_edge

do.body47.do.body47_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body47

do.body47.for.end77_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end77

for.end77:                                        ; preds = %do.body47.for.end77_crit_edge, %do.body14.for.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_cut_before(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [3 x %struct.list_head], align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion18 = alloca %struct.kunit_binary_assert, align 8
  %__assertion52 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %entries) #6
  %0 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2
  %3 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %entries, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %6 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list1, ptr %list1, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %8 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %9 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list2, ptr %list2, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list2, ptr %8, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entries, ptr %5, align 4
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list1, ptr %entries, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %11, align 4
  %15 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entries, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.i.i99 = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %list1) #6
  br i1 %call.i.i99, label %if.end.i.i101, label %list_add_tail.exit.list_add_tail.exit102_crit_edge

list_add_tail.exit.list_add_tail.exit102_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit102

if.end.i.i101:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %0, ptr %5, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list1, ptr %0, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %1, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %0, ptr %17, align 4
  br label %list_add_tail.exit102

list_add_tail.exit102:                            ; preds = %if.end.i.i101, %list_add_tail.exit.list_add_tail.exit102_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call.i.i104 = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %23, ptr noundef nonnull %list1) #6
  br i1 %call.i.i104, label %if.end.i.i106, label %list_add_tail.exit102.list_add_tail.exit107_crit_edge

list_add_tail.exit102.list_add_tail.exit107_crit_edge: ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit107

if.end.i.i106:                                    ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %2, ptr %5, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list1, ptr %2, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %3, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %2, ptr %23, align 4
  br label %list_add_tail.exit107

list_add_tail.exit107:                            ; preds = %if.end.i.i106, %list_add_tail.exit102.list_add_tail.exit107_crit_edge
  %28 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list1, align 4
  %cmp.i = icmp eq ptr %29, %0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %list_add_tail.exit107
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list2, ptr %list2, align 4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list2, ptr %8, align 4
  br label %list_cut_before.exit

if.end.i:                                         ; preds = %list_add_tail.exit107
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %list2, align 4
  %prev.i108 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list2, ptr %prev.i108, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %8, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list2, ptr %35, align 4
  %38 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %0, ptr %list1, align 4
  store ptr %list1, ptr %1, align 4
  br label %list_cut_before.exit

list_cut_before.exit:                             ; preds = %if.end.i, %if.then.i
  %39 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %cur.0112 = load ptr, ptr %list2, align 4
  %cmp.i109.not113 = icmp eq ptr %cur.0112, %list2
  br i1 %cmp.i109.not113, label %list_cut_before.exit.do.body14_crit_edge, label %do.body.lr.ph

list_cut_before.exit.do.body14_crit_edge:         ; preds = %list_cut_before.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body14

do.body.lr.ph:                                    ; preds = %list_cut_before.exit
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.0115 = phi ptr [ %cur.0112, %do.body.lr.ph ], [ %cur.0, %do.body.do.body_crit_edge ]
  %i.0114 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx7 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.0114
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %40 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion, align 4
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type, align 4
  %42 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 390, ptr %line, align 4
  %43 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.36, ptr %file, align 4
  %44 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message, align 4
  %45 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va, align 4
  %46 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %47 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.42, ptr %operation, align 4
  %48 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.70, ptr %left_text, align 4
  %49 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %cur.0115, ptr %left_value, align 4
  %50 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.71, ptr %right_text, align 4
  %51 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx7, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.0115, %arrayidx7
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.0114, 1
  %52 = ptrtoint ptr %cur.0115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %cur.0 = load ptr, ptr %cur.0115, align 4
  %cmp.i109.not = icmp eq ptr %cur.0, %list2
  br i1 %cmp.i109.not, label %do.body.do.body14_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body14

do.body14:                                        ; preds = %do.body.do.body14_crit_edge, %list_cut_before.exit.do.body14_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_cut_before.exit.do.body14_crit_edge ], [ %inc, %do.body.do.body14_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion18) #6
  %53 = getelementptr inbounds i8, ptr %__assertion18, i32 32
  %54 = call ptr @memset(ptr %53, i32 255, i32 24)
  %55 = ptrtoint ptr %__assertion18 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion18, align 8
  %type21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 1
  %56 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type21, align 4
  %line22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 2
  %57 = ptrtoint ptr %line22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 394, ptr %line22, align 8
  %file23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 3
  %58 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.36, ptr %file23, align 4
  %message24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4
  %59 = ptrtoint ptr %message24 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message24, align 8
  %va26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %va26 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va26, align 4
  %format27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 5
  %61 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_assert_format, ptr %format27, align 8
  %operation28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 1
  %62 = ptrtoint ptr %operation28 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.42, ptr %operation28, align 4
  %left_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 2
  %63 = ptrtoint ptr %left_text29 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.59, ptr %left_text29, align 8
  %left_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %64 = ptrtoint ptr %left_value30 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv, ptr %left_value30, align 8
  %right_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 4
  %65 = ptrtoint ptr %right_text31 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.72, ptr %right_text31, align 8
  %right_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 5
  %66 = ptrtoint ptr %right_value32 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 1, ptr %right_value32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0.lcssa)
  %cmp35 = icmp eq i32 %i.0.lcssa, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion18, i1 noundef zeroext %cmp35, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion18) #6
  %67 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %cur.1116 = load ptr, ptr %list1, align 4
  %cmp.i110.not117 = icmp eq ptr %cur.1116, %list1
  br i1 %cmp.i110.not117, label %do.body14.for.end77_crit_edge, label %do.body47.lr.ph

do.body14.for.end77_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end77

do.body47.lr.ph:                                  ; preds = %do.body14
  %type55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 1
  %line56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 2
  %file57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 3
  %message58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4
  %va60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4, i32 1
  %format61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 5
  %operation62 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 1
  %left_text63 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 2
  %left_value64 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 3
  %right_text65 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 4
  %right_value66 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion52, i32 0, i32 5
  br label %do.body47

do.body47:                                        ; preds = %do.body47.do.body47_crit_edge, %do.body47.lr.ph
  %cur.1119 = phi ptr [ %cur.1116, %do.body47.lr.ph ], [ %cur.1, %do.body47.do.body47_crit_edge ]
  %i.1118 = phi i32 [ %i.0.lcssa, %do.body47.lr.ph ], [ %inc74, %do.body47.do.body47_crit_edge ]
  %arrayidx50 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.1118
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion52) #6
  %68 = ptrtoint ptr %__assertion52 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %test, ptr %__assertion52, align 4
  %69 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %type55, align 4
  %70 = ptrtoint ptr %line56 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 397, ptr %line56, align 4
  %71 = ptrtoint ptr %file57 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.36, ptr %file57, align 4
  %72 = ptrtoint ptr %message58 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %message58, align 4
  %73 = ptrtoint ptr %va60 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %va60, align 4
  %74 = ptrtoint ptr %format61 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @kunit_binary_ptr_assert_format, ptr %format61, align 4
  %75 = ptrtoint ptr %operation62 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.42, ptr %operation62, align 4
  %76 = ptrtoint ptr %left_text63 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.70, ptr %left_text63, align 4
  %77 = ptrtoint ptr %left_value64 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %cur.1119, ptr %left_value64, align 4
  %78 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.71, ptr %right_text65, align 4
  %79 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx50, ptr %right_value66, align 4
  %cmp68 = icmp eq ptr %cur.1119, %arrayidx50
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion52, i1 noundef zeroext %cmp68, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion52) #6
  %inc74 = add i32 %i.1118, 1
  %80 = ptrtoint ptr %cur.1119 to i32
  call void @__asan_load4_noabort(i32 %80)
  %cur.1 = load ptr, ptr %cur.1119, align 4
  %cmp.i110.not = icmp eq ptr %cur.1, %list1
  br i1 %cmp.i110.not, label %do.body47.for.end77_crit_edge, label %do.body47.do.body47_crit_edge

do.body47.do.body47_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body47

do.body47.for.end77_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end77

for.end77:                                        ; preds = %do.body47.for.end77_crit_edge, %do.body14.for.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_splice(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [5 x %struct.list_head], align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion20 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %entries) #6
  %0 = call ptr @memset(ptr %entries, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %1 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %2 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list1, ptr %list1, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %4 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %5 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list2, ptr %list2, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list2, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entries, ptr %1, align 4
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list1, ptr %entries, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list1, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entries, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %arrayidx3 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i55 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx3, ptr noundef %12, ptr noundef nonnull %list1) #6
  br i1 %call.i.i55, label %if.end.i.i57, label %list_add_tail.exit.list_add_tail.exit58_crit_edge

list_add_tail.exit.list_add_tail.exit58_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit58

if.end.i.i57:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3, ptr %1, align 4
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %arrayidx3, align 4
  %prev3.i.i56 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i56 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i56, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx3, ptr %12, align 4
  br label %list_add_tail.exit58

list_add_tail.exit58:                             ; preds = %if.end.i.i57, %list_add_tail.exit.list_add_tail.exit58_crit_edge
  %arrayidx4 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %call.i.i60 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx4, ptr noundef %18, ptr noundef nonnull %list2) #6
  br i1 %call.i.i60, label %if.end.i.i62, label %list_add_tail.exit58.list_add_tail.exit63_crit_edge

list_add_tail.exit58.list_add_tail.exit63_crit_edge: ; preds = %list_add_tail.exit58
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit63

if.end.i.i62:                                     ; preds = %list_add_tail.exit58
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx4, ptr %4, align 4
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list2, ptr %arrayidx4, align 4
  %prev3.i.i61 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i61 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i61, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx4, ptr %18, align 4
  br label %list_add_tail.exit63

list_add_tail.exit63:                             ; preds = %if.end.i.i62, %list_add_tail.exit58.list_add_tail.exit63_crit_edge
  %arrayidx5 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 4
  %call.i.i65 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx5, ptr noundef %24, ptr noundef nonnull %list2) #6
  br i1 %call.i.i65, label %if.end.i.i67, label %list_add_tail.exit63.list_add_tail.exit68_crit_edge

list_add_tail.exit63.list_add_tail.exit68_crit_edge: ; preds = %list_add_tail.exit63
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit68

if.end.i.i67:                                     ; preds = %list_add_tail.exit63
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx5, ptr %4, align 4
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list2, ptr %arrayidx5, align 4
  %prev3.i.i66 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev3.i.i66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i66, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx5, ptr %24, align 4
  br label %list_add_tail.exit68

list_add_tail.exit68:                             ; preds = %if.end.i.i67, %list_add_tail.exit63.list_add_tail.exit68_crit_edge
  %arrayidx6 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx6, ptr noundef %30, ptr noundef nonnull %list1) #6
  br i1 %call.i.i70, label %if.end.i.i72, label %list_add_tail.exit68.list_add_tail.exit73_crit_edge

list_add_tail.exit68.list_add_tail.exit73_crit_edge: ; preds = %list_add_tail.exit68
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit73

if.end.i.i72:                                     ; preds = %list_add_tail.exit68
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx6, ptr %1, align 4
  %32 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list1, ptr %arrayidx6, align 4
  %prev3.i.i71 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev3.i.i71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i71, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx6, ptr %30, align 4
  br label %list_add_tail.exit73

list_add_tail.exit73:                             ; preds = %if.end.i.i72, %list_add_tail.exit68.list_add_tail.exit73_crit_edge
  %35 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %list2, align 4
  %cmp.i.not.i = icmp eq ptr %36, %list2
  br i1 %cmp.i.not.i, label %list_add_tail.exit73.list_splice.exit_crit_edge, label %if.then.i

list_add_tail.exit73.list_splice.exit_crit_edge:  ; preds = %list_add_tail.exit73
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_splice.exit

if.then.i:                                        ; preds = %list_add_tail.exit73
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %prev3.i.i74 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx3, ptr %prev3.i.i74, align 4
  store ptr %36, ptr %arrayidx3, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %40, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %list_add_tail.exit73.list_splice.exit_crit_edge
  %44 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %cur.075 = load ptr, ptr %list1, align 4
  %cmp.i.not76 = icmp eq ptr %cur.075, %list1
  br i1 %cmp.i.not76, label %list_splice.exit.do.body16_crit_edge, label %do.body.lr.ph

list_splice.exit.do.body16_crit_edge:             ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body.lr.ph:                                    ; preds = %list_splice.exit
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.078 = phi ptr [ %cur.075, %do.body.lr.ph ], [ %cur.0, %do.body.do.body_crit_edge ]
  %i.077 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx9 = getelementptr [5 x %struct.list_head], ptr %entries, i32 0, i32 %i.077
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %45 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %test, ptr %__assertion, align 4
  %46 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %type, align 4
  %47 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 420, ptr %line, align 4
  %48 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.36, ptr %file, align 4
  %49 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %message, align 4
  %50 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %va, align 4
  %51 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %52 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.42, ptr %operation, align 4
  %53 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.70, ptr %left_text, align 4
  %54 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cur.078, ptr %left_value, align 4
  %55 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.71, ptr %right_text, align 4
  %56 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx9, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.078, %arrayidx9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.077, 1
  %57 = ptrtoint ptr %cur.078 to i32
  call void @__asan_load4_noabort(i32 %57)
  %cur.0 = load ptr, ptr %cur.078, align 4
  %cmp.i.not = icmp eq ptr %cur.0, %list1
  br i1 %cmp.i.not, label %do.body.do.body16_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body16:                                        ; preds = %do.body.do.body16_crit_edge, %list_splice.exit.do.body16_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_splice.exit.do.body16_crit_edge ], [ %inc, %do.body.do.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion20) #6
  %58 = getelementptr inbounds i8, ptr %__assertion20, i32 32
  %59 = call ptr @memset(ptr %58, i32 255, i32 24)
  %60 = ptrtoint ptr %__assertion20 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test, ptr %__assertion20, align 8
  %type23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 1
  %61 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %type23, align 4
  %line24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 2
  %62 = ptrtoint ptr %line24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 424, ptr %line24, align 8
  %file25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 3
  %63 = ptrtoint ptr %file25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.36, ptr %file25, align 4
  %message26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4
  %64 = ptrtoint ptr %message26 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %message26, align 8
  %va28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %va28 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va28, align 4
  %format29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 5
  %66 = ptrtoint ptr %format29 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @kunit_binary_assert_format, ptr %format29, align 8
  %operation30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 1
  %67 = ptrtoint ptr %operation30 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.42, ptr %operation30, align 4
  %left_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 2
  %68 = ptrtoint ptr %left_text31 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.59, ptr %left_text31, align 8
  %left_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %69 = ptrtoint ptr %left_value32 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv, ptr %left_value32, align 8
  %right_text33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 4
  %70 = ptrtoint ptr %right_text33 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.73, ptr %right_text33, align 8
  %right_value34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 5
  %71 = ptrtoint ptr %right_value34 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 5, ptr %right_value34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0.lcssa)
  %cmp37 = icmp eq i32 %i.0.lcssa, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20, i1 noundef zeroext %cmp37, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_splice_tail(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [5 x %struct.list_head], align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion20 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %entries) #6
  %0 = call ptr @memset(ptr %entries, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %1 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %2 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list1, ptr %list1, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %4 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %5 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list2, ptr %list2, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list2, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entries, ptr %1, align 4
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list1, ptr %entries, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list1, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entries, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %arrayidx3 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i55 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx3, ptr noundef %12, ptr noundef nonnull %list1) #6
  br i1 %call.i.i55, label %if.end.i.i57, label %list_add_tail.exit.list_add_tail.exit58_crit_edge

list_add_tail.exit.list_add_tail.exit58_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit58

if.end.i.i57:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3, ptr %1, align 4
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %arrayidx3, align 4
  %prev3.i.i56 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i56 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i56, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx3, ptr %12, align 4
  br label %list_add_tail.exit58

list_add_tail.exit58:                             ; preds = %if.end.i.i57, %list_add_tail.exit.list_add_tail.exit58_crit_edge
  %arrayidx4 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %call.i.i60 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx4, ptr noundef %18, ptr noundef nonnull %list2) #6
  br i1 %call.i.i60, label %if.end.i.i62, label %list_add_tail.exit58.list_add_tail.exit63_crit_edge

list_add_tail.exit58.list_add_tail.exit63_crit_edge: ; preds = %list_add_tail.exit58
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit63

if.end.i.i62:                                     ; preds = %list_add_tail.exit58
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx4, ptr %4, align 4
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list2, ptr %arrayidx4, align 4
  %prev3.i.i61 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i61 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i61, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx4, ptr %18, align 4
  br label %list_add_tail.exit63

list_add_tail.exit63:                             ; preds = %if.end.i.i62, %list_add_tail.exit58.list_add_tail.exit63_crit_edge
  %arrayidx5 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 4
  %call.i.i65 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx5, ptr noundef %24, ptr noundef nonnull %list2) #6
  br i1 %call.i.i65, label %if.end.i.i67, label %list_add_tail.exit63.list_add_tail.exit68_crit_edge

list_add_tail.exit63.list_add_tail.exit68_crit_edge: ; preds = %list_add_tail.exit63
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit68

if.end.i.i67:                                     ; preds = %list_add_tail.exit63
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx5, ptr %4, align 4
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list2, ptr %arrayidx5, align 4
  %prev3.i.i66 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev3.i.i66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i66, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx5, ptr %24, align 4
  br label %list_add_tail.exit68

list_add_tail.exit68:                             ; preds = %if.end.i.i67, %list_add_tail.exit63.list_add_tail.exit68_crit_edge
  %arrayidx6 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx6, ptr noundef %30, ptr noundef nonnull %list1) #6
  br i1 %call.i.i70, label %if.end.i.i72, label %list_add_tail.exit68.list_add_tail.exit73_crit_edge

list_add_tail.exit68.list_add_tail.exit73_crit_edge: ; preds = %list_add_tail.exit68
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit73

if.end.i.i72:                                     ; preds = %list_add_tail.exit68
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx6, ptr %1, align 4
  %32 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list1, ptr %arrayidx6, align 4
  %prev3.i.i71 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev3.i.i71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i71, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx6, ptr %30, align 4
  br label %list_add_tail.exit73

list_add_tail.exit73:                             ; preds = %if.end.i.i72, %list_add_tail.exit68.list_add_tail.exit73_crit_edge
  %35 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %list2, align 4
  %cmp.i.not.i = icmp eq ptr %36, %list2
  br i1 %cmp.i.not.i, label %list_add_tail.exit73.list_splice_tail.exit_crit_edge, label %if.then.i

list_add_tail.exit73.list_splice_tail.exit_crit_edge: ; preds = %list_add_tail.exit73
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %list_add_tail.exit73
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i74 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i74, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %prev3.i.i75 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i75 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i75, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx6, ptr %40, align 4
  store ptr %40, ptr %prev.i74, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %list_add_tail.exit73.list_splice_tail.exit_crit_edge
  %44 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %cur.076 = load ptr, ptr %list1, align 4
  %cmp.i.not77 = icmp eq ptr %cur.076, %list1
  br i1 %cmp.i.not77, label %list_splice_tail.exit.do.body16_crit_edge, label %do.body.lr.ph

list_splice_tail.exit.do.body16_crit_edge:        ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body.lr.ph:                                    ; preds = %list_splice_tail.exit
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.079 = phi ptr [ %cur.076, %do.body.lr.ph ], [ %cur.0, %do.body.do.body_crit_edge ]
  %i.078 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx9 = getelementptr [5 x %struct.list_head], ptr %entries, i32 0, i32 %i.078
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %45 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %test, ptr %__assertion, align 4
  %46 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %type, align 4
  %47 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 445, ptr %line, align 4
  %48 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.36, ptr %file, align 4
  %49 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %message, align 4
  %50 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %va, align 4
  %51 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %52 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.42, ptr %operation, align 4
  %53 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.70, ptr %left_text, align 4
  %54 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cur.079, ptr %left_value, align 4
  %55 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.71, ptr %right_text, align 4
  %56 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx9, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.079, %arrayidx9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.078, 1
  %57 = ptrtoint ptr %cur.079 to i32
  call void @__asan_load4_noabort(i32 %57)
  %cur.0 = load ptr, ptr %cur.079, align 4
  %cmp.i.not = icmp eq ptr %cur.0, %list1
  br i1 %cmp.i.not, label %do.body.do.body16_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body16:                                        ; preds = %do.body.do.body16_crit_edge, %list_splice_tail.exit.do.body16_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_splice_tail.exit.do.body16_crit_edge ], [ %inc, %do.body.do.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion20) #6
  %58 = getelementptr inbounds i8, ptr %__assertion20, i32 32
  %59 = call ptr @memset(ptr %58, i32 255, i32 24)
  %60 = ptrtoint ptr %__assertion20 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test, ptr %__assertion20, align 8
  %type23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 1
  %61 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %type23, align 4
  %line24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 2
  %62 = ptrtoint ptr %line24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 449, ptr %line24, align 8
  %file25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 3
  %63 = ptrtoint ptr %file25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.36, ptr %file25, align 4
  %message26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4
  %64 = ptrtoint ptr %message26 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %message26, align 8
  %va28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %va28 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va28, align 4
  %format29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 5
  %66 = ptrtoint ptr %format29 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @kunit_binary_assert_format, ptr %format29, align 8
  %operation30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 1
  %67 = ptrtoint ptr %operation30 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.42, ptr %operation30, align 4
  %left_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 2
  %68 = ptrtoint ptr %left_text31 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.59, ptr %left_text31, align 8
  %left_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %69 = ptrtoint ptr %left_value32 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv, ptr %left_value32, align 8
  %right_text33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 4
  %70 = ptrtoint ptr %right_text33 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.73, ptr %right_text33, align 8
  %right_value34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 5
  %71 = ptrtoint ptr %right_value34 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 5, ptr %right_value34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0.lcssa)
  %cmp37 = icmp eq i32 %i.0.lcssa, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20, i1 noundef zeroext %cmp37, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_splice_init(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [5 x %struct.list_head], align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion20 = alloca %struct.kunit_binary_assert, align 8
  %__assertion44 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %entries) #6
  %0 = call ptr @memset(ptr %entries, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %1 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %2 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list1, ptr %list1, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %4 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %5 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list2, ptr %list2, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list2, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entries, ptr %1, align 4
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list1, ptr %entries, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list1, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entries, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %arrayidx3 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i77 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx3, ptr noundef %12, ptr noundef nonnull %list1) #6
  br i1 %call.i.i77, label %if.end.i.i79, label %list_add_tail.exit.list_add_tail.exit80_crit_edge

list_add_tail.exit.list_add_tail.exit80_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit80

if.end.i.i79:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3, ptr %1, align 4
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %arrayidx3, align 4
  %prev3.i.i78 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i78, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx3, ptr %12, align 4
  br label %list_add_tail.exit80

list_add_tail.exit80:                             ; preds = %if.end.i.i79, %list_add_tail.exit.list_add_tail.exit80_crit_edge
  %arrayidx4 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %call.i.i82 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx4, ptr noundef %18, ptr noundef nonnull %list2) #6
  br i1 %call.i.i82, label %if.end.i.i84, label %list_add_tail.exit80.list_add_tail.exit85_crit_edge

list_add_tail.exit80.list_add_tail.exit85_crit_edge: ; preds = %list_add_tail.exit80
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit85

if.end.i.i84:                                     ; preds = %list_add_tail.exit80
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx4, ptr %4, align 4
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list2, ptr %arrayidx4, align 4
  %prev3.i.i83 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i83 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i83, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx4, ptr %18, align 4
  br label %list_add_tail.exit85

list_add_tail.exit85:                             ; preds = %if.end.i.i84, %list_add_tail.exit80.list_add_tail.exit85_crit_edge
  %arrayidx5 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 4
  %call.i.i87 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx5, ptr noundef %24, ptr noundef nonnull %list2) #6
  br i1 %call.i.i87, label %if.end.i.i89, label %list_add_tail.exit85.list_add_tail.exit90_crit_edge

list_add_tail.exit85.list_add_tail.exit90_crit_edge: ; preds = %list_add_tail.exit85
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit90

if.end.i.i89:                                     ; preds = %list_add_tail.exit85
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx5, ptr %4, align 4
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list2, ptr %arrayidx5, align 4
  %prev3.i.i88 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev3.i.i88 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i88, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx5, ptr %24, align 4
  br label %list_add_tail.exit90

list_add_tail.exit90:                             ; preds = %if.end.i.i89, %list_add_tail.exit85.list_add_tail.exit90_crit_edge
  %arrayidx6 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx6, ptr noundef %30, ptr noundef nonnull %list1) #6
  br i1 %call.i.i92, label %if.end.i.i94, label %list_add_tail.exit90.list_add_tail.exit95_crit_edge

list_add_tail.exit90.list_add_tail.exit95_crit_edge: ; preds = %list_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit95

if.end.i.i94:                                     ; preds = %list_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx6, ptr %1, align 4
  %32 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list1, ptr %arrayidx6, align 4
  %prev3.i.i93 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev3.i.i93 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i93, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx6, ptr %30, align 4
  br label %list_add_tail.exit95

list_add_tail.exit95:                             ; preds = %if.end.i.i94, %list_add_tail.exit90.list_add_tail.exit95_crit_edge
  %35 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %list2, align 4
  %cmp.i.not.i = icmp eq ptr %36, %list2
  br i1 %cmp.i.not.i, label %list_add_tail.exit95.list_splice_init.exit_crit_edge, label %if.then.i

list_add_tail.exit95.list_splice_init.exit_crit_edge: ; preds = %list_add_tail.exit95
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %list_add_tail.exit95
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %prev3.i.i96 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx3, ptr %prev3.i.i96, align 4
  store ptr %36, ptr %arrayidx3, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %40, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev6.i.i, align 4
  %44 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list2, ptr %list2, align 4
  store ptr %list2, ptr %4, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %list_add_tail.exit95.list_splice_init.exit_crit_edge
  %45 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %cur.0100 = load ptr, ptr %list1, align 4
  %cmp.i.not101 = icmp eq ptr %cur.0100, %list1
  br i1 %cmp.i.not101, label %list_splice_init.exit.do.body16_crit_edge, label %do.body.lr.ph

list_splice_init.exit.do.body16_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body.lr.ph:                                    ; preds = %list_splice_init.exit
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.0103 = phi ptr [ %cur.0100, %do.body.lr.ph ], [ %cur.0, %do.body.do.body_crit_edge ]
  %i.0102 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx9 = getelementptr [5 x %struct.list_head], ptr %entries, i32 0, i32 %i.0102
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %46 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion, align 4
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type, align 4
  %48 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 470, ptr %line, align 4
  %49 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.36, ptr %file, align 4
  %50 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message, align 4
  %51 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va, align 4
  %52 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %53 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.42, ptr %operation, align 4
  %54 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.70, ptr %left_text, align 4
  %55 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cur.0103, ptr %left_value, align 4
  %56 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.71, ptr %right_text, align 4
  %57 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx9, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.0103, %arrayidx9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.0102, 1
  %58 = ptrtoint ptr %cur.0103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %cur.0 = load ptr, ptr %cur.0103, align 4
  %cmp.i.not = icmp eq ptr %cur.0, %list1
  br i1 %cmp.i.not, label %do.body.do.body16_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body16:                                        ; preds = %do.body.do.body16_crit_edge, %list_splice_init.exit.do.body16_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_splice_init.exit.do.body16_crit_edge ], [ %inc, %do.body.do.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion20) #6
  %59 = getelementptr inbounds i8, ptr %__assertion20, i32 32
  %60 = call ptr @memset(ptr %59, i32 255, i32 24)
  %61 = ptrtoint ptr %__assertion20 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %test, ptr %__assertion20, align 8
  %type23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 1
  %62 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type23, align 4
  %line24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 2
  %63 = ptrtoint ptr %line24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 474, ptr %line24, align 8
  %file25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 3
  %64 = ptrtoint ptr %file25 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.36, ptr %file25, align 4
  %message26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4
  %65 = ptrtoint ptr %message26 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %message26, align 8
  %va28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %va28 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %va28, align 4
  %format29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 5
  %67 = ptrtoint ptr %format29 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @kunit_binary_assert_format, ptr %format29, align 8
  %operation30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 1
  %68 = ptrtoint ptr %operation30 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.42, ptr %operation30, align 4
  %left_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 2
  %69 = ptrtoint ptr %left_text31 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.59, ptr %left_text31, align 8
  %left_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %70 = ptrtoint ptr %left_value32 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv, ptr %left_value32, align 8
  %right_text33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 4
  %71 = ptrtoint ptr %right_text33 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.73, ptr %right_text33, align 8
  %right_value34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 5
  %72 = ptrtoint ptr %right_value34 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 5, ptr %right_value34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0.lcssa)
  %cmp37 = icmp eq i32 %i.0.lcssa, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20, i1 noundef zeroext %cmp37, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion20) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion44) #6
  %73 = getelementptr inbounds i8, ptr %__assertion44, i32 32
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %73, align 4, !annotation !183
  %75 = ptrtoint ptr %__assertion44 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %test, ptr %__assertion44, align 4
  %type47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 1
  %76 = ptrtoint ptr %type47 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %type47, align 4
  %line48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 2
  %77 = ptrtoint ptr %line48 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 476, ptr %line48, align 4
  %file49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 3
  %78 = ptrtoint ptr %file49 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.36, ptr %file49, align 4
  %message50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 4
  %79 = ptrtoint ptr %message50 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %message50, align 4
  %va52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %va52 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %va52, align 4
  %format53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 5
  %81 = ptrtoint ptr %format53 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @kunit_unary_assert_format, ptr %format53, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion44, i32 0, i32 1
  %82 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.38, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion44, i32 0, i32 2
  %83 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %expected_true, align 4
  %84 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %list2, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i97 = icmp eq ptr %85, %list2
  br i1 %cmp.i.not.i97, label %land.rhs.i, label %do.body16.list_empty_careful.exit_crit_edge

do.body16.list_empty_careful.exit_crit_edge:      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %4, align 4
  %cmp.i99 = icmp eq ptr %87, %list2
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %do.body16.list_empty_careful.exit_crit_edge
  %88 = phi i1 [ false, %do.body16.list_empty_careful.exit_crit_edge ], [ %cmp.i99, %land.rhs.i ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion44, i1 noundef zeroext %88, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion44) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_splice_tail_init(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [5 x %struct.list_head], align 4
  %list1 = alloca %struct.list_head, align 4
  %list2 = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion20 = alloca %struct.kunit_binary_assert, align 8
  %__assertion44 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %entries) #6
  %0 = call ptr @memset(ptr %entries, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1) #6
  %1 = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 1
  %2 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list1, ptr %list1, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list2) #6
  %4 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1
  %5 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list2, ptr %list2, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list2, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list1, ptr noundef nonnull %list1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entries, ptr %1, align 4
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list1, ptr %entries, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list1, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entries, ptr %list1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %arrayidx3 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i77 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx3, ptr noundef %12, ptr noundef nonnull %list1) #6
  br i1 %call.i.i77, label %if.end.i.i79, label %list_add_tail.exit.list_add_tail.exit80_crit_edge

list_add_tail.exit.list_add_tail.exit80_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit80

if.end.i.i79:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3, ptr %1, align 4
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list1, ptr %arrayidx3, align 4
  %prev3.i.i78 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i78, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx3, ptr %12, align 4
  br label %list_add_tail.exit80

list_add_tail.exit80:                             ; preds = %if.end.i.i79, %list_add_tail.exit.list_add_tail.exit80_crit_edge
  %arrayidx4 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %call.i.i82 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx4, ptr noundef %18, ptr noundef nonnull %list2) #6
  br i1 %call.i.i82, label %if.end.i.i84, label %list_add_tail.exit80.list_add_tail.exit85_crit_edge

list_add_tail.exit80.list_add_tail.exit85_crit_edge: ; preds = %list_add_tail.exit80
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit85

if.end.i.i84:                                     ; preds = %list_add_tail.exit80
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx4, ptr %4, align 4
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list2, ptr %arrayidx4, align 4
  %prev3.i.i83 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i83 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i83, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx4, ptr %18, align 4
  br label %list_add_tail.exit85

list_add_tail.exit85:                             ; preds = %if.end.i.i84, %list_add_tail.exit80.list_add_tail.exit85_crit_edge
  %arrayidx5 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 4
  %call.i.i87 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx5, ptr noundef %24, ptr noundef nonnull %list2) #6
  br i1 %call.i.i87, label %if.end.i.i89, label %list_add_tail.exit85.list_add_tail.exit90_crit_edge

list_add_tail.exit85.list_add_tail.exit90_crit_edge: ; preds = %list_add_tail.exit85
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit90

if.end.i.i89:                                     ; preds = %list_add_tail.exit85
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx5, ptr %4, align 4
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list2, ptr %arrayidx5, align 4
  %prev3.i.i88 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev3.i.i88 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i88, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx5, ptr %24, align 4
  br label %list_add_tail.exit90

list_add_tail.exit90:                             ; preds = %if.end.i.i89, %list_add_tail.exit85.list_add_tail.exit90_crit_edge
  %arrayidx6 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx6, ptr noundef %30, ptr noundef nonnull %list1) #6
  br i1 %call.i.i92, label %if.end.i.i94, label %list_add_tail.exit90.list_add_tail.exit95_crit_edge

list_add_tail.exit90.list_add_tail.exit95_crit_edge: ; preds = %list_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit95

if.end.i.i94:                                     ; preds = %list_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx6, ptr %1, align 4
  %32 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list1, ptr %arrayidx6, align 4
  %prev3.i.i93 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev3.i.i93 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i93, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx6, ptr %30, align 4
  br label %list_add_tail.exit95

list_add_tail.exit95:                             ; preds = %if.end.i.i94, %list_add_tail.exit90.list_add_tail.exit95_crit_edge
  %35 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %list2, align 4
  %cmp.i.not.i = icmp eq ptr %36, %list2
  br i1 %cmp.i.not.i, label %list_add_tail.exit95.list_splice_tail_init.exit_crit_edge, label %if.then.i

list_add_tail.exit95.list_splice_tail_init.exit_crit_edge: ; preds = %list_add_tail.exit95
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %list_add_tail.exit95
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i96 = getelementptr inbounds [5 x %struct.list_head], ptr %entries, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i96, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %prev3.i.i97 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i97 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i97, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx6, ptr %40, align 4
  store ptr %40, ptr %prev.i96, align 4
  %44 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list2, ptr %list2, align 4
  store ptr %list2, ptr %4, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %list_add_tail.exit95.list_splice_tail_init.exit_crit_edge
  %45 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %cur.0101 = load ptr, ptr %list1, align 4
  %cmp.i.not102 = icmp eq ptr %cur.0101, %list1
  br i1 %cmp.i.not102, label %list_splice_tail_init.exit.do.body16_crit_edge, label %do.body.lr.ph

list_splice_tail_init.exit.do.body16_crit_edge:   ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body.lr.ph:                                    ; preds = %list_splice_tail_init.exit
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.0104 = phi ptr [ %cur.0101, %do.body.lr.ph ], [ %cur.0, %do.body.do.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx9 = getelementptr [5 x %struct.list_head], ptr %entries, i32 0, i32 %i.0103
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %46 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion, align 4
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type, align 4
  %48 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 497, ptr %line, align 4
  %49 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.36, ptr %file, align 4
  %50 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message, align 4
  %51 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va, align 4
  %52 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %53 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.42, ptr %operation, align 4
  %54 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.70, ptr %left_text, align 4
  %55 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cur.0104, ptr %left_value, align 4
  %56 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.71, ptr %right_text, align 4
  %57 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx9, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.0104, %arrayidx9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.0103, 1
  %58 = ptrtoint ptr %cur.0104 to i32
  call void @__asan_load4_noabort(i32 %58)
  %cur.0 = load ptr, ptr %cur.0104, align 4
  %cmp.i.not = icmp eq ptr %cur.0, %list1
  br i1 %cmp.i.not, label %do.body.do.body16_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

do.body16:                                        ; preds = %do.body.do.body16_crit_edge, %list_splice_tail_init.exit.do.body16_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_splice_tail_init.exit.do.body16_crit_edge ], [ %inc, %do.body.do.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion20) #6
  %59 = getelementptr inbounds i8, ptr %__assertion20, i32 32
  %60 = call ptr @memset(ptr %59, i32 255, i32 24)
  %61 = ptrtoint ptr %__assertion20 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %test, ptr %__assertion20, align 8
  %type23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 1
  %62 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type23, align 4
  %line24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 2
  %63 = ptrtoint ptr %line24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 501, ptr %line24, align 8
  %file25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 3
  %64 = ptrtoint ptr %file25 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.36, ptr %file25, align 4
  %message26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4
  %65 = ptrtoint ptr %message26 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %message26, align 8
  %va28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %va28 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %va28, align 4
  %format29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 5
  %67 = ptrtoint ptr %format29 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @kunit_binary_assert_format, ptr %format29, align 8
  %operation30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 1
  %68 = ptrtoint ptr %operation30 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.42, ptr %operation30, align 4
  %left_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 2
  %69 = ptrtoint ptr %left_text31 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.59, ptr %left_text31, align 8
  %left_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %70 = ptrtoint ptr %left_value32 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv, ptr %left_value32, align 8
  %right_text33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 4
  %71 = ptrtoint ptr %right_text33 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.73, ptr %right_text33, align 8
  %right_value34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 5
  %72 = ptrtoint ptr %right_value34 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 5, ptr %right_value34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0.lcssa)
  %cmp37 = icmp eq i32 %i.0.lcssa, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20, i1 noundef zeroext %cmp37, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion20) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion44) #6
  %73 = getelementptr inbounds i8, ptr %__assertion44, i32 32
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %73, align 4, !annotation !183
  %75 = ptrtoint ptr %__assertion44 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %test, ptr %__assertion44, align 4
  %type47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 1
  %76 = ptrtoint ptr %type47 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %type47, align 4
  %line48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 2
  %77 = ptrtoint ptr %line48 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 503, ptr %line48, align 4
  %file49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 3
  %78 = ptrtoint ptr %file49 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.36, ptr %file49, align 4
  %message50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 4
  %79 = ptrtoint ptr %message50 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %message50, align 4
  %va52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %va52 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %va52, align 4
  %format53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 5
  %81 = ptrtoint ptr %format53 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @kunit_unary_assert_format, ptr %format53, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion44, i32 0, i32 1
  %82 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.38, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion44, i32 0, i32 2
  %83 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %expected_true, align 4
  %84 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %list2, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  %cmp.i.not.i98 = icmp eq ptr %85, %list2
  br i1 %cmp.i.not.i98, label %land.rhs.i, label %do.body16.list_empty_careful.exit_crit_edge

do.body16.list_empty_careful.exit_crit_edge:      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %4, align 4
  %cmp.i100 = icmp eq ptr %87, %list2
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %do.body16.list_empty_careful.exit_crit_edge
  %88 = phi i1 [ false, %do.body16.list_empty_careful.exit_crit_edge ], [ %cmp.i100, %land.rhs.i ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion44, i1 noundef zeroext %88, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion44) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_entry(ptr noundef %test) #0 align 64 {
entry:
  %test_struct = alloca %struct.list_test_struct, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct) #6
  %0 = ptrtoint ptr %test_struct to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %test_struct, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  %3 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 511, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.74, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test_struct, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.75, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test_struct, ptr %right_value, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_first_entry(ptr noundef %test) #0 align 64 {
entry:
  %test_struct1 = alloca %struct.list_test_struct, align 4
  %test_struct2 = alloca %struct.list_test_struct, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct1) #6
  %0 = ptrtoint ptr %test_struct1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %test_struct1, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  %3 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct2) #6
  %5 = ptrtoint ptr %test_struct2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %test_struct2, align 4, !annotation !183
  %6 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !183
  %8 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %10 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %10, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %10, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %3, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %call.i.i13 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %18, ptr noundef nonnull %list) #6
  br i1 %call.i.i13, label %if.end.i.i15, label %list_add_tail.exit.list_add_tail.exit16_crit_edge

list_add_tail.exit.list_add_tail.exit16_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit16

if.end.i.i15:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %10, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %6, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %8, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %6, ptr %18, align 4
  br label %list_add_tail.exit16

list_add_tail.exit16:                             ; preds = %if.end.i.i15, %list_add_tail.exit.list_add_tail.exit16_crit_edge
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 -4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %25 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %27 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 524, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %28 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %29 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %31 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %32 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %33 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.76, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %34 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test_struct1, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %35 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.77, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %36 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %right_value, align 4
  %cmp = icmp eq ptr %test_struct1, %add.ptr
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_last_entry(ptr noundef %test) #0 align 64 {
entry:
  %test_struct1 = alloca %struct.list_test_struct, align 4
  %test_struct2 = alloca %struct.list_test_struct, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct1) #6
  %0 = ptrtoint ptr %test_struct1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %test_struct1, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  %3 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct2) #6
  %5 = ptrtoint ptr %test_struct2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %test_struct2, align 4, !annotation !183
  %6 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !183
  %8 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %10 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %10, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %10, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %3, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %call.i.i13 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %18, ptr noundef nonnull %list) #6
  br i1 %call.i.i13, label %if.end.i.i15, label %list_add_tail.exit.list_add_tail.exit16_crit_edge

list_add_tail.exit.list_add_tail.exit16_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit16

if.end.i.i15:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %10, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %6, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %8, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %6, ptr %18, align 4
  br label %list_add_tail.exit16

list_add_tail.exit16:                             ; preds = %if.end.i.i15, %list_add_tail.exit.list_add_tail.exit16_crit_edge
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 -4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %25 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %27 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 537, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %28 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %29 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %31 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %32 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %33 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.78, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %34 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test_struct2, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %35 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.79, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %36 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %right_value, align 4
  %cmp = icmp eq ptr %test_struct2, %add.ptr
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_first_entry_or_null(ptr noundef %test) #0 align 64 {
entry:
  %test_struct1 = alloca %struct.list_test_struct, align 4
  %test_struct2 = alloca %struct.list_test_struct, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion31 = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct1) #6
  %0 = ptrtoint ptr %test_struct1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %test_struct1, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  %3 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct2) #6
  %5 = ptrtoint ptr %test_struct2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %test_struct2, align 4, !annotation !183
  %6 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !183
  %8 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %10 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %13 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !183
  %15 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %17 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 546, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %18 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %19 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.80, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %expected_true, align 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %list, align 4
  %cmp.not = icmp eq ptr %25, %list
  %add.ptr = getelementptr i8, ptr %25, i32 -4
  %phi.cmp.not = icmp eq ptr %add.ptr, null
  %cond = or i1 %cmp.not, %phi.cmp.not
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cond, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %27, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %10, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %1, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %3, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %1, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %10, align 4
  %call.i.i59 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %33, ptr noundef nonnull %list) #6
  br i1 %call.i.i59, label %if.end.i.i61, label %list_add_tail.exit.list_add_tail.exit62_crit_edge

list_add_tail.exit.list_add_tail.exit62_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit62

if.end.i.i61:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %6, ptr %10, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %6, align 4
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %8, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %6, ptr %33, align 4
  br label %list_add_tail.exit62

list_add_tail.exit62:                             ; preds = %if.end.i.i61, %list_add_tail.exit.list_add_tail.exit62_crit_edge
  %38 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %list, align 4
  %cmp22.not = icmp eq ptr %39, %list
  %add.ptr26 = getelementptr i8, ptr %39, i32 -4
  %cond29 = select i1 %cmp22.not, ptr null, ptr %add.ptr26
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion31) #6
  %40 = ptrtoint ptr %__assertion31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion31, align 4
  %type34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 1
  %41 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type34, align 4
  %line35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 2
  %42 = ptrtoint ptr %line35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 553, ptr %line35, align 4
  %file36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 3
  %43 = ptrtoint ptr %file36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.36, ptr %file36, align 4
  %message37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 4
  %44 = ptrtoint ptr %message37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message37, align 4
  %va39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %va39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va39, align 4
  %format40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 5
  %46 = ptrtoint ptr %format40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_ptr_assert_format, ptr %format40, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion31, i32 0, i32 1
  %47 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion31, i32 0, i32 2
  %48 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.76, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion31, i32 0, i32 3
  %49 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test_struct1, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion31, i32 0, i32 4
  %50 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.81, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion31, i32 0, i32 5
  %51 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cond29, ptr %right_value, align 4
  %cmp42 = icmp eq ptr %test_struct1, %cond29
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion31, i1 noundef zeroext %cmp42, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion31) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_next_entry(ptr noundef %test) #0 align 64 {
entry:
  %test_struct1 = alloca %struct.list_test_struct, align 4
  %test_struct2 = alloca %struct.list_test_struct, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct1) #6
  %0 = ptrtoint ptr %test_struct1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %test_struct1, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  %3 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct2) #6
  %5 = ptrtoint ptr %test_struct2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %test_struct2, align 4, !annotation !183
  %6 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !183
  %8 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %10 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %10, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %10, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %3, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %call.i.i14 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %18, ptr noundef nonnull %list) #6
  br i1 %call.i.i14, label %if.end.i.i16, label %list_add_tail.exit.list_add_tail.exit17_crit_edge

list_add_tail.exit.list_add_tail.exit17_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit17

if.end.i.i16:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %10, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %6, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %8, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %6, ptr %18, align 4
  br label %list_add_tail.exit17

list_add_tail.exit17:                             ; preds = %if.end.i.i16, %list_add_tail.exit.list_add_tail.exit17_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 -4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %25 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %27 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 566, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %28 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %29 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %31 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %32 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %33 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.78, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %34 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test_struct2, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %35 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.82, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %36 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %right_value, align 4
  %cmp = icmp eq ptr %test_struct2, %add.ptr
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_prev_entry(ptr noundef %test) #0 align 64 {
entry:
  %test_struct1 = alloca %struct.list_test_struct, align 4
  %test_struct2 = alloca %struct.list_test_struct, align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct1) #6
  %0 = ptrtoint ptr %test_struct1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %test_struct1, align 4, !annotation !183
  %1 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !183
  %3 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %test_struct2) #6
  %5 = ptrtoint ptr %test_struct2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %test_struct2, align 4, !annotation !183
  %6 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !183
  %8 = getelementptr inbounds %struct.list_test_struct, ptr %test_struct2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %10 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %10, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %10, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %3, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %call.i.i14 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %18, ptr noundef nonnull %list) #6
  br i1 %call.i.i14, label %if.end.i.i16, label %list_add_tail.exit.list_add_tail.exit17_crit_edge

list_add_tail.exit.list_add_tail.exit17_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit17

if.end.i.i16:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %10, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %6, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %8, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %6, ptr %18, align 4
  br label %list_add_tail.exit17

list_add_tail.exit17:                             ; preds = %if.end.i.i16, %list_add_tail.exit.list_add_tail.exit17_crit_edge
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %8, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 -4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %25 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %27 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 579, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %28 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %29 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %31 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %32 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.42, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %33 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.76, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %34 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test_struct1, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %35 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.83, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  %36 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %right_value, align 4
  %cmp = icmp eq ptr %test_struct1, %add.ptr
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %test_struct1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_for_each(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [3 x %struct.list_head], align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %entries) #6
  %0 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2
  %3 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %entries, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %list, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %5, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entries, ptr %5, align 4
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %entries, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %8, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entries, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i.i50 = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i50, label %if.end.i.i52, label %list_add_tail.exit.list_add_tail.exit53_crit_edge

list_add_tail.exit.list_add_tail.exit53_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit53

if.end.i.i52:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %0, ptr %5, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %1, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %0, ptr %14, align 4
  br label %list_add_tail.exit53

list_add_tail.exit53:                             ; preds = %if.end.i.i52, %list_add_tail.exit.list_add_tail.exit53_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i.i55 = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %20, ptr noundef nonnull %list) #6
  br i1 %call.i.i55, label %if.end.i.i57, label %list_add_tail.exit53.list_add_tail.exit58_crit_edge

list_add_tail.exit53.list_add_tail.exit58_crit_edge: ; preds = %list_add_tail.exit53
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit58

if.end.i.i57:                                     ; preds = %list_add_tail.exit53
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %2, ptr %5, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %2, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %3, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %2, ptr %20, align 4
  br label %list_add_tail.exit58

list_add_tail.exit58:                             ; preds = %if.end.i.i57, %list_add_tail.exit53.list_add_tail.exit58_crit_edge
  %25 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %25)
  %cur.059 = load ptr, ptr %list, align 4
  %cmp.i.not60 = icmp eq ptr %cur.059, %list
  br i1 %cmp.i.not60, label %list_add_tail.exit58.do.body11_crit_edge, label %do.body.lr.ph

list_add_tail.exit58.do.body11_crit_edge:         ; preds = %list_add_tail.exit58
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body11

do.body.lr.ph:                                    ; preds = %list_add_tail.exit58
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.062 = phi ptr [ %cur.059, %do.body.lr.ph ], [ %cur.0, %do.body.do.body_crit_edge ]
  %i.061 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx4 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.061
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %26 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion, align 4
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type, align 4
  %28 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 593, ptr %line, align 4
  %29 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.36, ptr %file, align 4
  %30 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message, align 4
  %31 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va, align 4
  %32 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %33 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.42, ptr %operation, align 4
  %34 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.70, ptr %left_text, align 4
  %35 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cur.062, ptr %left_value, align 4
  %36 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.71, ptr %right_text, align 4
  %37 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx4, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.062, %arrayidx4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %inc = add i32 %i.061, 1
  %38 = ptrtoint ptr %cur.062 to i32
  call void @__asan_load4_noabort(i32 %38)
  %cur.0 = load ptr, ptr %cur.062, align 4
  %cmp.i.not = icmp eq ptr %cur.0, %list
  br i1 %cmp.i.not, label %do.body.do.body11_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body11

do.body11:                                        ; preds = %do.body.do.body11_crit_edge, %list_add_tail.exit58.do.body11_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_add_tail.exit58.do.body11_crit_edge ], [ %inc, %do.body.do.body11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #6
  %39 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %40 = call ptr @memset(ptr %39, i32 255, i32 24)
  %41 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %42 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %43 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 597, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %44 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.36, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %45 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %47 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %48 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.42, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %49 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.59, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %50 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv, ptr %left_value27, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %51 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.84, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %52 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 3, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.lcssa)
  %cmp32 = icmp eq i32 %i.0.lcssa, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp32, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_for_each_prev(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [3 x %struct.list_head], align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %entries) #6
  %0 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2
  %3 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %entries, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %list, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %5, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entries, ptr %5, align 4
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %entries, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %8, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entries, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i.i50 = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i50, label %if.end.i.i52, label %list_add_tail.exit.list_add_tail.exit53_crit_edge

list_add_tail.exit.list_add_tail.exit53_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit53

if.end.i.i52:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %0, ptr %5, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %1, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %0, ptr %14, align 4
  br label %list_add_tail.exit53

list_add_tail.exit53:                             ; preds = %if.end.i.i52, %list_add_tail.exit.list_add_tail.exit53_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i.i55 = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %20, ptr noundef nonnull %list) #6
  br i1 %call.i.i55, label %if.end.i.i57, label %list_add_tail.exit53.list_add_tail.exit58_crit_edge

list_add_tail.exit53.list_add_tail.exit58_crit_edge: ; preds = %list_add_tail.exit53
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit58

if.end.i.i57:                                     ; preds = %list_add_tail.exit53
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %2, ptr %5, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %2, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %3, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %2, ptr %20, align 4
  br label %list_add_tail.exit58

list_add_tail.exit58:                             ; preds = %if.end.i.i57, %list_add_tail.exit53.list_add_tail.exit58_crit_edge
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %cmp.i.not59 = icmp eq ptr %26, %list
  br i1 %cmp.i.not59, label %list_add_tail.exit58.do.body11_crit_edge, label %do.body.lr.ph

list_add_tail.exit58.do.body11_crit_edge:         ; preds = %list_add_tail.exit58
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body11

do.body.lr.ph:                                    ; preds = %list_add_tail.exit58
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %cur.061 = phi ptr [ %26, %do.body.lr.ph ], [ %40, %do.body.do.body_crit_edge ]
  %i.060 = phi i32 [ 2, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %arrayidx4 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.060
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %27 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %test, ptr %__assertion, align 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type, align 4
  %29 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 611, ptr %line, align 4
  %30 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.36, ptr %file, align 4
  %31 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %message, align 4
  %32 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %va, align 4
  %33 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %34 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.42, ptr %operation, align 4
  %35 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.70, ptr %left_text, align 4
  %36 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cur.061, ptr %left_value, align 4
  %37 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.71, ptr %right_text, align 4
  %38 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx4, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.061, %arrayidx4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %dec = add i32 %i.060, -1
  %prev10 = getelementptr inbounds %struct.list_head, ptr %cur.061, i32 0, i32 1
  %39 = ptrtoint ptr %prev10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev10, align 4
  %cmp.i.not = icmp eq ptr %40, %list
  br i1 %cmp.i.not, label %do.body.do.body11_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body11

do.body11:                                        ; preds = %do.body.do.body11_crit_edge, %list_add_tail.exit58.do.body11_crit_edge
  %i.0.lcssa = phi i32 [ 2, %list_add_tail.exit58.do.body11_crit_edge ], [ %dec, %do.body.do.body11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #6
  %41 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %42 = call ptr @memset(ptr %41, i32 255, i32 24)
  %43 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %44 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %45 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 615, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %46 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.36, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %47 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %49 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %50 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.42, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %51 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.59, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %52 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv, ptr %left_value27, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %53 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.85, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %54 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 -1, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.lcssa)
  %cmp32 = icmp eq i32 %i.0.lcssa, -1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp32, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_for_each_safe(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [3 x %struct.list_head], align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion17 = alloca %struct.kunit_binary_assert, align 8
  %__assertion41 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %entries) #6
  %0 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2
  %3 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %entries, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %list, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %5, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entries, ptr %5, align 4
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %entries, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %8, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entries, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i.i76 = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i76, label %if.end.i.i78, label %list_add_tail.exit.list_add_tail.exit79_crit_edge

list_add_tail.exit.list_add_tail.exit79_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit79

if.end.i.i78:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %0, ptr %5, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %1, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %0, ptr %14, align 4
  br label %list_add_tail.exit79

list_add_tail.exit79:                             ; preds = %if.end.i.i78, %list_add_tail.exit.list_add_tail.exit79_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i.i81 = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %20, ptr noundef nonnull %list) #6
  br i1 %call.i.i81, label %if.end.i.i83, label %list_add_tail.exit79.list_add_tail.exit84_crit_edge

list_add_tail.exit79.list_add_tail.exit84_crit_edge: ; preds = %list_add_tail.exit79
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit84

if.end.i.i83:                                     ; preds = %list_add_tail.exit79
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %2, ptr %5, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %2, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %3, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %2, ptr %20, align 4
  br label %list_add_tail.exit84

list_add_tail.exit84:                             ; preds = %if.end.i.i83, %list_add_tail.exit79.list_add_tail.exit84_crit_edge
  %25 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list, align 4
  %cmp.i.not91 = icmp eq ptr %26, %list
  br i1 %cmp.i.not91, label %list_add_tail.exit84.do.body13_crit_edge, label %do.body.lr.ph

list_add_tail.exit84.do.body13_crit_edge:         ; preds = %list_add_tail.exit84
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body13

do.body.lr.ph:                                    ; preds = %list_add_tail.exit84
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %do.body.lr.ph
  %cur.094 = phi ptr [ %26, %do.body.lr.ph ], [ %n.095, %list_del.exit.do.body_crit_edge ]
  %i.092 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %list_del.exit.do.body_crit_edge ]
  %27 = ptrtoint ptr %cur.094 to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.095 = load ptr, ptr %cur.094, align 4
  %arrayidx5 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.092
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %28 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion, align 4
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %type, align 4
  %30 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 630, ptr %line, align 4
  %31 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.36, ptr %file, align 4
  %32 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %message, align 4
  %33 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %va, align 4
  %34 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %35 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.42, ptr %operation, align 4
  %36 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.70, ptr %left_text, align 4
  %37 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cur.094, ptr %left_value, align 4
  %38 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.71, ptr %right_text, align 4
  %39 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx5, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.094, %arrayidx5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %call.i.i85 = call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx5) #6
  br i1 %call.i.i85, label %if.end.i.i86, label %do.body.list_del.exit_crit_edge

do.body.list_del.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i86:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.092, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i86, %do.body.list_del.exit_crit_edge
  %46 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx5, align 4
  %prev.i87 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.092, i32 1
  %47 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i87, align 4
  %inc = add i32 %i.092, 1
  %cmp.i.not = icmp eq ptr %n.095, %list
  br i1 %cmp.i.not, label %list_del.exit.do.body13_crit_edge, label %list_del.exit.do.body_crit_edge

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

list_del.exit.do.body13_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body13

do.body13:                                        ; preds = %list_del.exit.do.body13_crit_edge, %list_add_tail.exit84.do.body13_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_add_tail.exit84.do.body13_crit_edge ], [ %inc, %list_del.exit.do.body13_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion17) #6
  %48 = getelementptr inbounds i8, ptr %__assertion17, i32 32
  %49 = call ptr @memset(ptr %48, i32 255, i32 24)
  %50 = ptrtoint ptr %__assertion17 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %test, ptr %__assertion17, align 8
  %type20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 1
  %51 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type20, align 4
  %line21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 2
  %52 = ptrtoint ptr %line21 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 635, ptr %line21, align 8
  %file22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 3
  %53 = ptrtoint ptr %file22 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.36, ptr %file22, align 4
  %message23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4
  %54 = ptrtoint ptr %message23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %message23, align 8
  %va25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %va25 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %va25, align 4
  %format26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 5
  %56 = ptrtoint ptr %format26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @kunit_binary_assert_format, ptr %format26, align 8
  %operation27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 1
  %57 = ptrtoint ptr %operation27 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.42, ptr %operation27, align 4
  %left_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 2
  %58 = ptrtoint ptr %left_text28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.59, ptr %left_text28, align 8
  %left_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %59 = ptrtoint ptr %left_value29 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv, ptr %left_value29, align 8
  %right_text30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 4
  %60 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.84, ptr %right_text30, align 8
  %right_value31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 5
  %61 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 3, ptr %right_value31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.lcssa)
  %cmp34 = icmp eq i32 %i.0.lcssa, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17, i1 noundef zeroext %cmp34, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion17) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion41) #6
  %62 = getelementptr inbounds i8, ptr %__assertion41, i32 32
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %62, align 4, !annotation !183
  %64 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion41, align 4
  %type44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %65 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type44, align 4
  %line45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %66 = ptrtoint ptr %line45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 636, ptr %line45, align 4
  %file46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %67 = ptrtoint ptr %file46 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.36, ptr %file46, align 4
  %message47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %68 = ptrtoint ptr %message47 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message47, align 4
  %va49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va49 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va49, align 4
  %format50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %70 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_unary_assert_format, ptr %format50, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion41, i32 0, i32 1
  %71 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.86, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion41, i32 0, i32 2
  %72 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %expected_true, align 4
  %73 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %list, align 4
  %cmp.i88 = icmp eq ptr %74, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion41, i1 noundef zeroext %cmp.i88, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion41) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_for_each_prev_safe(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [3 x %struct.list_head], align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion17 = alloca %struct.kunit_binary_assert, align 8
  %__assertion41 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %entries) #6
  %0 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2
  %3 = getelementptr inbounds [3 x %struct.list_head], ptr %entries, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %entries, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %list, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %5, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entries, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = getelementptr inbounds %struct.list_head, ptr %entries, i32 0, i32 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entries, ptr %5, align 4
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %entries, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %8, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entries, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i.i76 = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %list) #6
  br i1 %call.i.i76, label %if.end.i.i78, label %list_add_tail.exit.list_add_tail.exit79_crit_edge

list_add_tail.exit.list_add_tail.exit79_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit79

if.end.i.i78:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %0, ptr %5, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %1, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %0, ptr %14, align 4
  br label %list_add_tail.exit79

list_add_tail.exit79:                             ; preds = %if.end.i.i78, %list_add_tail.exit.list_add_tail.exit79_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i.i81 = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %20, ptr noundef nonnull %list) #6
  br i1 %call.i.i81, label %if.end.i.i83, label %list_add_tail.exit79.list_add_tail.exit84_crit_edge

list_add_tail.exit79.list_add_tail.exit84_crit_edge: ; preds = %list_add_tail.exit79
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit84

if.end.i.i83:                                     ; preds = %list_add_tail.exit79
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %2, ptr %5, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %2, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %3, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %2, ptr %20, align 4
  br label %list_add_tail.exit84

list_add_tail.exit84:                             ; preds = %if.end.i.i83, %list_add_tail.exit79.list_add_tail.exit84_crit_edge
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %cmp.i.not92 = icmp eq ptr %26, %list
  br i1 %cmp.i.not92, label %list_add_tail.exit84.do.body13_crit_edge, label %do.body.lr.ph

list_add_tail.exit84.do.body13_crit_edge:         ; preds = %list_add_tail.exit84
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body13

do.body.lr.ph:                                    ; preds = %list_add_tail.exit84
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %do.body.lr.ph
  %cur.095 = phi ptr [ %26, %do.body.lr.ph ], [ %n.096, %list_del.exit.do.body_crit_edge ]
  %i.093 = phi i32 [ 2, %do.body.lr.ph ], [ %dec, %list_del.exit.do.body_crit_edge ]
  %n.096.in = getelementptr inbounds %struct.list_head, ptr %cur.095, i32 0, i32 1
  %27 = ptrtoint ptr %n.096.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.096 = load ptr, ptr %n.096.in, align 4
  %arrayidx5 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.093
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #6
  %28 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion, align 4
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %type, align 4
  %30 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 650, ptr %line, align 4
  %31 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.36, ptr %file, align 4
  %32 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %message, align 4
  %33 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %va, align 4
  %34 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_binary_ptr_assert_format, ptr %format, align 4
  %35 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.42, ptr %operation, align 4
  %36 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.70, ptr %left_text, align 4
  %37 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cur.095, ptr %left_value, align 4
  %38 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.71, ptr %right_text, align 4
  %39 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx5, ptr %right_value, align 4
  %cmp = icmp eq ptr %cur.095, %arrayidx5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #6
  %call.i.i85 = call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx5) #6
  br i1 %call.i.i85, label %if.end.i.i86, label %do.body.list_del.exit_crit_edge

do.body.list_del.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i86:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.093, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i86, %do.body.list_del.exit_crit_edge
  %46 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx5, align 4
  %prev.i87 = getelementptr [3 x %struct.list_head], ptr %entries, i32 0, i32 %i.093, i32 1
  %47 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i87, align 4
  %dec = add i32 %i.093, -1
  %cmp.i.not = icmp eq ptr %n.096, %list
  br i1 %cmp.i.not, label %list_del.exit.do.body13_crit_edge, label %list_del.exit.do.body_crit_edge

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

list_del.exit.do.body13_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body13

do.body13:                                        ; preds = %list_del.exit.do.body13_crit_edge, %list_add_tail.exit84.do.body13_crit_edge
  %i.0.lcssa = phi i32 [ 2, %list_add_tail.exit84.do.body13_crit_edge ], [ %dec, %list_del.exit.do.body13_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion17) #6
  %48 = getelementptr inbounds i8, ptr %__assertion17, i32 32
  %49 = call ptr @memset(ptr %48, i32 255, i32 24)
  %50 = ptrtoint ptr %__assertion17 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %test, ptr %__assertion17, align 8
  %type20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 1
  %51 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type20, align 4
  %line21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 2
  %52 = ptrtoint ptr %line21 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 655, ptr %line21, align 8
  %file22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 3
  %53 = ptrtoint ptr %file22 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.36, ptr %file22, align 4
  %message23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4
  %54 = ptrtoint ptr %message23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %message23, align 8
  %va25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %va25 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %va25, align 4
  %format26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 5
  %56 = ptrtoint ptr %format26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @kunit_binary_assert_format, ptr %format26, align 8
  %operation27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 1
  %57 = ptrtoint ptr %operation27 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.42, ptr %operation27, align 4
  %left_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 2
  %58 = ptrtoint ptr %left_text28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.59, ptr %left_text28, align 8
  %left_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 3
  %conv = sext i32 %i.0.lcssa to i64
  %59 = ptrtoint ptr %left_value29 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv, ptr %left_value29, align 8
  %right_text30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 4
  %60 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.85, ptr %right_text30, align 8
  %right_value31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 5
  %61 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %right_value31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.lcssa)
  %cmp34 = icmp eq i32 %i.0.lcssa, -1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17, i1 noundef zeroext %cmp34, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion17) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion41) #6
  %62 = getelementptr inbounds i8, ptr %__assertion41, i32 32
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %62, align 4, !annotation !183
  %64 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion41, align 4
  %type44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %65 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type44, align 4
  %line45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %66 = ptrtoint ptr %line45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 656, ptr %line45, align 4
  %file46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %67 = ptrtoint ptr %file46 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.36, ptr %file46, align 4
  %message47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %68 = ptrtoint ptr %message47 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message47, align 4
  %va49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va49 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va49, align 4
  %format50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %70 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_unary_assert_format, ptr %format50, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion41, i32 0, i32 1
  %71 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.86, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion41, i32 0, i32 2
  %72 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %expected_true, align 4
  %73 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %list, align 4
  %cmp.i88 = icmp eq ptr %74, %list
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion41, i1 noundef zeroext %cmp.i88, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion41) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_for_each_entry(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [5 x %struct.list_test_struct], align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion29 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %entries) #6
  %0 = getelementptr inbounds i8, ptr %entries, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %5 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %entries, align 4
  %list2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list2, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

do.body.lr.ph:                                    ; preds = %list_add_tail.exit.4
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
  %6 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %do.body

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list2, ptr %2, align 4
  %8 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %list2, align 4
  %prev3.i.i = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list2, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %arrayidx.1 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %arrayidx.1, align 4
  %list2.1 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %call.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %list2.1, ptr noundef %13, ptr noundef nonnull %list) #6
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add_tail.exit.list_add_tail.exit.1_crit_edge

list_add_tail.exit.list_add_tail.exit.1_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.1

if.end.i.i.1:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list2.1, ptr %2, align 4
  %15 = ptrtoint ptr %list2.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %list2.1, align 4
  %prev3.i.i.1 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.1, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list2.1, ptr %13, align 4
  br label %list_add_tail.exit.1

list_add_tail.exit.1:                             ; preds = %if.end.i.i.1, %list_add_tail.exit.list_add_tail.exit.1_crit_edge
  %arrayidx.2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %arrayidx.2, align 4
  %list2.2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %call.i.i.2 = call zeroext i1 @__list_add_valid(ptr noundef %list2.2, ptr noundef %20, ptr noundef nonnull %list) #6
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge

list_add_tail.exit.1.list_add_tail.exit.2_crit_edge: ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.2

if.end.i.i.2:                                     ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list2.2, ptr %2, align 4
  %22 = ptrtoint ptr %list2.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %list2.2, align 4
  %prev3.i.i.2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %prev3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.2, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list2.2, ptr %20, align 4
  br label %list_add_tail.exit.2

list_add_tail.exit.2:                             ; preds = %if.end.i.i.2, %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge
  %arrayidx.3 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %arrayidx.3, align 4
  %list2.3 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  %call.i.i.3 = call zeroext i1 @__list_add_valid(ptr noundef %list2.3, ptr noundef %27, ptr noundef nonnull %list) #6
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge

list_add_tail.exit.2.list_add_tail.exit.3_crit_edge: ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.3

if.end.i.i.3:                                     ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list2.3, ptr %2, align 4
  %29 = ptrtoint ptr %list2.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %list2.3, align 4
  %prev3.i.i.3 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 3, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.3, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list2.3, ptr %27, align 4
  br label %list_add_tail.exit.3

list_add_tail.exit.3:                             ; preds = %if.end.i.i.3, %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge
  %arrayidx.4 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %arrayidx.4, align 4
  %list2.4 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 4
  %call.i.i.4 = call zeroext i1 @__list_add_valid(ptr noundef %list2.4, ptr noundef %34, ptr noundef nonnull %list) #6
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge

list_add_tail.exit.3.list_add_tail.exit.4_crit_edge: ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.4

if.end.i.i.4:                                     ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list2.4, ptr %2, align 4
  %36 = ptrtoint ptr %list2.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list, ptr %list2.4, align 4
  %prev3.i.i.4 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 4, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.4, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list2.4, ptr %34, align 4
  br label %list_add_tail.exit.4

list_add_tail.exit.4:                             ; preds = %if.end.i.i.4, %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge
  %39 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn71 = load ptr, ptr %list, align 4
  %cmp6.not72 = icmp eq ptr %.pn71, %list
  br i1 %cmp6.not72, label %list_add_tail.exit.4.do.body25_crit_edge, label %do.body.lr.ph

list_add_tail.exit.4.do.body25_crit_edge:         ; preds = %list_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body25

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %.pn74 = phi ptr [ %.pn71, %do.body.lr.ph ], [ %.pn, %do.body.do.body_crit_edge ]
  %i.173 = phi i32 [ 0, %do.body.lr.ph ], [ %inc17, %do.body.do.body_crit_edge ]
  %cur.0 = getelementptr i8, ptr %.pn74, i32 -4
  %40 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur.0, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
  %42 = call ptr @memset(ptr %6, i32 255, i32 24)
  %43 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion, align 8
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type, align 4
  %45 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 673, ptr %line, align 8
  %46 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.36, ptr %file, align 4
  %47 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message, align 8
  %48 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va, align 4
  %49 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %50 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.42, ptr %operation, align 4
  %51 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.87, ptr %left_text, align 8
  %conv = sext i32 %41 to i64
  %52 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv, ptr %left_value, align 8
  %53 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.59, ptr %right_text, align 8
  %conv11 = sext i32 %i.173 to i64
  %54 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv11, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %i.173)
  %cmp13 = icmp eq i32 %41, %i.173
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp13, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  %inc17 = add i32 %i.173, 1
  %55 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn74, align 4
  %cmp6.not = icmp eq ptr %.pn, %list
  br i1 %cmp6.not, label %do.body.do.body25_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body25_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body25

do.body25:                                        ; preds = %do.body.do.body25_crit_edge, %list_add_tail.exit.4.do.body25_crit_edge
  %i.1.lcssa = phi i32 [ 0, %list_add_tail.exit.4.do.body25_crit_edge ], [ %inc17, %do.body.do.body25_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion29) #6
  %56 = getelementptr inbounds i8, ptr %__assertion29, i32 32
  %57 = call ptr @memset(ptr %56, i32 255, i32 24)
  %58 = ptrtoint ptr %__assertion29 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %test, ptr %__assertion29, align 8
  %type32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 1
  %59 = ptrtoint ptr %type32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type32, align 4
  %line33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 2
  %60 = ptrtoint ptr %line33 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 677, ptr %line33, align 8
  %file34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 3
  %61 = ptrtoint ptr %file34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.36, ptr %file34, align 4
  %message35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 4
  %62 = ptrtoint ptr %message35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message35, align 8
  %va37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %va37 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va37, align 4
  %format38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion29, i32 0, i32 5
  %64 = ptrtoint ptr %format38 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_binary_assert_format, ptr %format38, align 8
  %operation39 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion29, i32 0, i32 1
  %65 = ptrtoint ptr %operation39 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.42, ptr %operation39, align 4
  %left_text40 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion29, i32 0, i32 2
  %66 = ptrtoint ptr %left_text40 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.59, ptr %left_text40, align 8
  %left_value41 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion29, i32 0, i32 3
  %conv42 = sext i32 %i.1.lcssa to i64
  %67 = ptrtoint ptr %left_value41 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv42, ptr %left_value41, align 8
  %right_text43 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion29, i32 0, i32 4
  %68 = ptrtoint ptr %right_text43 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.73, ptr %right_text43, align 8
  %right_value44 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion29, i32 0, i32 5
  %69 = ptrtoint ptr %right_value44 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 5, ptr %right_value44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.1.lcssa)
  %cmp47 = icmp eq i32 %i.1.lcssa, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion29, i1 noundef zeroext %cmp47, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion29) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @list_test_list_for_each_entry_reverse(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [5 x %struct.list_test_struct], align 4
  %list = alloca %struct.list_head, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion28 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %entries) #6
  %0 = getelementptr inbounds i8, ptr %entries, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %5 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %entries, align 4
  %list2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list2, ptr noundef nonnull %list, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list2, ptr %2, align 4
  %7 = ptrtoint ptr %list2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %list2, align 4
  %prev3.i.i = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list2, ptr %list, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %arrayidx.1 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arrayidx.1, align 4
  %list2.1 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %call.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %list2.1, ptr noundef %12, ptr noundef nonnull %list) #6
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add_tail.exit.list_add_tail.exit.1_crit_edge

list_add_tail.exit.list_add_tail.exit.1_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.1

if.end.i.i.1:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list2.1, ptr %2, align 4
  %14 = ptrtoint ptr %list2.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %list2.1, align 4
  %prev3.i.i.1 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.1, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list2.1, ptr %12, align 4
  br label %list_add_tail.exit.1

list_add_tail.exit.1:                             ; preds = %if.end.i.i.1, %list_add_tail.exit.list_add_tail.exit.1_crit_edge
  %arrayidx.2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx.2, align 4
  %list2.2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %call.i.i.2 = call zeroext i1 @__list_add_valid(ptr noundef %list2.2, ptr noundef %19, ptr noundef nonnull %list) #6
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge

list_add_tail.exit.1.list_add_tail.exit.2_crit_edge: ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.2

if.end.i.i.2:                                     ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list2.2, ptr %2, align 4
  %21 = ptrtoint ptr %list2.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %list2.2, align 4
  %prev3.i.i.2 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 2, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.2, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list2.2, ptr %19, align 4
  br label %list_add_tail.exit.2

list_add_tail.exit.2:                             ; preds = %if.end.i.i.2, %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge
  %arrayidx.3 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %arrayidx.3, align 4
  %list2.3 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %call.i.i.3 = call zeroext i1 @__list_add_valid(ptr noundef %list2.3, ptr noundef %26, ptr noundef nonnull %list) #6
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge

list_add_tail.exit.2.list_add_tail.exit.3_crit_edge: ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.3

if.end.i.i.3:                                     ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list2.3, ptr %2, align 4
  %28 = ptrtoint ptr %list2.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %list2.3, align 4
  %prev3.i.i.3 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 3, i32 1, i32 1
  %29 = ptrtoint ptr %prev3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.3, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list2.3, ptr %26, align 4
  br label %list_add_tail.exit.3

list_add_tail.exit.3:                             ; preds = %if.end.i.i.3, %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge
  %arrayidx.4 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %arrayidx.4, align 4
  %list2.4 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %call.i.i.4 = call zeroext i1 @__list_add_valid(ptr noundef %list2.4, ptr noundef %33, ptr noundef nonnull %list) #6
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge

list_add_tail.exit.3.list_add_tail.exit.4_crit_edge: ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.4

if.end.i.i.4:                                     ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list2.4, ptr %2, align 4
  %35 = ptrtoint ptr %list2.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %list2.4, align 4
  %prev3.i.i.4 = getelementptr inbounds [5 x %struct.list_test_struct], ptr %entries, i32 0, i32 4, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.4, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list2.4, ptr %33, align 4
  br label %list_add_tail.exit.4

list_add_tail.exit.4:                             ; preds = %if.end.i.i.4, %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %cmp6.not70 = icmp eq ptr %39, %list
  br i1 %cmp6.not70, label %list_add_tail.exit.4.do.body24_crit_edge, label %do.body.lr.ph

list_add_tail.exit.4.do.body24_crit_edge:         ; preds = %list_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body24

do.body.lr.ph:                                    ; preds = %list_add_tail.exit.4
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
  %40 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %.pn72 = phi ptr [ %39, %do.body.lr.ph ], [ %57, %do.body.do.body_crit_edge ]
  %i.171 = phi i32 [ 4, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %cur.0 = getelementptr i8, ptr %.pn72, i32 -4
  %41 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur.0, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
  %43 = call ptr @memset(ptr %40, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion, align 8
  %45 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type, align 4
  %46 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 694, ptr %line, align 8
  %47 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.36, ptr %file, align 4
  %48 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message, align 8
  %49 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va, align 4
  %50 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %51 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.42, ptr %operation, align 4
  %52 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.87, ptr %left_text, align 8
  %conv = sext i32 %42 to i64
  %53 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv, ptr %left_value, align 8
  %54 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.59, ptr %right_text, align 8
  %conv11 = sext i32 %i.171 to i64
  %55 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv11, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %i.171)
  %cmp13 = icmp eq i32 %42, %i.171
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp13, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  %dec = add i32 %i.171, -1
  %prev20 = getelementptr inbounds %struct.list_head, ptr %.pn72, i32 0, i32 1
  %56 = ptrtoint ptr %prev20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev20, align 4
  %cmp6.not = icmp eq ptr %57, %list
  br i1 %cmp6.not, label %do.body.do.body24_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body24

do.body24:                                        ; preds = %do.body.do.body24_crit_edge, %list_add_tail.exit.4.do.body24_crit_edge
  %i.1.lcssa = phi i32 [ 4, %list_add_tail.exit.4.do.body24_crit_edge ], [ %dec, %do.body.do.body24_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion28) #6
  %58 = getelementptr inbounds i8, ptr %__assertion28, i32 32
  %59 = call ptr @memset(ptr %58, i32 255, i32 24)
  %60 = ptrtoint ptr %__assertion28 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test, ptr %__assertion28, align 8
  %type31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 1
  %61 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %type31, align 4
  %line32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 2
  %62 = ptrtoint ptr %line32 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 698, ptr %line32, align 8
  %file33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 3
  %63 = ptrtoint ptr %file33 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.36, ptr %file33, align 4
  %message34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 4
  %64 = ptrtoint ptr %message34 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %message34, align 8
  %va36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %va36 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va36, align 4
  %format37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion28, i32 0, i32 5
  %66 = ptrtoint ptr %format37 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @kunit_binary_assert_format, ptr %format37, align 8
  %operation38 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion28, i32 0, i32 1
  %67 = ptrtoint ptr %operation38 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.42, ptr %operation38, align 4
  %left_text39 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion28, i32 0, i32 2
  %68 = ptrtoint ptr %left_text39 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.59, ptr %left_text39, align 8
  %left_value40 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion28, i32 0, i32 3
  %conv41 = sext i32 %i.1.lcssa to i64
  %69 = ptrtoint ptr %left_value40 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv41, ptr %left_value40, align 8
  %right_text42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion28, i32 0, i32 4
  %70 = ptrtoint ptr %right_text42 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.85, ptr %right_text42, align 8
  %right_value43 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion28, i32 0, i32 5
  %71 = ptrtoint ptr %right_value43 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 -1, ptr %right_value43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.lcssa)
  %cmp46 = icmp eq i32 %i.1.lcssa, -1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion28, i1 noundef zeroext %cmp46, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion28) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %entries) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !148, !150, !152, !153, !155, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__UNIQUE_ID_suites177, !1, !"__UNIQUE_ID_suites177", i1 false, i1 false}
!1 = !{!"../lib/list-test.c", i32 746, i32 1}
!2 = !{ptr @__UNIQUE_ID_file178, !3, !"__UNIQUE_ID_file178", i1 false, i1 false}
!3 = !{!"../lib/list-test.c", i32 748, i32 1}
!4 = !{ptr @__UNIQUE_ID_license179, !3, !"__UNIQUE_ID_license179", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array176, !1, !"__UNIQUE_ID_array176", i1 false, i1 false}
!6 = !{ptr @list_test_module, !7, !"list_test_module", i1 false, i1 false}
!7 = !{!"../lib/list-test.c", i32 741, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/list-test.c", i32 702, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/list-test.c", i32 703, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/list-test.c", i32 704, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/list-test.c", i32 705, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/list-test.c", i32 706, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/list-test.c", i32 707, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/list-test.c", i32 708, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/list-test.c", i32 709, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/list-test.c", i32 710, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/list-test.c", i32 711, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/list-test.c", i32 712, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/list-test.c", i32 713, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/list-test.c", i32 714, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/list-test.c", i32 715, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/list-test.c", i32 716, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/list-test.c", i32 717, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/list-test.c", i32 718, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/list-test.c", i32 719, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/list-test.c", i32 720, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/list-test.c", i32 721, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/list-test.c", i32 722, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/list-test.c", i32 723, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/list-test.c", i32 724, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/list-test.c", i32 725, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/list-test.c", i32 726, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../lib/list-test.c", i32 727, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/list-test.c", i32 728, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/list-test.c", i32 729, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/list-test.c", i32 730, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/list-test.c", i32 731, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/list-test.c", i32 732, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/list-test.c", i32 733, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/list-test.c", i32 734, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/list-test.c", i32 735, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/list-test.c", i32 736, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/list-test.c", i32 737, i32 2}
!80 = !{ptr @list_test_cases, !81, !"list_test_cases", i1 false, i1 false}
!81 = !{!"../lib/list-test.c", i32 701, i32 26}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/list-test.c", i32 36, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/list-test.c", i32 37, i32 2}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/list-test.c", i32 38, i32 2}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/list-test.c", i32 39, i32 2}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/list-test.c", i32 40, i32 2}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/list-test.c", i32 55, i32 2}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../lib/list-test.c", i32 56, i32 2}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../lib/list-test.c", i32 57, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/list-test.c", i32 70, i32 2}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../lib/list-test.c", i32 71, i32 2}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../lib/list-test.c", i32 102, i32 2}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/list-test.c", i32 122, i32 2}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../lib/list-test.c", i32 138, i32 2}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/list-test.c", i32 161, i32 2}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../lib/list-test.c", i32 177, i32 2}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../lib/list-test.c", i32 179, i32 2}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../lib/list-test.c", i32 225, i32 3}
!121 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../lib/list-test.c", i32 228, i32 2}
!124 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/list-test.c", i32 231, i32 3}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../lib/list-test.c", i32 234, i32 2}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/list-test.c", i32 245, i32 2}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../lib/list-test.c", i32 246, i32 2}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/list-test.c", i32 257, i32 2}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/list-test.c", i32 258, i32 2}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../lib/list-test.c", i32 270, i32 2}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../lib/list-test.c", i32 321, i32 3}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../lib/list-test.c", i32 333, i32 2}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../lib/list-test.c", i32 362, i32 3}
!145 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../lib/list-test.c", i32 394, i32 2}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../lib/list-test.c", i32 424, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../lib/list-test.c", i32 510, i32 2}
!152 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../lib/list-test.c", i32 523, i32 2}
!155 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/list-test.c", i32 536, i32 2}
!158 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../lib/list-test.c", i32 545, i32 2}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../lib/list-test.c", i32 551, i32 2}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../lib/list-test.c", i32 565, i32 2}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../lib/list-test.c", i32 578, i32 2}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../lib/list-test.c", i32 597, i32 2}
!169 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../lib/list-test.c", i32 615, i32 2}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../lib/list-test.c", i32 636, i32 2}
!173 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../lib/list-test.c", i32 673, i32 3}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"auto-init"}
!184 = !{i64 2148315833}
