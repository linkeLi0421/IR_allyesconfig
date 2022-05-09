; ModuleID = '/llk/IR_all_yes/drivers/base/test/property-entry-test.c_pt.bc'
source_filename = "../drivers/base/test/property-entry-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.2 }
%union.anon.2 = type { %union.anon.3 }
%union.anon.3 = type { [1 x i64] }
%struct.software_node = type { ptr, ptr, ptr }
%struct.software_node_ref_args = type { ptr, i32, [8 x i64] }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_binary_str_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.fwnode_reference_args = type { ptr, i32, [8 x i64] }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @property_entry_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@property_entry_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"property-entry\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @property_entry_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@property_entry_test_cases = internal global { [8 x %struct.kunit_case], [32 x i8] } { [8 x %struct.kunit_case] [%struct.kunit_case { ptr @pe_test_uints, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pe_test_uint_arrays, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pe_test_strings, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pe_test_bool, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pe_test_move_inline_u8, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pe_test_move_inline_str, ptr @.str.5, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @pe_test_reference, ptr @.str.6, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pe_test_uints\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pe_test_uint_arrays\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pe_test_strings\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pe_test_bool\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pe_test_move_inline_u8\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pe_test_move_inline_str\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pe_test_reference\00", [46 x i8] zeroinitializer }, align 32
@pe_test_uints.entries = internal constant { <{ { ptr, i32, i8, i32, { { [8 x i8] } } }, { ptr, i32, i8, i32, { { [4 x i16] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry, %struct.property_entry }>, [40 x i8] } { <{ { ptr, i32, i8, i32, { { [8 x i8] } } }, { ptr, i32, i8, i32, { { [4 x i16] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [8 x i8] } } } { ptr @.str.7, i32 1, i8 1, i32 0, { { [8 x i8] } } { { [8 x i8] } { [8 x i8] c"\08\00\00\00\00\00\00\00" } } }, { ptr, i32, i8, i32, { { [4 x i16] } } } { ptr @.str.8, i32 2, i8 1, i32 1, { { [4 x i16] } } { { [4 x i16] } { [4 x i16] [i16 16, i16 0, i16 0, i16 0] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.9, i32 4, i8 1, i32 2, { { [2 x i32] } } { { [2 x i32] } { [2 x i32] [i32 32, i32 0] } } }, %struct.property_entry { ptr @.str.10, i32 8, i8 1, i32 3, %union.anon.2 { %union.anon.3 { [1 x i64] [i64 64] } } }, %struct.property_entry zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prop-u8\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prop-u16\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prop-u32\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prop-u64\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/base/test/property-entry-test.c\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"val_u8\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"array_u8[0]\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no-prop-u8\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"val_u16\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"array_u16[0]\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no-prop-u16\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"val_u32\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"array_u32[0]\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no-prop-u32\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"val_u64\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"array_u64[0]\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no-prop-u64\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@pe_test_uint_arrays.a_u8 = internal constant { <{ i8, i8, [8 x i8] }>, [22 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 8, i8 9, [8 x i8] zeroinitializer }>, [22 x i8] zeroinitializer }, align 32
@pe_test_uint_arrays.a_u16 = internal constant { <{ i16, i16, [8 x i16] }>, [44 x i8] } { <{ i16, i16, [8 x i16] }> <{ i16 16, i16 17, [8 x i16] zeroinitializer }>, [44 x i8] zeroinitializer }, align 32
@pe_test_uint_arrays.a_u32 = internal constant { <{ i32, i32, [8 x i32] }>, [56 x i8] } { <{ i32, i32, [8 x i32] }> <{ i32 32, i32 33, [8 x i32] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@pe_test_uint_arrays.a_u64 = internal constant { <{ i64, i64, [8 x i64] }>, [48 x i8] } { <{ i64, i64, [8 x i64] }> <{ i64 64, i64 65, [8 x i64] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@pe_test_uint_arrays.entries = internal constant { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }>, [40 x i8] } { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.7, i32 10, i8 0, i32 0, { ptr, [4 x i8] } { ptr @pe_test_uint_arrays.a_u8, [4 x i8] undef } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.8, i32 20, i8 0, i32 1, { ptr, [4 x i8] } { ptr @pe_test_uint_arrays.a_u16, [4 x i8] undef } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.9, i32 40, i8 0, i32 2, { ptr, [4 x i8] } { ptr @pe_test_uint_arrays.a_u32, [4 x i8] undef } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.10, i32 80, i8 0, i32 3, { ptr, [4 x i8] } { ptr @pe_test_uint_arrays.a_u64, [4 x i8] undef } }, %struct.property_entry zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"array_u8[1]\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"array_u16[1]\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"17\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"array_u32[1]\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"33\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"array_u64[1]\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"65\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"40\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@pe_test_strings.strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.46, ptr @.str.47], [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"string-a\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"string-b\00", [23 x i8] zeroinitializer }, align 32
@pe_test_strings.entries = internal constant { <{ { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }>, [32 x i8] } { <{ { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [2 x ptr] } } } { ptr @.str.48, i32 4, i8 1, i32 4, { { [2 x ptr] } } { { [2 x ptr] } { [2 x ptr] [ptr @.str.49, ptr null] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } } { ptr @.str.50, i32 4, i8 1, i32 4, { { [2 x ptr] } } { { [2 x ptr] } { [2 x ptr] [ptr @.str.51, ptr null] } } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.52, i32 8, i8 0, i32 4, { ptr, [4 x i8] } { ptr @pe_test_strings.strings, [4 x i8] undef } }, %struct.property_entry zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"str\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"single\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"strs\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\22single\22\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"strs[0]\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no-str\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"<\00", [30 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\22\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\22string-a\22\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"strs[1]\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\22string-b\22\00", [21 x i8] zeroinitializer }, align 32
@pe_test_bool.entries = internal constant { [2 x %struct.property_entry], [48 x i8] } { [2 x %struct.property_entry] [%struct.property_entry { ptr @.str.61, i32 0, i8 1, i32 0, %union.anon.2 zeroinitializer }, %struct.property_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prop\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fwnode_property_read_bool(node, \22prop\22)\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fwnode_property_read_bool(node, \22not-prop\22)\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"not-prop\00", [23 x i8] zeroinitializer }, align 32
@pe_test_move_inline_u8.u8_array_small = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\03\04\00\00\00\00", [24 x i8] zeroinitializer }, align 32
@pe_test_move_inline_u8.u8_array_big = internal constant { <{ i8, i8, i8, i8, [124 x i8] }>, [32 x i8] } { <{ i8, i8, i8, i8, [124 x i8] }> <{ i8 5, i8 6, i8 7, i8 8, [124 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@pe_test_move_inline_u8.entries = internal constant { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }>, [56 x i8] } { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.65, i32 8, i8 0, i32 0, { ptr, [4 x i8] } { ptr @pe_test_move_inline_u8.u8_array_small, [4 x i8] undef } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.66, i32 128, i8 0, i32 0, { ptr, [4 x i8] } { ptr @pe_test_move_inline_u8.u8_array_big, [4 x i8] undef } }, %struct.property_entry zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"small\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"big\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"copy\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"copy[0].is_inline\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data_ptr[0]\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data_ptr[1]\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"copy[1].is_inline\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@pe_test_move_inline_str.str_array_small = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.74], [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@pe_test_move_inline_str.str_array_big = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"e\00", [30 x i8] zeroinitializer }, align 32
@pe_test_move_inline_str.str_array_small_empty = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@pe_test_move_inline_str.entries = internal global { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }>, [32 x i8] } { <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.65, i32 4, i8 0, i32 4, { ptr, [4 x i8] } { ptr @pe_test_move_inline_str.str_array_small, [4 x i8] undef } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.66, i32 16, i8 0, i32 4, { ptr, [4 x i8] } { ptr @pe_test_move_inline_str.str_array_big, [4 x i8] undef } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.79, i32 4, i8 0, i32 4, { ptr, [4 x i8] } { ptr @pe_test_move_inline_str.str_array_small_empty, [4 x i8] undef } }, %struct.property_entry zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"small-empty\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"copy[0].value.str[0]\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\22a\22\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\22b\22\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\22c\22\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"copy[2].is_inline\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"copy[2].value.str[0]\00", [43 x i8] zeroinitializer }, align 32
@pe_test_reference.nodes = internal constant { [3 x %struct.software_node], [60 x i8] } { [3 x %struct.software_node] [%struct.software_node { ptr @.str.15, ptr null, ptr null }, %struct.software_node { ptr @.str.45, ptr null, ptr null }, %struct.software_node zeroinitializer], [60 x i8] zeroinitializer }, align 32
@pe_test_reference.refs = internal constant { [2 x %struct.software_node_ref_args], [48 x i8] } { [2 x %struct.software_node_ref_args] [%struct.software_node_ref_args { ptr @pe_test_reference.nodes, i32 0, [8 x i64] zeroinitializer }, %struct.software_node_ref_args { ptr getelementptr (i8, ptr @pe_test_reference.nodes, i64 12), i32 2, [8 x i64] [i64 3, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0] }], [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ref-1\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ref-2\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ref-3\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"to_software_node(ref.fwnode)\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&nodes[0]\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ref.nargs\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0U\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&nodes[1]\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1U\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ref.args[0]\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1LLU\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3U\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ref.args[1]\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2LLU\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ref.args[2]\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0LLU\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2U\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3LLU\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4LLU\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"property_entry_test_suite\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 505, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"property_entry_test_cases\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 494, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 495, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 496, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 497, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 498, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 499, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 500, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 501, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 12, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 13, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 14, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 15, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 16, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 28, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 31, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 34, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 35, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 39, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 42, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 44, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 52, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 59, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 64, i32 41 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 72, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 79, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 84, i32 41 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 92, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 99, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 104, i32 41 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 112, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [5 x i8] c"a_u8\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 119, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"a_u16\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 120, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant [6 x i8] c"a_u32\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 121, i32 19 }
@___asan_gen_.228 = private unnamed_addr constant [6 x i8] c"a_u64\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 122, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 123, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 146, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 155, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 180, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 205, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 230, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 243, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 247, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 254, i32 21 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 255, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 256, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 259, i32 37 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 260, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 261, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 262, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 276, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 283, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 290, i32 44 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 294, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 298, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 305, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 306, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 326, i32 37 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 327, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 336, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 337, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [15 x i8] c"u8_array_small\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 345, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant [13 x i8] c"u8_array_big\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 346, i32 18 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 347, i32 37 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 348, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 349, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 357, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 359, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 361, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 362, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 364, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 366, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 367, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [16 x i8] c"str_array_small\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 375, i32 15 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 375, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant [14 x i8] c"str_array_big\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 376, i32 15 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 376, i32 35 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 376, i32 40 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 376, i32 45 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 376, i32 50 }
@___asan_gen_.390 = private unnamed_addr constant [22 x i8] c"str_array_small_empty\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 377, i32 15 }
@___asan_gen_.393 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 378, i32 31 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 381, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 392, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 396, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 397, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 399, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 400, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 408, i32 36 }
@___asan_gen_.420 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 414, i32 45 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 420, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 421, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 422, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 439, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 440, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 450, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 451, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 452, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 459, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 461, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 462, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 481, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 482, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.478 = private constant [43 x i8] c"../drivers/base/test/property-entry-test.c\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 483, i32 2 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_suites175, ptr @property_entry_test_suite, ptr @property_entry_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pe_test_uints.entries, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @pe_test_uint_arrays.a_u8, ptr @pe_test_uint_arrays.a_u16, ptr @pe_test_uint_arrays.a_u32, ptr @pe_test_uint_arrays.a_u64, ptr @pe_test_uint_arrays.entries, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @pe_test_strings.strings, ptr @.str.46, ptr @.str.47, ptr @pe_test_strings.entries, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @pe_test_bool.entries, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @pe_test_move_inline_u8.u8_array_small, ptr @pe_test_move_inline_u8.u8_array_big, ptr @pe_test_move_inline_u8.entries, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @pe_test_move_inline_str.str_array_small, ptr @.str.74, ptr @pe_test_move_inline_str.str_array_big, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @pe_test_move_inline_str.str_array_small_empty, ptr @pe_test_move_inline_str.entries, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @pe_test_reference.nodes, ptr @pe_test_reference.refs, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @property_entry_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @property_entry_test_cases to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_uints.entries to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_uint_arrays.a_u8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_uint_arrays.a_u16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_uint_arrays.a_u32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_uint_arrays.a_u64 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_uint_arrays.entries to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_strings.strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_strings.entries to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_bool.entries to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_move_inline_u8.u8_array_small to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_move_inline_u8.u8_array_big to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_move_inline_u8.entries to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_move_inline_str.str_array_small to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_move_inline_str.str_array_big to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_move_inline_str.str_array_small_empty to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_move_inline_str.entries to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_reference.nodes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe_test_reference.refs to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pe_test_uints(ptr noundef %test) #0 align 64 {
entry:
  %val_u8 = alloca i8, align 1
  %array_u8 = alloca [2 x i8], align 1
  %val_u16 = alloca i16, align 2
  %array_u16 = alloca [2 x i16], align 2
  %val_u32 = alloca i32, align 4
  %array_u32 = alloca [2 x i32], align 4
  %val_u64 = alloca i64, align 8
  %array_u64 = alloca [2 x i64], align 8
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion10 = alloca %struct.kunit_binary_assert, align 8
  %__assertion32 = alloca %struct.kunit_binary_assert, align 8
  %__assertion60 = alloca %struct.kunit_binary_assert, align 8
  %__assertion90 = alloca %struct.kunit_binary_assert, align 8
  %__assertion118 = alloca %struct.kunit_binary_assert, align 8
  %__assertion149 = alloca %struct.kunit_binary_assert, align 8
  %__assertion178 = alloca %struct.kunit_binary_assert, align 8
  %__assertion208 = alloca %struct.kunit_binary_assert, align 8
  %__assertion237 = alloca %struct.kunit_binary_assert, align 8
  %__assertion265 = alloca %struct.kunit_binary_assert, align 8
  %__assertion295 = alloca %struct.kunit_binary_assert, align 8
  %__assertion325 = alloca %struct.kunit_binary_assert, align 8
  %__assertion354 = alloca %struct.kunit_binary_assert, align 8
  %__assertion385 = alloca %struct.kunit_binary_assert, align 8
  %__assertion414 = alloca %struct.kunit_binary_assert, align 8
  %__assertion444 = alloca %struct.kunit_binary_assert, align 8
  %__assertion473 = alloca %struct.kunit_binary_assert, align 8
  %__assertion501 = alloca %struct.kunit_binary_assert, align 8
  %__assertion530 = alloca %struct.kunit_binary_assert, align 8
  %__assertion560 = alloca %struct.kunit_binary_assert, align 8
  %__assertion589 = alloca %struct.kunit_binary_assert, align 8
  %__assertion619 = alloca %struct.kunit_binary_assert, align 8
  %__assertion648 = alloca %struct.kunit_binary_assert, align 8
  %__assertion678 = alloca %struct.kunit_binary_assert, align 8
  %__assertion707 = alloca %struct.kunit_binary_assert, align 8
  %__assertion735 = alloca %struct.kunit_binary_assert, align 8
  %__assertion764 = alloca %struct.kunit_binary_assert, align 8
  %__assertion794 = alloca %struct.kunit_binary_assert, align 8
  %__assertion823 = alloca %struct.kunit_binary_assert, align 8
  %__assertion853 = alloca %struct.kunit_binary_assert, align 8
  %__assertion882 = alloca %struct.kunit_binary_assert, align 8
  %__assertion912 = alloca %struct.kunit_binary_assert, align 8
  %__assertion941 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val_u8) #4
  %0 = ptrtoint ptr %val_u8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val_u8, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %array_u8) #4
  %1 = ptrtoint ptr %array_u8 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %array_u8, align 1, !annotation !241
  %2 = getelementptr inbounds [2 x i8], ptr %array_u8, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_u16) #4
  %4 = ptrtoint ptr %val_u16 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val_u16, align 2, !annotation !241
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_u16) #4
  %5 = ptrtoint ptr %array_u16 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %array_u16, align 2, !annotation !241
  %6 = getelementptr inbounds [2 x i16], ptr %array_u16, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !241
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_u32) #4
  %8 = ptrtoint ptr %val_u32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val_u32, align 4, !annotation !241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %array_u32) #4
  %9 = ptrtoint ptr %array_u32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %array_u32, align 4, !annotation !241
  %10 = getelementptr inbounds [2 x i32], ptr %array_u32, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val_u64) #4
  %12 = ptrtoint ptr %val_u64 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %val_u64, align 8, !annotation !241
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %array_u64) #4
  %13 = call ptr @memset(ptr %array_u64, i32 255, i32 16)
  %call = tail call ptr @fwnode_create_software_node(ptr noundef nonnull @pe_test_uints.entries, ptr noundef null) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
  %14 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %16 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 28, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %17 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %18 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %20 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %21 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.12, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %call.i = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion10) #4
  %23 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %24 = call ptr @memset(ptr %23, i32 255, i32 24)
  %25 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion10, align 8
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %26 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %27 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 31, ptr %line14, align 8
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %28 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.11, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %29 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message16, align 8
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %31 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_assert_format, ptr %format19, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 1
  %32 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.13, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 2
  %33 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.14, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 3
  %conv = sext i32 %call.i to i64
  %34 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 4
  %35 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.15, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 5
  %36 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion10) #4
  %call.i1149 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %val_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion32) #4
  %37 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %38 = call ptr @memset(ptr %37, i32 255, i32 24)
  %39 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion32, align 8
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %40 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %41 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 34, ptr %line36, align 8
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %42 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.11, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %43 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message38, align 8
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %45 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_binary_assert_format, ptr %format41, align 8
  %operation42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 1
  %46 = ptrtoint ptr %operation42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.13, ptr %operation42, align 4
  %left_text43 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 2
  %47 = ptrtoint ptr %left_text43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.14, ptr %left_text43, align 8
  %left_value44 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 3
  %conv45 = sext i32 %call.i1149 to i64
  %48 = ptrtoint ptr %left_value44 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv45, ptr %left_value44, align 8
  %right_text46 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 4
  %49 = ptrtoint ptr %right_text46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.16, ptr %right_text46, align 8
  %right_value47 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 5
  %50 = ptrtoint ptr %right_value47 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %right_value47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1149)
  %cmp50 = icmp eq i32 %call.i1149, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp50, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion32) #4
  %51 = ptrtoint ptr %val_u8 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val_u8, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion60) #4
  %53 = getelementptr inbounds i8, ptr %__assertion60, i32 32
  %54 = call ptr @memset(ptr %53, i32 255, i32 24)
  %55 = ptrtoint ptr %__assertion60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion60, align 8
  %type63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 1
  %56 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type63, align 4
  %line64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 2
  %57 = ptrtoint ptr %line64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 35, ptr %line64, align 8
  %file65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 3
  %58 = ptrtoint ptr %file65 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.11, ptr %file65, align 4
  %message66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4
  %59 = ptrtoint ptr %message66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message66, align 8
  %va68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %va68 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va68, align 4
  %format69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 5
  %61 = ptrtoint ptr %format69 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_assert_format, ptr %format69, align 8
  %operation70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 1
  %62 = ptrtoint ptr %operation70 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.13, ptr %operation70, align 4
  %left_text71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 2
  %63 = ptrtoint ptr %left_text71 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.17, ptr %left_text71, align 8
  %left_value72 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 3
  %conv73 = zext i8 %52 to i64
  %64 = ptrtoint ptr %left_value72 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv73, ptr %left_value72, align 8
  %right_text74 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 4
  %65 = ptrtoint ptr %right_text74 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.18, ptr %right_text74, align 8
  %right_value75 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion60, i32 0, i32 5
  %66 = ptrtoint ptr %right_value75 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 8, ptr %right_value75, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %52)
  %cmp79 = icmp eq i8 %52, 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion60, i1 noundef zeroext %cmp79, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion60) #4
  %call85 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %array_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion90) #4
  %67 = getelementptr inbounds i8, ptr %__assertion90, i32 32
  %68 = call ptr @memset(ptr %67, i32 255, i32 24)
  %69 = ptrtoint ptr %__assertion90 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %test, ptr %__assertion90, align 8
  %type93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 1
  %70 = ptrtoint ptr %type93 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %type93, align 4
  %line94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 2
  %71 = ptrtoint ptr %line94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 38, ptr %line94, align 8
  %file95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 3
  %72 = ptrtoint ptr %file95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.11, ptr %file95, align 4
  %message96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 4
  %73 = ptrtoint ptr %message96 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %message96, align 8
  %va98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %va98 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %va98, align 4
  %format99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 5
  %75 = ptrtoint ptr %format99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @kunit_binary_assert_format, ptr %format99, align 8
  %operation100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 1
  %76 = ptrtoint ptr %operation100 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.13, ptr %operation100, align 4
  %left_text101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 2
  %77 = ptrtoint ptr %left_text101 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.14, ptr %left_text101, align 8
  %left_value102 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 3
  %conv103 = sext i32 %call85 to i64
  %78 = ptrtoint ptr %left_value102 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv103, ptr %left_value102, align 8
  %right_text104 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 4
  %79 = ptrtoint ptr %right_text104 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.16, ptr %right_text104, align 8
  %right_value105 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 5
  %80 = ptrtoint ptr %right_value105 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %right_value105, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp108 = icmp eq i32 %call85, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion90, i1 noundef zeroext %cmp108, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion90) #4
  %81 = ptrtoint ptr %array_u8 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %array_u8, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion118) #4
  %83 = getelementptr inbounds i8, ptr %__assertion118, i32 32
  %84 = call ptr @memset(ptr %83, i32 255, i32 24)
  %85 = ptrtoint ptr %__assertion118 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %test, ptr %__assertion118, align 8
  %type121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 1
  %86 = ptrtoint ptr %type121 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %type121, align 4
  %line122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 2
  %87 = ptrtoint ptr %line122 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 39, ptr %line122, align 8
  %file123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 3
  %88 = ptrtoint ptr %file123 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.11, ptr %file123, align 4
  %message124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 4
  %89 = ptrtoint ptr %message124 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %message124, align 8
  %va126 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %va126 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %va126, align 4
  %format127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 5
  %91 = ptrtoint ptr %format127 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @kunit_binary_assert_format, ptr %format127, align 8
  %operation128 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 1
  %92 = ptrtoint ptr %operation128 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.13, ptr %operation128, align 4
  %left_text129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 2
  %93 = ptrtoint ptr %left_text129 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.19, ptr %left_text129, align 8
  %left_value130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 3
  %conv131 = zext i8 %82 to i64
  %94 = ptrtoint ptr %left_value130 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv131, ptr %left_value130, align 8
  %right_text132 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 4
  %95 = ptrtoint ptr %right_text132 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.18, ptr %right_text132, align 8
  %right_value133 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 5
  %96 = ptrtoint ptr %right_value133 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 8, ptr %right_value133, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %82)
  %cmp137 = icmp eq i8 %82, 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion118, i1 noundef zeroext %cmp137, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion118) #4
  %call144 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %array_u8, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion149) #4
  %97 = getelementptr inbounds i8, ptr %__assertion149, i32 32
  %98 = call ptr @memset(ptr %97, i32 255, i32 24)
  %99 = ptrtoint ptr %__assertion149 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %test, ptr %__assertion149, align 8
  %type152 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 1
  %100 = ptrtoint ptr %type152 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %type152, align 4
  %line153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 2
  %101 = ptrtoint ptr %line153 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 42, ptr %line153, align 8
  %file154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 3
  %102 = ptrtoint ptr %file154 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.11, ptr %file154, align 4
  %message155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4
  %103 = ptrtoint ptr %message155 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %message155, align 8
  %va157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %va157 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %va157, align 4
  %format158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 5
  %105 = ptrtoint ptr %format158 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @kunit_binary_assert_format, ptr %format158, align 8
  %operation159 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 1
  %106 = ptrtoint ptr %operation159 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.20, ptr %operation159, align 4
  %left_text160 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 2
  %107 = ptrtoint ptr %left_text160 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.14, ptr %left_text160, align 8
  %left_value161 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 3
  %conv162 = sext i32 %call144 to i64
  %108 = ptrtoint ptr %left_value161 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv162, ptr %left_value161, align 8
  %right_text163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 4
  %109 = ptrtoint ptr %right_text163 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.16, ptr %right_text163, align 8
  %right_value164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 5
  %110 = ptrtoint ptr %right_value164 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %right_value164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp167 = icmp ne i32 %call144, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion149, i1 noundef zeroext %cmp167, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion149) #4
  %call.i1150 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.21, ptr noundef nonnull %val_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion178) #4
  %111 = getelementptr inbounds i8, ptr %__assertion178, i32 32
  %112 = call ptr @memset(ptr %111, i32 255, i32 24)
  %113 = ptrtoint ptr %__assertion178 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %test, ptr %__assertion178, align 8
  %type181 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 1
  %114 = ptrtoint ptr %type181 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %type181, align 4
  %line182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 2
  %115 = ptrtoint ptr %line182 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 45, ptr %line182, align 8
  %file183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 3
  %116 = ptrtoint ptr %file183 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.11, ptr %file183, align 4
  %message184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 4
  %117 = ptrtoint ptr %message184 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %message184, align 8
  %va186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %va186 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %va186, align 4
  %format187 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 5
  %119 = ptrtoint ptr %format187 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @kunit_binary_assert_format, ptr %format187, align 8
  %operation188 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 1
  %120 = ptrtoint ptr %operation188 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.20, ptr %operation188, align 4
  %left_text189 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 2
  %121 = ptrtoint ptr %left_text189 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.14, ptr %left_text189, align 8
  %left_value190 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 3
  %conv191 = sext i32 %call.i1150 to i64
  %122 = ptrtoint ptr %left_value190 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv191, ptr %left_value190, align 8
  %right_text192 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 4
  %123 = ptrtoint ptr %right_text192 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.16, ptr %right_text192, align 8
  %right_value193 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 5
  %124 = ptrtoint ptr %right_value193 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 0, ptr %right_value193, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1150)
  %cmp196 = icmp ne i32 %call.i1150, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion178, i1 noundef zeroext %cmp196, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion178) #4
  %call203 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.21, ptr noundef nonnull %array_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion208) #4
  %125 = getelementptr inbounds i8, ptr %__assertion208, i32 32
  %126 = call ptr @memset(ptr %125, i32 255, i32 24)
  %127 = ptrtoint ptr %__assertion208 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %test, ptr %__assertion208, align 8
  %type211 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 1
  %128 = ptrtoint ptr %type211 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %type211, align 4
  %line212 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 2
  %129 = ptrtoint ptr %line212 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 48, ptr %line212, align 8
  %file213 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 3
  %130 = ptrtoint ptr %file213 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.11, ptr %file213, align 4
  %message214 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 4
  %131 = ptrtoint ptr %message214 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %message214, align 8
  %va216 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 4, i32 1
  %132 = ptrtoint ptr %va216 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %va216, align 4
  %format217 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 5
  %133 = ptrtoint ptr %format217 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @kunit_binary_assert_format, ptr %format217, align 8
  %operation218 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 1
  %134 = ptrtoint ptr %operation218 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.20, ptr %operation218, align 4
  %left_text219 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 2
  %135 = ptrtoint ptr %left_text219 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.14, ptr %left_text219, align 8
  %left_value220 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 3
  %conv221 = sext i32 %call203 to i64
  %136 = ptrtoint ptr %left_value220 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv221, ptr %left_value220, align 8
  %right_text222 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 4
  %137 = ptrtoint ptr %right_text222 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.16, ptr %right_text222, align 8
  %right_value223 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 5
  %138 = ptrtoint ptr %right_value223 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 0, ptr %right_value223, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp226 = icmp ne i32 %call203, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion208, i1 noundef zeroext %cmp226, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion208) #4
  %call.i1151 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %val_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion237) #4
  %139 = getelementptr inbounds i8, ptr %__assertion237, i32 32
  %140 = call ptr @memset(ptr %139, i32 255, i32 24)
  %141 = ptrtoint ptr %__assertion237 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %test, ptr %__assertion237, align 8
  %type240 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion237, i32 0, i32 1
  %142 = ptrtoint ptr %type240 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %type240, align 4
  %line241 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion237, i32 0, i32 2
  %143 = ptrtoint ptr %line241 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 51, ptr %line241, align 8
  %file242 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion237, i32 0, i32 3
  %144 = ptrtoint ptr %file242 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @.str.11, ptr %file242, align 4
  %message243 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion237, i32 0, i32 4
  %145 = ptrtoint ptr %message243 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %message243, align 8
  %va245 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion237, i32 0, i32 4, i32 1
  %146 = ptrtoint ptr %va245 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %va245, align 4
  %format246 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion237, i32 0, i32 5
  %147 = ptrtoint ptr %format246 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @kunit_binary_assert_format, ptr %format246, align 8
  %operation247 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion237, i32 0, i32 1
  %148 = ptrtoint ptr %operation247 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.13, ptr %operation247, align 4
  %left_text248 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion237, i32 0, i32 2
  %149 = ptrtoint ptr %left_text248 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.14, ptr %left_text248, align 8
  %left_value249 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion237, i32 0, i32 3
  %conv250 = sext i32 %call.i1151 to i64
  %150 = ptrtoint ptr %left_value249 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %conv250, ptr %left_value249, align 8
  %right_text251 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion237, i32 0, i32 4
  %151 = ptrtoint ptr %right_text251 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.16, ptr %right_text251, align 8
  %right_value252 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion237, i32 0, i32 5
  %152 = ptrtoint ptr %right_value252 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 0, ptr %right_value252, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1151)
  %cmp255 = icmp eq i32 %call.i1151, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion237, i1 noundef zeroext %cmp255, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion237) #4
  %153 = ptrtoint ptr %val_u16 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %val_u16, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion265) #4
  %155 = getelementptr inbounds i8, ptr %__assertion265, i32 32
  %156 = call ptr @memset(ptr %155, i32 255, i32 24)
  %157 = ptrtoint ptr %__assertion265 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %test, ptr %__assertion265, align 8
  %type268 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 1
  %158 = ptrtoint ptr %type268 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %type268, align 4
  %line269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 2
  %159 = ptrtoint ptr %line269 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 52, ptr %line269, align 8
  %file270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 3
  %160 = ptrtoint ptr %file270 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @.str.11, ptr %file270, align 4
  %message271 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 4
  %161 = ptrtoint ptr %message271 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %message271, align 8
  %va273 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 4, i32 1
  %162 = ptrtoint ptr %va273 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %va273, align 4
  %format274 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 5
  %163 = ptrtoint ptr %format274 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @kunit_binary_assert_format, ptr %format274, align 8
  %operation275 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion265, i32 0, i32 1
  %164 = ptrtoint ptr %operation275 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.13, ptr %operation275, align 4
  %left_text276 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion265, i32 0, i32 2
  %165 = ptrtoint ptr %left_text276 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @.str.22, ptr %left_text276, align 8
  %left_value277 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion265, i32 0, i32 3
  %conv278 = zext i16 %154 to i64
  %166 = ptrtoint ptr %left_value277 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %conv278, ptr %left_value277, align 8
  %right_text279 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion265, i32 0, i32 4
  %167 = ptrtoint ptr %right_text279 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @.str.23, ptr %right_text279, align 8
  %right_value280 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion265, i32 0, i32 5
  %168 = ptrtoint ptr %right_value280 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 16, ptr %right_value280, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %154)
  %cmp284 = icmp eq i16 %154, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion265, i1 noundef zeroext %cmp284, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion265) #4
  %call.i1152 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion295) #4
  %169 = getelementptr inbounds i8, ptr %__assertion295, i32 32
  %170 = call ptr @memset(ptr %169, i32 255, i32 24)
  %171 = ptrtoint ptr %__assertion295 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %test, ptr %__assertion295, align 8
  %type298 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 1
  %172 = ptrtoint ptr %type298 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %type298, align 4
  %line299 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 2
  %173 = ptrtoint ptr %line299 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 55, ptr %line299, align 8
  %file300 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 3
  %174 = ptrtoint ptr %file300 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.11, ptr %file300, align 4
  %message301 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 4
  %175 = ptrtoint ptr %message301 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %message301, align 8
  %va303 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 4, i32 1
  %176 = ptrtoint ptr %va303 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %va303, align 4
  %format304 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 5
  %177 = ptrtoint ptr %format304 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @kunit_binary_assert_format, ptr %format304, align 8
  %operation305 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 1
  %178 = ptrtoint ptr %operation305 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.13, ptr %operation305, align 4
  %left_text306 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 2
  %179 = ptrtoint ptr %left_text306 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @.str.14, ptr %left_text306, align 8
  %left_value307 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 3
  %conv308 = sext i32 %call.i1152 to i64
  %180 = ptrtoint ptr %left_value307 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %conv308, ptr %left_value307, align 8
  %right_text309 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 4
  %181 = ptrtoint ptr %right_text309 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.15, ptr %right_text309, align 8
  %right_value310 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 5
  %182 = ptrtoint ptr %right_value310 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 1, ptr %right_value310, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1152)
  %cmp313 = icmp eq i32 %call.i1152, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion295, i1 noundef zeroext %cmp313, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion295) #4
  %call320 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %array_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion325) #4
  %183 = getelementptr inbounds i8, ptr %__assertion325, i32 32
  %184 = call ptr @memset(ptr %183, i32 255, i32 24)
  %185 = ptrtoint ptr %__assertion325 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %test, ptr %__assertion325, align 8
  %type328 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion325, i32 0, i32 1
  %186 = ptrtoint ptr %type328 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 1, ptr %type328, align 4
  %line329 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion325, i32 0, i32 2
  %187 = ptrtoint ptr %line329 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 58, ptr %line329, align 8
  %file330 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion325, i32 0, i32 3
  %188 = ptrtoint ptr %file330 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @.str.11, ptr %file330, align 4
  %message331 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion325, i32 0, i32 4
  %189 = ptrtoint ptr %message331 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %message331, align 8
  %va333 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion325, i32 0, i32 4, i32 1
  %190 = ptrtoint ptr %va333 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %va333, align 4
  %format334 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion325, i32 0, i32 5
  %191 = ptrtoint ptr %format334 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @kunit_binary_assert_format, ptr %format334, align 8
  %operation335 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion325, i32 0, i32 1
  %192 = ptrtoint ptr %operation335 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.13, ptr %operation335, align 4
  %left_text336 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion325, i32 0, i32 2
  %193 = ptrtoint ptr %left_text336 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @.str.14, ptr %left_text336, align 8
  %left_value337 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion325, i32 0, i32 3
  %conv338 = sext i32 %call320 to i64
  %194 = ptrtoint ptr %left_value337 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %conv338, ptr %left_value337, align 8
  %right_text339 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion325, i32 0, i32 4
  %195 = ptrtoint ptr %right_text339 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @.str.16, ptr %right_text339, align 8
  %right_value340 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion325, i32 0, i32 5
  %196 = ptrtoint ptr %right_value340 to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 0, ptr %right_value340, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call320)
  %cmp343 = icmp eq i32 %call320, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion325, i1 noundef zeroext %cmp343, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion325) #4
  %197 = ptrtoint ptr %array_u16 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %array_u16, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion354) #4
  %199 = getelementptr inbounds i8, ptr %__assertion354, i32 32
  %200 = call ptr @memset(ptr %199, i32 255, i32 24)
  %201 = ptrtoint ptr %__assertion354 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %test, ptr %__assertion354, align 8
  %type357 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion354, i32 0, i32 1
  %202 = ptrtoint ptr %type357 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %type357, align 4
  %line358 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion354, i32 0, i32 2
  %203 = ptrtoint ptr %line358 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 59, ptr %line358, align 8
  %file359 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion354, i32 0, i32 3
  %204 = ptrtoint ptr %file359 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @.str.11, ptr %file359, align 4
  %message360 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion354, i32 0, i32 4
  %205 = ptrtoint ptr %message360 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %message360, align 8
  %va362 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion354, i32 0, i32 4, i32 1
  %206 = ptrtoint ptr %va362 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %va362, align 4
  %format363 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion354, i32 0, i32 5
  %207 = ptrtoint ptr %format363 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @kunit_binary_assert_format, ptr %format363, align 8
  %operation364 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion354, i32 0, i32 1
  %208 = ptrtoint ptr %operation364 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @.str.13, ptr %operation364, align 4
  %left_text365 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion354, i32 0, i32 2
  %209 = ptrtoint ptr %left_text365 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr @.str.24, ptr %left_text365, align 8
  %left_value366 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion354, i32 0, i32 3
  %conv367 = zext i16 %198 to i64
  %210 = ptrtoint ptr %left_value366 to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %conv367, ptr %left_value366, align 8
  %right_text368 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion354, i32 0, i32 4
  %211 = ptrtoint ptr %right_text368 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @.str.23, ptr %right_text368, align 8
  %right_value369 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion354, i32 0, i32 5
  %212 = ptrtoint ptr %right_value369 to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 16, ptr %right_value369, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %198)
  %cmp373 = icmp eq i16 %198, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion354, i1 noundef zeroext %cmp373, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion354) #4
  %call380 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %array_u16, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion385) #4
  %213 = getelementptr inbounds i8, ptr %__assertion385, i32 32
  %214 = call ptr @memset(ptr %213, i32 255, i32 24)
  %215 = ptrtoint ptr %__assertion385 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %test, ptr %__assertion385, align 8
  %type388 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 1
  %216 = ptrtoint ptr %type388 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1, ptr %type388, align 4
  %line389 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 2
  %217 = ptrtoint ptr %line389 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 62, ptr %line389, align 8
  %file390 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 3
  %218 = ptrtoint ptr %file390 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @.str.11, ptr %file390, align 4
  %message391 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 4
  %219 = ptrtoint ptr %message391 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %message391, align 8
  %va393 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 4, i32 1
  %220 = ptrtoint ptr %va393 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %va393, align 4
  %format394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 5
  %221 = ptrtoint ptr %format394 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @kunit_binary_assert_format, ptr %format394, align 8
  %operation395 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 1
  %222 = ptrtoint ptr %operation395 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @.str.20, ptr %operation395, align 4
  %left_text396 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 2
  %223 = ptrtoint ptr %left_text396 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @.str.14, ptr %left_text396, align 8
  %left_value397 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 3
  %conv398 = sext i32 %call380 to i64
  %224 = ptrtoint ptr %left_value397 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv398, ptr %left_value397, align 8
  %right_text399 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 4
  %225 = ptrtoint ptr %right_text399 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @.str.16, ptr %right_text399, align 8
  %right_value400 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 5
  %226 = ptrtoint ptr %right_value400 to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 0, ptr %right_value400, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380)
  %cmp403 = icmp ne i32 %call380, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion385, i1 noundef zeroext %cmp403, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion385) #4
  %call.i1153 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.25, ptr noundef nonnull %val_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion414) #4
  %227 = getelementptr inbounds i8, ptr %__assertion414, i32 32
  %228 = call ptr @memset(ptr %227, i32 255, i32 24)
  %229 = ptrtoint ptr %__assertion414 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %test, ptr %__assertion414, align 8
  %type417 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion414, i32 0, i32 1
  %230 = ptrtoint ptr %type417 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 1, ptr %type417, align 4
  %line418 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion414, i32 0, i32 2
  %231 = ptrtoint ptr %line418 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 65, ptr %line418, align 8
  %file419 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion414, i32 0, i32 3
  %232 = ptrtoint ptr %file419 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @.str.11, ptr %file419, align 4
  %message420 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion414, i32 0, i32 4
  %233 = ptrtoint ptr %message420 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %message420, align 8
  %va422 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion414, i32 0, i32 4, i32 1
  %234 = ptrtoint ptr %va422 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %va422, align 4
  %format423 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion414, i32 0, i32 5
  %235 = ptrtoint ptr %format423 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @kunit_binary_assert_format, ptr %format423, align 8
  %operation424 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion414, i32 0, i32 1
  %236 = ptrtoint ptr %operation424 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @.str.20, ptr %operation424, align 4
  %left_text425 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion414, i32 0, i32 2
  %237 = ptrtoint ptr %left_text425 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr @.str.14, ptr %left_text425, align 8
  %left_value426 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion414, i32 0, i32 3
  %conv427 = sext i32 %call.i1153 to i64
  %238 = ptrtoint ptr %left_value426 to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %conv427, ptr %left_value426, align 8
  %right_text428 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion414, i32 0, i32 4
  %239 = ptrtoint ptr %right_text428 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr @.str.16, ptr %right_text428, align 8
  %right_value429 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion414, i32 0, i32 5
  %240 = ptrtoint ptr %right_value429 to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 0, ptr %right_value429, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1153)
  %cmp432 = icmp ne i32 %call.i1153, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion414, i1 noundef zeroext %cmp432, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion414) #4
  %call439 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.25, ptr noundef nonnull %array_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion444) #4
  %241 = getelementptr inbounds i8, ptr %__assertion444, i32 32
  %242 = call ptr @memset(ptr %241, i32 255, i32 24)
  %243 = ptrtoint ptr %__assertion444 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %test, ptr %__assertion444, align 8
  %type447 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 1
  %244 = ptrtoint ptr %type447 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 1, ptr %type447, align 4
  %line448 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 2
  %245 = ptrtoint ptr %line448 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 68, ptr %line448, align 8
  %file449 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 3
  %246 = ptrtoint ptr %file449 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @.str.11, ptr %file449, align 4
  %message450 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 4
  %247 = ptrtoint ptr %message450 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr null, ptr %message450, align 8
  %va452 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 4, i32 1
  %248 = ptrtoint ptr %va452 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr null, ptr %va452, align 4
  %format453 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 5
  %249 = ptrtoint ptr %format453 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @kunit_binary_assert_format, ptr %format453, align 8
  %operation454 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 1
  %250 = ptrtoint ptr %operation454 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @.str.20, ptr %operation454, align 4
  %left_text455 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 2
  %251 = ptrtoint ptr %left_text455 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @.str.14, ptr %left_text455, align 8
  %left_value456 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 3
  %conv457 = sext i32 %call439 to i64
  %252 = ptrtoint ptr %left_value456 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %conv457, ptr %left_value456, align 8
  %right_text458 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 4
  %253 = ptrtoint ptr %right_text458 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @.str.16, ptr %right_text458, align 8
  %right_value459 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 5
  %254 = ptrtoint ptr %right_value459 to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 0, ptr %right_value459, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call439)
  %cmp462 = icmp ne i32 %call439, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion444, i1 noundef zeroext %cmp462, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion444) #4
  %call.i1154 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %val_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion473) #4
  %255 = getelementptr inbounds i8, ptr %__assertion473, i32 32
  %256 = call ptr @memset(ptr %255, i32 255, i32 24)
  %257 = ptrtoint ptr %__assertion473 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %test, ptr %__assertion473, align 8
  %type476 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion473, i32 0, i32 1
  %258 = ptrtoint ptr %type476 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %type476, align 4
  %line477 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion473, i32 0, i32 2
  %259 = ptrtoint ptr %line477 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 71, ptr %line477, align 8
  %file478 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion473, i32 0, i32 3
  %260 = ptrtoint ptr %file478 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @.str.11, ptr %file478, align 4
  %message479 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion473, i32 0, i32 4
  %261 = ptrtoint ptr %message479 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %message479, align 8
  %va481 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion473, i32 0, i32 4, i32 1
  %262 = ptrtoint ptr %va481 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr null, ptr %va481, align 4
  %format482 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion473, i32 0, i32 5
  %263 = ptrtoint ptr %format482 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @kunit_binary_assert_format, ptr %format482, align 8
  %operation483 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion473, i32 0, i32 1
  %264 = ptrtoint ptr %operation483 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @.str.13, ptr %operation483, align 4
  %left_text484 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion473, i32 0, i32 2
  %265 = ptrtoint ptr %left_text484 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @.str.14, ptr %left_text484, align 8
  %left_value485 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion473, i32 0, i32 3
  %conv486 = sext i32 %call.i1154 to i64
  %266 = ptrtoint ptr %left_value485 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %conv486, ptr %left_value485, align 8
  %right_text487 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion473, i32 0, i32 4
  %267 = ptrtoint ptr %right_text487 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr @.str.16, ptr %right_text487, align 8
  %right_value488 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion473, i32 0, i32 5
  %268 = ptrtoint ptr %right_value488 to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 0, ptr %right_value488, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1154)
  %cmp491 = icmp eq i32 %call.i1154, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion473, i1 noundef zeroext %cmp491, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion473) #4
  %269 = ptrtoint ptr %val_u32 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %val_u32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion501) #4
  %271 = getelementptr inbounds i8, ptr %__assertion501, i32 32
  %272 = call ptr @memset(ptr %271, i32 255, i32 24)
  %273 = ptrtoint ptr %__assertion501 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %test, ptr %__assertion501, align 8
  %type504 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion501, i32 0, i32 1
  %274 = ptrtoint ptr %type504 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 1, ptr %type504, align 4
  %line505 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion501, i32 0, i32 2
  %275 = ptrtoint ptr %line505 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 72, ptr %line505, align 8
  %file506 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion501, i32 0, i32 3
  %276 = ptrtoint ptr %file506 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr @.str.11, ptr %file506, align 4
  %message507 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion501, i32 0, i32 4
  %277 = ptrtoint ptr %message507 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr null, ptr %message507, align 8
  %va509 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion501, i32 0, i32 4, i32 1
  %278 = ptrtoint ptr %va509 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr null, ptr %va509, align 4
  %format510 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion501, i32 0, i32 5
  %279 = ptrtoint ptr %format510 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr @kunit_binary_assert_format, ptr %format510, align 8
  %operation511 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion501, i32 0, i32 1
  %280 = ptrtoint ptr %operation511 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr @.str.13, ptr %operation511, align 4
  %left_text512 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion501, i32 0, i32 2
  %281 = ptrtoint ptr %left_text512 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @.str.26, ptr %left_text512, align 8
  %left_value513 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion501, i32 0, i32 3
  %conv514 = zext i32 %270 to i64
  %282 = ptrtoint ptr %left_value513 to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 %conv514, ptr %left_value513, align 8
  %right_text515 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion501, i32 0, i32 4
  %283 = ptrtoint ptr %right_text515 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @.str.27, ptr %right_text515, align 8
  %right_value516 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion501, i32 0, i32 5
  %284 = ptrtoint ptr %right_value516 to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 32, ptr %right_value516, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %270)
  %cmp519 = icmp eq i32 %270, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion501, i1 noundef zeroext %cmp519, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion501) #4
  %call.i1155 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion530) #4
  %285 = getelementptr inbounds i8, ptr %__assertion530, i32 32
  %286 = call ptr @memset(ptr %285, i32 255, i32 24)
  %287 = ptrtoint ptr %__assertion530 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %test, ptr %__assertion530, align 8
  %type533 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion530, i32 0, i32 1
  %288 = ptrtoint ptr %type533 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 1, ptr %type533, align 4
  %line534 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion530, i32 0, i32 2
  %289 = ptrtoint ptr %line534 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 75, ptr %line534, align 8
  %file535 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion530, i32 0, i32 3
  %290 = ptrtoint ptr %file535 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr @.str.11, ptr %file535, align 4
  %message536 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion530, i32 0, i32 4
  %291 = ptrtoint ptr %message536 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr null, ptr %message536, align 8
  %va538 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion530, i32 0, i32 4, i32 1
  %292 = ptrtoint ptr %va538 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr null, ptr %va538, align 4
  %format539 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion530, i32 0, i32 5
  %293 = ptrtoint ptr %format539 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr @kunit_binary_assert_format, ptr %format539, align 8
  %operation540 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion530, i32 0, i32 1
  %294 = ptrtoint ptr %operation540 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr @.str.13, ptr %operation540, align 4
  %left_text541 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion530, i32 0, i32 2
  %295 = ptrtoint ptr %left_text541 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr @.str.14, ptr %left_text541, align 8
  %left_value542 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion530, i32 0, i32 3
  %conv543 = sext i32 %call.i1155 to i64
  %296 = ptrtoint ptr %left_value542 to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 %conv543, ptr %left_value542, align 8
  %right_text544 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion530, i32 0, i32 4
  %297 = ptrtoint ptr %right_text544 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr @.str.15, ptr %right_text544, align 8
  %right_value545 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion530, i32 0, i32 5
  %298 = ptrtoint ptr %right_value545 to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 1, ptr %right_value545, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1155)
  %cmp548 = icmp eq i32 %call.i1155, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion530, i1 noundef zeroext %cmp548, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion530) #4
  %call555 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %array_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion560) #4
  %299 = getelementptr inbounds i8, ptr %__assertion560, i32 32
  %300 = call ptr @memset(ptr %299, i32 255, i32 24)
  %301 = ptrtoint ptr %__assertion560 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %test, ptr %__assertion560, align 8
  %type563 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion560, i32 0, i32 1
  %302 = ptrtoint ptr %type563 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 1, ptr %type563, align 4
  %line564 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion560, i32 0, i32 2
  %303 = ptrtoint ptr %line564 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 78, ptr %line564, align 8
  %file565 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion560, i32 0, i32 3
  %304 = ptrtoint ptr %file565 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr @.str.11, ptr %file565, align 4
  %message566 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion560, i32 0, i32 4
  %305 = ptrtoint ptr %message566 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr null, ptr %message566, align 8
  %va568 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion560, i32 0, i32 4, i32 1
  %306 = ptrtoint ptr %va568 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr null, ptr %va568, align 4
  %format569 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion560, i32 0, i32 5
  %307 = ptrtoint ptr %format569 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr @kunit_binary_assert_format, ptr %format569, align 8
  %operation570 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion560, i32 0, i32 1
  %308 = ptrtoint ptr %operation570 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr @.str.13, ptr %operation570, align 4
  %left_text571 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion560, i32 0, i32 2
  %309 = ptrtoint ptr %left_text571 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @.str.14, ptr %left_text571, align 8
  %left_value572 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion560, i32 0, i32 3
  %conv573 = sext i32 %call555 to i64
  %310 = ptrtoint ptr %left_value572 to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %conv573, ptr %left_value572, align 8
  %right_text574 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion560, i32 0, i32 4
  %311 = ptrtoint ptr %right_text574 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr @.str.16, ptr %right_text574, align 8
  %right_value575 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion560, i32 0, i32 5
  %312 = ptrtoint ptr %right_value575 to i32
  call void @__asan_store8_noabort(i32 %312)
  store i64 0, ptr %right_value575, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call555)
  %cmp578 = icmp eq i32 %call555, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion560, i1 noundef zeroext %cmp578, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion560) #4
  %313 = ptrtoint ptr %array_u32 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %array_u32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion589) #4
  %315 = getelementptr inbounds i8, ptr %__assertion589, i32 32
  %316 = call ptr @memset(ptr %315, i32 255, i32 24)
  %317 = ptrtoint ptr %__assertion589 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %test, ptr %__assertion589, align 8
  %type592 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 1
  %318 = ptrtoint ptr %type592 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 1, ptr %type592, align 4
  %line593 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 2
  %319 = ptrtoint ptr %line593 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 79, ptr %line593, align 8
  %file594 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 3
  %320 = ptrtoint ptr %file594 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr @.str.11, ptr %file594, align 4
  %message595 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 4
  %321 = ptrtoint ptr %message595 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr null, ptr %message595, align 8
  %va597 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 4, i32 1
  %322 = ptrtoint ptr %va597 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr null, ptr %va597, align 4
  %format598 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 5
  %323 = ptrtoint ptr %format598 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr @kunit_binary_assert_format, ptr %format598, align 8
  %operation599 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion589, i32 0, i32 1
  %324 = ptrtoint ptr %operation599 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr @.str.13, ptr %operation599, align 4
  %left_text600 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion589, i32 0, i32 2
  %325 = ptrtoint ptr %left_text600 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr @.str.28, ptr %left_text600, align 8
  %left_value601 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion589, i32 0, i32 3
  %conv602 = zext i32 %314 to i64
  %326 = ptrtoint ptr %left_value601 to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 %conv602, ptr %left_value601, align 8
  %right_text603 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion589, i32 0, i32 4
  %327 = ptrtoint ptr %right_text603 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr @.str.27, ptr %right_text603, align 8
  %right_value604 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion589, i32 0, i32 5
  %328 = ptrtoint ptr %right_value604 to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 32, ptr %right_value604, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %314)
  %cmp607 = icmp eq i32 %314, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion589, i1 noundef zeroext %cmp607, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion589) #4
  %call614 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %array_u32, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion619) #4
  %329 = getelementptr inbounds i8, ptr %__assertion619, i32 32
  %330 = call ptr @memset(ptr %329, i32 255, i32 24)
  %331 = ptrtoint ptr %__assertion619 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %test, ptr %__assertion619, align 8
  %type622 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion619, i32 0, i32 1
  %332 = ptrtoint ptr %type622 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 1, ptr %type622, align 4
  %line623 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion619, i32 0, i32 2
  %333 = ptrtoint ptr %line623 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 82, ptr %line623, align 8
  %file624 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion619, i32 0, i32 3
  %334 = ptrtoint ptr %file624 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr @.str.11, ptr %file624, align 4
  %message625 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion619, i32 0, i32 4
  %335 = ptrtoint ptr %message625 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr null, ptr %message625, align 8
  %va627 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion619, i32 0, i32 4, i32 1
  %336 = ptrtoint ptr %va627 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr null, ptr %va627, align 4
  %format628 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion619, i32 0, i32 5
  %337 = ptrtoint ptr %format628 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr @kunit_binary_assert_format, ptr %format628, align 8
  %operation629 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion619, i32 0, i32 1
  %338 = ptrtoint ptr %operation629 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr @.str.20, ptr %operation629, align 4
  %left_text630 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion619, i32 0, i32 2
  %339 = ptrtoint ptr %left_text630 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr @.str.14, ptr %left_text630, align 8
  %left_value631 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion619, i32 0, i32 3
  %conv632 = sext i32 %call614 to i64
  %340 = ptrtoint ptr %left_value631 to i32
  call void @__asan_store8_noabort(i32 %340)
  store i64 %conv632, ptr %left_value631, align 8
  %right_text633 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion619, i32 0, i32 4
  %341 = ptrtoint ptr %right_text633 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr @.str.16, ptr %right_text633, align 8
  %right_value634 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion619, i32 0, i32 5
  %342 = ptrtoint ptr %right_value634 to i32
  call void @__asan_store8_noabort(i32 %342)
  store i64 0, ptr %right_value634, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call614)
  %cmp637 = icmp ne i32 %call614, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion619, i1 noundef zeroext %cmp637, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion619) #4
  %call.i1156 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.29, ptr noundef nonnull %val_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion648) #4
  %343 = getelementptr inbounds i8, ptr %__assertion648, i32 32
  %344 = call ptr @memset(ptr %343, i32 255, i32 24)
  %345 = ptrtoint ptr %__assertion648 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %test, ptr %__assertion648, align 8
  %type651 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion648, i32 0, i32 1
  %346 = ptrtoint ptr %type651 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 1, ptr %type651, align 4
  %line652 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion648, i32 0, i32 2
  %347 = ptrtoint ptr %line652 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 85, ptr %line652, align 8
  %file653 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion648, i32 0, i32 3
  %348 = ptrtoint ptr %file653 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr @.str.11, ptr %file653, align 4
  %message654 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion648, i32 0, i32 4
  %349 = ptrtoint ptr %message654 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr null, ptr %message654, align 8
  %va656 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion648, i32 0, i32 4, i32 1
  %350 = ptrtoint ptr %va656 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr null, ptr %va656, align 4
  %format657 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion648, i32 0, i32 5
  %351 = ptrtoint ptr %format657 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @kunit_binary_assert_format, ptr %format657, align 8
  %operation658 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion648, i32 0, i32 1
  %352 = ptrtoint ptr %operation658 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr @.str.20, ptr %operation658, align 4
  %left_text659 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion648, i32 0, i32 2
  %353 = ptrtoint ptr %left_text659 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr @.str.14, ptr %left_text659, align 8
  %left_value660 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion648, i32 0, i32 3
  %conv661 = sext i32 %call.i1156 to i64
  %354 = ptrtoint ptr %left_value660 to i32
  call void @__asan_store8_noabort(i32 %354)
  store i64 %conv661, ptr %left_value660, align 8
  %right_text662 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion648, i32 0, i32 4
  %355 = ptrtoint ptr %right_text662 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr @.str.16, ptr %right_text662, align 8
  %right_value663 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion648, i32 0, i32 5
  %356 = ptrtoint ptr %right_value663 to i32
  call void @__asan_store8_noabort(i32 %356)
  store i64 0, ptr %right_value663, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1156)
  %cmp666 = icmp ne i32 %call.i1156, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion648, i1 noundef zeroext %cmp666, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion648) #4
  %call673 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.29, ptr noundef nonnull %array_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion678) #4
  %357 = getelementptr inbounds i8, ptr %__assertion678, i32 32
  %358 = call ptr @memset(ptr %357, i32 255, i32 24)
  %359 = ptrtoint ptr %__assertion678 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %test, ptr %__assertion678, align 8
  %type681 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion678, i32 0, i32 1
  %360 = ptrtoint ptr %type681 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 1, ptr %type681, align 4
  %line682 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion678, i32 0, i32 2
  %361 = ptrtoint ptr %line682 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 88, ptr %line682, align 8
  %file683 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion678, i32 0, i32 3
  %362 = ptrtoint ptr %file683 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr @.str.11, ptr %file683, align 4
  %message684 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion678, i32 0, i32 4
  %363 = ptrtoint ptr %message684 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr null, ptr %message684, align 8
  %va686 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion678, i32 0, i32 4, i32 1
  %364 = ptrtoint ptr %va686 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr null, ptr %va686, align 4
  %format687 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion678, i32 0, i32 5
  %365 = ptrtoint ptr %format687 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr @kunit_binary_assert_format, ptr %format687, align 8
  %operation688 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion678, i32 0, i32 1
  %366 = ptrtoint ptr %operation688 to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr @.str.20, ptr %operation688, align 4
  %left_text689 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion678, i32 0, i32 2
  %367 = ptrtoint ptr %left_text689 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr @.str.14, ptr %left_text689, align 8
  %left_value690 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion678, i32 0, i32 3
  %conv691 = sext i32 %call673 to i64
  %368 = ptrtoint ptr %left_value690 to i32
  call void @__asan_store8_noabort(i32 %368)
  store i64 %conv691, ptr %left_value690, align 8
  %right_text692 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion678, i32 0, i32 4
  %369 = ptrtoint ptr %right_text692 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr @.str.16, ptr %right_text692, align 8
  %right_value693 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion678, i32 0, i32 5
  %370 = ptrtoint ptr %right_value693 to i32
  call void @__asan_store8_noabort(i32 %370)
  store i64 0, ptr %right_value693, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call673)
  %cmp696 = icmp ne i32 %call673, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion678, i1 noundef zeroext %cmp696, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion678) #4
  %call.i1157 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %val_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion707) #4
  %371 = getelementptr inbounds i8, ptr %__assertion707, i32 32
  %372 = call ptr @memset(ptr %371, i32 255, i32 24)
  %373 = ptrtoint ptr %__assertion707 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %test, ptr %__assertion707, align 8
  %type710 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion707, i32 0, i32 1
  %374 = ptrtoint ptr %type710 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 1, ptr %type710, align 4
  %line711 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion707, i32 0, i32 2
  %375 = ptrtoint ptr %line711 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 91, ptr %line711, align 8
  %file712 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion707, i32 0, i32 3
  %376 = ptrtoint ptr %file712 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr @.str.11, ptr %file712, align 4
  %message713 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion707, i32 0, i32 4
  %377 = ptrtoint ptr %message713 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr null, ptr %message713, align 8
  %va715 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion707, i32 0, i32 4, i32 1
  %378 = ptrtoint ptr %va715 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr null, ptr %va715, align 4
  %format716 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion707, i32 0, i32 5
  %379 = ptrtoint ptr %format716 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr @kunit_binary_assert_format, ptr %format716, align 8
  %operation717 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion707, i32 0, i32 1
  %380 = ptrtoint ptr %operation717 to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr @.str.13, ptr %operation717, align 4
  %left_text718 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion707, i32 0, i32 2
  %381 = ptrtoint ptr %left_text718 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr @.str.14, ptr %left_text718, align 8
  %left_value719 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion707, i32 0, i32 3
  %conv720 = sext i32 %call.i1157 to i64
  %382 = ptrtoint ptr %left_value719 to i32
  call void @__asan_store8_noabort(i32 %382)
  store i64 %conv720, ptr %left_value719, align 8
  %right_text721 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion707, i32 0, i32 4
  %383 = ptrtoint ptr %right_text721 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr @.str.16, ptr %right_text721, align 8
  %right_value722 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion707, i32 0, i32 5
  %384 = ptrtoint ptr %right_value722 to i32
  call void @__asan_store8_noabort(i32 %384)
  store i64 0, ptr %right_value722, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1157)
  %cmp725 = icmp eq i32 %call.i1157, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion707, i1 noundef zeroext %cmp725, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion707) #4
  %385 = ptrtoint ptr %val_u64 to i32
  call void @__asan_load8_noabort(i32 %385)
  %386 = load i64, ptr %val_u64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion735) #4
  %387 = getelementptr inbounds i8, ptr %__assertion735, i32 32
  %388 = call ptr @memset(ptr %387, i32 255, i32 24)
  %389 = ptrtoint ptr %__assertion735 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %test, ptr %__assertion735, align 8
  %type738 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion735, i32 0, i32 1
  %390 = ptrtoint ptr %type738 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 1, ptr %type738, align 4
  %line739 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion735, i32 0, i32 2
  %391 = ptrtoint ptr %line739 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 92, ptr %line739, align 8
  %file740 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion735, i32 0, i32 3
  %392 = ptrtoint ptr %file740 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr @.str.11, ptr %file740, align 4
  %message741 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion735, i32 0, i32 4
  %393 = ptrtoint ptr %message741 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr null, ptr %message741, align 8
  %va743 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion735, i32 0, i32 4, i32 1
  %394 = ptrtoint ptr %va743 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr null, ptr %va743, align 4
  %format744 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion735, i32 0, i32 5
  %395 = ptrtoint ptr %format744 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr @kunit_binary_assert_format, ptr %format744, align 8
  %operation745 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion735, i32 0, i32 1
  %396 = ptrtoint ptr %operation745 to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr @.str.13, ptr %operation745, align 4
  %left_text746 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion735, i32 0, i32 2
  %397 = ptrtoint ptr %left_text746 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr @.str.30, ptr %left_text746, align 8
  %left_value747 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion735, i32 0, i32 3
  %398 = ptrtoint ptr %left_value747 to i32
  call void @__asan_store8_noabort(i32 %398)
  store i64 %386, ptr %left_value747, align 8
  %right_text748 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion735, i32 0, i32 4
  %399 = ptrtoint ptr %right_text748 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr @.str.31, ptr %right_text748, align 8
  %right_value749 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion735, i32 0, i32 5
  %400 = ptrtoint ptr %right_value749 to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 64, ptr %right_value749, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %386)
  %cmp753 = icmp eq i64 %386, 64
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion735, i1 noundef zeroext %cmp753, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion735) #4
  %call.i1158 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion764) #4
  %401 = getelementptr inbounds i8, ptr %__assertion764, i32 32
  %402 = call ptr @memset(ptr %401, i32 255, i32 24)
  %403 = ptrtoint ptr %__assertion764 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %test, ptr %__assertion764, align 8
  %type767 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion764, i32 0, i32 1
  %404 = ptrtoint ptr %type767 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 1, ptr %type767, align 4
  %line768 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion764, i32 0, i32 2
  %405 = ptrtoint ptr %line768 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 95, ptr %line768, align 8
  %file769 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion764, i32 0, i32 3
  %406 = ptrtoint ptr %file769 to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr @.str.11, ptr %file769, align 4
  %message770 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion764, i32 0, i32 4
  %407 = ptrtoint ptr %message770 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr null, ptr %message770, align 8
  %va772 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion764, i32 0, i32 4, i32 1
  %408 = ptrtoint ptr %va772 to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr null, ptr %va772, align 4
  %format773 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion764, i32 0, i32 5
  %409 = ptrtoint ptr %format773 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr @kunit_binary_assert_format, ptr %format773, align 8
  %operation774 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion764, i32 0, i32 1
  %410 = ptrtoint ptr %operation774 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr @.str.13, ptr %operation774, align 4
  %left_text775 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion764, i32 0, i32 2
  %411 = ptrtoint ptr %left_text775 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr @.str.14, ptr %left_text775, align 8
  %left_value776 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion764, i32 0, i32 3
  %conv777 = sext i32 %call.i1158 to i64
  %412 = ptrtoint ptr %left_value776 to i32
  call void @__asan_store8_noabort(i32 %412)
  store i64 %conv777, ptr %left_value776, align 8
  %right_text778 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion764, i32 0, i32 4
  %413 = ptrtoint ptr %right_text778 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr @.str.15, ptr %right_text778, align 8
  %right_value779 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion764, i32 0, i32 5
  %414 = ptrtoint ptr %right_value779 to i32
  call void @__asan_store8_noabort(i32 %414)
  store i64 1, ptr %right_value779, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1158)
  %cmp782 = icmp eq i32 %call.i1158, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion764, i1 noundef zeroext %cmp782, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion764) #4
  %call789 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %array_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion794) #4
  %415 = getelementptr inbounds i8, ptr %__assertion794, i32 32
  %416 = call ptr @memset(ptr %415, i32 255, i32 24)
  %417 = ptrtoint ptr %__assertion794 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %test, ptr %__assertion794, align 8
  %type797 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 1
  %418 = ptrtoint ptr %type797 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 1, ptr %type797, align 4
  %line798 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 2
  %419 = ptrtoint ptr %line798 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 98, ptr %line798, align 8
  %file799 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 3
  %420 = ptrtoint ptr %file799 to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr @.str.11, ptr %file799, align 4
  %message800 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 4
  %421 = ptrtoint ptr %message800 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr null, ptr %message800, align 8
  %va802 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 4, i32 1
  %422 = ptrtoint ptr %va802 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr null, ptr %va802, align 4
  %format803 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 5
  %423 = ptrtoint ptr %format803 to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr @kunit_binary_assert_format, ptr %format803, align 8
  %operation804 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion794, i32 0, i32 1
  %424 = ptrtoint ptr %operation804 to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr @.str.13, ptr %operation804, align 4
  %left_text805 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion794, i32 0, i32 2
  %425 = ptrtoint ptr %left_text805 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr @.str.14, ptr %left_text805, align 8
  %left_value806 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion794, i32 0, i32 3
  %conv807 = sext i32 %call789 to i64
  %426 = ptrtoint ptr %left_value806 to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 %conv807, ptr %left_value806, align 8
  %right_text808 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion794, i32 0, i32 4
  %427 = ptrtoint ptr %right_text808 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr @.str.16, ptr %right_text808, align 8
  %right_value809 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion794, i32 0, i32 5
  %428 = ptrtoint ptr %right_value809 to i32
  call void @__asan_store8_noabort(i32 %428)
  store i64 0, ptr %right_value809, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call789)
  %cmp812 = icmp eq i32 %call789, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion794, i1 noundef zeroext %cmp812, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion794) #4
  %429 = ptrtoint ptr %array_u64 to i32
  call void @__asan_load8_noabort(i32 %429)
  %430 = load i64, ptr %array_u64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion823) #4
  %431 = getelementptr inbounds i8, ptr %__assertion823, i32 32
  %432 = call ptr @memset(ptr %431, i32 255, i32 24)
  %433 = ptrtoint ptr %__assertion823 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %test, ptr %__assertion823, align 8
  %type826 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion823, i32 0, i32 1
  %434 = ptrtoint ptr %type826 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 1, ptr %type826, align 4
  %line827 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion823, i32 0, i32 2
  %435 = ptrtoint ptr %line827 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 99, ptr %line827, align 8
  %file828 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion823, i32 0, i32 3
  %436 = ptrtoint ptr %file828 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr @.str.11, ptr %file828, align 4
  %message829 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion823, i32 0, i32 4
  %437 = ptrtoint ptr %message829 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr null, ptr %message829, align 8
  %va831 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion823, i32 0, i32 4, i32 1
  %438 = ptrtoint ptr %va831 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr null, ptr %va831, align 4
  %format832 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion823, i32 0, i32 5
  %439 = ptrtoint ptr %format832 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr @kunit_binary_assert_format, ptr %format832, align 8
  %operation833 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion823, i32 0, i32 1
  %440 = ptrtoint ptr %operation833 to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr @.str.13, ptr %operation833, align 4
  %left_text834 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion823, i32 0, i32 2
  %441 = ptrtoint ptr %left_text834 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr @.str.32, ptr %left_text834, align 8
  %left_value835 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion823, i32 0, i32 3
  %442 = ptrtoint ptr %left_value835 to i32
  call void @__asan_store8_noabort(i32 %442)
  store i64 %430, ptr %left_value835, align 8
  %right_text836 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion823, i32 0, i32 4
  %443 = ptrtoint ptr %right_text836 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr @.str.31, ptr %right_text836, align 8
  %right_value837 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion823, i32 0, i32 5
  %444 = ptrtoint ptr %right_value837 to i32
  call void @__asan_store8_noabort(i32 %444)
  store i64 64, ptr %right_value837, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %430)
  %cmp841 = icmp eq i64 %430, 64
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion823, i1 noundef zeroext %cmp841, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion823) #4
  %call848 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %array_u64, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion853) #4
  %445 = getelementptr inbounds i8, ptr %__assertion853, i32 32
  %446 = call ptr @memset(ptr %445, i32 255, i32 24)
  %447 = ptrtoint ptr %__assertion853 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %test, ptr %__assertion853, align 8
  %type856 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion853, i32 0, i32 1
  %448 = ptrtoint ptr %type856 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 1, ptr %type856, align 4
  %line857 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion853, i32 0, i32 2
  %449 = ptrtoint ptr %line857 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 102, ptr %line857, align 8
  %file858 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion853, i32 0, i32 3
  %450 = ptrtoint ptr %file858 to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr @.str.11, ptr %file858, align 4
  %message859 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion853, i32 0, i32 4
  %451 = ptrtoint ptr %message859 to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr null, ptr %message859, align 8
  %va861 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion853, i32 0, i32 4, i32 1
  %452 = ptrtoint ptr %va861 to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr null, ptr %va861, align 4
  %format862 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion853, i32 0, i32 5
  %453 = ptrtoint ptr %format862 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr @kunit_binary_assert_format, ptr %format862, align 8
  %operation863 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion853, i32 0, i32 1
  %454 = ptrtoint ptr %operation863 to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr @.str.20, ptr %operation863, align 4
  %left_text864 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion853, i32 0, i32 2
  %455 = ptrtoint ptr %left_text864 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr @.str.14, ptr %left_text864, align 8
  %left_value865 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion853, i32 0, i32 3
  %conv866 = sext i32 %call848 to i64
  %456 = ptrtoint ptr %left_value865 to i32
  call void @__asan_store8_noabort(i32 %456)
  store i64 %conv866, ptr %left_value865, align 8
  %right_text867 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion853, i32 0, i32 4
  %457 = ptrtoint ptr %right_text867 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr @.str.16, ptr %right_text867, align 8
  %right_value868 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion853, i32 0, i32 5
  %458 = ptrtoint ptr %right_value868 to i32
  call void @__asan_store8_noabort(i32 %458)
  store i64 0, ptr %right_value868, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call848)
  %cmp871 = icmp ne i32 %call848, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion853, i1 noundef zeroext %cmp871, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion853) #4
  %call.i1159 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.33, ptr noundef nonnull %val_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion882) #4
  %459 = getelementptr inbounds i8, ptr %__assertion882, i32 32
  %460 = call ptr @memset(ptr %459, i32 255, i32 24)
  %461 = ptrtoint ptr %__assertion882 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %test, ptr %__assertion882, align 8
  %type885 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion882, i32 0, i32 1
  %462 = ptrtoint ptr %type885 to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 1, ptr %type885, align 4
  %line886 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion882, i32 0, i32 2
  %463 = ptrtoint ptr %line886 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 105, ptr %line886, align 8
  %file887 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion882, i32 0, i32 3
  %464 = ptrtoint ptr %file887 to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr @.str.11, ptr %file887, align 4
  %message888 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion882, i32 0, i32 4
  %465 = ptrtoint ptr %message888 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr null, ptr %message888, align 8
  %va890 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion882, i32 0, i32 4, i32 1
  %466 = ptrtoint ptr %va890 to i32
  call void @__asan_store4_noabort(i32 %466)
  store ptr null, ptr %va890, align 4
  %format891 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion882, i32 0, i32 5
  %467 = ptrtoint ptr %format891 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr @kunit_binary_assert_format, ptr %format891, align 8
  %operation892 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion882, i32 0, i32 1
  %468 = ptrtoint ptr %operation892 to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr @.str.20, ptr %operation892, align 4
  %left_text893 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion882, i32 0, i32 2
  %469 = ptrtoint ptr %left_text893 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr @.str.14, ptr %left_text893, align 8
  %left_value894 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion882, i32 0, i32 3
  %conv895 = sext i32 %call.i1159 to i64
  %470 = ptrtoint ptr %left_value894 to i32
  call void @__asan_store8_noabort(i32 %470)
  store i64 %conv895, ptr %left_value894, align 8
  %right_text896 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion882, i32 0, i32 4
  %471 = ptrtoint ptr %right_text896 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr @.str.16, ptr %right_text896, align 8
  %right_value897 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion882, i32 0, i32 5
  %472 = ptrtoint ptr %right_value897 to i32
  call void @__asan_store8_noabort(i32 %472)
  store i64 0, ptr %right_value897, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1159)
  %cmp900 = icmp ne i32 %call.i1159, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion882, i1 noundef zeroext %cmp900, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion882) #4
  %call907 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.33, ptr noundef nonnull %array_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion912) #4
  %473 = getelementptr inbounds i8, ptr %__assertion912, i32 32
  %474 = call ptr @memset(ptr %473, i32 255, i32 24)
  %475 = ptrtoint ptr %__assertion912 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %test, ptr %__assertion912, align 8
  %type915 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion912, i32 0, i32 1
  %476 = ptrtoint ptr %type915 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 1, ptr %type915, align 4
  %line916 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion912, i32 0, i32 2
  %477 = ptrtoint ptr %line916 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 108, ptr %line916, align 8
  %file917 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion912, i32 0, i32 3
  %478 = ptrtoint ptr %file917 to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr @.str.11, ptr %file917, align 4
  %message918 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion912, i32 0, i32 4
  %479 = ptrtoint ptr %message918 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr null, ptr %message918, align 8
  %va920 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion912, i32 0, i32 4, i32 1
  %480 = ptrtoint ptr %va920 to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr null, ptr %va920, align 4
  %format921 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion912, i32 0, i32 5
  %481 = ptrtoint ptr %format921 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr @kunit_binary_assert_format, ptr %format921, align 8
  %operation922 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion912, i32 0, i32 1
  %482 = ptrtoint ptr %operation922 to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr @.str.20, ptr %operation922, align 4
  %left_text923 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion912, i32 0, i32 2
  %483 = ptrtoint ptr %left_text923 to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr @.str.14, ptr %left_text923, align 8
  %left_value924 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion912, i32 0, i32 3
  %conv925 = sext i32 %call907 to i64
  %484 = ptrtoint ptr %left_value924 to i32
  call void @__asan_store8_noabort(i32 %484)
  store i64 %conv925, ptr %left_value924, align 8
  %right_text926 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion912, i32 0, i32 4
  %485 = ptrtoint ptr %right_text926 to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr @.str.16, ptr %right_text926, align 8
  %right_value927 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion912, i32 0, i32 5
  %486 = ptrtoint ptr %right_value927 to i32
  call void @__asan_store8_noabort(i32 %486)
  store i64 0, ptr %right_value927, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call907)
  %cmp930 = icmp ne i32 %call907, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion912, i1 noundef zeroext %cmp930, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion912) #4
  %call.i1160 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion941) #4
  %487 = getelementptr inbounds i8, ptr %__assertion941, i32 32
  %488 = call ptr @memset(ptr %487, i32 255, i32 24)
  %489 = ptrtoint ptr %__assertion941 to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %test, ptr %__assertion941, align 8
  %type944 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion941, i32 0, i32 1
  %490 = ptrtoint ptr %type944 to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 1, ptr %type944, align 4
  %line945 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion941, i32 0, i32 2
  %491 = ptrtoint ptr %line945 to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 112, ptr %line945, align 8
  %file946 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion941, i32 0, i32 3
  %492 = ptrtoint ptr %file946 to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr @.str.11, ptr %file946, align 4
  %message947 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion941, i32 0, i32 4
  %493 = ptrtoint ptr %message947 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr null, ptr %message947, align 8
  %va949 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion941, i32 0, i32 4, i32 1
  %494 = ptrtoint ptr %va949 to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr null, ptr %va949, align 4
  %format950 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion941, i32 0, i32 5
  %495 = ptrtoint ptr %format950 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr @kunit_binary_assert_format, ptr %format950, align 8
  %operation951 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion941, i32 0, i32 1
  %496 = ptrtoint ptr %operation951 to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr @.str.13, ptr %operation951, align 4
  %left_text952 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion941, i32 0, i32 2
  %497 = ptrtoint ptr %left_text952 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr @.str.14, ptr %left_text952, align 8
  %left_value953 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion941, i32 0, i32 3
  %conv954 = sext i32 %call.i1160 to i64
  %498 = ptrtoint ptr %left_value953 to i32
  call void @__asan_store8_noabort(i32 %498)
  store i64 %conv954, ptr %left_value953, align 8
  %right_text955 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion941, i32 0, i32 4
  %499 = ptrtoint ptr %right_text955 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr @.str.34, ptr %right_text955, align 8
  %right_value956 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion941, i32 0, i32 5
  %500 = ptrtoint ptr %right_value956 to i32
  call void @__asan_store8_noabort(i32 %500)
  store i64 4, ptr %right_value956, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i1160)
  %cmp959 = icmp eq i32 %call.i1160, 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion941, i1 noundef zeroext %cmp959, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion941) #4
  call void @fwnode_remove_software_node(ptr noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %array_u64) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val_u64) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %array_u32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_u32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_u16) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_u16) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %array_u8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val_u8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pe_test_uint_arrays(ptr noundef %test) #0 align 64 {
entry:
  %val_u8 = alloca i8, align 1
  %array_u8 = alloca [32 x i8], align 1
  %val_u16 = alloca i16, align 2
  %array_u16 = alloca [32 x i16], align 2
  %val_u32 = alloca i32, align 4
  %array_u32 = alloca [32 x i32], align 4
  %val_u64 = alloca i64, align 8
  %array_u64 = alloca [32 x i64], align 8
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion10 = alloca %struct.kunit_binary_assert, align 8
  %__assertion31 = alloca %struct.kunit_binary_assert, align 8
  %__assertion61 = alloca %struct.kunit_binary_assert, align 8
  %__assertion90 = alloca %struct.kunit_binary_assert, align 8
  %__assertion118 = alloca %struct.kunit_binary_assert, align 8
  %__assertion149 = alloca %struct.kunit_binary_assert, align 8
  %__assertion178 = alloca %struct.kunit_binary_assert, align 8
  %__assertion208 = alloca %struct.kunit_binary_assert, align 8
  %__assertion239 = alloca %struct.kunit_binary_assert, align 8
  %__assertion268 = alloca %struct.kunit_binary_assert, align 8
  %__assertion298 = alloca %struct.kunit_binary_assert, align 8
  %__assertion327 = alloca %struct.kunit_binary_assert, align 8
  %__assertion355 = alloca %struct.kunit_binary_assert, align 8
  %__assertion385 = alloca %struct.kunit_binary_assert, align 8
  %__assertion415 = alloca %struct.kunit_binary_assert, align 8
  %__assertion444 = alloca %struct.kunit_binary_assert, align 8
  %__assertion475 = alloca %struct.kunit_binary_assert, align 8
  %__assertion504 = alloca %struct.kunit_binary_assert, align 8
  %__assertion534 = alloca %struct.kunit_binary_assert, align 8
  %__assertion565 = alloca %struct.kunit_binary_assert, align 8
  %__assertion594 = alloca %struct.kunit_binary_assert, align 8
  %__assertion624 = alloca %struct.kunit_binary_assert, align 8
  %__assertion653 = alloca %struct.kunit_binary_assert, align 8
  %__assertion681 = alloca %struct.kunit_binary_assert, align 8
  %__assertion710 = alloca %struct.kunit_binary_assert, align 8
  %__assertion740 = alloca %struct.kunit_binary_assert, align 8
  %__assertion769 = alloca %struct.kunit_binary_assert, align 8
  %__assertion799 = alloca %struct.kunit_binary_assert, align 8
  %__assertion828 = alloca %struct.kunit_binary_assert, align 8
  %__assertion857 = alloca %struct.kunit_binary_assert, align 8
  %__assertion887 = alloca %struct.kunit_binary_assert, align 8
  %__assertion916 = alloca %struct.kunit_binary_assert, align 8
  %__assertion946 = alloca %struct.kunit_binary_assert, align 8
  %__assertion975 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1003 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1032 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1062 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1091 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1121 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1150 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1179 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1209 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1238 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1268 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1297 = alloca %struct.kunit_binary_assert, align 8
  %__assertion1326 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val_u8) #4
  %0 = ptrtoint ptr %val_u8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val_u8, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %array_u8) #4
  %1 = getelementptr inbounds [32 x i8], ptr %array_u8, i32 0, i32 1
  %2 = call ptr @memset(ptr %array_u8, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_u16) #4
  %3 = ptrtoint ptr %val_u16 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %val_u16, align 2, !annotation !241
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %array_u16) #4
  %4 = call ptr @memset(ptr %array_u16, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_u32) #4
  %5 = ptrtoint ptr %val_u32 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val_u32, align 4, !annotation !241
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %array_u32) #4
  %6 = call ptr @memset(ptr %array_u32, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val_u64) #4
  %7 = ptrtoint ptr %val_u64 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %val_u64, align 8, !annotation !241
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %array_u64) #4
  %8 = call ptr @memset(ptr %array_u64, i32 255, i32 256)
  %call = tail call ptr @fwnode_create_software_node(ptr noundef nonnull @pe_test_uint_arrays.entries, ptr noundef null) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
  %9 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 139, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %12 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.11, ptr %file, align 4
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
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %16 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.12, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %call.i = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %val_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion10) #4
  %18 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %19 = call ptr @memset(ptr %18, i32 255, i32 24)
  %20 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion10, align 8
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %21 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %22 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 142, ptr %line14, align 8
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %23 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.11, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %24 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message16, align 8
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %26 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_binary_assert_format, ptr %format19, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 1
  %27 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.13, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 2
  %28 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.14, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 3
  %conv = sext i32 %call.i to i64
  %29 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 4
  %30 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.16, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 5
  %31 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion10) #4
  %32 = ptrtoint ptr %val_u8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val_u8, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion31) #4
  %34 = getelementptr inbounds i8, ptr %__assertion31, i32 32
  %35 = call ptr @memset(ptr %34, i32 255, i32 24)
  %36 = ptrtoint ptr %__assertion31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion31, align 8
  %type34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 1
  %37 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type34, align 4
  %line35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 2
  %38 = ptrtoint ptr %line35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 143, ptr %line35, align 8
  %file36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 3
  %39 = ptrtoint ptr %file36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.11, ptr %file36, align 4
  %message37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 4
  %40 = ptrtoint ptr %message37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message37, align 8
  %va39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %va39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va39, align 4
  %format40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 5
  %42 = ptrtoint ptr %format40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_binary_assert_format, ptr %format40, align 8
  %operation41 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion31, i32 0, i32 1
  %43 = ptrtoint ptr %operation41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.13, ptr %operation41, align 4
  %left_text42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion31, i32 0, i32 2
  %44 = ptrtoint ptr %left_text42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.17, ptr %left_text42, align 8
  %left_value43 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion31, i32 0, i32 3
  %conv44 = zext i8 %33 to i64
  %45 = ptrtoint ptr %left_value43 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv44, ptr %left_value43, align 8
  %right_text45 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion31, i32 0, i32 4
  %46 = ptrtoint ptr %right_text45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.18, ptr %right_text45, align 8
  %right_value46 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion31, i32 0, i32 5
  %47 = ptrtoint ptr %right_value46 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 8, ptr %right_value46, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp50 = icmp eq i8 %33, 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion31, i1 noundef zeroext %cmp50, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion31) #4
  %call.i1596 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion61) #4
  %48 = getelementptr inbounds i8, ptr %__assertion61, i32 32
  %49 = call ptr @memset(ptr %48, i32 255, i32 24)
  %50 = ptrtoint ptr %__assertion61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %test, ptr %__assertion61, align 8
  %type64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 1
  %51 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type64, align 4
  %line65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 2
  %52 = ptrtoint ptr %line65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 146, ptr %line65, align 8
  %file66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 3
  %53 = ptrtoint ptr %file66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.11, ptr %file66, align 4
  %message67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4
  %54 = ptrtoint ptr %message67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %message67, align 8
  %va69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %va69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %va69, align 4
  %format70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 5
  %56 = ptrtoint ptr %format70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @kunit_binary_assert_format, ptr %format70, align 8
  %operation71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 1
  %57 = ptrtoint ptr %operation71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.13, ptr %operation71, align 4
  %left_text72 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 2
  %58 = ptrtoint ptr %left_text72 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.14, ptr %left_text72, align 8
  %left_value73 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 3
  %conv74 = sext i32 %call.i1596 to i64
  %59 = ptrtoint ptr %left_value73 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv74, ptr %left_value73, align 8
  %right_text75 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 4
  %60 = ptrtoint ptr %right_text75 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.35, ptr %right_text75, align 8
  %right_value76 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 5
  %61 = ptrtoint ptr %right_value76 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 10, ptr %right_value76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i1596)
  %cmp79 = icmp eq i32 %call.i1596, 10
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion61, i1 noundef zeroext %cmp79, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion61) #4
  %call85 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %array_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion90) #4
  %62 = getelementptr inbounds i8, ptr %__assertion90, i32 32
  %63 = call ptr @memset(ptr %62, i32 255, i32 24)
  %64 = ptrtoint ptr %__assertion90 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion90, align 8
  %type93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 1
  %65 = ptrtoint ptr %type93 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type93, align 4
  %line94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 2
  %66 = ptrtoint ptr %line94 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 149, ptr %line94, align 8
  %file95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 3
  %67 = ptrtoint ptr %file95 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.11, ptr %file95, align 4
  %message96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 4
  %68 = ptrtoint ptr %message96 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message96, align 8
  %va98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va98 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va98, align 4
  %format99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion90, i32 0, i32 5
  %70 = ptrtoint ptr %format99 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_binary_assert_format, ptr %format99, align 8
  %operation100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 1
  %71 = ptrtoint ptr %operation100 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.13, ptr %operation100, align 4
  %left_text101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 2
  %72 = ptrtoint ptr %left_text101 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.14, ptr %left_text101, align 8
  %left_value102 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 3
  %conv103 = sext i32 %call85 to i64
  %73 = ptrtoint ptr %left_value102 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv103, ptr %left_value102, align 8
  %right_text104 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 4
  %74 = ptrtoint ptr %right_text104 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.16, ptr %right_text104, align 8
  %right_value105 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion90, i32 0, i32 5
  %75 = ptrtoint ptr %right_value105 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %right_value105, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp108 = icmp eq i32 %call85, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion90, i1 noundef zeroext %cmp108, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion90) #4
  %76 = ptrtoint ptr %array_u8 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %array_u8, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion118) #4
  %78 = getelementptr inbounds i8, ptr %__assertion118, i32 32
  %79 = call ptr @memset(ptr %78, i32 255, i32 24)
  %80 = ptrtoint ptr %__assertion118 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %test, ptr %__assertion118, align 8
  %type121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 1
  %81 = ptrtoint ptr %type121 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %type121, align 4
  %line122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 2
  %82 = ptrtoint ptr %line122 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 150, ptr %line122, align 8
  %file123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 3
  %83 = ptrtoint ptr %file123 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.11, ptr %file123, align 4
  %message124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 4
  %84 = ptrtoint ptr %message124 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %message124, align 8
  %va126 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %va126 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %va126, align 4
  %format127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion118, i32 0, i32 5
  %86 = ptrtoint ptr %format127 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @kunit_binary_assert_format, ptr %format127, align 8
  %operation128 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 1
  %87 = ptrtoint ptr %operation128 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.13, ptr %operation128, align 4
  %left_text129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 2
  %88 = ptrtoint ptr %left_text129 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.19, ptr %left_text129, align 8
  %left_value130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 3
  %conv131 = zext i8 %77 to i64
  %89 = ptrtoint ptr %left_value130 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv131, ptr %left_value130, align 8
  %right_text132 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 4
  %90 = ptrtoint ptr %right_text132 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.18, ptr %right_text132, align 8
  %right_value133 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion118, i32 0, i32 5
  %91 = ptrtoint ptr %right_value133 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 8, ptr %right_value133, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %77)
  %cmp137 = icmp eq i8 %77, 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion118, i1 noundef zeroext %cmp137, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion118) #4
  %call144 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %array_u8, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion149) #4
  %92 = getelementptr inbounds i8, ptr %__assertion149, i32 32
  %93 = call ptr @memset(ptr %92, i32 255, i32 24)
  %94 = ptrtoint ptr %__assertion149 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %test, ptr %__assertion149, align 8
  %type152 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 1
  %95 = ptrtoint ptr %type152 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %type152, align 4
  %line153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 2
  %96 = ptrtoint ptr %line153 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 153, ptr %line153, align 8
  %file154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 3
  %97 = ptrtoint ptr %file154 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.11, ptr %file154, align 4
  %message155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4
  %98 = ptrtoint ptr %message155 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %message155, align 8
  %va157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %va157 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %va157, align 4
  %format158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 5
  %100 = ptrtoint ptr %format158 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @kunit_binary_assert_format, ptr %format158, align 8
  %operation159 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 1
  %101 = ptrtoint ptr %operation159 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.13, ptr %operation159, align 4
  %left_text160 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 2
  %102 = ptrtoint ptr %left_text160 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.14, ptr %left_text160, align 8
  %left_value161 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 3
  %conv162 = sext i32 %call144 to i64
  %103 = ptrtoint ptr %left_value161 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv162, ptr %left_value161, align 8
  %right_text163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 4
  %104 = ptrtoint ptr %right_text163 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.16, ptr %right_text163, align 8
  %right_value164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 5
  %105 = ptrtoint ptr %right_value164 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 0, ptr %right_value164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp167 = icmp eq i32 %call144, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion149, i1 noundef zeroext %cmp167, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion149) #4
  %106 = ptrtoint ptr %array_u8 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %array_u8, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion178) #4
  %108 = getelementptr inbounds i8, ptr %__assertion178, i32 32
  %109 = call ptr @memset(ptr %108, i32 255, i32 24)
  %110 = ptrtoint ptr %__assertion178 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion178, align 8
  %type181 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 1
  %111 = ptrtoint ptr %type181 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type181, align 4
  %line182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 2
  %112 = ptrtoint ptr %line182 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 154, ptr %line182, align 8
  %file183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 3
  %113 = ptrtoint ptr %file183 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.11, ptr %file183, align 4
  %message184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 4
  %114 = ptrtoint ptr %message184 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message184, align 8
  %va186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %va186 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va186, align 4
  %format187 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion178, i32 0, i32 5
  %116 = ptrtoint ptr %format187 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_assert_format, ptr %format187, align 8
  %operation188 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 1
  %117 = ptrtoint ptr %operation188 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.13, ptr %operation188, align 4
  %left_text189 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 2
  %118 = ptrtoint ptr %left_text189 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.19, ptr %left_text189, align 8
  %left_value190 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 3
  %conv191 = zext i8 %107 to i64
  %119 = ptrtoint ptr %left_value190 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv191, ptr %left_value190, align 8
  %right_text192 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 4
  %120 = ptrtoint ptr %right_text192 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.18, ptr %right_text192, align 8
  %right_value193 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion178, i32 0, i32 5
  %121 = ptrtoint ptr %right_value193 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 8, ptr %right_value193, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %107)
  %cmp197 = icmp eq i8 %107, 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion178, i1 noundef zeroext %cmp197, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion178) #4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion208) #4
  %124 = getelementptr inbounds i8, ptr %__assertion208, i32 32
  %125 = call ptr @memset(ptr %124, i32 255, i32 24)
  %126 = ptrtoint ptr %__assertion208 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %test, ptr %__assertion208, align 8
  %type211 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 1
  %127 = ptrtoint ptr %type211 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %type211, align 4
  %line212 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 2
  %128 = ptrtoint ptr %line212 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 155, ptr %line212, align 8
  %file213 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 3
  %129 = ptrtoint ptr %file213 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str.11, ptr %file213, align 4
  %message214 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 4
  %130 = ptrtoint ptr %message214 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %message214, align 8
  %va216 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %va216 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %va216, align 4
  %format217 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion208, i32 0, i32 5
  %132 = ptrtoint ptr %format217 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @kunit_binary_assert_format, ptr %format217, align 8
  %operation218 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 1
  %133 = ptrtoint ptr %operation218 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.13, ptr %operation218, align 4
  %left_text219 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 2
  %134 = ptrtoint ptr %left_text219 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.36, ptr %left_text219, align 8
  %left_value220 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 3
  %conv221 = zext i8 %123 to i64
  %135 = ptrtoint ptr %left_value220 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv221, ptr %left_value220, align 8
  %right_text222 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 4
  %136 = ptrtoint ptr %right_text222 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.37, ptr %right_text222, align 8
  %right_value223 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion208, i32 0, i32 5
  %137 = ptrtoint ptr %right_value223 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 9, ptr %right_value223, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %123)
  %cmp227 = icmp eq i8 %123, 9
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion208, i1 noundef zeroext %cmp227, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion208) #4
  %call234 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %array_u8, i32 noundef 17) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion239) #4
  %138 = getelementptr inbounds i8, ptr %__assertion239, i32 32
  %139 = call ptr @memset(ptr %138, i32 255, i32 24)
  %140 = ptrtoint ptr %__assertion239 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %test, ptr %__assertion239, align 8
  %type242 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion239, i32 0, i32 1
  %141 = ptrtoint ptr %type242 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %type242, align 4
  %line243 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion239, i32 0, i32 2
  %142 = ptrtoint ptr %line243 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 158, ptr %line243, align 8
  %file244 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion239, i32 0, i32 3
  %143 = ptrtoint ptr %file244 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str.11, ptr %file244, align 4
  %message245 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion239, i32 0, i32 4
  %144 = ptrtoint ptr %message245 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %message245, align 8
  %va247 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion239, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %va247 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %va247, align 4
  %format248 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion239, i32 0, i32 5
  %146 = ptrtoint ptr %format248 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @kunit_binary_assert_format, ptr %format248, align 8
  %operation249 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion239, i32 0, i32 1
  %147 = ptrtoint ptr %operation249 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.20, ptr %operation249, align 4
  %left_text250 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion239, i32 0, i32 2
  %148 = ptrtoint ptr %left_text250 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.14, ptr %left_text250, align 8
  %left_value251 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion239, i32 0, i32 3
  %conv252 = sext i32 %call234 to i64
  %149 = ptrtoint ptr %left_value251 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %conv252, ptr %left_value251, align 8
  %right_text253 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion239, i32 0, i32 4
  %150 = ptrtoint ptr %right_text253 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @.str.16, ptr %right_text253, align 8
  %right_value254 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion239, i32 0, i32 5
  %151 = ptrtoint ptr %right_value254 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 0, ptr %right_value254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp257 = icmp ne i32 %call234, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion239, i1 noundef zeroext %cmp257, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion239) #4
  %call.i1597 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.21, ptr noundef nonnull %val_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion268) #4
  %152 = getelementptr inbounds i8, ptr %__assertion268, i32 32
  %153 = call ptr @memset(ptr %152, i32 255, i32 24)
  %154 = ptrtoint ptr %__assertion268 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %test, ptr %__assertion268, align 8
  %type271 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 1
  %155 = ptrtoint ptr %type271 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %type271, align 4
  %line272 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 2
  %156 = ptrtoint ptr %line272 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 161, ptr %line272, align 8
  %file273 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 3
  %157 = ptrtoint ptr %file273 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @.str.11, ptr %file273, align 4
  %message274 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 4
  %158 = ptrtoint ptr %message274 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %message274, align 8
  %va276 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 4, i32 1
  %159 = ptrtoint ptr %va276 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %va276, align 4
  %format277 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion268, i32 0, i32 5
  %160 = ptrtoint ptr %format277 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @kunit_binary_assert_format, ptr %format277, align 8
  %operation278 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 1
  %161 = ptrtoint ptr %operation278 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.20, ptr %operation278, align 4
  %left_text279 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 2
  %162 = ptrtoint ptr %left_text279 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @.str.14, ptr %left_text279, align 8
  %left_value280 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 3
  %conv281 = sext i32 %call.i1597 to i64
  %163 = ptrtoint ptr %left_value280 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %conv281, ptr %left_value280, align 8
  %right_text282 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 4
  %164 = ptrtoint ptr %right_text282 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.16, ptr %right_text282, align 8
  %right_value283 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion268, i32 0, i32 5
  %165 = ptrtoint ptr %right_value283 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 0, ptr %right_value283, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1597)
  %cmp286 = icmp ne i32 %call.i1597, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion268, i1 noundef zeroext %cmp286, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion268) #4
  %call293 = call i32 @fwnode_property_read_u8_array(ptr noundef %call, ptr noundef nonnull @.str.21, ptr noundef nonnull %array_u8, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion298) #4
  %166 = getelementptr inbounds i8, ptr %__assertion298, i32 32
  %167 = call ptr @memset(ptr %166, i32 255, i32 24)
  %168 = ptrtoint ptr %__assertion298 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %test, ptr %__assertion298, align 8
  %type301 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 1
  %169 = ptrtoint ptr %type301 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %type301, align 4
  %line302 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 2
  %170 = ptrtoint ptr %line302 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 164, ptr %line302, align 8
  %file303 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 3
  %171 = ptrtoint ptr %file303 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.11, ptr %file303, align 4
  %message304 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 4
  %172 = ptrtoint ptr %message304 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %message304, align 8
  %va306 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 4, i32 1
  %173 = ptrtoint ptr %va306 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %va306, align 4
  %format307 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 5
  %174 = ptrtoint ptr %format307 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @kunit_binary_assert_format, ptr %format307, align 8
  %operation308 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion298, i32 0, i32 1
  %175 = ptrtoint ptr %operation308 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @.str.20, ptr %operation308, align 4
  %left_text309 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion298, i32 0, i32 2
  %176 = ptrtoint ptr %left_text309 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.14, ptr %left_text309, align 8
  %left_value310 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion298, i32 0, i32 3
  %conv311 = sext i32 %call293 to i64
  %177 = ptrtoint ptr %left_value310 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %conv311, ptr %left_value310, align 8
  %right_text312 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion298, i32 0, i32 4
  %178 = ptrtoint ptr %right_text312 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.16, ptr %right_text312, align 8
  %right_value313 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion298, i32 0, i32 5
  %179 = ptrtoint ptr %right_value313 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 0, ptr %right_value313, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %cmp316 = icmp ne i32 %call293, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion298, i1 noundef zeroext %cmp316, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion298) #4
  %call.i1598 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %val_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion327) #4
  %180 = getelementptr inbounds i8, ptr %__assertion327, i32 32
  %181 = call ptr @memset(ptr %180, i32 255, i32 24)
  %182 = ptrtoint ptr %__assertion327 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %test, ptr %__assertion327, align 8
  %type330 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion327, i32 0, i32 1
  %183 = ptrtoint ptr %type330 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %type330, align 4
  %line331 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion327, i32 0, i32 2
  %184 = ptrtoint ptr %line331 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 167, ptr %line331, align 8
  %file332 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion327, i32 0, i32 3
  %185 = ptrtoint ptr %file332 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.11, ptr %file332, align 4
  %message333 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion327, i32 0, i32 4
  %186 = ptrtoint ptr %message333 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %message333, align 8
  %va335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion327, i32 0, i32 4, i32 1
  %187 = ptrtoint ptr %va335 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %va335, align 4
  %format336 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion327, i32 0, i32 5
  %188 = ptrtoint ptr %format336 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @kunit_binary_assert_format, ptr %format336, align 8
  %operation337 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion327, i32 0, i32 1
  %189 = ptrtoint ptr %operation337 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @.str.13, ptr %operation337, align 4
  %left_text338 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion327, i32 0, i32 2
  %190 = ptrtoint ptr %left_text338 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @.str.14, ptr %left_text338, align 8
  %left_value339 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion327, i32 0, i32 3
  %conv340 = sext i32 %call.i1598 to i64
  %191 = ptrtoint ptr %left_value339 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv340, ptr %left_value339, align 8
  %right_text341 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion327, i32 0, i32 4
  %192 = ptrtoint ptr %right_text341 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.16, ptr %right_text341, align 8
  %right_value342 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion327, i32 0, i32 5
  %193 = ptrtoint ptr %right_value342 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 0, ptr %right_value342, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1598)
  %cmp345 = icmp eq i32 %call.i1598, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion327, i1 noundef zeroext %cmp345, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion327) #4
  %194 = ptrtoint ptr %val_u16 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %val_u16, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion355) #4
  %196 = getelementptr inbounds i8, ptr %__assertion355, i32 32
  %197 = call ptr @memset(ptr %196, i32 255, i32 24)
  %198 = ptrtoint ptr %__assertion355 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %test, ptr %__assertion355, align 8
  %type358 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion355, i32 0, i32 1
  %199 = ptrtoint ptr %type358 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1, ptr %type358, align 4
  %line359 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion355, i32 0, i32 2
  %200 = ptrtoint ptr %line359 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 168, ptr %line359, align 8
  %file360 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion355, i32 0, i32 3
  %201 = ptrtoint ptr %file360 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @.str.11, ptr %file360, align 4
  %message361 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion355, i32 0, i32 4
  %202 = ptrtoint ptr %message361 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %message361, align 8
  %va363 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion355, i32 0, i32 4, i32 1
  %203 = ptrtoint ptr %va363 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %va363, align 4
  %format364 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion355, i32 0, i32 5
  %204 = ptrtoint ptr %format364 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @kunit_binary_assert_format, ptr %format364, align 8
  %operation365 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion355, i32 0, i32 1
  %205 = ptrtoint ptr %operation365 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @.str.13, ptr %operation365, align 4
  %left_text366 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion355, i32 0, i32 2
  %206 = ptrtoint ptr %left_text366 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @.str.22, ptr %left_text366, align 8
  %left_value367 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion355, i32 0, i32 3
  %conv368 = zext i16 %195 to i64
  %207 = ptrtoint ptr %left_value367 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %conv368, ptr %left_value367, align 8
  %right_text369 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion355, i32 0, i32 4
  %208 = ptrtoint ptr %right_text369 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @.str.23, ptr %right_text369, align 8
  %right_value370 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion355, i32 0, i32 5
  %209 = ptrtoint ptr %right_value370 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 16, ptr %right_value370, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %195)
  %cmp374 = icmp eq i16 %195, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion355, i1 noundef zeroext %cmp374, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion355) #4
  %call.i1599 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion385) #4
  %210 = getelementptr inbounds i8, ptr %__assertion385, i32 32
  %211 = call ptr @memset(ptr %210, i32 255, i32 24)
  %212 = ptrtoint ptr %__assertion385 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %test, ptr %__assertion385, align 8
  %type388 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 1
  %213 = ptrtoint ptr %type388 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %type388, align 4
  %line389 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 2
  %214 = ptrtoint ptr %line389 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 171, ptr %line389, align 8
  %file390 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 3
  %215 = ptrtoint ptr %file390 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @.str.11, ptr %file390, align 4
  %message391 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 4
  %216 = ptrtoint ptr %message391 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %message391, align 8
  %va393 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 4, i32 1
  %217 = ptrtoint ptr %va393 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %va393, align 4
  %format394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion385, i32 0, i32 5
  %218 = ptrtoint ptr %format394 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @kunit_binary_assert_format, ptr %format394, align 8
  %operation395 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 1
  %219 = ptrtoint ptr %operation395 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @.str.13, ptr %operation395, align 4
  %left_text396 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 2
  %220 = ptrtoint ptr %left_text396 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.14, ptr %left_text396, align 8
  %left_value397 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 3
  %conv398 = sext i32 %call.i1599 to i64
  %221 = ptrtoint ptr %left_value397 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %conv398, ptr %left_value397, align 8
  %right_text399 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 4
  %222 = ptrtoint ptr %right_text399 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @.str.35, ptr %right_text399, align 8
  %right_value400 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion385, i32 0, i32 5
  %223 = ptrtoint ptr %right_value400 to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 10, ptr %right_value400, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i1599)
  %cmp403 = icmp eq i32 %call.i1599, 10
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion385, i1 noundef zeroext %cmp403, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion385) #4
  %call410 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %array_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion415) #4
  %224 = getelementptr inbounds i8, ptr %__assertion415, i32 32
  %225 = call ptr @memset(ptr %224, i32 255, i32 24)
  %226 = ptrtoint ptr %__assertion415 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %test, ptr %__assertion415, align 8
  %type418 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 1
  %227 = ptrtoint ptr %type418 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %type418, align 4
  %line419 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 2
  %228 = ptrtoint ptr %line419 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 174, ptr %line419, align 8
  %file420 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 3
  %229 = ptrtoint ptr %file420 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.11, ptr %file420, align 4
  %message421 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 4
  %230 = ptrtoint ptr %message421 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %message421, align 8
  %va423 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 4, i32 1
  %231 = ptrtoint ptr %va423 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %va423, align 4
  %format424 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 5
  %232 = ptrtoint ptr %format424 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @kunit_binary_assert_format, ptr %format424, align 8
  %operation425 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion415, i32 0, i32 1
  %233 = ptrtoint ptr %operation425 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @.str.13, ptr %operation425, align 4
  %left_text426 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion415, i32 0, i32 2
  %234 = ptrtoint ptr %left_text426 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @.str.14, ptr %left_text426, align 8
  %left_value427 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion415, i32 0, i32 3
  %conv428 = sext i32 %call410 to i64
  %235 = ptrtoint ptr %left_value427 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %conv428, ptr %left_value427, align 8
  %right_text429 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion415, i32 0, i32 4
  %236 = ptrtoint ptr %right_text429 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @.str.16, ptr %right_text429, align 8
  %right_value430 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion415, i32 0, i32 5
  %237 = ptrtoint ptr %right_value430 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 0, ptr %right_value430, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410)
  %cmp433 = icmp eq i32 %call410, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion415, i1 noundef zeroext %cmp433, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion415) #4
  %238 = ptrtoint ptr %array_u16 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %array_u16, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion444) #4
  %240 = getelementptr inbounds i8, ptr %__assertion444, i32 32
  %241 = call ptr @memset(ptr %240, i32 255, i32 24)
  %242 = ptrtoint ptr %__assertion444 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %test, ptr %__assertion444, align 8
  %type447 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 1
  %243 = ptrtoint ptr %type447 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1, ptr %type447, align 4
  %line448 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 2
  %244 = ptrtoint ptr %line448 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 175, ptr %line448, align 8
  %file449 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 3
  %245 = ptrtoint ptr %file449 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @.str.11, ptr %file449, align 4
  %message450 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 4
  %246 = ptrtoint ptr %message450 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr null, ptr %message450, align 8
  %va452 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 4, i32 1
  %247 = ptrtoint ptr %va452 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr null, ptr %va452, align 4
  %format453 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion444, i32 0, i32 5
  %248 = ptrtoint ptr %format453 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @kunit_binary_assert_format, ptr %format453, align 8
  %operation454 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 1
  %249 = ptrtoint ptr %operation454 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @.str.13, ptr %operation454, align 4
  %left_text455 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 2
  %250 = ptrtoint ptr %left_text455 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @.str.24, ptr %left_text455, align 8
  %left_value456 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 3
  %conv457 = zext i16 %239 to i64
  %251 = ptrtoint ptr %left_value456 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %conv457, ptr %left_value456, align 8
  %right_text458 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 4
  %252 = ptrtoint ptr %right_text458 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr @.str.23, ptr %right_text458, align 8
  %right_value459 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion444, i32 0, i32 5
  %253 = ptrtoint ptr %right_value459 to i32
  call void @__asan_store8_noabort(i32 %253)
  store i64 16, ptr %right_value459, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %239)
  %cmp463 = icmp eq i16 %239, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion444, i1 noundef zeroext %cmp463, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion444) #4
  %call470 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %array_u16, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion475) #4
  %254 = getelementptr inbounds i8, ptr %__assertion475, i32 32
  %255 = call ptr @memset(ptr %254, i32 255, i32 24)
  %256 = ptrtoint ptr %__assertion475 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %test, ptr %__assertion475, align 8
  %type478 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion475, i32 0, i32 1
  %257 = ptrtoint ptr %type478 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 1, ptr %type478, align 4
  %line479 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion475, i32 0, i32 2
  %258 = ptrtoint ptr %line479 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 178, ptr %line479, align 8
  %file480 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion475, i32 0, i32 3
  %259 = ptrtoint ptr %file480 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @.str.11, ptr %file480, align 4
  %message481 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion475, i32 0, i32 4
  %260 = ptrtoint ptr %message481 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %message481, align 8
  %va483 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion475, i32 0, i32 4, i32 1
  %261 = ptrtoint ptr %va483 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %va483, align 4
  %format484 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion475, i32 0, i32 5
  %262 = ptrtoint ptr %format484 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @kunit_binary_assert_format, ptr %format484, align 8
  %operation485 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion475, i32 0, i32 1
  %263 = ptrtoint ptr %operation485 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @.str.13, ptr %operation485, align 4
  %left_text486 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion475, i32 0, i32 2
  %264 = ptrtoint ptr %left_text486 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @.str.14, ptr %left_text486, align 8
  %left_value487 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion475, i32 0, i32 3
  %conv488 = sext i32 %call470 to i64
  %265 = ptrtoint ptr %left_value487 to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %conv488, ptr %left_value487, align 8
  %right_text489 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion475, i32 0, i32 4
  %266 = ptrtoint ptr %right_text489 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr @.str.16, ptr %right_text489, align 8
  %right_value490 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion475, i32 0, i32 5
  %267 = ptrtoint ptr %right_value490 to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 0, ptr %right_value490, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470)
  %cmp493 = icmp eq i32 %call470, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion475, i1 noundef zeroext %cmp493, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion475) #4
  %268 = ptrtoint ptr %array_u16 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %array_u16, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion504) #4
  %270 = getelementptr inbounds i8, ptr %__assertion504, i32 32
  %271 = call ptr @memset(ptr %270, i32 255, i32 24)
  %272 = ptrtoint ptr %__assertion504 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %test, ptr %__assertion504, align 8
  %type507 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion504, i32 0, i32 1
  %273 = ptrtoint ptr %type507 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 1, ptr %type507, align 4
  %line508 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion504, i32 0, i32 2
  %274 = ptrtoint ptr %line508 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 179, ptr %line508, align 8
  %file509 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion504, i32 0, i32 3
  %275 = ptrtoint ptr %file509 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr @.str.11, ptr %file509, align 4
  %message510 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion504, i32 0, i32 4
  %276 = ptrtoint ptr %message510 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr null, ptr %message510, align 8
  %va512 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion504, i32 0, i32 4, i32 1
  %277 = ptrtoint ptr %va512 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr null, ptr %va512, align 4
  %format513 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion504, i32 0, i32 5
  %278 = ptrtoint ptr %format513 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr @kunit_binary_assert_format, ptr %format513, align 8
  %operation514 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion504, i32 0, i32 1
  %279 = ptrtoint ptr %operation514 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr @.str.13, ptr %operation514, align 4
  %left_text515 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion504, i32 0, i32 2
  %280 = ptrtoint ptr %left_text515 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr @.str.24, ptr %left_text515, align 8
  %left_value516 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion504, i32 0, i32 3
  %conv517 = zext i16 %269 to i64
  %281 = ptrtoint ptr %left_value516 to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %conv517, ptr %left_value516, align 8
  %right_text518 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion504, i32 0, i32 4
  %282 = ptrtoint ptr %right_text518 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr @.str.23, ptr %right_text518, align 8
  %right_value519 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion504, i32 0, i32 5
  %283 = ptrtoint ptr %right_value519 to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 16, ptr %right_value519, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %269)
  %cmp523 = icmp eq i16 %269, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion504, i1 noundef zeroext %cmp523, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion504) #4
  %arrayidx531 = getelementptr inbounds [32 x i16], ptr %array_u16, i32 0, i32 1
  %284 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %arrayidx531, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion534) #4
  %286 = getelementptr inbounds i8, ptr %__assertion534, i32 32
  %287 = call ptr @memset(ptr %286, i32 255, i32 24)
  %288 = ptrtoint ptr %__assertion534 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %test, ptr %__assertion534, align 8
  %type537 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion534, i32 0, i32 1
  %289 = ptrtoint ptr %type537 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 1, ptr %type537, align 4
  %line538 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion534, i32 0, i32 2
  %290 = ptrtoint ptr %line538 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 180, ptr %line538, align 8
  %file539 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion534, i32 0, i32 3
  %291 = ptrtoint ptr %file539 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr @.str.11, ptr %file539, align 4
  %message540 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion534, i32 0, i32 4
  %292 = ptrtoint ptr %message540 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr null, ptr %message540, align 8
  %va542 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion534, i32 0, i32 4, i32 1
  %293 = ptrtoint ptr %va542 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr null, ptr %va542, align 4
  %format543 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion534, i32 0, i32 5
  %294 = ptrtoint ptr %format543 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr @kunit_binary_assert_format, ptr %format543, align 8
  %operation544 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion534, i32 0, i32 1
  %295 = ptrtoint ptr %operation544 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr @.str.13, ptr %operation544, align 4
  %left_text545 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion534, i32 0, i32 2
  %296 = ptrtoint ptr %left_text545 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr @.str.38, ptr %left_text545, align 8
  %left_value546 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion534, i32 0, i32 3
  %conv547 = zext i16 %285 to i64
  %297 = ptrtoint ptr %left_value546 to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %conv547, ptr %left_value546, align 8
  %right_text548 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion534, i32 0, i32 4
  %298 = ptrtoint ptr %right_text548 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr @.str.39, ptr %right_text548, align 8
  %right_value549 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion534, i32 0, i32 5
  %299 = ptrtoint ptr %right_value549 to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 17, ptr %right_value549, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %285)
  %cmp553 = icmp eq i16 %285, 17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion534, i1 noundef zeroext %cmp553, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion534) #4
  %call560 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %array_u16, i32 noundef 17) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion565) #4
  %300 = getelementptr inbounds i8, ptr %__assertion565, i32 32
  %301 = call ptr @memset(ptr %300, i32 255, i32 24)
  %302 = ptrtoint ptr %__assertion565 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %test, ptr %__assertion565, align 8
  %type568 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion565, i32 0, i32 1
  %303 = ptrtoint ptr %type568 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 1, ptr %type568, align 4
  %line569 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion565, i32 0, i32 2
  %304 = ptrtoint ptr %line569 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 183, ptr %line569, align 8
  %file570 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion565, i32 0, i32 3
  %305 = ptrtoint ptr %file570 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr @.str.11, ptr %file570, align 4
  %message571 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion565, i32 0, i32 4
  %306 = ptrtoint ptr %message571 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr null, ptr %message571, align 8
  %va573 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion565, i32 0, i32 4, i32 1
  %307 = ptrtoint ptr %va573 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr null, ptr %va573, align 4
  %format574 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion565, i32 0, i32 5
  %308 = ptrtoint ptr %format574 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr @kunit_binary_assert_format, ptr %format574, align 8
  %operation575 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion565, i32 0, i32 1
  %309 = ptrtoint ptr %operation575 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @.str.20, ptr %operation575, align 4
  %left_text576 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion565, i32 0, i32 2
  %310 = ptrtoint ptr %left_text576 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr @.str.14, ptr %left_text576, align 8
  %left_value577 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion565, i32 0, i32 3
  %conv578 = sext i32 %call560 to i64
  %311 = ptrtoint ptr %left_value577 to i32
  call void @__asan_store8_noabort(i32 %311)
  store i64 %conv578, ptr %left_value577, align 8
  %right_text579 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion565, i32 0, i32 4
  %312 = ptrtoint ptr %right_text579 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr @.str.16, ptr %right_text579, align 8
  %right_value580 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion565, i32 0, i32 5
  %313 = ptrtoint ptr %right_value580 to i32
  call void @__asan_store8_noabort(i32 %313)
  store i64 0, ptr %right_value580, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call560)
  %cmp583 = icmp ne i32 %call560, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion565, i1 noundef zeroext %cmp583, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion565) #4
  %call.i1600 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.25, ptr noundef nonnull %val_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion594) #4
  %314 = getelementptr inbounds i8, ptr %__assertion594, i32 32
  %315 = call ptr @memset(ptr %314, i32 255, i32 24)
  %316 = ptrtoint ptr %__assertion594 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %test, ptr %__assertion594, align 8
  %type597 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion594, i32 0, i32 1
  %317 = ptrtoint ptr %type597 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 1, ptr %type597, align 4
  %line598 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion594, i32 0, i32 2
  %318 = ptrtoint ptr %line598 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 186, ptr %line598, align 8
  %file599 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion594, i32 0, i32 3
  %319 = ptrtoint ptr %file599 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr @.str.11, ptr %file599, align 4
  %message600 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion594, i32 0, i32 4
  %320 = ptrtoint ptr %message600 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr null, ptr %message600, align 8
  %va602 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion594, i32 0, i32 4, i32 1
  %321 = ptrtoint ptr %va602 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr null, ptr %va602, align 4
  %format603 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion594, i32 0, i32 5
  %322 = ptrtoint ptr %format603 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr @kunit_binary_assert_format, ptr %format603, align 8
  %operation604 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion594, i32 0, i32 1
  %323 = ptrtoint ptr %operation604 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr @.str.20, ptr %operation604, align 4
  %left_text605 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion594, i32 0, i32 2
  %324 = ptrtoint ptr %left_text605 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr @.str.14, ptr %left_text605, align 8
  %left_value606 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion594, i32 0, i32 3
  %conv607 = sext i32 %call.i1600 to i64
  %325 = ptrtoint ptr %left_value606 to i32
  call void @__asan_store8_noabort(i32 %325)
  store i64 %conv607, ptr %left_value606, align 8
  %right_text608 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion594, i32 0, i32 4
  %326 = ptrtoint ptr %right_text608 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr @.str.16, ptr %right_text608, align 8
  %right_value609 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion594, i32 0, i32 5
  %327 = ptrtoint ptr %right_value609 to i32
  call void @__asan_store8_noabort(i32 %327)
  store i64 0, ptr %right_value609, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1600)
  %cmp612 = icmp ne i32 %call.i1600, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion594, i1 noundef zeroext %cmp612, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion594) #4
  %call619 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.25, ptr noundef nonnull %array_u16, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion624) #4
  %328 = getelementptr inbounds i8, ptr %__assertion624, i32 32
  %329 = call ptr @memset(ptr %328, i32 255, i32 24)
  %330 = ptrtoint ptr %__assertion624 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %test, ptr %__assertion624, align 8
  %type627 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 1
  %331 = ptrtoint ptr %type627 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 1, ptr %type627, align 4
  %line628 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 2
  %332 = ptrtoint ptr %line628 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 189, ptr %line628, align 8
  %file629 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 3
  %333 = ptrtoint ptr %file629 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr @.str.11, ptr %file629, align 4
  %message630 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 4
  %334 = ptrtoint ptr %message630 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr null, ptr %message630, align 8
  %va632 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 4, i32 1
  %335 = ptrtoint ptr %va632 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr null, ptr %va632, align 4
  %format633 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 5
  %336 = ptrtoint ptr %format633 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr @kunit_binary_assert_format, ptr %format633, align 8
  %operation634 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 1
  %337 = ptrtoint ptr %operation634 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr @.str.20, ptr %operation634, align 4
  %left_text635 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 2
  %338 = ptrtoint ptr %left_text635 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr @.str.14, ptr %left_text635, align 8
  %left_value636 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 3
  %conv637 = sext i32 %call619 to i64
  %339 = ptrtoint ptr %left_value636 to i32
  call void @__asan_store8_noabort(i32 %339)
  store i64 %conv637, ptr %left_value636, align 8
  %right_text638 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 4
  %340 = ptrtoint ptr %right_text638 to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr @.str.16, ptr %right_text638, align 8
  %right_value639 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 5
  %341 = ptrtoint ptr %right_value639 to i32
  call void @__asan_store8_noabort(i32 %341)
  store i64 0, ptr %right_value639, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call619)
  %cmp642 = icmp ne i32 %call619, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion624, i1 noundef zeroext %cmp642, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion624) #4
  %call.i1601 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %val_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion653) #4
  %342 = getelementptr inbounds i8, ptr %__assertion653, i32 32
  %343 = call ptr @memset(ptr %342, i32 255, i32 24)
  %344 = ptrtoint ptr %__assertion653 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %test, ptr %__assertion653, align 8
  %type656 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion653, i32 0, i32 1
  %345 = ptrtoint ptr %type656 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 1, ptr %type656, align 4
  %line657 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion653, i32 0, i32 2
  %346 = ptrtoint ptr %line657 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 192, ptr %line657, align 8
  %file658 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion653, i32 0, i32 3
  %347 = ptrtoint ptr %file658 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr @.str.11, ptr %file658, align 4
  %message659 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion653, i32 0, i32 4
  %348 = ptrtoint ptr %message659 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr null, ptr %message659, align 8
  %va661 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion653, i32 0, i32 4, i32 1
  %349 = ptrtoint ptr %va661 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr null, ptr %va661, align 4
  %format662 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion653, i32 0, i32 5
  %350 = ptrtoint ptr %format662 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr @kunit_binary_assert_format, ptr %format662, align 8
  %operation663 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion653, i32 0, i32 1
  %351 = ptrtoint ptr %operation663 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @.str.13, ptr %operation663, align 4
  %left_text664 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion653, i32 0, i32 2
  %352 = ptrtoint ptr %left_text664 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr @.str.14, ptr %left_text664, align 8
  %left_value665 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion653, i32 0, i32 3
  %conv666 = sext i32 %call.i1601 to i64
  %353 = ptrtoint ptr %left_value665 to i32
  call void @__asan_store8_noabort(i32 %353)
  store i64 %conv666, ptr %left_value665, align 8
  %right_text667 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion653, i32 0, i32 4
  %354 = ptrtoint ptr %right_text667 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr @.str.16, ptr %right_text667, align 8
  %right_value668 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion653, i32 0, i32 5
  %355 = ptrtoint ptr %right_value668 to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 0, ptr %right_value668, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1601)
  %cmp671 = icmp eq i32 %call.i1601, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion653, i1 noundef zeroext %cmp671, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion653) #4
  %356 = ptrtoint ptr %val_u32 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %val_u32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion681) #4
  %358 = getelementptr inbounds i8, ptr %__assertion681, i32 32
  %359 = call ptr @memset(ptr %358, i32 255, i32 24)
  %360 = ptrtoint ptr %__assertion681 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %test, ptr %__assertion681, align 8
  %type684 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion681, i32 0, i32 1
  %361 = ptrtoint ptr %type684 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 1, ptr %type684, align 4
  %line685 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion681, i32 0, i32 2
  %362 = ptrtoint ptr %line685 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 193, ptr %line685, align 8
  %file686 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion681, i32 0, i32 3
  %363 = ptrtoint ptr %file686 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr @.str.11, ptr %file686, align 4
  %message687 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion681, i32 0, i32 4
  %364 = ptrtoint ptr %message687 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr null, ptr %message687, align 8
  %va689 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion681, i32 0, i32 4, i32 1
  %365 = ptrtoint ptr %va689 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr null, ptr %va689, align 4
  %format690 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion681, i32 0, i32 5
  %366 = ptrtoint ptr %format690 to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr @kunit_binary_assert_format, ptr %format690, align 8
  %operation691 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion681, i32 0, i32 1
  %367 = ptrtoint ptr %operation691 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr @.str.13, ptr %operation691, align 4
  %left_text692 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion681, i32 0, i32 2
  %368 = ptrtoint ptr %left_text692 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr @.str.26, ptr %left_text692, align 8
  %left_value693 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion681, i32 0, i32 3
  %conv694 = zext i32 %357 to i64
  %369 = ptrtoint ptr %left_value693 to i32
  call void @__asan_store8_noabort(i32 %369)
  store i64 %conv694, ptr %left_value693, align 8
  %right_text695 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion681, i32 0, i32 4
  %370 = ptrtoint ptr %right_text695 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr @.str.27, ptr %right_text695, align 8
  %right_value696 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion681, i32 0, i32 5
  %371 = ptrtoint ptr %right_value696 to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 32, ptr %right_value696, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %357)
  %cmp699 = icmp eq i32 %357, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion681, i1 noundef zeroext %cmp699, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion681) #4
  %call.i1602 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion710) #4
  %372 = getelementptr inbounds i8, ptr %__assertion710, i32 32
  %373 = call ptr @memset(ptr %372, i32 255, i32 24)
  %374 = ptrtoint ptr %__assertion710 to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %test, ptr %__assertion710, align 8
  %type713 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion710, i32 0, i32 1
  %375 = ptrtoint ptr %type713 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 1, ptr %type713, align 4
  %line714 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion710, i32 0, i32 2
  %376 = ptrtoint ptr %line714 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 196, ptr %line714, align 8
  %file715 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion710, i32 0, i32 3
  %377 = ptrtoint ptr %file715 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr @.str.11, ptr %file715, align 4
  %message716 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion710, i32 0, i32 4
  %378 = ptrtoint ptr %message716 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr null, ptr %message716, align 8
  %va718 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion710, i32 0, i32 4, i32 1
  %379 = ptrtoint ptr %va718 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr null, ptr %va718, align 4
  %format719 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion710, i32 0, i32 5
  %380 = ptrtoint ptr %format719 to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr @kunit_binary_assert_format, ptr %format719, align 8
  %operation720 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion710, i32 0, i32 1
  %381 = ptrtoint ptr %operation720 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr @.str.13, ptr %operation720, align 4
  %left_text721 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion710, i32 0, i32 2
  %382 = ptrtoint ptr %left_text721 to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr @.str.14, ptr %left_text721, align 8
  %left_value722 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion710, i32 0, i32 3
  %conv723 = sext i32 %call.i1602 to i64
  %383 = ptrtoint ptr %left_value722 to i32
  call void @__asan_store8_noabort(i32 %383)
  store i64 %conv723, ptr %left_value722, align 8
  %right_text724 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion710, i32 0, i32 4
  %384 = ptrtoint ptr %right_text724 to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr @.str.35, ptr %right_text724, align 8
  %right_value725 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion710, i32 0, i32 5
  %385 = ptrtoint ptr %right_value725 to i32
  call void @__asan_store8_noabort(i32 %385)
  store i64 10, ptr %right_value725, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i1602)
  %cmp728 = icmp eq i32 %call.i1602, 10
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion710, i1 noundef zeroext %cmp728, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion710) #4
  %call735 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %array_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion740) #4
  %386 = getelementptr inbounds i8, ptr %__assertion740, i32 32
  %387 = call ptr @memset(ptr %386, i32 255, i32 24)
  %388 = ptrtoint ptr %__assertion740 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %test, ptr %__assertion740, align 8
  %type743 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion740, i32 0, i32 1
  %389 = ptrtoint ptr %type743 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 1, ptr %type743, align 4
  %line744 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion740, i32 0, i32 2
  %390 = ptrtoint ptr %line744 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 199, ptr %line744, align 8
  %file745 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion740, i32 0, i32 3
  %391 = ptrtoint ptr %file745 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr @.str.11, ptr %file745, align 4
  %message746 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion740, i32 0, i32 4
  %392 = ptrtoint ptr %message746 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr null, ptr %message746, align 8
  %va748 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion740, i32 0, i32 4, i32 1
  %393 = ptrtoint ptr %va748 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr null, ptr %va748, align 4
  %format749 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion740, i32 0, i32 5
  %394 = ptrtoint ptr %format749 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr @kunit_binary_assert_format, ptr %format749, align 8
  %operation750 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion740, i32 0, i32 1
  %395 = ptrtoint ptr %operation750 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr @.str.13, ptr %operation750, align 4
  %left_text751 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion740, i32 0, i32 2
  %396 = ptrtoint ptr %left_text751 to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr @.str.14, ptr %left_text751, align 8
  %left_value752 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion740, i32 0, i32 3
  %conv753 = sext i32 %call735 to i64
  %397 = ptrtoint ptr %left_value752 to i32
  call void @__asan_store8_noabort(i32 %397)
  store i64 %conv753, ptr %left_value752, align 8
  %right_text754 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion740, i32 0, i32 4
  %398 = ptrtoint ptr %right_text754 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr @.str.16, ptr %right_text754, align 8
  %right_value755 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion740, i32 0, i32 5
  %399 = ptrtoint ptr %right_value755 to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 0, ptr %right_value755, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call735)
  %cmp758 = icmp eq i32 %call735, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion740, i1 noundef zeroext %cmp758, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion740) #4
  %400 = ptrtoint ptr %array_u32 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %array_u32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion769) #4
  %402 = getelementptr inbounds i8, ptr %__assertion769, i32 32
  %403 = call ptr @memset(ptr %402, i32 255, i32 24)
  %404 = ptrtoint ptr %__assertion769 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %test, ptr %__assertion769, align 8
  %type772 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion769, i32 0, i32 1
  %405 = ptrtoint ptr %type772 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 1, ptr %type772, align 4
  %line773 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion769, i32 0, i32 2
  %406 = ptrtoint ptr %line773 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 200, ptr %line773, align 8
  %file774 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion769, i32 0, i32 3
  %407 = ptrtoint ptr %file774 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr @.str.11, ptr %file774, align 4
  %message775 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion769, i32 0, i32 4
  %408 = ptrtoint ptr %message775 to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr null, ptr %message775, align 8
  %va777 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion769, i32 0, i32 4, i32 1
  %409 = ptrtoint ptr %va777 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr null, ptr %va777, align 4
  %format778 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion769, i32 0, i32 5
  %410 = ptrtoint ptr %format778 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr @kunit_binary_assert_format, ptr %format778, align 8
  %operation779 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion769, i32 0, i32 1
  %411 = ptrtoint ptr %operation779 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr @.str.13, ptr %operation779, align 4
  %left_text780 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion769, i32 0, i32 2
  %412 = ptrtoint ptr %left_text780 to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr @.str.28, ptr %left_text780, align 8
  %left_value781 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion769, i32 0, i32 3
  %conv782 = zext i32 %401 to i64
  %413 = ptrtoint ptr %left_value781 to i32
  call void @__asan_store8_noabort(i32 %413)
  store i64 %conv782, ptr %left_value781, align 8
  %right_text783 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion769, i32 0, i32 4
  %414 = ptrtoint ptr %right_text783 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr @.str.27, ptr %right_text783, align 8
  %right_value784 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion769, i32 0, i32 5
  %415 = ptrtoint ptr %right_value784 to i32
  call void @__asan_store8_noabort(i32 %415)
  store i64 32, ptr %right_value784, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %401)
  %cmp787 = icmp eq i32 %401, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion769, i1 noundef zeroext %cmp787, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion769) #4
  %call794 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %array_u32, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion799) #4
  %416 = getelementptr inbounds i8, ptr %__assertion799, i32 32
  %417 = call ptr @memset(ptr %416, i32 255, i32 24)
  %418 = ptrtoint ptr %__assertion799 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %test, ptr %__assertion799, align 8
  %type802 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion799, i32 0, i32 1
  %419 = ptrtoint ptr %type802 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 1, ptr %type802, align 4
  %line803 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion799, i32 0, i32 2
  %420 = ptrtoint ptr %line803 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 203, ptr %line803, align 8
  %file804 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion799, i32 0, i32 3
  %421 = ptrtoint ptr %file804 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr @.str.11, ptr %file804, align 4
  %message805 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion799, i32 0, i32 4
  %422 = ptrtoint ptr %message805 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr null, ptr %message805, align 8
  %va807 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion799, i32 0, i32 4, i32 1
  %423 = ptrtoint ptr %va807 to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr null, ptr %va807, align 4
  %format808 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion799, i32 0, i32 5
  %424 = ptrtoint ptr %format808 to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr @kunit_binary_assert_format, ptr %format808, align 8
  %operation809 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion799, i32 0, i32 1
  %425 = ptrtoint ptr %operation809 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr @.str.13, ptr %operation809, align 4
  %left_text810 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion799, i32 0, i32 2
  %426 = ptrtoint ptr %left_text810 to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr @.str.14, ptr %left_text810, align 8
  %left_value811 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion799, i32 0, i32 3
  %conv812 = sext i32 %call794 to i64
  %427 = ptrtoint ptr %left_value811 to i32
  call void @__asan_store8_noabort(i32 %427)
  store i64 %conv812, ptr %left_value811, align 8
  %right_text813 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion799, i32 0, i32 4
  %428 = ptrtoint ptr %right_text813 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr @.str.16, ptr %right_text813, align 8
  %right_value814 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion799, i32 0, i32 5
  %429 = ptrtoint ptr %right_value814 to i32
  call void @__asan_store8_noabort(i32 %429)
  store i64 0, ptr %right_value814, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call794)
  %cmp817 = icmp eq i32 %call794, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion799, i1 noundef zeroext %cmp817, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion799) #4
  %430 = ptrtoint ptr %array_u32 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %array_u32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion828) #4
  %432 = getelementptr inbounds i8, ptr %__assertion828, i32 32
  %433 = call ptr @memset(ptr %432, i32 255, i32 24)
  %434 = ptrtoint ptr %__assertion828 to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %test, ptr %__assertion828, align 8
  %type831 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion828, i32 0, i32 1
  %435 = ptrtoint ptr %type831 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 1, ptr %type831, align 4
  %line832 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion828, i32 0, i32 2
  %436 = ptrtoint ptr %line832 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 204, ptr %line832, align 8
  %file833 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion828, i32 0, i32 3
  %437 = ptrtoint ptr %file833 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr @.str.11, ptr %file833, align 4
  %message834 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion828, i32 0, i32 4
  %438 = ptrtoint ptr %message834 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr null, ptr %message834, align 8
  %va836 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion828, i32 0, i32 4, i32 1
  %439 = ptrtoint ptr %va836 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr null, ptr %va836, align 4
  %format837 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion828, i32 0, i32 5
  %440 = ptrtoint ptr %format837 to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr @kunit_binary_assert_format, ptr %format837, align 8
  %operation838 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion828, i32 0, i32 1
  %441 = ptrtoint ptr %operation838 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr @.str.13, ptr %operation838, align 4
  %left_text839 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion828, i32 0, i32 2
  %442 = ptrtoint ptr %left_text839 to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr @.str.28, ptr %left_text839, align 8
  %left_value840 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion828, i32 0, i32 3
  %conv841 = zext i32 %431 to i64
  %443 = ptrtoint ptr %left_value840 to i32
  call void @__asan_store8_noabort(i32 %443)
  store i64 %conv841, ptr %left_value840, align 8
  %right_text842 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion828, i32 0, i32 4
  %444 = ptrtoint ptr %right_text842 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr @.str.27, ptr %right_text842, align 8
  %right_value843 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion828, i32 0, i32 5
  %445 = ptrtoint ptr %right_value843 to i32
  call void @__asan_store8_noabort(i32 %445)
  store i64 32, ptr %right_value843, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %431)
  %cmp846 = icmp eq i32 %431, 32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion828, i1 noundef zeroext %cmp846, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion828) #4
  %arrayidx854 = getelementptr inbounds [32 x i32], ptr %array_u32, i32 0, i32 1
  %446 = ptrtoint ptr %arrayidx854 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx854, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion857) #4
  %448 = getelementptr inbounds i8, ptr %__assertion857, i32 32
  %449 = call ptr @memset(ptr %448, i32 255, i32 24)
  %450 = ptrtoint ptr %__assertion857 to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %test, ptr %__assertion857, align 8
  %type860 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion857, i32 0, i32 1
  %451 = ptrtoint ptr %type860 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 1, ptr %type860, align 4
  %line861 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion857, i32 0, i32 2
  %452 = ptrtoint ptr %line861 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 205, ptr %line861, align 8
  %file862 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion857, i32 0, i32 3
  %453 = ptrtoint ptr %file862 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr @.str.11, ptr %file862, align 4
  %message863 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion857, i32 0, i32 4
  %454 = ptrtoint ptr %message863 to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr null, ptr %message863, align 8
  %va865 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion857, i32 0, i32 4, i32 1
  %455 = ptrtoint ptr %va865 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr null, ptr %va865, align 4
  %format866 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion857, i32 0, i32 5
  %456 = ptrtoint ptr %format866 to i32
  call void @__asan_store4_noabort(i32 %456)
  store ptr @kunit_binary_assert_format, ptr %format866, align 8
  %operation867 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion857, i32 0, i32 1
  %457 = ptrtoint ptr %operation867 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr @.str.13, ptr %operation867, align 4
  %left_text868 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion857, i32 0, i32 2
  %458 = ptrtoint ptr %left_text868 to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr @.str.40, ptr %left_text868, align 8
  %left_value869 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion857, i32 0, i32 3
  %conv870 = zext i32 %447 to i64
  %459 = ptrtoint ptr %left_value869 to i32
  call void @__asan_store8_noabort(i32 %459)
  store i64 %conv870, ptr %left_value869, align 8
  %right_text871 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion857, i32 0, i32 4
  %460 = ptrtoint ptr %right_text871 to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr @.str.41, ptr %right_text871, align 8
  %right_value872 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion857, i32 0, i32 5
  %461 = ptrtoint ptr %right_value872 to i32
  call void @__asan_store8_noabort(i32 %461)
  store i64 33, ptr %right_value872, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %447)
  %cmp875 = icmp eq i32 %447, 33
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion857, i1 noundef zeroext %cmp875, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion857) #4
  %call882 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %array_u32, i32 noundef 17) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion887) #4
  %462 = getelementptr inbounds i8, ptr %__assertion887, i32 32
  %463 = call ptr @memset(ptr %462, i32 255, i32 24)
  %464 = ptrtoint ptr %__assertion887 to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %test, ptr %__assertion887, align 8
  %type890 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion887, i32 0, i32 1
  %465 = ptrtoint ptr %type890 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 1, ptr %type890, align 4
  %line891 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion887, i32 0, i32 2
  %466 = ptrtoint ptr %line891 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 208, ptr %line891, align 8
  %file892 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion887, i32 0, i32 3
  %467 = ptrtoint ptr %file892 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr @.str.11, ptr %file892, align 4
  %message893 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion887, i32 0, i32 4
  %468 = ptrtoint ptr %message893 to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr null, ptr %message893, align 8
  %va895 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion887, i32 0, i32 4, i32 1
  %469 = ptrtoint ptr %va895 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr null, ptr %va895, align 4
  %format896 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion887, i32 0, i32 5
  %470 = ptrtoint ptr %format896 to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr @kunit_binary_assert_format, ptr %format896, align 8
  %operation897 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion887, i32 0, i32 1
  %471 = ptrtoint ptr %operation897 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr @.str.20, ptr %operation897, align 4
  %left_text898 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion887, i32 0, i32 2
  %472 = ptrtoint ptr %left_text898 to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr @.str.14, ptr %left_text898, align 8
  %left_value899 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion887, i32 0, i32 3
  %conv900 = sext i32 %call882 to i64
  %473 = ptrtoint ptr %left_value899 to i32
  call void @__asan_store8_noabort(i32 %473)
  store i64 %conv900, ptr %left_value899, align 8
  %right_text901 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion887, i32 0, i32 4
  %474 = ptrtoint ptr %right_text901 to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr @.str.16, ptr %right_text901, align 8
  %right_value902 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion887, i32 0, i32 5
  %475 = ptrtoint ptr %right_value902 to i32
  call void @__asan_store8_noabort(i32 %475)
  store i64 0, ptr %right_value902, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call882)
  %cmp905 = icmp ne i32 %call882, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion887, i1 noundef zeroext %cmp905, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion887) #4
  %call.i1603 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.29, ptr noundef nonnull %val_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion916) #4
  %476 = getelementptr inbounds i8, ptr %__assertion916, i32 32
  %477 = call ptr @memset(ptr %476, i32 255, i32 24)
  %478 = ptrtoint ptr %__assertion916 to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr %test, ptr %__assertion916, align 8
  %type919 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion916, i32 0, i32 1
  %479 = ptrtoint ptr %type919 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 1, ptr %type919, align 4
  %line920 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion916, i32 0, i32 2
  %480 = ptrtoint ptr %line920 to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 211, ptr %line920, align 8
  %file921 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion916, i32 0, i32 3
  %481 = ptrtoint ptr %file921 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr @.str.11, ptr %file921, align 4
  %message922 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion916, i32 0, i32 4
  %482 = ptrtoint ptr %message922 to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr null, ptr %message922, align 8
  %va924 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion916, i32 0, i32 4, i32 1
  %483 = ptrtoint ptr %va924 to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr null, ptr %va924, align 4
  %format925 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion916, i32 0, i32 5
  %484 = ptrtoint ptr %format925 to i32
  call void @__asan_store4_noabort(i32 %484)
  store ptr @kunit_binary_assert_format, ptr %format925, align 8
  %operation926 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion916, i32 0, i32 1
  %485 = ptrtoint ptr %operation926 to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr @.str.20, ptr %operation926, align 4
  %left_text927 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion916, i32 0, i32 2
  %486 = ptrtoint ptr %left_text927 to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr @.str.14, ptr %left_text927, align 8
  %left_value928 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion916, i32 0, i32 3
  %conv929 = sext i32 %call.i1603 to i64
  %487 = ptrtoint ptr %left_value928 to i32
  call void @__asan_store8_noabort(i32 %487)
  store i64 %conv929, ptr %left_value928, align 8
  %right_text930 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion916, i32 0, i32 4
  %488 = ptrtoint ptr %right_text930 to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr @.str.16, ptr %right_text930, align 8
  %right_value931 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion916, i32 0, i32 5
  %489 = ptrtoint ptr %right_value931 to i32
  call void @__asan_store8_noabort(i32 %489)
  store i64 0, ptr %right_value931, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1603)
  %cmp934 = icmp ne i32 %call.i1603, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion916, i1 noundef zeroext %cmp934, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion916) #4
  %call941 = call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.29, ptr noundef nonnull %array_u32, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion946) #4
  %490 = getelementptr inbounds i8, ptr %__assertion946, i32 32
  %491 = call ptr @memset(ptr %490, i32 255, i32 24)
  %492 = ptrtoint ptr %__assertion946 to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr %test, ptr %__assertion946, align 8
  %type949 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion946, i32 0, i32 1
  %493 = ptrtoint ptr %type949 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 1, ptr %type949, align 4
  %line950 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion946, i32 0, i32 2
  %494 = ptrtoint ptr %line950 to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 214, ptr %line950, align 8
  %file951 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion946, i32 0, i32 3
  %495 = ptrtoint ptr %file951 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr @.str.11, ptr %file951, align 4
  %message952 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion946, i32 0, i32 4
  %496 = ptrtoint ptr %message952 to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr null, ptr %message952, align 8
  %va954 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion946, i32 0, i32 4, i32 1
  %497 = ptrtoint ptr %va954 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr null, ptr %va954, align 4
  %format955 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion946, i32 0, i32 5
  %498 = ptrtoint ptr %format955 to i32
  call void @__asan_store4_noabort(i32 %498)
  store ptr @kunit_binary_assert_format, ptr %format955, align 8
  %operation956 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion946, i32 0, i32 1
  %499 = ptrtoint ptr %operation956 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr @.str.20, ptr %operation956, align 4
  %left_text957 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion946, i32 0, i32 2
  %500 = ptrtoint ptr %left_text957 to i32
  call void @__asan_store4_noabort(i32 %500)
  store ptr @.str.14, ptr %left_text957, align 8
  %left_value958 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion946, i32 0, i32 3
  %conv959 = sext i32 %call941 to i64
  %501 = ptrtoint ptr %left_value958 to i32
  call void @__asan_store8_noabort(i32 %501)
  store i64 %conv959, ptr %left_value958, align 8
  %right_text960 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion946, i32 0, i32 4
  %502 = ptrtoint ptr %right_text960 to i32
  call void @__asan_store4_noabort(i32 %502)
  store ptr @.str.16, ptr %right_text960, align 8
  %right_value961 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion946, i32 0, i32 5
  %503 = ptrtoint ptr %right_value961 to i32
  call void @__asan_store8_noabort(i32 %503)
  store i64 0, ptr %right_value961, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call941)
  %cmp964 = icmp ne i32 %call941, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion946, i1 noundef zeroext %cmp964, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion946) #4
  %call.i1604 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %val_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion975) #4
  %504 = getelementptr inbounds i8, ptr %__assertion975, i32 32
  %505 = call ptr @memset(ptr %504, i32 255, i32 24)
  %506 = ptrtoint ptr %__assertion975 to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr %test, ptr %__assertion975, align 8
  %type978 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion975, i32 0, i32 1
  %507 = ptrtoint ptr %type978 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 1, ptr %type978, align 4
  %line979 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion975, i32 0, i32 2
  %508 = ptrtoint ptr %line979 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 217, ptr %line979, align 8
  %file980 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion975, i32 0, i32 3
  %509 = ptrtoint ptr %file980 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr @.str.11, ptr %file980, align 4
  %message981 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion975, i32 0, i32 4
  %510 = ptrtoint ptr %message981 to i32
  call void @__asan_store4_noabort(i32 %510)
  store ptr null, ptr %message981, align 8
  %va983 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion975, i32 0, i32 4, i32 1
  %511 = ptrtoint ptr %va983 to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr null, ptr %va983, align 4
  %format984 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion975, i32 0, i32 5
  %512 = ptrtoint ptr %format984 to i32
  call void @__asan_store4_noabort(i32 %512)
  store ptr @kunit_binary_assert_format, ptr %format984, align 8
  %operation985 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion975, i32 0, i32 1
  %513 = ptrtoint ptr %operation985 to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr @.str.13, ptr %operation985, align 4
  %left_text986 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion975, i32 0, i32 2
  %514 = ptrtoint ptr %left_text986 to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr @.str.14, ptr %left_text986, align 8
  %left_value987 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion975, i32 0, i32 3
  %conv988 = sext i32 %call.i1604 to i64
  %515 = ptrtoint ptr %left_value987 to i32
  call void @__asan_store8_noabort(i32 %515)
  store i64 %conv988, ptr %left_value987, align 8
  %right_text989 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion975, i32 0, i32 4
  %516 = ptrtoint ptr %right_text989 to i32
  call void @__asan_store4_noabort(i32 %516)
  store ptr @.str.16, ptr %right_text989, align 8
  %right_value990 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion975, i32 0, i32 5
  %517 = ptrtoint ptr %right_value990 to i32
  call void @__asan_store8_noabort(i32 %517)
  store i64 0, ptr %right_value990, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1604)
  %cmp993 = icmp eq i32 %call.i1604, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion975, i1 noundef zeroext %cmp993, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion975) #4
  %518 = ptrtoint ptr %val_u64 to i32
  call void @__asan_load8_noabort(i32 %518)
  %519 = load i64, ptr %val_u64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1003) #4
  %520 = getelementptr inbounds i8, ptr %__assertion1003, i32 32
  %521 = call ptr @memset(ptr %520, i32 255, i32 24)
  %522 = ptrtoint ptr %__assertion1003 to i32
  call void @__asan_store4_noabort(i32 %522)
  store ptr %test, ptr %__assertion1003, align 8
  %type1006 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1003, i32 0, i32 1
  %523 = ptrtoint ptr %type1006 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 1, ptr %type1006, align 4
  %line1007 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1003, i32 0, i32 2
  %524 = ptrtoint ptr %line1007 to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 218, ptr %line1007, align 8
  %file1008 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1003, i32 0, i32 3
  %525 = ptrtoint ptr %file1008 to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr @.str.11, ptr %file1008, align 4
  %message1009 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1003, i32 0, i32 4
  %526 = ptrtoint ptr %message1009 to i32
  call void @__asan_store4_noabort(i32 %526)
  store ptr null, ptr %message1009, align 8
  %va1011 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1003, i32 0, i32 4, i32 1
  %527 = ptrtoint ptr %va1011 to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr null, ptr %va1011, align 4
  %format1012 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1003, i32 0, i32 5
  %528 = ptrtoint ptr %format1012 to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr @kunit_binary_assert_format, ptr %format1012, align 8
  %operation1013 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1003, i32 0, i32 1
  %529 = ptrtoint ptr %operation1013 to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr @.str.13, ptr %operation1013, align 4
  %left_text1014 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1003, i32 0, i32 2
  %530 = ptrtoint ptr %left_text1014 to i32
  call void @__asan_store4_noabort(i32 %530)
  store ptr @.str.30, ptr %left_text1014, align 8
  %left_value1015 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1003, i32 0, i32 3
  %531 = ptrtoint ptr %left_value1015 to i32
  call void @__asan_store8_noabort(i32 %531)
  store i64 %519, ptr %left_value1015, align 8
  %right_text1016 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1003, i32 0, i32 4
  %532 = ptrtoint ptr %right_text1016 to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr @.str.31, ptr %right_text1016, align 8
  %right_value1017 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1003, i32 0, i32 5
  %533 = ptrtoint ptr %right_value1017 to i32
  call void @__asan_store8_noabort(i32 %533)
  store i64 64, ptr %right_value1017, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %519)
  %cmp1021 = icmp eq i64 %519, 64
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1003, i1 noundef zeroext %cmp1021, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1003) #4
  %call.i1605 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1032) #4
  %534 = getelementptr inbounds i8, ptr %__assertion1032, i32 32
  %535 = call ptr @memset(ptr %534, i32 255, i32 24)
  %536 = ptrtoint ptr %__assertion1032 to i32
  call void @__asan_store4_noabort(i32 %536)
  store ptr %test, ptr %__assertion1032, align 8
  %type1035 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1032, i32 0, i32 1
  %537 = ptrtoint ptr %type1035 to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 1, ptr %type1035, align 4
  %line1036 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1032, i32 0, i32 2
  %538 = ptrtoint ptr %line1036 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 221, ptr %line1036, align 8
  %file1037 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1032, i32 0, i32 3
  %539 = ptrtoint ptr %file1037 to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr @.str.11, ptr %file1037, align 4
  %message1038 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1032, i32 0, i32 4
  %540 = ptrtoint ptr %message1038 to i32
  call void @__asan_store4_noabort(i32 %540)
  store ptr null, ptr %message1038, align 8
  %va1040 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1032, i32 0, i32 4, i32 1
  %541 = ptrtoint ptr %va1040 to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr null, ptr %va1040, align 4
  %format1041 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1032, i32 0, i32 5
  %542 = ptrtoint ptr %format1041 to i32
  call void @__asan_store4_noabort(i32 %542)
  store ptr @kunit_binary_assert_format, ptr %format1041, align 8
  %operation1042 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1032, i32 0, i32 1
  %543 = ptrtoint ptr %operation1042 to i32
  call void @__asan_store4_noabort(i32 %543)
  store ptr @.str.13, ptr %operation1042, align 4
  %left_text1043 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1032, i32 0, i32 2
  %544 = ptrtoint ptr %left_text1043 to i32
  call void @__asan_store4_noabort(i32 %544)
  store ptr @.str.14, ptr %left_text1043, align 8
  %left_value1044 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1032, i32 0, i32 3
  %conv1045 = sext i32 %call.i1605 to i64
  %545 = ptrtoint ptr %left_value1044 to i32
  call void @__asan_store8_noabort(i32 %545)
  store i64 %conv1045, ptr %left_value1044, align 8
  %right_text1046 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1032, i32 0, i32 4
  %546 = ptrtoint ptr %right_text1046 to i32
  call void @__asan_store4_noabort(i32 %546)
  store ptr @.str.35, ptr %right_text1046, align 8
  %right_value1047 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1032, i32 0, i32 5
  %547 = ptrtoint ptr %right_value1047 to i32
  call void @__asan_store8_noabort(i32 %547)
  store i64 10, ptr %right_value1047, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i1605)
  %cmp1050 = icmp eq i32 %call.i1605, 10
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1032, i1 noundef zeroext %cmp1050, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1032) #4
  %call1057 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %array_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1062) #4
  %548 = getelementptr inbounds i8, ptr %__assertion1062, i32 32
  %549 = call ptr @memset(ptr %548, i32 255, i32 24)
  %550 = ptrtoint ptr %__assertion1062 to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr %test, ptr %__assertion1062, align 8
  %type1065 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1062, i32 0, i32 1
  %551 = ptrtoint ptr %type1065 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 1, ptr %type1065, align 4
  %line1066 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1062, i32 0, i32 2
  %552 = ptrtoint ptr %line1066 to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 224, ptr %line1066, align 8
  %file1067 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1062, i32 0, i32 3
  %553 = ptrtoint ptr %file1067 to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr @.str.11, ptr %file1067, align 4
  %message1068 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1062, i32 0, i32 4
  %554 = ptrtoint ptr %message1068 to i32
  call void @__asan_store4_noabort(i32 %554)
  store ptr null, ptr %message1068, align 8
  %va1070 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1062, i32 0, i32 4, i32 1
  %555 = ptrtoint ptr %va1070 to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr null, ptr %va1070, align 4
  %format1071 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1062, i32 0, i32 5
  %556 = ptrtoint ptr %format1071 to i32
  call void @__asan_store4_noabort(i32 %556)
  store ptr @kunit_binary_assert_format, ptr %format1071, align 8
  %operation1072 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1062, i32 0, i32 1
  %557 = ptrtoint ptr %operation1072 to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr @.str.13, ptr %operation1072, align 4
  %left_text1073 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1062, i32 0, i32 2
  %558 = ptrtoint ptr %left_text1073 to i32
  call void @__asan_store4_noabort(i32 %558)
  store ptr @.str.14, ptr %left_text1073, align 8
  %left_value1074 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1062, i32 0, i32 3
  %conv1075 = sext i32 %call1057 to i64
  %559 = ptrtoint ptr %left_value1074 to i32
  call void @__asan_store8_noabort(i32 %559)
  store i64 %conv1075, ptr %left_value1074, align 8
  %right_text1076 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1062, i32 0, i32 4
  %560 = ptrtoint ptr %right_text1076 to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr @.str.16, ptr %right_text1076, align 8
  %right_value1077 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1062, i32 0, i32 5
  %561 = ptrtoint ptr %right_value1077 to i32
  call void @__asan_store8_noabort(i32 %561)
  store i64 0, ptr %right_value1077, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1057)
  %cmp1080 = icmp eq i32 %call1057, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1062, i1 noundef zeroext %cmp1080, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1062) #4
  %562 = ptrtoint ptr %array_u64 to i32
  call void @__asan_load8_noabort(i32 %562)
  %563 = load i64, ptr %array_u64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1091) #4
  %564 = getelementptr inbounds i8, ptr %__assertion1091, i32 32
  %565 = call ptr @memset(ptr %564, i32 255, i32 24)
  %566 = ptrtoint ptr %__assertion1091 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr %test, ptr %__assertion1091, align 8
  %type1094 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1091, i32 0, i32 1
  %567 = ptrtoint ptr %type1094 to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 1, ptr %type1094, align 4
  %line1095 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1091, i32 0, i32 2
  %568 = ptrtoint ptr %line1095 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 225, ptr %line1095, align 8
  %file1096 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1091, i32 0, i32 3
  %569 = ptrtoint ptr %file1096 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr @.str.11, ptr %file1096, align 4
  %message1097 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1091, i32 0, i32 4
  %570 = ptrtoint ptr %message1097 to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr null, ptr %message1097, align 8
  %va1099 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1091, i32 0, i32 4, i32 1
  %571 = ptrtoint ptr %va1099 to i32
  call void @__asan_store4_noabort(i32 %571)
  store ptr null, ptr %va1099, align 4
  %format1100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1091, i32 0, i32 5
  %572 = ptrtoint ptr %format1100 to i32
  call void @__asan_store4_noabort(i32 %572)
  store ptr @kunit_binary_assert_format, ptr %format1100, align 8
  %operation1101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1091, i32 0, i32 1
  %573 = ptrtoint ptr %operation1101 to i32
  call void @__asan_store4_noabort(i32 %573)
  store ptr @.str.13, ptr %operation1101, align 4
  %left_text1102 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1091, i32 0, i32 2
  %574 = ptrtoint ptr %left_text1102 to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr @.str.32, ptr %left_text1102, align 8
  %left_value1103 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1091, i32 0, i32 3
  %575 = ptrtoint ptr %left_value1103 to i32
  call void @__asan_store8_noabort(i32 %575)
  store i64 %563, ptr %left_value1103, align 8
  %right_text1104 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1091, i32 0, i32 4
  %576 = ptrtoint ptr %right_text1104 to i32
  call void @__asan_store4_noabort(i32 %576)
  store ptr @.str.31, ptr %right_text1104, align 8
  %right_value1105 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1091, i32 0, i32 5
  %577 = ptrtoint ptr %right_value1105 to i32
  call void @__asan_store8_noabort(i32 %577)
  store i64 64, ptr %right_value1105, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %563)
  %cmp1109 = icmp eq i64 %563, 64
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1091, i1 noundef zeroext %cmp1109, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1091) #4
  %call1116 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %array_u64, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1121) #4
  %578 = getelementptr inbounds i8, ptr %__assertion1121, i32 32
  %579 = call ptr @memset(ptr %578, i32 255, i32 24)
  %580 = ptrtoint ptr %__assertion1121 to i32
  call void @__asan_store4_noabort(i32 %580)
  store ptr %test, ptr %__assertion1121, align 8
  %type1124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1121, i32 0, i32 1
  %581 = ptrtoint ptr %type1124 to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 1, ptr %type1124, align 4
  %line1125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1121, i32 0, i32 2
  %582 = ptrtoint ptr %line1125 to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 228, ptr %line1125, align 8
  %file1126 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1121, i32 0, i32 3
  %583 = ptrtoint ptr %file1126 to i32
  call void @__asan_store4_noabort(i32 %583)
  store ptr @.str.11, ptr %file1126, align 4
  %message1127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1121, i32 0, i32 4
  %584 = ptrtoint ptr %message1127 to i32
  call void @__asan_store4_noabort(i32 %584)
  store ptr null, ptr %message1127, align 8
  %va1129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1121, i32 0, i32 4, i32 1
  %585 = ptrtoint ptr %va1129 to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr null, ptr %va1129, align 4
  %format1130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1121, i32 0, i32 5
  %586 = ptrtoint ptr %format1130 to i32
  call void @__asan_store4_noabort(i32 %586)
  store ptr @kunit_binary_assert_format, ptr %format1130, align 8
  %operation1131 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1121, i32 0, i32 1
  %587 = ptrtoint ptr %operation1131 to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr @.str.13, ptr %operation1131, align 4
  %left_text1132 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1121, i32 0, i32 2
  %588 = ptrtoint ptr %left_text1132 to i32
  call void @__asan_store4_noabort(i32 %588)
  store ptr @.str.14, ptr %left_text1132, align 8
  %left_value1133 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1121, i32 0, i32 3
  %conv1134 = sext i32 %call1116 to i64
  %589 = ptrtoint ptr %left_value1133 to i32
  call void @__asan_store8_noabort(i32 %589)
  store i64 %conv1134, ptr %left_value1133, align 8
  %right_text1135 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1121, i32 0, i32 4
  %590 = ptrtoint ptr %right_text1135 to i32
  call void @__asan_store4_noabort(i32 %590)
  store ptr @.str.16, ptr %right_text1135, align 8
  %right_value1136 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1121, i32 0, i32 5
  %591 = ptrtoint ptr %right_value1136 to i32
  call void @__asan_store8_noabort(i32 %591)
  store i64 0, ptr %right_value1136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1116)
  %cmp1139 = icmp eq i32 %call1116, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1121, i1 noundef zeroext %cmp1139, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1121) #4
  %592 = ptrtoint ptr %array_u64 to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %array_u64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1150) #4
  %594 = getelementptr inbounds i8, ptr %__assertion1150, i32 32
  %595 = call ptr @memset(ptr %594, i32 255, i32 24)
  %596 = ptrtoint ptr %__assertion1150 to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr %test, ptr %__assertion1150, align 8
  %type1153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1150, i32 0, i32 1
  %597 = ptrtoint ptr %type1153 to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 1, ptr %type1153, align 4
  %line1154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1150, i32 0, i32 2
  %598 = ptrtoint ptr %line1154 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 229, ptr %line1154, align 8
  %file1155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1150, i32 0, i32 3
  %599 = ptrtoint ptr %file1155 to i32
  call void @__asan_store4_noabort(i32 %599)
  store ptr @.str.11, ptr %file1155, align 4
  %message1156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1150, i32 0, i32 4
  %600 = ptrtoint ptr %message1156 to i32
  call void @__asan_store4_noabort(i32 %600)
  store ptr null, ptr %message1156, align 8
  %va1158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1150, i32 0, i32 4, i32 1
  %601 = ptrtoint ptr %va1158 to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr null, ptr %va1158, align 4
  %format1159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1150, i32 0, i32 5
  %602 = ptrtoint ptr %format1159 to i32
  call void @__asan_store4_noabort(i32 %602)
  store ptr @kunit_binary_assert_format, ptr %format1159, align 8
  %operation1160 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1150, i32 0, i32 1
  %603 = ptrtoint ptr %operation1160 to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr @.str.13, ptr %operation1160, align 4
  %left_text1161 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1150, i32 0, i32 2
  %604 = ptrtoint ptr %left_text1161 to i32
  call void @__asan_store4_noabort(i32 %604)
  store ptr @.str.32, ptr %left_text1161, align 8
  %left_value1162 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1150, i32 0, i32 3
  %605 = ptrtoint ptr %left_value1162 to i32
  call void @__asan_store8_noabort(i32 %605)
  store i64 %593, ptr %left_value1162, align 8
  %right_text1163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1150, i32 0, i32 4
  %606 = ptrtoint ptr %right_text1163 to i32
  call void @__asan_store4_noabort(i32 %606)
  store ptr @.str.31, ptr %right_text1163, align 8
  %right_value1164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1150, i32 0, i32 5
  %607 = ptrtoint ptr %right_value1164 to i32
  call void @__asan_store8_noabort(i32 %607)
  store i64 64, ptr %right_value1164, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %593)
  %cmp1168 = icmp eq i64 %593, 64
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1150, i1 noundef zeroext %cmp1168, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1150) #4
  %arrayidx1176 = getelementptr inbounds [32 x i64], ptr %array_u64, i32 0, i32 1
  %608 = ptrtoint ptr %arrayidx1176 to i32
  call void @__asan_load8_noabort(i32 %608)
  %609 = load i64, ptr %arrayidx1176, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1179) #4
  %610 = getelementptr inbounds i8, ptr %__assertion1179, i32 32
  %611 = call ptr @memset(ptr %610, i32 255, i32 24)
  %612 = ptrtoint ptr %__assertion1179 to i32
  call void @__asan_store4_noabort(i32 %612)
  store ptr %test, ptr %__assertion1179, align 8
  %type1182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1179, i32 0, i32 1
  %613 = ptrtoint ptr %type1182 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 1, ptr %type1182, align 4
  %line1183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1179, i32 0, i32 2
  %614 = ptrtoint ptr %line1183 to i32
  call void @__asan_store4_noabort(i32 %614)
  store i32 230, ptr %line1183, align 8
  %file1184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1179, i32 0, i32 3
  %615 = ptrtoint ptr %file1184 to i32
  call void @__asan_store4_noabort(i32 %615)
  store ptr @.str.11, ptr %file1184, align 4
  %message1185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1179, i32 0, i32 4
  %616 = ptrtoint ptr %message1185 to i32
  call void @__asan_store4_noabort(i32 %616)
  store ptr null, ptr %message1185, align 8
  %va1187 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1179, i32 0, i32 4, i32 1
  %617 = ptrtoint ptr %va1187 to i32
  call void @__asan_store4_noabort(i32 %617)
  store ptr null, ptr %va1187, align 4
  %format1188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1179, i32 0, i32 5
  %618 = ptrtoint ptr %format1188 to i32
  call void @__asan_store4_noabort(i32 %618)
  store ptr @kunit_binary_assert_format, ptr %format1188, align 8
  %operation1189 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1179, i32 0, i32 1
  %619 = ptrtoint ptr %operation1189 to i32
  call void @__asan_store4_noabort(i32 %619)
  store ptr @.str.13, ptr %operation1189, align 4
  %left_text1190 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1179, i32 0, i32 2
  %620 = ptrtoint ptr %left_text1190 to i32
  call void @__asan_store4_noabort(i32 %620)
  store ptr @.str.42, ptr %left_text1190, align 8
  %left_value1191 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1179, i32 0, i32 3
  %621 = ptrtoint ptr %left_value1191 to i32
  call void @__asan_store8_noabort(i32 %621)
  store i64 %609, ptr %left_value1191, align 8
  %right_text1192 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1179, i32 0, i32 4
  %622 = ptrtoint ptr %right_text1192 to i32
  call void @__asan_store4_noabort(i32 %622)
  store ptr @.str.43, ptr %right_text1192, align 8
  %right_value1193 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1179, i32 0, i32 5
  %623 = ptrtoint ptr %right_value1193 to i32
  call void @__asan_store8_noabort(i32 %623)
  store i64 65, ptr %right_value1193, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65, i64 %609)
  %cmp1197 = icmp eq i64 %609, 65
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1179, i1 noundef zeroext %cmp1197, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1179) #4
  %call1204 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %array_u64, i32 noundef 17) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1209) #4
  %624 = getelementptr inbounds i8, ptr %__assertion1209, i32 32
  %625 = call ptr @memset(ptr %624, i32 255, i32 24)
  %626 = ptrtoint ptr %__assertion1209 to i32
  call void @__asan_store4_noabort(i32 %626)
  store ptr %test, ptr %__assertion1209, align 8
  %type1212 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1209, i32 0, i32 1
  %627 = ptrtoint ptr %type1212 to i32
  call void @__asan_store4_noabort(i32 %627)
  store i32 1, ptr %type1212, align 4
  %line1213 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1209, i32 0, i32 2
  %628 = ptrtoint ptr %line1213 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 233, ptr %line1213, align 8
  %file1214 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1209, i32 0, i32 3
  %629 = ptrtoint ptr %file1214 to i32
  call void @__asan_store4_noabort(i32 %629)
  store ptr @.str.11, ptr %file1214, align 4
  %message1215 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1209, i32 0, i32 4
  %630 = ptrtoint ptr %message1215 to i32
  call void @__asan_store4_noabort(i32 %630)
  store ptr null, ptr %message1215, align 8
  %va1217 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1209, i32 0, i32 4, i32 1
  %631 = ptrtoint ptr %va1217 to i32
  call void @__asan_store4_noabort(i32 %631)
  store ptr null, ptr %va1217, align 4
  %format1218 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1209, i32 0, i32 5
  %632 = ptrtoint ptr %format1218 to i32
  call void @__asan_store4_noabort(i32 %632)
  store ptr @kunit_binary_assert_format, ptr %format1218, align 8
  %operation1219 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1209, i32 0, i32 1
  %633 = ptrtoint ptr %operation1219 to i32
  call void @__asan_store4_noabort(i32 %633)
  store ptr @.str.20, ptr %operation1219, align 4
  %left_text1220 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1209, i32 0, i32 2
  %634 = ptrtoint ptr %left_text1220 to i32
  call void @__asan_store4_noabort(i32 %634)
  store ptr @.str.14, ptr %left_text1220, align 8
  %left_value1221 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1209, i32 0, i32 3
  %conv1222 = sext i32 %call1204 to i64
  %635 = ptrtoint ptr %left_value1221 to i32
  call void @__asan_store8_noabort(i32 %635)
  store i64 %conv1222, ptr %left_value1221, align 8
  %right_text1223 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1209, i32 0, i32 4
  %636 = ptrtoint ptr %right_text1223 to i32
  call void @__asan_store4_noabort(i32 %636)
  store ptr @.str.16, ptr %right_text1223, align 8
  %right_value1224 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1209, i32 0, i32 5
  %637 = ptrtoint ptr %right_value1224 to i32
  call void @__asan_store8_noabort(i32 %637)
  store i64 0, ptr %right_value1224, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1204)
  %cmp1227 = icmp ne i32 %call1204, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1209, i1 noundef zeroext %cmp1227, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1209) #4
  %call.i1606 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.33, ptr noundef nonnull %val_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1238) #4
  %638 = getelementptr inbounds i8, ptr %__assertion1238, i32 32
  %639 = call ptr @memset(ptr %638, i32 255, i32 24)
  %640 = ptrtoint ptr %__assertion1238 to i32
  call void @__asan_store4_noabort(i32 %640)
  store ptr %test, ptr %__assertion1238, align 8
  %type1241 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1238, i32 0, i32 1
  %641 = ptrtoint ptr %type1241 to i32
  call void @__asan_store4_noabort(i32 %641)
  store i32 1, ptr %type1241, align 4
  %line1242 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1238, i32 0, i32 2
  %642 = ptrtoint ptr %line1242 to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 236, ptr %line1242, align 8
  %file1243 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1238, i32 0, i32 3
  %643 = ptrtoint ptr %file1243 to i32
  call void @__asan_store4_noabort(i32 %643)
  store ptr @.str.11, ptr %file1243, align 4
  %message1244 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1238, i32 0, i32 4
  %644 = ptrtoint ptr %message1244 to i32
  call void @__asan_store4_noabort(i32 %644)
  store ptr null, ptr %message1244, align 8
  %va1246 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1238, i32 0, i32 4, i32 1
  %645 = ptrtoint ptr %va1246 to i32
  call void @__asan_store4_noabort(i32 %645)
  store ptr null, ptr %va1246, align 4
  %format1247 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1238, i32 0, i32 5
  %646 = ptrtoint ptr %format1247 to i32
  call void @__asan_store4_noabort(i32 %646)
  store ptr @kunit_binary_assert_format, ptr %format1247, align 8
  %operation1248 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1238, i32 0, i32 1
  %647 = ptrtoint ptr %operation1248 to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr @.str.20, ptr %operation1248, align 4
  %left_text1249 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1238, i32 0, i32 2
  %648 = ptrtoint ptr %left_text1249 to i32
  call void @__asan_store4_noabort(i32 %648)
  store ptr @.str.14, ptr %left_text1249, align 8
  %left_value1250 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1238, i32 0, i32 3
  %conv1251 = sext i32 %call.i1606 to i64
  %649 = ptrtoint ptr %left_value1250 to i32
  call void @__asan_store8_noabort(i32 %649)
  store i64 %conv1251, ptr %left_value1250, align 8
  %right_text1252 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1238, i32 0, i32 4
  %650 = ptrtoint ptr %right_text1252 to i32
  call void @__asan_store4_noabort(i32 %650)
  store ptr @.str.16, ptr %right_text1252, align 8
  %right_value1253 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1238, i32 0, i32 5
  %651 = ptrtoint ptr %right_value1253 to i32
  call void @__asan_store8_noabort(i32 %651)
  store i64 0, ptr %right_value1253, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1606)
  %cmp1256 = icmp ne i32 %call.i1606, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1238, i1 noundef zeroext %cmp1256, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1238) #4
  %call1263 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.33, ptr noundef nonnull %array_u64, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1268) #4
  %652 = getelementptr inbounds i8, ptr %__assertion1268, i32 32
  %653 = call ptr @memset(ptr %652, i32 255, i32 24)
  %654 = ptrtoint ptr %__assertion1268 to i32
  call void @__asan_store4_noabort(i32 %654)
  store ptr %test, ptr %__assertion1268, align 8
  %type1271 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1268, i32 0, i32 1
  %655 = ptrtoint ptr %type1271 to i32
  call void @__asan_store4_noabort(i32 %655)
  store i32 1, ptr %type1271, align 4
  %line1272 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1268, i32 0, i32 2
  %656 = ptrtoint ptr %line1272 to i32
  call void @__asan_store4_noabort(i32 %656)
  store i32 239, ptr %line1272, align 8
  %file1273 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1268, i32 0, i32 3
  %657 = ptrtoint ptr %file1273 to i32
  call void @__asan_store4_noabort(i32 %657)
  store ptr @.str.11, ptr %file1273, align 4
  %message1274 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1268, i32 0, i32 4
  %658 = ptrtoint ptr %message1274 to i32
  call void @__asan_store4_noabort(i32 %658)
  store ptr null, ptr %message1274, align 8
  %va1276 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1268, i32 0, i32 4, i32 1
  %659 = ptrtoint ptr %va1276 to i32
  call void @__asan_store4_noabort(i32 %659)
  store ptr null, ptr %va1276, align 4
  %format1277 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1268, i32 0, i32 5
  %660 = ptrtoint ptr %format1277 to i32
  call void @__asan_store4_noabort(i32 %660)
  store ptr @kunit_binary_assert_format, ptr %format1277, align 8
  %operation1278 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1268, i32 0, i32 1
  %661 = ptrtoint ptr %operation1278 to i32
  call void @__asan_store4_noabort(i32 %661)
  store ptr @.str.20, ptr %operation1278, align 4
  %left_text1279 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1268, i32 0, i32 2
  %662 = ptrtoint ptr %left_text1279 to i32
  call void @__asan_store4_noabort(i32 %662)
  store ptr @.str.14, ptr %left_text1279, align 8
  %left_value1280 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1268, i32 0, i32 3
  %conv1281 = sext i32 %call1263 to i64
  %663 = ptrtoint ptr %left_value1280 to i32
  call void @__asan_store8_noabort(i32 %663)
  store i64 %conv1281, ptr %left_value1280, align 8
  %right_text1282 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1268, i32 0, i32 4
  %664 = ptrtoint ptr %right_text1282 to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr @.str.16, ptr %right_text1282, align 8
  %right_value1283 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1268, i32 0, i32 5
  %665 = ptrtoint ptr %right_value1283 to i32
  call void @__asan_store8_noabort(i32 %665)
  store i64 0, ptr %right_value1283, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1263)
  %cmp1286 = icmp ne i32 %call1263, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1268, i1 noundef zeroext %cmp1286, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1268) #4
  %call.i1607 = call i32 @fwnode_property_read_u16_array(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1297) #4
  %666 = getelementptr inbounds i8, ptr %__assertion1297, i32 32
  %667 = call ptr @memset(ptr %666, i32 255, i32 24)
  %668 = ptrtoint ptr %__assertion1297 to i32
  call void @__asan_store4_noabort(i32 %668)
  store ptr %test, ptr %__assertion1297, align 8
  %type1300 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1297, i32 0, i32 1
  %669 = ptrtoint ptr %type1300 to i32
  call void @__asan_store4_noabort(i32 %669)
  store i32 1, ptr %type1300, align 4
  %line1301 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1297, i32 0, i32 2
  %670 = ptrtoint ptr %line1301 to i32
  call void @__asan_store4_noabort(i32 %670)
  store i32 243, ptr %line1301, align 8
  %file1302 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1297, i32 0, i32 3
  %671 = ptrtoint ptr %file1302 to i32
  call void @__asan_store4_noabort(i32 %671)
  store ptr @.str.11, ptr %file1302, align 4
  %message1303 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1297, i32 0, i32 4
  %672 = ptrtoint ptr %message1303 to i32
  call void @__asan_store4_noabort(i32 %672)
  store ptr null, ptr %message1303, align 8
  %va1305 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1297, i32 0, i32 4, i32 1
  %673 = ptrtoint ptr %va1305 to i32
  call void @__asan_store4_noabort(i32 %673)
  store ptr null, ptr %va1305, align 4
  %format1306 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1297, i32 0, i32 5
  %674 = ptrtoint ptr %format1306 to i32
  call void @__asan_store4_noabort(i32 %674)
  store ptr @kunit_binary_assert_format, ptr %format1306, align 8
  %operation1307 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1297, i32 0, i32 1
  %675 = ptrtoint ptr %operation1307 to i32
  call void @__asan_store4_noabort(i32 %675)
  store ptr @.str.13, ptr %operation1307, align 4
  %left_text1308 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1297, i32 0, i32 2
  %676 = ptrtoint ptr %left_text1308 to i32
  call void @__asan_store4_noabort(i32 %676)
  store ptr @.str.14, ptr %left_text1308, align 8
  %left_value1309 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1297, i32 0, i32 3
  %conv1310 = sext i32 %call.i1607 to i64
  %677 = ptrtoint ptr %left_value1309 to i32
  call void @__asan_store8_noabort(i32 %677)
  store i64 %conv1310, ptr %left_value1309, align 8
  %right_text1311 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1297, i32 0, i32 4
  %678 = ptrtoint ptr %right_text1311 to i32
  call void @__asan_store4_noabort(i32 %678)
  store ptr @.str.44, ptr %right_text1311, align 8
  %right_value1312 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1297, i32 0, i32 5
  %679 = ptrtoint ptr %right_value1312 to i32
  call void @__asan_store8_noabort(i32 %679)
  store i64 40, ptr %right_value1312, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call.i1607)
  %cmp1315 = icmp eq i32 %call.i1607, 40
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1297, i1 noundef zeroext %cmp1315, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1297) #4
  %call.i1608 = call i32 @fwnode_property_read_u64_array(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion1326) #4
  %680 = getelementptr inbounds i8, ptr %__assertion1326, i32 32
  %681 = call ptr @memset(ptr %680, i32 255, i32 24)
  %682 = ptrtoint ptr %__assertion1326 to i32
  call void @__asan_store4_noabort(i32 %682)
  store ptr %test, ptr %__assertion1326, align 8
  %type1329 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1326, i32 0, i32 1
  %683 = ptrtoint ptr %type1329 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 1, ptr %type1329, align 4
  %line1330 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1326, i32 0, i32 2
  %684 = ptrtoint ptr %line1330 to i32
  call void @__asan_store4_noabort(i32 %684)
  store i32 247, ptr %line1330, align 8
  %file1331 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1326, i32 0, i32 3
  %685 = ptrtoint ptr %file1331 to i32
  call void @__asan_store4_noabort(i32 %685)
  store ptr @.str.11, ptr %file1331, align 4
  %message1332 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1326, i32 0, i32 4
  %686 = ptrtoint ptr %message1332 to i32
  call void @__asan_store4_noabort(i32 %686)
  store ptr null, ptr %message1332, align 8
  %va1334 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1326, i32 0, i32 4, i32 1
  %687 = ptrtoint ptr %va1334 to i32
  call void @__asan_store4_noabort(i32 %687)
  store ptr null, ptr %va1334, align 4
  %format1335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1326, i32 0, i32 5
  %688 = ptrtoint ptr %format1335 to i32
  call void @__asan_store4_noabort(i32 %688)
  store ptr @kunit_binary_assert_format, ptr %format1335, align 8
  %operation1336 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1326, i32 0, i32 1
  %689 = ptrtoint ptr %operation1336 to i32
  call void @__asan_store4_noabort(i32 %689)
  store ptr @.str.13, ptr %operation1336, align 4
  %left_text1337 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1326, i32 0, i32 2
  %690 = ptrtoint ptr %left_text1337 to i32
  call void @__asan_store4_noabort(i32 %690)
  store ptr @.str.14, ptr %left_text1337, align 8
  %left_value1338 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1326, i32 0, i32 3
  %conv1339 = sext i32 %call.i1608 to i64
  %691 = ptrtoint ptr %left_value1338 to i32
  call void @__asan_store8_noabort(i32 %691)
  store i64 %conv1339, ptr %left_value1338, align 8
  %right_text1340 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1326, i32 0, i32 4
  %692 = ptrtoint ptr %right_text1340 to i32
  call void @__asan_store4_noabort(i32 %692)
  store ptr @.str.45, ptr %right_text1340, align 8
  %right_value1341 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion1326, i32 0, i32 5
  %693 = ptrtoint ptr %right_value1341 to i32
  call void @__asan_store8_noabort(i32 %693)
  store i64 2, ptr %right_value1341, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i1608)
  %cmp1344 = icmp eq i32 %call.i1608, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion1326, i1 noundef zeroext %cmp1344, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion1326) #4
  call void @fwnode_remove_software_node(ptr noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %array_u64) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val_u64) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %array_u32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_u32) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %array_u16) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_u16) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %array_u8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val_u8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pe_test_strings(ptr noundef %test) #0 align 64 {
entry:
  %str = alloca ptr, align 4
  %strs = alloca [10 x ptr], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion10 = alloca %struct.kunit_binary_assert, align 8
  %__assertion31 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion59 = alloca %struct.kunit_binary_assert, align 8
  %__assertion88 = alloca %struct.kunit_binary_assert, align 8
  %__assertion116 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion145 = alloca %struct.kunit_binary_assert, align 8
  %__assertion174 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion202 = alloca %struct.kunit_binary_assert, align 8
  %__assertion232 = alloca %struct.kunit_binary_assert, align 8
  %__assertion261 = alloca %struct.kunit_binary_assert, align 8
  %__assertion289 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion317 = alloca %struct.kunit_binary_assert, align 8
  %__assertion347 = alloca %struct.kunit_binary_assert, align 8
  %__assertion376 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion404 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion433 = alloca %struct.kunit_binary_assert, align 8
  %__assertion462 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion490 = alloca %struct.kunit_binary_assert, align 8
  %__assertion519 = alloca %struct.kunit_binary_assert, align 8
  %__assertion547 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #4
  %0 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %str, align 4, !annotation !241
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %strs) #4
  %1 = call ptr @memset(ptr %strs, i32 255, i32 40)
  %call = tail call ptr @fwnode_create_software_node(ptr noundef nonnull @pe_test_strings.entries, ptr noundef null) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 272, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.11, ptr %file, align 4
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
  store ptr @.str.12, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %call7 = call i32 @fwnode_property_read_string(ptr noundef %call, ptr noundef nonnull @.str.48, ptr noundef nonnull %str) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion10) #4
  %11 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %12 = call ptr @memset(ptr %11, i32 255, i32 24)
  %13 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %test, ptr %__assertion10, align 8
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %14 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %15 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 275, ptr %line14, align 8
  %file15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 3
  %16 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.11, ptr %file15, align 4
  %message16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4
  %17 = ptrtoint ptr %message16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message16, align 8
  %va18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va18, align 4
  %format19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 5
  %19 = ptrtoint ptr %format19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_binary_assert_format, ptr %format19, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 1
  %20 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.13, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 2
  %21 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.14, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 3
  %conv = sext i32 %call7 to i64
  %22 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 4
  %23 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.16, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion10, i32 0, i32 5
  %24 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion10, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion10) #4
  %25 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %str, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion31) #4
  %27 = ptrtoint ptr %__assertion31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %test, ptr %__assertion31, align 4
  %type34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 1
  %28 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type34, align 4
  %line35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 2
  %29 = ptrtoint ptr %line35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 276, ptr %line35, align 4
  %file36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 3
  %30 = ptrtoint ptr %file36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.11, ptr %file36, align 4
  %message37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 4
  %31 = ptrtoint ptr %message37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %message37, align 4
  %va39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %va39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %va39, align 4
  %format40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion31, i32 0, i32 5
  %33 = ptrtoint ptr %format40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @kunit_binary_str_assert_format, ptr %format40, align 4
  %operation41 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion31, i32 0, i32 1
  %34 = ptrtoint ptr %operation41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.13, ptr %operation41, align 4
  %left_text42 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion31, i32 0, i32 2
  %35 = ptrtoint ptr %left_text42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.48, ptr %left_text42, align 4
  %left_value43 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion31, i32 0, i32 3
  %36 = ptrtoint ptr %left_value43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %26, ptr %left_value43, align 4
  %right_text44 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion31, i32 0, i32 4
  %37 = ptrtoint ptr %right_text44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.53, ptr %right_text44, align 4
  %right_value45 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion31, i32 0, i32 5
  %38 = ptrtoint ptr %right_value45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.49, ptr %right_value45, align 4
  %call47 = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(7) @.str.49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion31, i1 noundef zeroext %cmp48, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion31) #4
  %call.i = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion59) #4
  %39 = getelementptr inbounds i8, ptr %__assertion59, i32 32
  %40 = call ptr @memset(ptr %39, i32 255, i32 24)
  %41 = ptrtoint ptr %__assertion59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion59, align 8
  %type62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 1
  %42 = ptrtoint ptr %type62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type62, align 4
  %line63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 2
  %43 = ptrtoint ptr %line63 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 279, ptr %line63, align 8
  %file64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 3
  %44 = ptrtoint ptr %file64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.11, ptr %file64, align 4
  %message65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4
  %45 = ptrtoint ptr %message65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message65, align 8
  %va67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %va67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va67, align 4
  %format68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 5
  %47 = ptrtoint ptr %format68 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_binary_assert_format, ptr %format68, align 8
  %operation69 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 1
  %48 = ptrtoint ptr %operation69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.13, ptr %operation69, align 4
  %left_text70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 2
  %49 = ptrtoint ptr %left_text70 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.14, ptr %left_text70, align 8
  %left_value71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 3
  %conv72 = sext i32 %call.i to i64
  %50 = ptrtoint ptr %left_value71 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv72, ptr %left_value71, align 8
  %right_text73 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 4
  %51 = ptrtoint ptr %right_text73 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.15, ptr %right_text73, align 8
  %right_value74 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 5
  %52 = ptrtoint ptr %right_value74 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1, ptr %right_value74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp77 = icmp eq i32 %call.i, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion59, i1 noundef zeroext %cmp77, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion59) #4
  %call83 = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.48, ptr noundef nonnull %strs, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion88) #4
  %53 = getelementptr inbounds i8, ptr %__assertion88, i32 32
  %54 = call ptr @memset(ptr %53, i32 255, i32 24)
  %55 = ptrtoint ptr %__assertion88 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion88, align 8
  %type91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 1
  %56 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type91, align 4
  %line92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 2
  %57 = ptrtoint ptr %line92 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 282, ptr %line92, align 8
  %file93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 3
  %58 = ptrtoint ptr %file93 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.11, ptr %file93, align 4
  %message94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 4
  %59 = ptrtoint ptr %message94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message94, align 8
  %va96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va96, align 4
  %format97 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 5
  %61 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_assert_format, ptr %format97, align 8
  %operation98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 1
  %62 = ptrtoint ptr %operation98 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.13, ptr %operation98, align 4
  %left_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 2
  %63 = ptrtoint ptr %left_text99 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.14, ptr %left_text99, align 8
  %left_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 3
  %conv101 = sext i32 %call83 to i64
  %64 = ptrtoint ptr %left_value100 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv101, ptr %left_value100, align 8
  %right_text102 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 4
  %65 = ptrtoint ptr %right_text102 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.15, ptr %right_text102, align 8
  %right_value103 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 5
  %66 = ptrtoint ptr %right_value103 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 1, ptr %right_value103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call83)
  %cmp106 = icmp eq i32 %call83, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion88, i1 noundef zeroext %cmp106, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion88) #4
  %67 = ptrtoint ptr %strs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %strs, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion116) #4
  %69 = ptrtoint ptr %__assertion116 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %test, ptr %__assertion116, align 4
  %type119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 1
  %70 = ptrtoint ptr %type119 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %type119, align 4
  %line120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 2
  %71 = ptrtoint ptr %line120 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 283, ptr %line120, align 4
  %file121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 3
  %72 = ptrtoint ptr %file121 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.11, ptr %file121, align 4
  %message122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4
  %73 = ptrtoint ptr %message122 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %message122, align 4
  %va124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %va124 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %va124, align 4
  %format125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 5
  %75 = ptrtoint ptr %format125 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @kunit_binary_str_assert_format, ptr %format125, align 4
  %operation126 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion116, i32 0, i32 1
  %76 = ptrtoint ptr %operation126 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.13, ptr %operation126, align 4
  %left_text127 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion116, i32 0, i32 2
  %77 = ptrtoint ptr %left_text127 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.54, ptr %left_text127, align 4
  %left_value128 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion116, i32 0, i32 3
  %78 = ptrtoint ptr %left_value128 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %68, ptr %left_value128, align 4
  %right_text129 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion116, i32 0, i32 4
  %79 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.53, ptr %right_text129, align 4
  %right_value130 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion116, i32 0, i32 5
  %80 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.49, ptr %right_value130, align 4
  %call132 = call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(7) @.str.49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp eq i32 %call132, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion116, i1 noundef zeroext %cmp133, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion116) #4
  %call140 = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.48, ptr noundef nonnull %strs, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion145) #4
  %81 = getelementptr inbounds i8, ptr %__assertion145, i32 32
  %82 = call ptr @memset(ptr %81, i32 255, i32 24)
  %83 = ptrtoint ptr %__assertion145 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %test, ptr %__assertion145, align 8
  %type148 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion145, i32 0, i32 1
  %84 = ptrtoint ptr %type148 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %type148, align 4
  %line149 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion145, i32 0, i32 2
  %85 = ptrtoint ptr %line149 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 287, ptr %line149, align 8
  %file150 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion145, i32 0, i32 3
  %86 = ptrtoint ptr %file150 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.11, ptr %file150, align 4
  %message151 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion145, i32 0, i32 4
  %87 = ptrtoint ptr %message151 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %message151, align 8
  %va153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion145, i32 0, i32 4, i32 1
  %88 = ptrtoint ptr %va153 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %va153, align 4
  %format154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion145, i32 0, i32 5
  %89 = ptrtoint ptr %format154 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @kunit_binary_assert_format, ptr %format154, align 8
  %operation155 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion145, i32 0, i32 1
  %90 = ptrtoint ptr %operation155 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.13, ptr %operation155, align 4
  %left_text156 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion145, i32 0, i32 2
  %91 = ptrtoint ptr %left_text156 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.14, ptr %left_text156, align 8
  %left_value157 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion145, i32 0, i32 3
  %conv158 = sext i32 %call140 to i64
  %92 = ptrtoint ptr %left_value157 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv158, ptr %left_value157, align 8
  %right_text159 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion145, i32 0, i32 4
  %93 = ptrtoint ptr %right_text159 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.15, ptr %right_text159, align 8
  %right_value160 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion145, i32 0, i32 5
  %94 = ptrtoint ptr %right_value160 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 1, ptr %right_value160, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call140)
  %cmp163 = icmp eq i32 %call140, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion145, i1 noundef zeroext %cmp163, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion145) #4
  %95 = ptrtoint ptr %strs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %strs, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion174) #4
  %97 = ptrtoint ptr %__assertion174 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %test, ptr %__assertion174, align 4
  %type177 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 1
  %98 = ptrtoint ptr %type177 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %type177, align 4
  %line178 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 2
  %99 = ptrtoint ptr %line178 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 288, ptr %line178, align 4
  %file179 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 3
  %100 = ptrtoint ptr %file179 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.11, ptr %file179, align 4
  %message180 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 4
  %101 = ptrtoint ptr %message180 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %message180, align 4
  %va182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %va182 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %va182, align 4
  %format183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 5
  %103 = ptrtoint ptr %format183 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @kunit_binary_str_assert_format, ptr %format183, align 4
  %operation184 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 1
  %104 = ptrtoint ptr %operation184 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.13, ptr %operation184, align 4
  %left_text185 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 2
  %105 = ptrtoint ptr %left_text185 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.54, ptr %left_text185, align 4
  %left_value186 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 3
  %106 = ptrtoint ptr %left_value186 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %96, ptr %left_value186, align 4
  %right_text187 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 4
  %107 = ptrtoint ptr %right_text187 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.53, ptr %right_text187, align 4
  %right_value188 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 5
  %108 = ptrtoint ptr %right_value188 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.49, ptr %right_value188, align 4
  %call190 = call i32 @strcmp(ptr noundef %96, ptr noundef nonnull dereferenceable(7) @.str.49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp eq i32 %call190, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion174, i1 noundef zeroext %cmp191, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion174) #4
  %call197 = call i32 @fwnode_property_read_string(ptr noundef %call, ptr noundef nonnull @.str.55, ptr noundef nonnull %str) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion202) #4
  %109 = getelementptr inbounds i8, ptr %__assertion202, i32 32
  %110 = call ptr @memset(ptr %109, i32 255, i32 24)
  %111 = ptrtoint ptr %__assertion202 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %test, ptr %__assertion202, align 8
  %type205 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 1
  %112 = ptrtoint ptr %type205 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %type205, align 4
  %line206 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 2
  %113 = ptrtoint ptr %line206 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 291, ptr %line206, align 8
  %file207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 3
  %114 = ptrtoint ptr %file207 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.11, ptr %file207, align 4
  %message208 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 4
  %115 = ptrtoint ptr %message208 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %message208, align 8
  %va210 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %va210 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %va210, align 4
  %format211 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion202, i32 0, i32 5
  %117 = ptrtoint ptr %format211 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @kunit_binary_assert_format, ptr %format211, align 8
  %operation212 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion202, i32 0, i32 1
  %118 = ptrtoint ptr %operation212 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.20, ptr %operation212, align 4
  %left_text213 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion202, i32 0, i32 2
  %119 = ptrtoint ptr %left_text213 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.14, ptr %left_text213, align 8
  %left_value214 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion202, i32 0, i32 3
  %conv215 = sext i32 %call197 to i64
  %120 = ptrtoint ptr %left_value214 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv215, ptr %left_value214, align 8
  %right_text216 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion202, i32 0, i32 4
  %121 = ptrtoint ptr %right_text216 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.16, ptr %right_text216, align 8
  %right_value217 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion202, i32 0, i32 5
  %122 = ptrtoint ptr %right_value217 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 0, ptr %right_value217, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp220 = icmp ne i32 %call197, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion202, i1 noundef zeroext %cmp220, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion202) #4
  %call227 = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.55, ptr noundef nonnull %strs, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion232) #4
  %123 = getelementptr inbounds i8, ptr %__assertion232, i32 32
  %124 = call ptr @memset(ptr %123, i32 255, i32 24)
  %125 = ptrtoint ptr %__assertion232 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %test, ptr %__assertion232, align 8
  %type235 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232, i32 0, i32 1
  %126 = ptrtoint ptr %type235 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %type235, align 4
  %line236 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232, i32 0, i32 2
  %127 = ptrtoint ptr %line236 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 294, ptr %line236, align 8
  %file237 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232, i32 0, i32 3
  %128 = ptrtoint ptr %file237 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.11, ptr %file237, align 4
  %message238 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232, i32 0, i32 4
  %129 = ptrtoint ptr %message238 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %message238, align 8
  %va240 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232, i32 0, i32 4, i32 1
  %130 = ptrtoint ptr %va240 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %va240, align 4
  %format241 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion232, i32 0, i32 5
  %131 = ptrtoint ptr %format241 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @kunit_binary_assert_format, ptr %format241, align 8
  %operation242 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion232, i32 0, i32 1
  %132 = ptrtoint ptr %operation242 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.56, ptr %operation242, align 4
  %left_text243 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion232, i32 0, i32 2
  %133 = ptrtoint ptr %left_text243 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.14, ptr %left_text243, align 8
  %left_value244 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion232, i32 0, i32 3
  %conv245 = sext i32 %call227 to i64
  %134 = ptrtoint ptr %left_value244 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv245, ptr %left_value244, align 8
  %right_text246 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion232, i32 0, i32 4
  %135 = ptrtoint ptr %right_text246 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.16, ptr %right_text246, align 8
  %right_value247 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion232, i32 0, i32 5
  %136 = ptrtoint ptr %right_value247 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 0, ptr %right_value247, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp250 = icmp slt i32 %call227, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion232, i1 noundef zeroext %cmp250, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion232) #4
  %call256 = call i32 @fwnode_property_read_string(ptr noundef %call, ptr noundef nonnull @.str.50, ptr noundef nonnull %str) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion261) #4
  %137 = getelementptr inbounds i8, ptr %__assertion261, i32 32
  %138 = call ptr @memset(ptr %137, i32 255, i32 24)
  %139 = ptrtoint ptr %__assertion261 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %test, ptr %__assertion261, align 8
  %type264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 1
  %140 = ptrtoint ptr %type264 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %type264, align 4
  %line265 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 2
  %141 = ptrtoint ptr %line265 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 297, ptr %line265, align 8
  %file266 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 3
  %142 = ptrtoint ptr %file266 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @.str.11, ptr %file266, align 4
  %message267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4
  %143 = ptrtoint ptr %message267 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %message267, align 8
  %va269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4, i32 1
  %144 = ptrtoint ptr %va269 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %va269, align 4
  %format270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 5
  %145 = ptrtoint ptr %format270 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @kunit_binary_assert_format, ptr %format270, align 8
  %operation271 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 1
  %146 = ptrtoint ptr %operation271 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @.str.13, ptr %operation271, align 4
  %left_text272 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 2
  %147 = ptrtoint ptr %left_text272 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.14, ptr %left_text272, align 8
  %left_value273 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 3
  %conv274 = sext i32 %call256 to i64
  %148 = ptrtoint ptr %left_value273 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %conv274, ptr %left_value273, align 8
  %right_text275 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 4
  %149 = ptrtoint ptr %right_text275 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.16, ptr %right_text275, align 8
  %right_value276 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 5
  %150 = ptrtoint ptr %right_value276 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 0, ptr %right_value276, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %cmp279 = icmp eq i32 %call256, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion261, i1 noundef zeroext %cmp279, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion261) #4
  %151 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %str, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion289) #4
  %153 = ptrtoint ptr %__assertion289 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %test, ptr %__assertion289, align 4
  %type292 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion289, i32 0, i32 1
  %154 = ptrtoint ptr %type292 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %type292, align 4
  %line293 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion289, i32 0, i32 2
  %155 = ptrtoint ptr %line293 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 298, ptr %line293, align 4
  %file294 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion289, i32 0, i32 3
  %156 = ptrtoint ptr %file294 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @.str.11, ptr %file294, align 4
  %message295 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion289, i32 0, i32 4
  %157 = ptrtoint ptr %message295 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %message295, align 4
  %va297 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion289, i32 0, i32 4, i32 1
  %158 = ptrtoint ptr %va297 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %va297, align 4
  %format298 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion289, i32 0, i32 5
  %159 = ptrtoint ptr %format298 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @kunit_binary_str_assert_format, ptr %format298, align 4
  %operation299 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion289, i32 0, i32 1
  %160 = ptrtoint ptr %operation299 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @.str.13, ptr %operation299, align 4
  %left_text300 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion289, i32 0, i32 2
  %161 = ptrtoint ptr %left_text300 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.48, ptr %left_text300, align 4
  %left_value301 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion289, i32 0, i32 3
  %162 = ptrtoint ptr %left_value301 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %152, ptr %left_value301, align 4
  %right_text302 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion289, i32 0, i32 4
  %163 = ptrtoint ptr %right_text302 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.57, ptr %right_text302, align 4
  %right_value303 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion289, i32 0, i32 5
  %164 = ptrtoint ptr %right_value303 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.51, ptr %right_value303, align 4
  %165 = ptrtoint ptr %152 to i32
  call void @__asan_load1_noabort(i32 %165)
  %strcmpload = load i8, ptr %152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %cmp306 = icmp eq i8 %strcmpload, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion289, i1 noundef zeroext %cmp306, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion289) #4
  %call.i676 = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.52, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion317) #4
  %166 = getelementptr inbounds i8, ptr %__assertion317, i32 32
  %167 = call ptr @memset(ptr %166, i32 255, i32 24)
  %168 = ptrtoint ptr %__assertion317 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %test, ptr %__assertion317, align 8
  %type320 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion317, i32 0, i32 1
  %169 = ptrtoint ptr %type320 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %type320, align 4
  %line321 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion317, i32 0, i32 2
  %170 = ptrtoint ptr %line321 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 301, ptr %line321, align 8
  %file322 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion317, i32 0, i32 3
  %171 = ptrtoint ptr %file322 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.11, ptr %file322, align 4
  %message323 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion317, i32 0, i32 4
  %172 = ptrtoint ptr %message323 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %message323, align 8
  %va325 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion317, i32 0, i32 4, i32 1
  %173 = ptrtoint ptr %va325 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %va325, align 4
  %format326 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion317, i32 0, i32 5
  %174 = ptrtoint ptr %format326 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @kunit_binary_assert_format, ptr %format326, align 8
  %operation327 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion317, i32 0, i32 1
  %175 = ptrtoint ptr %operation327 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @.str.13, ptr %operation327, align 4
  %left_text328 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion317, i32 0, i32 2
  %176 = ptrtoint ptr %left_text328 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.14, ptr %left_text328, align 8
  %left_value329 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion317, i32 0, i32 3
  %conv330 = sext i32 %call.i676 to i64
  %177 = ptrtoint ptr %left_value329 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %conv330, ptr %left_value329, align 8
  %right_text331 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion317, i32 0, i32 4
  %178 = ptrtoint ptr %right_text331 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.45, ptr %right_text331, align 8
  %right_value332 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion317, i32 0, i32 5
  %179 = ptrtoint ptr %right_value332 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 2, ptr %right_value332, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i676)
  %cmp335 = icmp eq i32 %call.i676, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion317, i1 noundef zeroext %cmp335, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion317) #4
  %call342 = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.52, ptr noundef nonnull %strs, i32 noundef 3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion347) #4
  %180 = getelementptr inbounds i8, ptr %__assertion347, i32 32
  %181 = call ptr @memset(ptr %180, i32 255, i32 24)
  %182 = ptrtoint ptr %__assertion347 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %test, ptr %__assertion347, align 8
  %type350 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 1
  %183 = ptrtoint ptr %type350 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %type350, align 4
  %line351 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 2
  %184 = ptrtoint ptr %line351 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 304, ptr %line351, align 8
  %file352 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 3
  %185 = ptrtoint ptr %file352 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.11, ptr %file352, align 4
  %message353 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 4
  %186 = ptrtoint ptr %message353 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %message353, align 8
  %va355 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 4, i32 1
  %187 = ptrtoint ptr %va355 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %va355, align 4
  %format356 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 5
  %188 = ptrtoint ptr %format356 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @kunit_binary_assert_format, ptr %format356, align 8
  %operation357 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion347, i32 0, i32 1
  %189 = ptrtoint ptr %operation357 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @.str.13, ptr %operation357, align 4
  %left_text358 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion347, i32 0, i32 2
  %190 = ptrtoint ptr %left_text358 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @.str.14, ptr %left_text358, align 8
  %left_value359 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion347, i32 0, i32 3
  %conv360 = sext i32 %call342 to i64
  %191 = ptrtoint ptr %left_value359 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv360, ptr %left_value359, align 8
  %right_text361 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion347, i32 0, i32 4
  %192 = ptrtoint ptr %right_text361 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.45, ptr %right_text361, align 8
  %right_value362 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion347, i32 0, i32 5
  %193 = ptrtoint ptr %right_value362 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 2, ptr %right_value362, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call342)
  %cmp365 = icmp eq i32 %call342, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion347, i1 noundef zeroext %cmp365, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion347) #4
  %194 = ptrtoint ptr %strs to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %strs, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion376) #4
  %196 = ptrtoint ptr %__assertion376 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %test, ptr %__assertion376, align 4
  %type379 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 1
  %197 = ptrtoint ptr %type379 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1, ptr %type379, align 4
  %line380 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 2
  %198 = ptrtoint ptr %line380 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 305, ptr %line380, align 4
  %file381 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 3
  %199 = ptrtoint ptr %file381 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @.str.11, ptr %file381, align 4
  %message382 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 4
  %200 = ptrtoint ptr %message382 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %message382, align 4
  %va384 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 4, i32 1
  %201 = ptrtoint ptr %va384 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %va384, align 4
  %format385 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 5
  %202 = ptrtoint ptr %format385 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @kunit_binary_str_assert_format, ptr %format385, align 4
  %operation386 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion376, i32 0, i32 1
  %203 = ptrtoint ptr %operation386 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @.str.13, ptr %operation386, align 4
  %left_text387 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion376, i32 0, i32 2
  %204 = ptrtoint ptr %left_text387 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @.str.54, ptr %left_text387, align 4
  %left_value388 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion376, i32 0, i32 3
  %205 = ptrtoint ptr %left_value388 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %195, ptr %left_value388, align 4
  %right_text389 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion376, i32 0, i32 4
  %206 = ptrtoint ptr %right_text389 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @.str.58, ptr %right_text389, align 4
  %right_value390 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion376, i32 0, i32 5
  %207 = ptrtoint ptr %right_value390 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.46, ptr %right_value390, align 4
  %call392 = call i32 @strcmp(ptr noundef %195, ptr noundef nonnull dereferenceable(9) @.str.46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %cmp393 = icmp eq i32 %call392, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion376, i1 noundef zeroext %cmp393, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion376) #4
  %arrayidx401 = getelementptr inbounds [10 x ptr], ptr %strs, i32 0, i32 1
  %208 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx401, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion404) #4
  %210 = ptrtoint ptr %__assertion404 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %test, ptr %__assertion404, align 4
  %type407 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 1
  %211 = ptrtoint ptr %type407 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 1, ptr %type407, align 4
  %line408 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 2
  %212 = ptrtoint ptr %line408 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 306, ptr %line408, align 4
  %file409 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 3
  %213 = ptrtoint ptr %file409 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @.str.11, ptr %file409, align 4
  %message410 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 4
  %214 = ptrtoint ptr %message410 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %message410, align 4
  %va412 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 4, i32 1
  %215 = ptrtoint ptr %va412 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %va412, align 4
  %format413 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 5
  %216 = ptrtoint ptr %format413 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @kunit_binary_str_assert_format, ptr %format413, align 4
  %operation414 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 1
  %217 = ptrtoint ptr %operation414 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @.str.13, ptr %operation414, align 4
  %left_text415 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 2
  %218 = ptrtoint ptr %left_text415 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @.str.59, ptr %left_text415, align 4
  %left_value416 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 3
  %219 = ptrtoint ptr %left_value416 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %209, ptr %left_value416, align 4
  %right_text417 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 4
  %220 = ptrtoint ptr %right_text417 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.60, ptr %right_text417, align 4
  %right_value418 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 5
  %221 = ptrtoint ptr %right_value418 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @.str.47, ptr %right_value418, align 4
  %call420 = call i32 @strcmp(ptr noundef %209, ptr noundef nonnull dereferenceable(9) @.str.47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %cmp421 = icmp eq i32 %call420, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion404, i1 noundef zeroext %cmp421, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion404) #4
  %call428 = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.52, ptr noundef nonnull %strs, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion433) #4
  %222 = getelementptr inbounds i8, ptr %__assertion433, i32 32
  %223 = call ptr @memset(ptr %222, i32 255, i32 24)
  %224 = ptrtoint ptr %__assertion433 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %test, ptr %__assertion433, align 8
  %type436 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion433, i32 0, i32 1
  %225 = ptrtoint ptr %type436 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 1, ptr %type436, align 4
  %line437 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion433, i32 0, i32 2
  %226 = ptrtoint ptr %line437 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 309, ptr %line437, align 8
  %file438 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion433, i32 0, i32 3
  %227 = ptrtoint ptr %file438 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @.str.11, ptr %file438, align 4
  %message439 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion433, i32 0, i32 4
  %228 = ptrtoint ptr %message439 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %message439, align 8
  %va441 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion433, i32 0, i32 4, i32 1
  %229 = ptrtoint ptr %va441 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr null, ptr %va441, align 4
  %format442 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion433, i32 0, i32 5
  %230 = ptrtoint ptr %format442 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @kunit_binary_assert_format, ptr %format442, align 8
  %operation443 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion433, i32 0, i32 1
  %231 = ptrtoint ptr %operation443 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @.str.13, ptr %operation443, align 4
  %left_text444 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion433, i32 0, i32 2
  %232 = ptrtoint ptr %left_text444 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @.str.14, ptr %left_text444, align 8
  %left_value445 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion433, i32 0, i32 3
  %conv446 = sext i32 %call428 to i64
  %233 = ptrtoint ptr %left_value445 to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %conv446, ptr %left_value445, align 8
  %right_text447 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion433, i32 0, i32 4
  %234 = ptrtoint ptr %right_text447 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @.str.15, ptr %right_text447, align 8
  %right_value448 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion433, i32 0, i32 5
  %235 = ptrtoint ptr %right_value448 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 1, ptr %right_value448, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call428)
  %cmp451 = icmp eq i32 %call428, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion433, i1 noundef zeroext %cmp451, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion433) #4
  %236 = ptrtoint ptr %strs to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %strs, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion462) #4
  %238 = ptrtoint ptr %__assertion462 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %test, ptr %__assertion462, align 4
  %type465 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion462, i32 0, i32 1
  %239 = ptrtoint ptr %type465 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1, ptr %type465, align 4
  %line466 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion462, i32 0, i32 2
  %240 = ptrtoint ptr %line466 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 310, ptr %line466, align 4
  %file467 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion462, i32 0, i32 3
  %241 = ptrtoint ptr %file467 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @.str.11, ptr %file467, align 4
  %message468 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion462, i32 0, i32 4
  %242 = ptrtoint ptr %message468 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %message468, align 4
  %va470 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion462, i32 0, i32 4, i32 1
  %243 = ptrtoint ptr %va470 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %va470, align 4
  %format471 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion462, i32 0, i32 5
  %244 = ptrtoint ptr %format471 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @kunit_binary_str_assert_format, ptr %format471, align 4
  %operation472 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion462, i32 0, i32 1
  %245 = ptrtoint ptr %operation472 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @.str.13, ptr %operation472, align 4
  %left_text473 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion462, i32 0, i32 2
  %246 = ptrtoint ptr %left_text473 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @.str.54, ptr %left_text473, align 4
  %left_value474 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion462, i32 0, i32 3
  %247 = ptrtoint ptr %left_value474 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %237, ptr %left_value474, align 4
  %right_text475 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion462, i32 0, i32 4
  %248 = ptrtoint ptr %right_text475 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @.str.58, ptr %right_text475, align 4
  %right_value476 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion462, i32 0, i32 5
  %249 = ptrtoint ptr %right_value476 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @.str.46, ptr %right_value476, align 4
  %call478 = call i32 @strcmp(ptr noundef %237, ptr noundef nonnull dereferenceable(9) @.str.46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call478)
  %cmp479 = icmp eq i32 %call478, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion462, i1 noundef zeroext %cmp479, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion462) #4
  %call485 = call i32 @fwnode_property_read_string_array(ptr noundef %call, ptr noundef nonnull @.str.52, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion490) #4
  %250 = getelementptr inbounds i8, ptr %__assertion490, i32 32
  %251 = call ptr @memset(ptr %250, i32 255, i32 24)
  %252 = ptrtoint ptr %__assertion490 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %test, ptr %__assertion490, align 8
  %type493 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion490, i32 0, i32 1
  %253 = ptrtoint ptr %type493 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 1, ptr %type493, align 4
  %line494 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion490, i32 0, i32 2
  %254 = ptrtoint ptr %line494 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 314, ptr %line494, align 8
  %file495 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion490, i32 0, i32 3
  %255 = ptrtoint ptr %file495 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr @.str.11, ptr %file495, align 4
  %message496 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion490, i32 0, i32 4
  %256 = ptrtoint ptr %message496 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr null, ptr %message496, align 8
  %va498 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion490, i32 0, i32 4, i32 1
  %257 = ptrtoint ptr %va498 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr null, ptr %va498, align 4
  %format499 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion490, i32 0, i32 5
  %258 = ptrtoint ptr %format499 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @kunit_binary_assert_format, ptr %format499, align 8
  %operation500 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion490, i32 0, i32 1
  %259 = ptrtoint ptr %operation500 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @.str.13, ptr %operation500, align 4
  %left_text501 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion490, i32 0, i32 2
  %260 = ptrtoint ptr %left_text501 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @.str.14, ptr %left_text501, align 8
  %left_value502 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion490, i32 0, i32 3
  %conv503 = sext i32 %call485 to i64
  %261 = ptrtoint ptr %left_value502 to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %conv503, ptr %left_value502, align 8
  %right_text504 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion490, i32 0, i32 4
  %262 = ptrtoint ptr %right_text504 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @.str.45, ptr %right_text504, align 8
  %right_value505 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion490, i32 0, i32 5
  %263 = ptrtoint ptr %right_value505 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 2, ptr %right_value505, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call485)
  %cmp508 = icmp eq i32 %call485, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion490, i1 noundef zeroext %cmp508, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion490) #4
  %call514 = call i32 @fwnode_property_read_string(ptr noundef %call, ptr noundef nonnull @.str.52, ptr noundef nonnull %str) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion519) #4
  %264 = getelementptr inbounds i8, ptr %__assertion519, i32 32
  %265 = call ptr @memset(ptr %264, i32 255, i32 24)
  %266 = ptrtoint ptr %__assertion519 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %test, ptr %__assertion519, align 8
  %type522 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion519, i32 0, i32 1
  %267 = ptrtoint ptr %type522 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 1, ptr %type522, align 4
  %line523 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion519, i32 0, i32 2
  %268 = ptrtoint ptr %line523 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 318, ptr %line523, align 8
  %file524 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion519, i32 0, i32 3
  %269 = ptrtoint ptr %file524 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @.str.11, ptr %file524, align 4
  %message525 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion519, i32 0, i32 4
  %270 = ptrtoint ptr %message525 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr null, ptr %message525, align 8
  %va527 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion519, i32 0, i32 4, i32 1
  %271 = ptrtoint ptr %va527 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %va527, align 4
  %format528 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion519, i32 0, i32 5
  %272 = ptrtoint ptr %format528 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr @kunit_binary_assert_format, ptr %format528, align 8
  %operation529 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion519, i32 0, i32 1
  %273 = ptrtoint ptr %operation529 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr @.str.13, ptr %operation529, align 4
  %left_text530 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion519, i32 0, i32 2
  %274 = ptrtoint ptr %left_text530 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @.str.14, ptr %left_text530, align 8
  %left_value531 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion519, i32 0, i32 3
  %conv532 = sext i32 %call514 to i64
  %275 = ptrtoint ptr %left_value531 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %conv532, ptr %left_value531, align 8
  %right_text533 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion519, i32 0, i32 4
  %276 = ptrtoint ptr %right_text533 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr @.str.16, ptr %right_text533, align 8
  %right_value534 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion519, i32 0, i32 5
  %277 = ptrtoint ptr %right_value534 to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 0, ptr %right_value534, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call514)
  %cmp537 = icmp eq i32 %call514, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion519, i1 noundef zeroext %cmp537, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion519) #4
  %278 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %str, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion547) #4
  %280 = ptrtoint ptr %__assertion547 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %test, ptr %__assertion547, align 4
  %type550 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion547, i32 0, i32 1
  %281 = ptrtoint ptr %type550 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 1, ptr %type550, align 4
  %line551 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion547, i32 0, i32 2
  %282 = ptrtoint ptr %line551 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 319, ptr %line551, align 4
  %file552 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion547, i32 0, i32 3
  %283 = ptrtoint ptr %file552 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @.str.11, ptr %file552, align 4
  %message553 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion547, i32 0, i32 4
  %284 = ptrtoint ptr %message553 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %message553, align 4
  %va555 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion547, i32 0, i32 4, i32 1
  %285 = ptrtoint ptr %va555 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %va555, align 4
  %format556 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion547, i32 0, i32 5
  %286 = ptrtoint ptr %format556 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr @kunit_binary_str_assert_format, ptr %format556, align 4
  %operation557 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion547, i32 0, i32 1
  %287 = ptrtoint ptr %operation557 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr @.str.13, ptr %operation557, align 4
  %left_text558 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion547, i32 0, i32 2
  %288 = ptrtoint ptr %left_text558 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr @.str.48, ptr %left_text558, align 4
  %left_value559 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion547, i32 0, i32 3
  %289 = ptrtoint ptr %left_value559 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %279, ptr %left_value559, align 4
  %right_text560 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion547, i32 0, i32 4
  %290 = ptrtoint ptr %right_text560 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr @.str.58, ptr %right_text560, align 4
  %right_value561 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion547, i32 0, i32 5
  %291 = ptrtoint ptr %right_value561 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr @.str.46, ptr %right_value561, align 4
  %call563 = call i32 @strcmp(ptr noundef %279, ptr noundef nonnull dereferenceable(9) @.str.46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call563)
  %cmp564 = icmp eq i32 %call563, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion547, i1 noundef zeroext %cmp564, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion547) #4
  call void @fwnode_remove_software_node(ptr noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %strs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pe_test_bool(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion8 = alloca %struct.kunit_unary_assert, align 4
  %__assertion25 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fwnode_create_software_node(ptr noundef nonnull @pe_test_bool.entries, ptr noundef null) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 334, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.11, ptr %file, align 4
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
  store ptr @.str.12, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion8) #4
  %9 = getelementptr inbounds i8, ptr %__assertion8, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !241
  %11 = ptrtoint ptr %__assertion8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion8, align 4
  %type11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 1
  %12 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type11, align 4
  %line12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 2
  %13 = ptrtoint ptr %line12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 336, ptr %line12, align 4
  %file13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 3
  %14 = ptrtoint ptr %file13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.11, ptr %file13, align 4
  %message14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4
  %15 = ptrtoint ptr %message14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message14, align 4
  %va16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va16, align 4
  %format17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 5
  %17 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_unary_assert_format, ptr %format17, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.62, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %expected_true, align 4
  %call.i = call zeroext i1 @fwnode_property_present(ptr noundef %call, ptr noundef nonnull @.str.61) #4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion8, i1 noundef zeroext %call.i, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion8) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion25) #4
  %20 = getelementptr inbounds i8, ptr %__assertion25, i32 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !241
  %22 = ptrtoint ptr %__assertion25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion25, align 4
  %type28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion25, i32 0, i32 1
  %23 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type28, align 4
  %line29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion25, i32 0, i32 2
  %24 = ptrtoint ptr %line29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 337, ptr %line29, align 4
  %file30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion25, i32 0, i32 3
  %25 = ptrtoint ptr %file30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.11, ptr %file30, align 4
  %message31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion25, i32 0, i32 4
  %26 = ptrtoint ptr %message31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message31, align 4
  %va33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion25, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va33, align 4
  %format34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion25, i32 0, i32 5
  %28 = ptrtoint ptr %format34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_unary_assert_format, ptr %format34, align 4
  %condition35 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion25, i32 0, i32 1
  %29 = ptrtoint ptr %condition35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.63, ptr %condition35, align 4
  %expected_true36 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion25, i32 0, i32 2
  %30 = ptrtoint ptr %expected_true36 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %expected_true36, align 4
  %call.i55 = call zeroext i1 @fwnode_property_present(ptr noundef %call, ptr noundef nonnull @.str.64) #4
  %cmp43 = xor i1 %call.i55, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion25, i1 noundef zeroext %cmp43, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion25) #4
  call void @fwnode_remove_software_node(ptr noundef %call) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pe_test_move_inline_u8(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion8 = alloca %struct.kunit_unary_assert, align 4
  %__assertion27 = alloca %struct.kunit_binary_assert, align 8
  %__assertion51 = alloca %struct.kunit_binary_assert, align 8
  %__assertion77 = alloca %struct.kunit_unary_assert, align 4
  %__assertion107 = alloca %struct.kunit_binary_assert, align 8
  %__assertion137 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @property_entries_dup(ptr noundef nonnull @pe_test_move_inline_u8.entries) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 357, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.11, ptr %file, align 4
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
  store ptr @.str.67, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion8) #4
  %9 = getelementptr inbounds i8, ptr %__assertion8, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !241
  %11 = ptrtoint ptr %__assertion8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion8, align 4
  %type11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 1
  %12 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type11, align 4
  %line12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 2
  %13 = ptrtoint ptr %line12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 359, ptr %line12, align 4
  %file13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 3
  %14 = ptrtoint ptr %file13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.11, ptr %file13, align 4
  %message14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4
  %15 = ptrtoint ptr %message14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message14, align 4
  %va16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va16, align 4
  %format17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 5
  %17 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_unary_assert_format, ptr %format17, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.68, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %expected_true, align 4
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %is_inline to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_inline, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool = icmp ne i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion8, i1 noundef zeroext %tobool, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion8) #4
  %22 = getelementptr inbounds %struct.property_entry, ptr %call, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion27) #4
  %25 = getelementptr inbounds i8, ptr %__assertion27, i32 32
  %26 = call ptr @memset(ptr %25, i32 255, i32 24)
  %27 = ptrtoint ptr %__assertion27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %test, ptr %__assertion27, align 8
  %type30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 1
  %28 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type30, align 4
  %line31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 2
  %29 = ptrtoint ptr %line31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 361, ptr %line31, align 8
  %file32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 3
  %30 = ptrtoint ptr %file32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.11, ptr %file32, align 4
  %message33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 4
  %31 = ptrtoint ptr %message33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %message33, align 8
  %va35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %va35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %va35, align 4
  %format36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 5
  %33 = ptrtoint ptr %format36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @kunit_binary_assert_format, ptr %format36, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 1
  %34 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.13, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 2
  %35 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.69, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 3
  %conv = zext i8 %24 to i64
  %36 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 4
  %37 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.15, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 5
  %38 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp40 = icmp eq i8 %24, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion27, i1 noundef zeroext %cmp40, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion27) #4
  %arrayidx48 = getelementptr i8, ptr %22, i32 1
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx48, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion51) #4
  %41 = getelementptr inbounds i8, ptr %__assertion51, i32 32
  %42 = call ptr @memset(ptr %41, i32 255, i32 24)
  %43 = ptrtoint ptr %__assertion51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion51, align 8
  %type54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 1
  %44 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type54, align 4
  %line55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 2
  %45 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 362, ptr %line55, align 8
  %file56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 3
  %46 = ptrtoint ptr %file56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.11, ptr %file56, align 4
  %message57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 4
  %47 = ptrtoint ptr %message57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message57, align 8
  %va59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %va59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va59, align 4
  %format60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 5
  %49 = ptrtoint ptr %format60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_assert_format, ptr %format60, align 8
  %operation61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 1
  %50 = ptrtoint ptr %operation61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.13, ptr %operation61, align 4
  %left_text62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 2
  %51 = ptrtoint ptr %left_text62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.70, ptr %left_text62, align 8
  %left_value63 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 3
  %conv64 = zext i8 %40 to i64
  %52 = ptrtoint ptr %left_value63 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv64, ptr %left_value63, align 8
  %right_text65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 4
  %53 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.45, ptr %right_text65, align 8
  %right_value66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 5
  %54 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 2, ptr %right_value66, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp70 = icmp eq i8 %40, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion51, i1 noundef zeroext %cmp70, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion51) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion77) #4
  %55 = getelementptr inbounds i8, ptr %__assertion77, i32 32
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %55, align 4, !annotation !241
  %57 = ptrtoint ptr %__assertion77 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion77, align 4
  %type80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 1
  %58 = ptrtoint ptr %type80 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type80, align 4
  %line81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 2
  %59 = ptrtoint ptr %line81 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 364, ptr %line81, align 4
  %file82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 3
  %60 = ptrtoint ptr %file82 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.11, ptr %file82, align 4
  %message83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 4
  %61 = ptrtoint ptr %message83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message83, align 4
  %va85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %va85 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va85, align 4
  %format86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 5
  %63 = ptrtoint ptr %format86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_unary_assert_format, ptr %format86, align 4
  %condition87 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion77, i32 0, i32 1
  %64 = ptrtoint ptr %condition87 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.71, ptr %condition87, align 4
  %expected_true88 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion77, i32 0, i32 2
  %65 = ptrtoint ptr %expected_true88 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %expected_true88, align 4
  %is_inline91 = getelementptr %struct.property_entry, ptr %call, i32 1, i32 2
  %66 = ptrtoint ptr %is_inline91 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %is_inline91, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp97 = icmp eq i8 %67, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion77, i1 noundef zeroext %cmp97, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion77) #4
  %68 = getelementptr %struct.property_entry, ptr %call, i32 1, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion107) #4
  %73 = getelementptr inbounds i8, ptr %__assertion107, i32 32
  %74 = call ptr @memset(ptr %73, i32 255, i32 24)
  %75 = ptrtoint ptr %__assertion107 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %test, ptr %__assertion107, align 8
  %type110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 1
  %76 = ptrtoint ptr %type110 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %type110, align 4
  %line111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 2
  %77 = ptrtoint ptr %line111 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 366, ptr %line111, align 8
  %file112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 3
  %78 = ptrtoint ptr %file112 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.11, ptr %file112, align 4
  %message113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 4
  %79 = ptrtoint ptr %message113 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %message113, align 8
  %va115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %va115 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %va115, align 4
  %format116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 5
  %81 = ptrtoint ptr %format116 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @kunit_binary_assert_format, ptr %format116, align 8
  %operation117 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 1
  %82 = ptrtoint ptr %operation117 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.13, ptr %operation117, align 4
  %left_text118 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 2
  %83 = ptrtoint ptr %left_text118 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.69, ptr %left_text118, align 8
  %left_value119 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 3
  %conv120 = zext i8 %72 to i64
  %84 = ptrtoint ptr %left_value119 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv120, ptr %left_value119, align 8
  %right_text121 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 4
  %85 = ptrtoint ptr %right_text121 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.72, ptr %right_text121, align 8
  %right_value122 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 5
  %86 = ptrtoint ptr %right_value122 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 5, ptr %right_value122, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %72)
  %cmp126 = icmp eq i8 %72, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion107, i1 noundef zeroext %cmp126, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion107) #4
  %arrayidx134 = getelementptr i8, ptr %70, i32 1
  %87 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx134, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion137) #4
  %89 = getelementptr inbounds i8, ptr %__assertion137, i32 32
  %90 = call ptr @memset(ptr %89, i32 255, i32 24)
  %91 = ptrtoint ptr %__assertion137 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %test, ptr %__assertion137, align 8
  %type140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 1
  %92 = ptrtoint ptr %type140 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %type140, align 4
  %line141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 2
  %93 = ptrtoint ptr %line141 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 367, ptr %line141, align 8
  %file142 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 3
  %94 = ptrtoint ptr %file142 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.11, ptr %file142, align 4
  %message143 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 4
  %95 = ptrtoint ptr %message143 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %message143, align 8
  %va145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 4, i32 1
  %96 = ptrtoint ptr %va145 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %va145, align 4
  %format146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion137, i32 0, i32 5
  %97 = ptrtoint ptr %format146 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @kunit_binary_assert_format, ptr %format146, align 8
  %operation147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 1
  %98 = ptrtoint ptr %operation147 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.13, ptr %operation147, align 4
  %left_text148 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 2
  %99 = ptrtoint ptr %left_text148 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.70, ptr %left_text148, align 8
  %left_value149 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 3
  %conv150 = zext i8 %88 to i64
  %100 = ptrtoint ptr %left_value149 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv150, ptr %left_value149, align 8
  %right_text151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 4
  %101 = ptrtoint ptr %right_text151 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.73, ptr %right_text151, align 8
  %right_value152 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion137, i32 0, i32 5
  %102 = ptrtoint ptr %right_value152 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 6, ptr %right_value152, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %88)
  %cmp156 = icmp eq i8 %88, 6
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion137, i1 noundef zeroext %cmp156, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion137) #4
  call void @property_entries_free(ptr noundef %call) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pe_test_move_inline_str(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion8 = alloca %struct.kunit_unary_assert, align 4
  %__assertion27 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion45 = alloca %struct.kunit_unary_assert, align 4
  %__assertion74 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion101 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion124 = alloca %struct.kunit_unary_assert, align 4
  %__assertion153 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @property_entries_dup(ptr noundef nonnull @pe_test_move_inline_str.entries) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 389, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.11, ptr %file, align 4
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
  store ptr @.str.67, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion8) #4
  %9 = getelementptr inbounds i8, ptr %__assertion8, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !241
  %11 = ptrtoint ptr %__assertion8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %test, ptr %__assertion8, align 4
  %type11 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 1
  %12 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type11, align 4
  %line12 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 2
  %13 = ptrtoint ptr %line12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 391, ptr %line12, align 4
  %file13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 3
  %14 = ptrtoint ptr %file13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.11, ptr %file13, align 4
  %message14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4
  %15 = ptrtoint ptr %message14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %message14, align 4
  %va16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %va16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %va16, align 4
  %format17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion8, i32 0, i32 5
  %17 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @kunit_unary_assert_format, ptr %format17, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 1
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.68, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion8, i32 0, i32 2
  %19 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %expected_true, align 4
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %is_inline to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_inline, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool = icmp ne i8 %21, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion8, i1 noundef zeroext %tobool, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion8) #4
  %22 = getelementptr inbounds %struct.property_entry, ptr %call, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion27) #4
  %25 = ptrtoint ptr %__assertion27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion27, align 4
  %type30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 1
  %26 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type30, align 4
  %line31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 2
  %27 = ptrtoint ptr %line31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 392, ptr %line31, align 4
  %file32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 3
  %28 = ptrtoint ptr %file32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.11, ptr %file32, align 4
  %message33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 4
  %29 = ptrtoint ptr %message33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message33, align 4
  %va35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %va35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va35, align 4
  %format36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 5
  %31 = ptrtoint ptr %format36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_str_assert_format, ptr %format36, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion27, i32 0, i32 1
  %32 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.13, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion27, i32 0, i32 2
  %33 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.80, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion27, i32 0, i32 3
  %34 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %24, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion27, i32 0, i32 4
  %35 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.81, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion27, i32 0, i32 5
  %36 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.74, ptr %right_value, align 4
  %call38 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(2) @.str.74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion27, i1 noundef zeroext %cmp39, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion27) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion45) #4
  %37 = getelementptr inbounds i8, ptr %__assertion45, i32 32
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %37, align 4, !annotation !241
  %39 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion45, align 4
  %type48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %40 = ptrtoint ptr %type48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type48, align 4
  %line49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %41 = ptrtoint ptr %line49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 394, ptr %line49, align 4
  %file50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %42 = ptrtoint ptr %file50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.11, ptr %file50, align 4
  %message51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %43 = ptrtoint ptr %message51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message51, align 4
  %va53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va53, align 4
  %format54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %45 = ptrtoint ptr %format54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_unary_assert_format, ptr %format54, align 4
  %condition55 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion45, i32 0, i32 1
  %46 = ptrtoint ptr %condition55 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.71, ptr %condition55, align 4
  %expected_true56 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion45, i32 0, i32 2
  %47 = ptrtoint ptr %expected_true56 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %expected_true56, align 4
  %is_inline59 = getelementptr %struct.property_entry, ptr %call, i32 1, i32 2
  %48 = ptrtoint ptr %is_inline59 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_inline59, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp65 = icmp eq i8 %49, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext %cmp65, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion45) #4
  %50 = getelementptr %struct.property_entry, ptr %call, i32 1, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion74) #4
  %55 = ptrtoint ptr %__assertion74 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion74, align 4
  %type77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion74, i32 0, i32 1
  %56 = ptrtoint ptr %type77 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type77, align 4
  %line78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion74, i32 0, i32 2
  %57 = ptrtoint ptr %line78 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 396, ptr %line78, align 4
  %file79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion74, i32 0, i32 3
  %58 = ptrtoint ptr %file79 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.11, ptr %file79, align 4
  %message80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion74, i32 0, i32 4
  %59 = ptrtoint ptr %message80 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message80, align 4
  %va82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion74, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %va82 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va82, align 4
  %format83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion74, i32 0, i32 5
  %61 = ptrtoint ptr %format83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_str_assert_format, ptr %format83, align 4
  %operation84 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion74, i32 0, i32 1
  %62 = ptrtoint ptr %operation84 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.13, ptr %operation84, align 4
  %left_text85 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion74, i32 0, i32 2
  %63 = ptrtoint ptr %left_text85 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.69, ptr %left_text85, align 4
  %left_value86 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion74, i32 0, i32 3
  %64 = ptrtoint ptr %left_value86 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %54, ptr %left_value86, align 4
  %right_text87 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion74, i32 0, i32 4
  %65 = ptrtoint ptr %right_text87 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.82, ptr %right_text87, align 4
  %right_value88 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion74, i32 0, i32 5
  %66 = ptrtoint ptr %right_value88 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.75, ptr %right_value88, align 4
  %call90 = call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(2) @.str.75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion74, i1 noundef zeroext %cmp91, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion74) #4
  %arrayidx98 = getelementptr ptr, ptr %52, i32 1
  %67 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx98, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion101) #4
  %69 = ptrtoint ptr %__assertion101 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %test, ptr %__assertion101, align 4
  %type104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 1
  %70 = ptrtoint ptr %type104 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %type104, align 4
  %line105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 2
  %71 = ptrtoint ptr %line105 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 397, ptr %line105, align 4
  %file106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 3
  %72 = ptrtoint ptr %file106 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.11, ptr %file106, align 4
  %message107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 4
  %73 = ptrtoint ptr %message107 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %message107, align 4
  %va109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %va109 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %va109, align 4
  %format110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 5
  %75 = ptrtoint ptr %format110 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @kunit_binary_str_assert_format, ptr %format110, align 4
  %operation111 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion101, i32 0, i32 1
  %76 = ptrtoint ptr %operation111 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.13, ptr %operation111, align 4
  %left_text112 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion101, i32 0, i32 2
  %77 = ptrtoint ptr %left_text112 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.70, ptr %left_text112, align 4
  %left_value113 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion101, i32 0, i32 3
  %78 = ptrtoint ptr %left_value113 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %68, ptr %left_value113, align 4
  %right_text114 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion101, i32 0, i32 4
  %79 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.83, ptr %right_text114, align 4
  %right_value115 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion101, i32 0, i32 5
  %80 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.76, ptr %right_value115, align 4
  %call117 = call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(2) @.str.76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp eq i32 %call117, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion101, i1 noundef zeroext %cmp118, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion101) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion124) #4
  %81 = getelementptr inbounds i8, ptr %__assertion124, i32 32
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %81, align 4, !annotation !241
  %83 = ptrtoint ptr %__assertion124 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %test, ptr %__assertion124, align 4
  %type127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 1
  %84 = ptrtoint ptr %type127 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %type127, align 4
  %line128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 2
  %85 = ptrtoint ptr %line128 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 399, ptr %line128, align 4
  %file129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 3
  %86 = ptrtoint ptr %file129 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.11, ptr %file129, align 4
  %message130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4
  %87 = ptrtoint ptr %message130 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %message130, align 4
  %va132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4, i32 1
  %88 = ptrtoint ptr %va132 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %va132, align 4
  %format133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 5
  %89 = ptrtoint ptr %format133 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @kunit_unary_assert_format, ptr %format133, align 4
  %condition134 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion124, i32 0, i32 1
  %90 = ptrtoint ptr %condition134 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.84, ptr %condition134, align 4
  %expected_true135 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion124, i32 0, i32 2
  %91 = ptrtoint ptr %expected_true135 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %expected_true135, align 4
  %is_inline138 = getelementptr %struct.property_entry, ptr %call, i32 2, i32 2
  %92 = ptrtoint ptr %is_inline138 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %is_inline138, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool139 = icmp ne i8 %93, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion124, i1 noundef zeroext %tobool139, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion124) #4
  %94 = getelementptr %struct.property_entry, ptr %call, i32 2, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion153) #4
  %97 = ptrtoint ptr %__assertion153 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %test, ptr %__assertion153, align 4
  %type156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 1
  %98 = ptrtoint ptr %type156 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %type156, align 4
  %line157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 2
  %99 = ptrtoint ptr %line157 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 400, ptr %line157, align 4
  %file158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 3
  %100 = ptrtoint ptr %file158 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.11, ptr %file158, align 4
  %message159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 4
  %101 = ptrtoint ptr %message159 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %message159, align 4
  %va161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %va161 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %va161, align 4
  %format162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 5
  %103 = ptrtoint ptr %format162 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @kunit_binary_str_assert_format, ptr %format162, align 4
  %operation163 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 1
  %104 = ptrtoint ptr %operation163 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.13, ptr %operation163, align 4
  %left_text164 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 2
  %105 = ptrtoint ptr %left_text164 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.85, ptr %left_text164, align 4
  %left_value165 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 3
  %106 = ptrtoint ptr %left_value165 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %96, ptr %left_value165, align 4
  %right_text166 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 4
  %107 = ptrtoint ptr %right_text166 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.57, ptr %right_text166, align 4
  %right_value167 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 5
  %108 = ptrtoint ptr %right_value167 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.51, ptr %right_value167, align 4
  %109 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %109)
  %strcmpload = load i8, ptr %96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %cmp170 = icmp eq i8 %strcmpload, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion153, i1 noundef zeroext %cmp170, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion153) #4
  call void @property_entries_free(ptr noundef %call) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pe_test_reference(ptr noundef %test) #0 align 64 {
entry:
  %entries = alloca [4 x %struct.property_entry], align 8
  %.compoundliteral = alloca %struct.software_node_ref_args, align 8
  %.compoundliteral6 = alloca %struct.software_node_ref_args, align 8
  %ref = alloca %struct.fwnode_reference_args, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion34 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion55 = alloca %struct.kunit_binary_assert, align 8
  %__assertion84 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion111 = alloca %struct.kunit_binary_assert, align 8
  %__assertion140 = alloca %struct.kunit_binary_assert, align 8
  %__assertion169 = alloca %struct.kunit_binary_assert, align 8
  %__assertion199 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion226 = alloca %struct.kunit_binary_assert, align 8
  %__assertion255 = alloca %struct.kunit_binary_assert, align 8
  %__assertion282 = alloca %struct.kunit_binary_assert, align 8
  %__assertion312 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion339 = alloca %struct.kunit_binary_assert, align 8
  %__assertion369 = alloca %struct.kunit_binary_assert, align 8
  %__assertion397 = alloca %struct.kunit_binary_assert, align 8
  %__assertion425 = alloca %struct.kunit_binary_assert, align 8
  %__assertion452 = alloca %struct.kunit_binary_assert, align 8
  %__assertion481 = alloca %struct.kunit_binary_assert, align 8
  %__assertion511 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion538 = alloca %struct.kunit_binary_assert, align 8
  %__assertion567 = alloca %struct.kunit_binary_assert, align 8
  %__assertion597 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion624 = alloca %struct.kunit_binary_assert, align 8
  %__assertion654 = alloca %struct.kunit_binary_assert, align 8
  %__assertion682 = alloca %struct.kunit_binary_assert, align 8
  %__assertion709 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %entries) #4
  %0 = getelementptr inbounds i8, ptr %entries, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.86, ptr %entries, align 8
  %length = getelementptr inbounds %struct.property_entry, ptr %entries, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 72, ptr %length, align 4
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %entries, i32 0, i32 2
  %4 = ptrtoint ptr %is_inline to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_inline, align 8
  %type = getelementptr inbounds %struct.property_entry, ptr %entries, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %type, align 4
  %6 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 0, i32 4
  %7 = getelementptr inbounds i8, ptr %.compoundliteral, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 64)
  %9 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pe_test_reference.nodes, ptr %.compoundliteral, align 8
  %nargs = getelementptr inbounds %struct.software_node_ref_args, ptr %.compoundliteral, i32 0, i32 1
  %10 = ptrtoint ptr %nargs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nargs, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.compoundliteral, ptr %6, align 8
  %arrayinit.element = getelementptr inbounds %struct.property_entry, ptr %entries, i32 1
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.87, ptr %arrayinit.element, align 8
  %length3 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 1, i32 1
  %13 = ptrtoint ptr %length3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 72, ptr %length3, align 4
  %is_inline4 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 1, i32 2
  %14 = ptrtoint ptr %is_inline4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_inline4, align 8
  %type5 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 1, i32 3
  %15 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %type5, align 4
  %16 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 1, i32 4
  %17 = ptrtoint ptr %.compoundliteral6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds ([3 x %struct.software_node], ptr @pe_test_reference.nodes, i32 0, i32 1), ptr %.compoundliteral6, align 8
  %nargs8 = getelementptr inbounds %struct.software_node_ref_args, ptr %.compoundliteral6, i32 0, i32 1
  %18 = ptrtoint ptr %nargs8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %nargs8, align 4
  %args9 = getelementptr inbounds %struct.software_node_ref_args, ptr %.compoundliteral6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.software_node_ref_args, ptr %.compoundliteral6, i32 0, i32 2, i32 2
  %20 = call ptr @memset(ptr %19, i32 0, i32 48)
  %21 = ptrtoint ptr %args9 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %args9, align 8
  %arrayinit.element11 = getelementptr inbounds %struct.software_node_ref_args, ptr %.compoundliteral6, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 2, ptr %arrayinit.element11, align 8
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.compoundliteral6, ptr %16, align 8
  %arrayinit.element12 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 2
  %24 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.88, ptr %arrayinit.element12, align 8
  %length14 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 2, i32 1
  %25 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 144, ptr %length14, align 4
  %is_inline15 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 2, i32 2
  %26 = ptrtoint ptr %is_inline15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %is_inline15, align 8
  %type16 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 2, i32 3
  %27 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %type16, align 4
  %28 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 2, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pe_test_reference.refs, ptr %28, align 8
  %arrayinit.element17 = getelementptr inbounds %struct.property_entry, ptr %entries, i32 3
  %30 = call ptr @memset(ptr %arrayinit.element17, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ref) #4
  %31 = call ptr @memset(ptr %ref, i32 255, i32 72)
  %call = call i32 @software_node_register_nodes(ptr noundef nonnull @pe_test_reference.nodes) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %32 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %33 = call ptr @memset(ptr %32, i32 255, i32 24)
  %34 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test, ptr %__assertion, align 8
  %type25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %35 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %type25, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %36 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 431, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %37 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.11, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %38 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %40 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %41 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.13, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %42 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.14, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %call to i64
  %43 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %44 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.16, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %45 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %call31 = call ptr @fwnode_create_software_node(ptr noundef nonnull %entries, ptr noundef null) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion34) #4
  %46 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %47 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %48 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 434, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %49 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.11, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %50 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %52 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format43, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion34, i32 0, i32 1
  %53 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.12, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion34, i32 0, i32 2
  %54 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call31, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call31, null
  %cmp.i = icmp ule ptr %call31, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion34) #4
  %call50 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion55) #4
  %55 = getelementptr inbounds i8, ptr %__assertion55, i32 32
  %56 = call ptr @memset(ptr %55, i32 255, i32 24)
  %57 = ptrtoint ptr %__assertion55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %test, ptr %__assertion55, align 8
  %type58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 1
  %58 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %type58, align 4
  %line59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 2
  %59 = ptrtoint ptr %line59 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 438, ptr %line59, align 8
  %file60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 3
  %60 = ptrtoint ptr %file60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.11, ptr %file60, align 4
  %message61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4
  %61 = ptrtoint ptr %message61 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message61, align 8
  %va63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %va63 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va63, align 4
  %format64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion55, i32 0, i32 5
  %63 = ptrtoint ptr %format64 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_binary_assert_format, ptr %format64, align 8
  %operation65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 1
  %64 = ptrtoint ptr %operation65 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.13, ptr %operation65, align 4
  %left_text66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 2
  %65 = ptrtoint ptr %left_text66 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.14, ptr %left_text66, align 8
  %left_value67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 3
  %conv68 = sext i32 %call50 to i64
  %66 = ptrtoint ptr %left_value67 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv68, ptr %left_value67, align 8
  %right_text69 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 4
  %67 = ptrtoint ptr %right_text69 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.16, ptr %right_text69, align 8
  %right_value70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion55, i32 0, i32 5
  %68 = ptrtoint ptr %right_value70 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %right_value70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp73 = icmp eq i32 %call50, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion55, i1 noundef zeroext %cmp73, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion55) #4
  %69 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ref, align 8
  %call81 = call ptr @to_software_node(ptr noundef %70) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion84) #4
  %71 = ptrtoint ptr %__assertion84 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %test, ptr %__assertion84, align 4
  %type87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 1
  %72 = ptrtoint ptr %type87 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %type87, align 4
  %line88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 2
  %73 = ptrtoint ptr %line88 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 439, ptr %line88, align 4
  %file89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 3
  %74 = ptrtoint ptr %file89 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.11, ptr %file89, align 4
  %message90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 4
  %75 = ptrtoint ptr %message90 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %message90, align 4
  %va92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %va92 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %va92, align 4
  %format93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 5
  %77 = ptrtoint ptr %format93 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @kunit_binary_ptr_assert_format, ptr %format93, align 4
  %operation94 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion84, i32 0, i32 1
  %78 = ptrtoint ptr %operation94 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.13, ptr %operation94, align 4
  %left_text95 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion84, i32 0, i32 2
  %79 = ptrtoint ptr %left_text95 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.89, ptr %left_text95, align 4
  %left_value96 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion84, i32 0, i32 3
  %80 = ptrtoint ptr %left_value96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call81, ptr %left_value96, align 4
  %right_text97 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion84, i32 0, i32 4
  %81 = ptrtoint ptr %right_text97 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.90, ptr %right_text97, align 4
  %right_value98 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion84, i32 0, i32 5
  %82 = ptrtoint ptr %right_value98 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @pe_test_reference.nodes, ptr %right_value98, align 4
  %cmp100 = icmp eq ptr %call81, @pe_test_reference.nodes
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion84, i1 noundef zeroext %cmp100, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion84) #4
  %nargs108 = getelementptr inbounds %struct.fwnode_reference_args, ptr %ref, i32 0, i32 1
  %83 = ptrtoint ptr %nargs108 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nargs108, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion111) #4
  %85 = getelementptr inbounds i8, ptr %__assertion111, i32 32
  %86 = call ptr @memset(ptr %85, i32 255, i32 24)
  %87 = ptrtoint ptr %__assertion111 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %test, ptr %__assertion111, align 8
  %type114 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion111, i32 0, i32 1
  %88 = ptrtoint ptr %type114 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %type114, align 4
  %line115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion111, i32 0, i32 2
  %89 = ptrtoint ptr %line115 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 440, ptr %line115, align 8
  %file116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion111, i32 0, i32 3
  %90 = ptrtoint ptr %file116 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.11, ptr %file116, align 4
  %message117 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion111, i32 0, i32 4
  %91 = ptrtoint ptr %message117 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %message117, align 8
  %va119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion111, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %va119 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %va119, align 4
  %format120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion111, i32 0, i32 5
  %93 = ptrtoint ptr %format120 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @kunit_binary_assert_format, ptr %format120, align 8
  %operation121 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion111, i32 0, i32 1
  %94 = ptrtoint ptr %operation121 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.13, ptr %operation121, align 4
  %left_text122 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion111, i32 0, i32 2
  %95 = ptrtoint ptr %left_text122 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.91, ptr %left_text122, align 8
  %left_value123 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion111, i32 0, i32 3
  %conv124 = zext i32 %84 to i64
  %96 = ptrtoint ptr %left_value123 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv124, ptr %left_value123, align 8
  %right_text125 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion111, i32 0, i32 4
  %97 = ptrtoint ptr %right_text125 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.92, ptr %right_text125, align 8
  %right_value126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion111, i32 0, i32 5
  %98 = ptrtoint ptr %right_value126 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 0, ptr %right_value126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp129 = icmp eq i32 %84, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion111, i1 noundef zeroext %cmp129, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion111) #4
  %call135 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion140) #4
  %99 = getelementptr inbounds i8, ptr %__assertion140, i32 32
  %100 = call ptr @memset(ptr %99, i32 255, i32 24)
  %101 = ptrtoint ptr %__assertion140 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %test, ptr %__assertion140, align 8
  %type143 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 1
  %102 = ptrtoint ptr %type143 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %type143, align 4
  %line144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 2
  %103 = ptrtoint ptr %line144 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 445, ptr %line144, align 8
  %file145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 3
  %104 = ptrtoint ptr %file145 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.11, ptr %file145, align 4
  %message146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 4
  %105 = ptrtoint ptr %message146 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %message146, align 8
  %va148 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %va148 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %va148, align 4
  %format149 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion140, i32 0, i32 5
  %107 = ptrtoint ptr %format149 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @kunit_binary_assert_format, ptr %format149, align 8
  %operation150 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 1
  %108 = ptrtoint ptr %operation150 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.20, ptr %operation150, align 4
  %left_text151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 2
  %109 = ptrtoint ptr %left_text151 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.14, ptr %left_text151, align 8
  %left_value152 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 3
  %conv153 = sext i32 %call135 to i64
  %110 = ptrtoint ptr %left_value152 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv153, ptr %left_value152, align 8
  %right_text154 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 4
  %111 = ptrtoint ptr %right_text154 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.16, ptr %right_text154, align 8
  %right_value155 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion140, i32 0, i32 5
  %112 = ptrtoint ptr %right_value155 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 0, ptr %right_value155, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp158 = icmp ne i32 %call135, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion140, i1 noundef zeroext %cmp158, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion140) #4
  %call164 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.87, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion169) #4
  %113 = getelementptr inbounds i8, ptr %__assertion169, i32 32
  %114 = call ptr @memset(ptr %113, i32 255, i32 24)
  %115 = ptrtoint ptr %__assertion169 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %test, ptr %__assertion169, align 8
  %type172 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169, i32 0, i32 1
  %116 = ptrtoint ptr %type172 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %type172, align 4
  %line173 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169, i32 0, i32 2
  %117 = ptrtoint ptr %line173 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 449, ptr %line173, align 8
  %file174 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169, i32 0, i32 3
  %118 = ptrtoint ptr %file174 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.11, ptr %file174, align 4
  %message175 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169, i32 0, i32 4
  %119 = ptrtoint ptr %message175 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %message175, align 8
  %va177 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169, i32 0, i32 4, i32 1
  %120 = ptrtoint ptr %va177 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %va177, align 4
  %format178 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion169, i32 0, i32 5
  %121 = ptrtoint ptr %format178 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @kunit_binary_assert_format, ptr %format178, align 8
  %operation179 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion169, i32 0, i32 1
  %122 = ptrtoint ptr %operation179 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.13, ptr %operation179, align 4
  %left_text180 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion169, i32 0, i32 2
  %123 = ptrtoint ptr %left_text180 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.14, ptr %left_text180, align 8
  %left_value181 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion169, i32 0, i32 3
  %conv182 = sext i32 %call164 to i64
  %124 = ptrtoint ptr %left_value181 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %conv182, ptr %left_value181, align 8
  %right_text183 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion169, i32 0, i32 4
  %125 = ptrtoint ptr %right_text183 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.16, ptr %right_text183, align 8
  %right_value184 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion169, i32 0, i32 5
  %126 = ptrtoint ptr %right_value184 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 0, ptr %right_value184, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp187 = icmp eq i32 %call164, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion169, i1 noundef zeroext %cmp187, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion169) #4
  %127 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ref, align 8
  %call196 = call ptr @to_software_node(ptr noundef %128) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion199) #4
  %129 = ptrtoint ptr %__assertion199 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %test, ptr %__assertion199, align 4
  %type202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion199, i32 0, i32 1
  %130 = ptrtoint ptr %type202 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %type202, align 4
  %line203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion199, i32 0, i32 2
  %131 = ptrtoint ptr %line203 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 450, ptr %line203, align 4
  %file204 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion199, i32 0, i32 3
  %132 = ptrtoint ptr %file204 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.11, ptr %file204, align 4
  %message205 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion199, i32 0, i32 4
  %133 = ptrtoint ptr %message205 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %message205, align 4
  %va207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion199, i32 0, i32 4, i32 1
  %134 = ptrtoint ptr %va207 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %va207, align 4
  %format208 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion199, i32 0, i32 5
  %135 = ptrtoint ptr %format208 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @kunit_binary_ptr_assert_format, ptr %format208, align 4
  %operation209 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion199, i32 0, i32 1
  %136 = ptrtoint ptr %operation209 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.13, ptr %operation209, align 4
  %left_text210 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion199, i32 0, i32 2
  %137 = ptrtoint ptr %left_text210 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.89, ptr %left_text210, align 4
  %left_value211 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion199, i32 0, i32 3
  %138 = ptrtoint ptr %left_value211 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call196, ptr %left_value211, align 4
  %right_text212 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion199, i32 0, i32 4
  %139 = ptrtoint ptr %right_text212 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.93, ptr %right_text212, align 4
  %right_value213 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion199, i32 0, i32 5
  %140 = ptrtoint ptr %right_value213 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr getelementptr inbounds ([3 x %struct.software_node], ptr @pe_test_reference.nodes, i32 0, i32 1), ptr %right_value213, align 4
  %cmp215 = icmp eq ptr %call196, getelementptr inbounds ([3 x %struct.software_node], ptr @pe_test_reference.nodes, i32 0, i32 1)
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion199, i1 noundef zeroext %cmp215, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion199) #4
  %141 = ptrtoint ptr %nargs108 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nargs108, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion226) #4
  %143 = getelementptr inbounds i8, ptr %__assertion226, i32 32
  %144 = call ptr @memset(ptr %143, i32 255, i32 24)
  %145 = ptrtoint ptr %__assertion226 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %test, ptr %__assertion226, align 8
  %type229 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion226, i32 0, i32 1
  %146 = ptrtoint ptr %type229 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %type229, align 4
  %line230 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion226, i32 0, i32 2
  %147 = ptrtoint ptr %line230 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 451, ptr %line230, align 8
  %file231 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion226, i32 0, i32 3
  %148 = ptrtoint ptr %file231 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.11, ptr %file231, align 4
  %message232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion226, i32 0, i32 4
  %149 = ptrtoint ptr %message232 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %message232, align 8
  %va234 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion226, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %va234 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %va234, align 4
  %format235 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion226, i32 0, i32 5
  %151 = ptrtoint ptr %format235 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @kunit_binary_assert_format, ptr %format235, align 8
  %operation236 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion226, i32 0, i32 1
  %152 = ptrtoint ptr %operation236 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @.str.13, ptr %operation236, align 4
  %left_text237 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion226, i32 0, i32 2
  %153 = ptrtoint ptr %left_text237 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.91, ptr %left_text237, align 8
  %left_value238 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion226, i32 0, i32 3
  %conv239 = zext i32 %142 to i64
  %154 = ptrtoint ptr %left_value238 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %conv239, ptr %left_value238, align 8
  %right_text240 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion226, i32 0, i32 4
  %155 = ptrtoint ptr %right_text240 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @.str.94, ptr %right_text240, align 8
  %right_value241 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion226, i32 0, i32 5
  %156 = ptrtoint ptr %right_value241 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 1, ptr %right_value241, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %142)
  %cmp244 = icmp eq i32 %142, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion226, i1 noundef zeroext %cmp244, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion226) #4
  %args252 = getelementptr inbounds %struct.fwnode_reference_args, ptr %ref, i32 0, i32 2
  %157 = ptrtoint ptr %args252 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %args252, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion255) #4
  %159 = getelementptr inbounds i8, ptr %__assertion255, i32 32
  %160 = call ptr @memset(ptr %159, i32 255, i32 24)
  %161 = ptrtoint ptr %__assertion255 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %test, ptr %__assertion255, align 8
  %type258 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion255, i32 0, i32 1
  %162 = ptrtoint ptr %type258 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %type258, align 4
  %line259 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion255, i32 0, i32 2
  %163 = ptrtoint ptr %line259 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 452, ptr %line259, align 8
  %file260 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion255, i32 0, i32 3
  %164 = ptrtoint ptr %file260 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.11, ptr %file260, align 4
  %message261 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion255, i32 0, i32 4
  %165 = ptrtoint ptr %message261 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %message261, align 8
  %va263 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion255, i32 0, i32 4, i32 1
  %166 = ptrtoint ptr %va263 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %va263, align 4
  %format264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion255, i32 0, i32 5
  %167 = ptrtoint ptr %format264 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @kunit_binary_assert_format, ptr %format264, align 8
  %operation265 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion255, i32 0, i32 1
  %168 = ptrtoint ptr %operation265 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @.str.13, ptr %operation265, align 4
  %left_text266 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion255, i32 0, i32 2
  %169 = ptrtoint ptr %left_text266 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.95, ptr %left_text266, align 8
  %left_value267 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion255, i32 0, i32 3
  %170 = ptrtoint ptr %left_value267 to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %158, ptr %left_value267, align 8
  %right_text268 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion255, i32 0, i32 4
  %171 = ptrtoint ptr %right_text268 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.96, ptr %right_text268, align 8
  %right_value269 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion255, i32 0, i32 5
  %172 = ptrtoint ptr %right_value269 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 1, ptr %right_value269, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %158)
  %cmp271 = icmp eq i64 %158, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion255, i1 noundef zeroext %cmp271, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion255) #4
  %call277 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.87, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion282) #4
  %173 = getelementptr inbounds i8, ptr %__assertion282, i32 32
  %174 = call ptr @memset(ptr %173, i32 255, i32 24)
  %175 = ptrtoint ptr %__assertion282 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %test, ptr %__assertion282, align 8
  %type285 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 1
  %176 = ptrtoint ptr %type285 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %type285, align 4
  %line286 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 2
  %177 = ptrtoint ptr %line286 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 457, ptr %line286, align 8
  %file287 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 3
  %178 = ptrtoint ptr %file287 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.11, ptr %file287, align 4
  %message288 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 4
  %179 = ptrtoint ptr %message288 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %message288, align 8
  %va290 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 4, i32 1
  %180 = ptrtoint ptr %va290 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %va290, align 4
  %format291 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 5
  %181 = ptrtoint ptr %format291 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @kunit_binary_assert_format, ptr %format291, align 8
  %operation292 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 1
  %182 = ptrtoint ptr %operation292 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @.str.13, ptr %operation292, align 4
  %left_text293 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 2
  %183 = ptrtoint ptr %left_text293 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @.str.14, ptr %left_text293, align 8
  %left_value294 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 3
  %conv295 = sext i32 %call277 to i64
  %184 = ptrtoint ptr %left_value294 to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %conv295, ptr %left_value294, align 8
  %right_text296 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 4
  %185 = ptrtoint ptr %right_text296 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.16, ptr %right_text296, align 8
  %right_value297 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 5
  %186 = ptrtoint ptr %right_value297 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 0, ptr %right_value297, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %cmp300 = icmp eq i32 %call277, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion282, i1 noundef zeroext %cmp300, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion282) #4
  %187 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ref, align 8
  %call309 = call ptr @to_software_node(ptr noundef %188) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion312) #4
  %189 = ptrtoint ptr %__assertion312 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %test, ptr %__assertion312, align 4
  %type315 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion312, i32 0, i32 1
  %190 = ptrtoint ptr %type315 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %type315, align 4
  %line316 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion312, i32 0, i32 2
  %191 = ptrtoint ptr %line316 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 458, ptr %line316, align 4
  %file317 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion312, i32 0, i32 3
  %192 = ptrtoint ptr %file317 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.11, ptr %file317, align 4
  %message318 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion312, i32 0, i32 4
  %193 = ptrtoint ptr %message318 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %message318, align 4
  %va320 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion312, i32 0, i32 4, i32 1
  %194 = ptrtoint ptr %va320 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %va320, align 4
  %format321 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion312, i32 0, i32 5
  %195 = ptrtoint ptr %format321 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @kunit_binary_ptr_assert_format, ptr %format321, align 4
  %operation322 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion312, i32 0, i32 1
  %196 = ptrtoint ptr %operation322 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.13, ptr %operation322, align 4
  %left_text323 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion312, i32 0, i32 2
  %197 = ptrtoint ptr %left_text323 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @.str.89, ptr %left_text323, align 4
  %left_value324 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion312, i32 0, i32 3
  %198 = ptrtoint ptr %left_value324 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call309, ptr %left_value324, align 4
  %right_text325 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion312, i32 0, i32 4
  %199 = ptrtoint ptr %right_text325 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @.str.93, ptr %right_text325, align 4
  %right_value326 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion312, i32 0, i32 5
  %200 = ptrtoint ptr %right_value326 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr getelementptr inbounds ([3 x %struct.software_node], ptr @pe_test_reference.nodes, i32 0, i32 1), ptr %right_value326, align 4
  %cmp328 = icmp eq ptr %call309, getelementptr inbounds ([3 x %struct.software_node], ptr @pe_test_reference.nodes, i32 0, i32 1)
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion312, i1 noundef zeroext %cmp328, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion312) #4
  %201 = ptrtoint ptr %nargs108 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %nargs108, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion339) #4
  %203 = getelementptr inbounds i8, ptr %__assertion339, i32 32
  %204 = call ptr @memset(ptr %203, i32 255, i32 24)
  %205 = ptrtoint ptr %__assertion339 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %test, ptr %__assertion339, align 8
  %type342 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 1
  %206 = ptrtoint ptr %type342 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %type342, align 4
  %line343 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 2
  %207 = ptrtoint ptr %line343 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 459, ptr %line343, align 8
  %file344 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 3
  %208 = ptrtoint ptr %file344 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @.str.11, ptr %file344, align 4
  %message345 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 4
  %209 = ptrtoint ptr %message345 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %message345, align 8
  %va347 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 4, i32 1
  %210 = ptrtoint ptr %va347 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %va347, align 4
  %format348 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion339, i32 0, i32 5
  %211 = ptrtoint ptr %format348 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @kunit_binary_assert_format, ptr %format348, align 8
  %operation349 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 1
  %212 = ptrtoint ptr %operation349 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @.str.13, ptr %operation349, align 4
  %left_text350 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 2
  %213 = ptrtoint ptr %left_text350 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @.str.91, ptr %left_text350, align 8
  %left_value351 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 3
  %conv352 = zext i32 %202 to i64
  %214 = ptrtoint ptr %left_value351 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %conv352, ptr %left_value351, align 8
  %right_text353 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 4
  %215 = ptrtoint ptr %right_text353 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @.str.97, ptr %right_text353, align 8
  %right_value354 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion339, i32 0, i32 5
  %216 = ptrtoint ptr %right_value354 to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 3, ptr %right_value354, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %202)
  %cmp357 = icmp eq i32 %202, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion339, i1 noundef zeroext %cmp357, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion339) #4
  %217 = ptrtoint ptr %args252 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %args252, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion369) #4
  %219 = getelementptr inbounds i8, ptr %__assertion369, i32 32
  %220 = call ptr @memset(ptr %219, i32 255, i32 24)
  %221 = ptrtoint ptr %__assertion369 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %test, ptr %__assertion369, align 8
  %type372 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 1
  %222 = ptrtoint ptr %type372 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1, ptr %type372, align 4
  %line373 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 2
  %223 = ptrtoint ptr %line373 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 460, ptr %line373, align 8
  %file374 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 3
  %224 = ptrtoint ptr %file374 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @.str.11, ptr %file374, align 4
  %message375 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 4
  %225 = ptrtoint ptr %message375 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr null, ptr %message375, align 8
  %va377 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 4, i32 1
  %226 = ptrtoint ptr %va377 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %va377, align 4
  %format378 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion369, i32 0, i32 5
  %227 = ptrtoint ptr %format378 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @kunit_binary_assert_format, ptr %format378, align 8
  %operation379 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 1
  %228 = ptrtoint ptr %operation379 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @.str.13, ptr %operation379, align 4
  %left_text380 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 2
  %229 = ptrtoint ptr %left_text380 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.95, ptr %left_text380, align 8
  %left_value381 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 3
  %230 = ptrtoint ptr %left_value381 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %218, ptr %left_value381, align 8
  %right_text382 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 4
  %231 = ptrtoint ptr %right_text382 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @.str.96, ptr %right_text382, align 8
  %right_value383 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion369, i32 0, i32 5
  %232 = ptrtoint ptr %right_value383 to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 1, ptr %right_value383, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %218)
  %cmp385 = icmp eq i64 %218, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion369, i1 noundef zeroext %cmp385, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion369) #4
  %arrayidx394 = getelementptr inbounds %struct.fwnode_reference_args, ptr %ref, i32 0, i32 2, i32 1
  %233 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %arrayidx394, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion397) #4
  %235 = getelementptr inbounds i8, ptr %__assertion397, i32 32
  %236 = call ptr @memset(ptr %235, i32 255, i32 24)
  %237 = ptrtoint ptr %__assertion397 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %test, ptr %__assertion397, align 8
  %type400 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion397, i32 0, i32 1
  %238 = ptrtoint ptr %type400 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 1, ptr %type400, align 4
  %line401 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion397, i32 0, i32 2
  %239 = ptrtoint ptr %line401 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 461, ptr %line401, align 8
  %file402 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion397, i32 0, i32 3
  %240 = ptrtoint ptr %file402 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr @.str.11, ptr %file402, align 4
  %message403 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion397, i32 0, i32 4
  %241 = ptrtoint ptr %message403 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %message403, align 8
  %va405 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion397, i32 0, i32 4, i32 1
  %242 = ptrtoint ptr %va405 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %va405, align 4
  %format406 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion397, i32 0, i32 5
  %243 = ptrtoint ptr %format406 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @kunit_binary_assert_format, ptr %format406, align 8
  %operation407 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion397, i32 0, i32 1
  %244 = ptrtoint ptr %operation407 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @.str.13, ptr %operation407, align 4
  %left_text408 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion397, i32 0, i32 2
  %245 = ptrtoint ptr %left_text408 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @.str.98, ptr %left_text408, align 8
  %left_value409 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion397, i32 0, i32 3
  %246 = ptrtoint ptr %left_value409 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %234, ptr %left_value409, align 8
  %right_text410 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion397, i32 0, i32 4
  %247 = ptrtoint ptr %right_text410 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @.str.99, ptr %right_text410, align 8
  %right_value411 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion397, i32 0, i32 5
  %248 = ptrtoint ptr %right_value411 to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 2, ptr %right_value411, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %234)
  %cmp413 = icmp eq i64 %234, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion397, i1 noundef zeroext %cmp413, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion397) #4
  %arrayidx422 = getelementptr inbounds %struct.fwnode_reference_args, ptr %ref, i32 0, i32 2, i32 2
  %249 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %arrayidx422, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion425) #4
  %251 = getelementptr inbounds i8, ptr %__assertion425, i32 32
  %252 = call ptr @memset(ptr %251, i32 255, i32 24)
  %253 = ptrtoint ptr %__assertion425 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %test, ptr %__assertion425, align 8
  %type428 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion425, i32 0, i32 1
  %254 = ptrtoint ptr %type428 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 1, ptr %type428, align 4
  %line429 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion425, i32 0, i32 2
  %255 = ptrtoint ptr %line429 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 462, ptr %line429, align 8
  %file430 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion425, i32 0, i32 3
  %256 = ptrtoint ptr %file430 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @.str.11, ptr %file430, align 4
  %message431 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion425, i32 0, i32 4
  %257 = ptrtoint ptr %message431 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr null, ptr %message431, align 8
  %va433 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion425, i32 0, i32 4, i32 1
  %258 = ptrtoint ptr %va433 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %va433, align 4
  %format434 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion425, i32 0, i32 5
  %259 = ptrtoint ptr %format434 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @kunit_binary_assert_format, ptr %format434, align 8
  %operation435 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion425, i32 0, i32 1
  %260 = ptrtoint ptr %operation435 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @.str.13, ptr %operation435, align 4
  %left_text436 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion425, i32 0, i32 2
  %261 = ptrtoint ptr %left_text436 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @.str.100, ptr %left_text436, align 8
  %left_value437 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion425, i32 0, i32 3
  %262 = ptrtoint ptr %left_value437 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %250, ptr %left_value437, align 8
  %right_text438 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion425, i32 0, i32 4
  %263 = ptrtoint ptr %right_text438 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @.str.101, ptr %right_text438, align 8
  %right_value439 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion425, i32 0, i32 5
  %264 = ptrtoint ptr %right_value439 to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 0, ptr %right_value439, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %250)
  %cmp441 = icmp eq i64 %250, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion425, i1 noundef zeroext %cmp441, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion425) #4
  %call447 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.87, ptr noundef null, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion452) #4
  %265 = getelementptr inbounds i8, ptr %__assertion452, i32 32
  %266 = call ptr @memset(ptr %265, i32 255, i32 24)
  %267 = ptrtoint ptr %__assertion452 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %test, ptr %__assertion452, align 8
  %type455 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion452, i32 0, i32 1
  %268 = ptrtoint ptr %type455 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 1, ptr %type455, align 4
  %line456 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion452, i32 0, i32 2
  %269 = ptrtoint ptr %line456 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 467, ptr %line456, align 8
  %file457 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion452, i32 0, i32 3
  %270 = ptrtoint ptr %file457 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr @.str.11, ptr %file457, align 4
  %message458 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion452, i32 0, i32 4
  %271 = ptrtoint ptr %message458 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %message458, align 8
  %va460 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion452, i32 0, i32 4, i32 1
  %272 = ptrtoint ptr %va460 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr null, ptr %va460, align 4
  %format461 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion452, i32 0, i32 5
  %273 = ptrtoint ptr %format461 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr @kunit_binary_assert_format, ptr %format461, align 8
  %operation462 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion452, i32 0, i32 1
  %274 = ptrtoint ptr %operation462 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @.str.20, ptr %operation462, align 4
  %left_text463 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion452, i32 0, i32 2
  %275 = ptrtoint ptr %left_text463 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr @.str.14, ptr %left_text463, align 8
  %left_value464 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion452, i32 0, i32 3
  %conv465 = sext i32 %call447 to i64
  %276 = ptrtoint ptr %left_value464 to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 %conv465, ptr %left_value464, align 8
  %right_text466 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion452, i32 0, i32 4
  %277 = ptrtoint ptr %right_text466 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr @.str.16, ptr %right_text466, align 8
  %right_value467 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion452, i32 0, i32 5
  %278 = ptrtoint ptr %right_value467 to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 0, ptr %right_value467, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %cmp470 = icmp ne i32 %call447, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion452, i1 noundef zeroext %cmp470, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion452) #4
  %call476 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.88, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion481) #4
  %279 = getelementptr inbounds i8, ptr %__assertion481, i32 32
  %280 = call ptr @memset(ptr %279, i32 255, i32 24)
  %281 = ptrtoint ptr %__assertion481 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %test, ptr %__assertion481, align 8
  %type484 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion481, i32 0, i32 1
  %282 = ptrtoint ptr %type484 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 0, ptr %type484, align 4
  %line485 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion481, i32 0, i32 2
  %283 = ptrtoint ptr %line485 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 472, ptr %line485, align 8
  %file486 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion481, i32 0, i32 3
  %284 = ptrtoint ptr %file486 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr @.str.11, ptr %file486, align 4
  %message487 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion481, i32 0, i32 4
  %285 = ptrtoint ptr %message487 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %message487, align 8
  %va489 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion481, i32 0, i32 4, i32 1
  %286 = ptrtoint ptr %va489 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %va489, align 4
  %format490 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion481, i32 0, i32 5
  %287 = ptrtoint ptr %format490 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr @kunit_binary_assert_format, ptr %format490, align 8
  %operation491 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion481, i32 0, i32 1
  %288 = ptrtoint ptr %operation491 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr @.str.13, ptr %operation491, align 4
  %left_text492 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion481, i32 0, i32 2
  %289 = ptrtoint ptr %left_text492 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr @.str.14, ptr %left_text492, align 8
  %left_value493 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion481, i32 0, i32 3
  %conv494 = sext i32 %call476 to i64
  %290 = ptrtoint ptr %left_value493 to i32
  call void @__asan_store8_noabort(i32 %290)
  store i64 %conv494, ptr %left_value493, align 8
  %right_text495 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion481, i32 0, i32 4
  %291 = ptrtoint ptr %right_text495 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr @.str.16, ptr %right_text495, align 8
  %right_value496 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion481, i32 0, i32 5
  %292 = ptrtoint ptr %right_value496 to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 0, ptr %right_value496, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call476)
  %cmp499 = icmp eq i32 %call476, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion481, i1 noundef zeroext %cmp499, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion481) #4
  %293 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ref, align 8
  %call508 = call ptr @to_software_node(ptr noundef %294) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion511) #4
  %295 = ptrtoint ptr %__assertion511 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %test, ptr %__assertion511, align 4
  %type514 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion511, i32 0, i32 1
  %296 = ptrtoint ptr %type514 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 1, ptr %type514, align 4
  %line515 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion511, i32 0, i32 2
  %297 = ptrtoint ptr %line515 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 473, ptr %line515, align 4
  %file516 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion511, i32 0, i32 3
  %298 = ptrtoint ptr %file516 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr @.str.11, ptr %file516, align 4
  %message517 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion511, i32 0, i32 4
  %299 = ptrtoint ptr %message517 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr null, ptr %message517, align 4
  %va519 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion511, i32 0, i32 4, i32 1
  %300 = ptrtoint ptr %va519 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr null, ptr %va519, align 4
  %format520 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion511, i32 0, i32 5
  %301 = ptrtoint ptr %format520 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr @kunit_binary_ptr_assert_format, ptr %format520, align 4
  %operation521 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion511, i32 0, i32 1
  %302 = ptrtoint ptr %operation521 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @.str.13, ptr %operation521, align 4
  %left_text522 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion511, i32 0, i32 2
  %303 = ptrtoint ptr %left_text522 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr @.str.89, ptr %left_text522, align 4
  %left_value523 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion511, i32 0, i32 3
  %304 = ptrtoint ptr %left_value523 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %call508, ptr %left_value523, align 4
  %right_text524 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion511, i32 0, i32 4
  %305 = ptrtoint ptr %right_text524 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr @.str.90, ptr %right_text524, align 4
  %right_value525 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion511, i32 0, i32 5
  %306 = ptrtoint ptr %right_value525 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr @pe_test_reference.nodes, ptr %right_value525, align 4
  %cmp527 = icmp eq ptr %call508, @pe_test_reference.nodes
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion511, i1 noundef zeroext %cmp527, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion511) #4
  %307 = ptrtoint ptr %nargs108 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %nargs108, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion538) #4
  %309 = getelementptr inbounds i8, ptr %__assertion538, i32 32
  %310 = call ptr @memset(ptr %309, i32 255, i32 24)
  %311 = ptrtoint ptr %__assertion538 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %test, ptr %__assertion538, align 8
  %type541 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion538, i32 0, i32 1
  %312 = ptrtoint ptr %type541 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 1, ptr %type541, align 4
  %line542 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion538, i32 0, i32 2
  %313 = ptrtoint ptr %line542 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 474, ptr %line542, align 8
  %file543 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion538, i32 0, i32 3
  %314 = ptrtoint ptr %file543 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr @.str.11, ptr %file543, align 4
  %message544 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion538, i32 0, i32 4
  %315 = ptrtoint ptr %message544 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr null, ptr %message544, align 8
  %va546 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion538, i32 0, i32 4, i32 1
  %316 = ptrtoint ptr %va546 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %va546, align 4
  %format547 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion538, i32 0, i32 5
  %317 = ptrtoint ptr %format547 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr @kunit_binary_assert_format, ptr %format547, align 8
  %operation548 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion538, i32 0, i32 1
  %318 = ptrtoint ptr %operation548 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr @.str.13, ptr %operation548, align 4
  %left_text549 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion538, i32 0, i32 2
  %319 = ptrtoint ptr %left_text549 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr @.str.91, ptr %left_text549, align 8
  %left_value550 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion538, i32 0, i32 3
  %conv551 = zext i32 %308 to i64
  %320 = ptrtoint ptr %left_value550 to i32
  call void @__asan_store8_noabort(i32 %320)
  store i64 %conv551, ptr %left_value550, align 8
  %right_text552 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion538, i32 0, i32 4
  %321 = ptrtoint ptr %right_text552 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr @.str.92, ptr %right_text552, align 8
  %right_value553 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion538, i32 0, i32 5
  %322 = ptrtoint ptr %right_value553 to i32
  call void @__asan_store8_noabort(i32 %322)
  store i64 0, ptr %right_value553, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %cmp556 = icmp eq i32 %308, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion538, i1 noundef zeroext %cmp556, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion538) #4
  %call562 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.88, ptr noundef null, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion567) #4
  %323 = getelementptr inbounds i8, ptr %__assertion567, i32 32
  %324 = call ptr @memset(ptr %323, i32 255, i32 24)
  %325 = ptrtoint ptr %__assertion567 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %test, ptr %__assertion567, align 8
  %type570 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion567, i32 0, i32 1
  %326 = ptrtoint ptr %type570 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %type570, align 4
  %line571 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion567, i32 0, i32 2
  %327 = ptrtoint ptr %line571 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 479, ptr %line571, align 8
  %file572 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion567, i32 0, i32 3
  %328 = ptrtoint ptr %file572 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr @.str.11, ptr %file572, align 4
  %message573 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion567, i32 0, i32 4
  %329 = ptrtoint ptr %message573 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr null, ptr %message573, align 8
  %va575 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion567, i32 0, i32 4, i32 1
  %330 = ptrtoint ptr %va575 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr null, ptr %va575, align 4
  %format576 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion567, i32 0, i32 5
  %331 = ptrtoint ptr %format576 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr @kunit_binary_assert_format, ptr %format576, align 8
  %operation577 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion567, i32 0, i32 1
  %332 = ptrtoint ptr %operation577 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr @.str.13, ptr %operation577, align 4
  %left_text578 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion567, i32 0, i32 2
  %333 = ptrtoint ptr %left_text578 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr @.str.14, ptr %left_text578, align 8
  %left_value579 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion567, i32 0, i32 3
  %conv580 = sext i32 %call562 to i64
  %334 = ptrtoint ptr %left_value579 to i32
  call void @__asan_store8_noabort(i32 %334)
  store i64 %conv580, ptr %left_value579, align 8
  %right_text581 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion567, i32 0, i32 4
  %335 = ptrtoint ptr %right_text581 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr @.str.16, ptr %right_text581, align 8
  %right_value582 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion567, i32 0, i32 5
  %336 = ptrtoint ptr %right_value582 to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 0, ptr %right_value582, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call562)
  %cmp585 = icmp eq i32 %call562, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion567, i1 noundef zeroext %cmp585, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion567) #4
  %337 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ref, align 8
  %call594 = call ptr @to_software_node(ptr noundef %338) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion597) #4
  %339 = ptrtoint ptr %__assertion597 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %test, ptr %__assertion597, align 4
  %type600 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion597, i32 0, i32 1
  %340 = ptrtoint ptr %type600 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 1, ptr %type600, align 4
  %line601 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion597, i32 0, i32 2
  %341 = ptrtoint ptr %line601 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 480, ptr %line601, align 4
  %file602 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion597, i32 0, i32 3
  %342 = ptrtoint ptr %file602 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr @.str.11, ptr %file602, align 4
  %message603 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion597, i32 0, i32 4
  %343 = ptrtoint ptr %message603 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr null, ptr %message603, align 4
  %va605 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion597, i32 0, i32 4, i32 1
  %344 = ptrtoint ptr %va605 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr null, ptr %va605, align 4
  %format606 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion597, i32 0, i32 5
  %345 = ptrtoint ptr %format606 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr @kunit_binary_ptr_assert_format, ptr %format606, align 4
  %operation607 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion597, i32 0, i32 1
  %346 = ptrtoint ptr %operation607 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr @.str.13, ptr %operation607, align 4
  %left_text608 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion597, i32 0, i32 2
  %347 = ptrtoint ptr %left_text608 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr @.str.89, ptr %left_text608, align 4
  %left_value609 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion597, i32 0, i32 3
  %348 = ptrtoint ptr %left_value609 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %call594, ptr %left_value609, align 4
  %right_text610 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion597, i32 0, i32 4
  %349 = ptrtoint ptr %right_text610 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr @.str.93, ptr %right_text610, align 4
  %right_value611 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion597, i32 0, i32 5
  %350 = ptrtoint ptr %right_value611 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr getelementptr inbounds ([3 x %struct.software_node], ptr @pe_test_reference.nodes, i32 0, i32 1), ptr %right_value611, align 4
  %cmp613 = icmp eq ptr %call594, getelementptr inbounds ([3 x %struct.software_node], ptr @pe_test_reference.nodes, i32 0, i32 1)
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion597, i1 noundef zeroext %cmp613, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion597) #4
  %351 = ptrtoint ptr %nargs108 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %nargs108, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion624) #4
  %353 = getelementptr inbounds i8, ptr %__assertion624, i32 32
  %354 = call ptr @memset(ptr %353, i32 255, i32 24)
  %355 = ptrtoint ptr %__assertion624 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %test, ptr %__assertion624, align 8
  %type627 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 1
  %356 = ptrtoint ptr %type627 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 1, ptr %type627, align 4
  %line628 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 2
  %357 = ptrtoint ptr %line628 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 481, ptr %line628, align 8
  %file629 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 3
  %358 = ptrtoint ptr %file629 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr @.str.11, ptr %file629, align 4
  %message630 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 4
  %359 = ptrtoint ptr %message630 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr null, ptr %message630, align 8
  %va632 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 4, i32 1
  %360 = ptrtoint ptr %va632 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr null, ptr %va632, align 4
  %format633 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 5
  %361 = ptrtoint ptr %format633 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr @kunit_binary_assert_format, ptr %format633, align 8
  %operation634 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 1
  %362 = ptrtoint ptr %operation634 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr @.str.13, ptr %operation634, align 4
  %left_text635 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 2
  %363 = ptrtoint ptr %left_text635 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr @.str.91, ptr %left_text635, align 8
  %left_value636 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 3
  %conv637 = zext i32 %352 to i64
  %364 = ptrtoint ptr %left_value636 to i32
  call void @__asan_store8_noabort(i32 %364)
  store i64 %conv637, ptr %left_value636, align 8
  %right_text638 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 4
  %365 = ptrtoint ptr %right_text638 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr @.str.102, ptr %right_text638, align 8
  %right_value639 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion624, i32 0, i32 5
  %366 = ptrtoint ptr %right_value639 to i32
  call void @__asan_store8_noabort(i32 %366)
  store i64 2, ptr %right_value639, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %352)
  %cmp642 = icmp eq i32 %352, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion624, i1 noundef zeroext %cmp642, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion624) #4
  %367 = ptrtoint ptr %args252 to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %args252, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion654) #4
  %369 = getelementptr inbounds i8, ptr %__assertion654, i32 32
  %370 = call ptr @memset(ptr %369, i32 255, i32 24)
  %371 = ptrtoint ptr %__assertion654 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %test, ptr %__assertion654, align 8
  %type657 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion654, i32 0, i32 1
  %372 = ptrtoint ptr %type657 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 1, ptr %type657, align 4
  %line658 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion654, i32 0, i32 2
  %373 = ptrtoint ptr %line658 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 482, ptr %line658, align 8
  %file659 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion654, i32 0, i32 3
  %374 = ptrtoint ptr %file659 to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr @.str.11, ptr %file659, align 4
  %message660 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion654, i32 0, i32 4
  %375 = ptrtoint ptr %message660 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr null, ptr %message660, align 8
  %va662 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion654, i32 0, i32 4, i32 1
  %376 = ptrtoint ptr %va662 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr null, ptr %va662, align 4
  %format663 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion654, i32 0, i32 5
  %377 = ptrtoint ptr %format663 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr @kunit_binary_assert_format, ptr %format663, align 8
  %operation664 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion654, i32 0, i32 1
  %378 = ptrtoint ptr %operation664 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr @.str.13, ptr %operation664, align 4
  %left_text665 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion654, i32 0, i32 2
  %379 = ptrtoint ptr %left_text665 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr @.str.95, ptr %left_text665, align 8
  %left_value666 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion654, i32 0, i32 3
  %380 = ptrtoint ptr %left_value666 to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 %368, ptr %left_value666, align 8
  %right_text667 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion654, i32 0, i32 4
  %381 = ptrtoint ptr %right_text667 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr @.str.103, ptr %right_text667, align 8
  %right_value668 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion654, i32 0, i32 5
  %382 = ptrtoint ptr %right_value668 to i32
  call void @__asan_store8_noabort(i32 %382)
  store i64 3, ptr %right_value668, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %368)
  %cmp670 = icmp eq i64 %368, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion654, i1 noundef zeroext %cmp670, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion654) #4
  %383 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load8_noabort(i32 %383)
  %384 = load i64, ptr %arrayidx394, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion682) #4
  %385 = getelementptr inbounds i8, ptr %__assertion682, i32 32
  %386 = call ptr @memset(ptr %385, i32 255, i32 24)
  %387 = ptrtoint ptr %__assertion682 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %test, ptr %__assertion682, align 8
  %type685 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion682, i32 0, i32 1
  %388 = ptrtoint ptr %type685 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 1, ptr %type685, align 4
  %line686 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion682, i32 0, i32 2
  %389 = ptrtoint ptr %line686 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 483, ptr %line686, align 8
  %file687 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion682, i32 0, i32 3
  %390 = ptrtoint ptr %file687 to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr @.str.11, ptr %file687, align 4
  %message688 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion682, i32 0, i32 4
  %391 = ptrtoint ptr %message688 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr null, ptr %message688, align 8
  %va690 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion682, i32 0, i32 4, i32 1
  %392 = ptrtoint ptr %va690 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr null, ptr %va690, align 4
  %format691 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion682, i32 0, i32 5
  %393 = ptrtoint ptr %format691 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr @kunit_binary_assert_format, ptr %format691, align 8
  %operation692 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion682, i32 0, i32 1
  %394 = ptrtoint ptr %operation692 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr @.str.13, ptr %operation692, align 4
  %left_text693 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion682, i32 0, i32 2
  %395 = ptrtoint ptr %left_text693 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr @.str.98, ptr %left_text693, align 8
  %left_value694 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion682, i32 0, i32 3
  %396 = ptrtoint ptr %left_value694 to i32
  call void @__asan_store8_noabort(i32 %396)
  store i64 %384, ptr %left_value694, align 8
  %right_text695 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion682, i32 0, i32 4
  %397 = ptrtoint ptr %right_text695 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr @.str.104, ptr %right_text695, align 8
  %right_value696 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion682, i32 0, i32 5
  %398 = ptrtoint ptr %right_value696 to i32
  call void @__asan_store8_noabort(i32 %398)
  store i64 4, ptr %right_value696, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %384)
  %cmp698 = icmp eq i64 %384, 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion682, i1 noundef zeroext %cmp698, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion682) #4
  %call704 = call i32 @fwnode_property_get_reference_args(ptr noundef %call31, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %ref) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion709) #4
  %399 = getelementptr inbounds i8, ptr %__assertion709, i32 32
  %400 = call ptr @memset(ptr %399, i32 255, i32 24)
  %401 = ptrtoint ptr %__assertion709 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %test, ptr %__assertion709, align 8
  %type712 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion709, i32 0, i32 1
  %402 = ptrtoint ptr %type712 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 1, ptr %type712, align 4
  %line713 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion709, i32 0, i32 2
  %403 = ptrtoint ptr %line713 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 488, ptr %line713, align 8
  %file714 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion709, i32 0, i32 3
  %404 = ptrtoint ptr %file714 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr @.str.11, ptr %file714, align 4
  %message715 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion709, i32 0, i32 4
  %405 = ptrtoint ptr %message715 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr null, ptr %message715, align 8
  %va717 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion709, i32 0, i32 4, i32 1
  %406 = ptrtoint ptr %va717 to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr null, ptr %va717, align 4
  %format718 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion709, i32 0, i32 5
  %407 = ptrtoint ptr %format718 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr @kunit_binary_assert_format, ptr %format718, align 8
  %operation719 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion709, i32 0, i32 1
  %408 = ptrtoint ptr %operation719 to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr @.str.20, ptr %operation719, align 4
  %left_text720 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion709, i32 0, i32 2
  %409 = ptrtoint ptr %left_text720 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr @.str.14, ptr %left_text720, align 8
  %left_value721 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion709, i32 0, i32 3
  %conv722 = sext i32 %call704 to i64
  %410 = ptrtoint ptr %left_value721 to i32
  call void @__asan_store8_noabort(i32 %410)
  store i64 %conv722, ptr %left_value721, align 8
  %right_text723 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion709, i32 0, i32 4
  %411 = ptrtoint ptr %right_text723 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr @.str.16, ptr %right_text723, align 8
  %right_value724 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion709, i32 0, i32 5
  %412 = ptrtoint ptr %right_value724 to i32
  call void @__asan_store8_noabort(i32 %412)
  store i64 0, ptr %right_value724, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call704)
  %cmp727 = icmp ne i32 %call704, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion709, i1 noundef zeroext %cmp727, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion709) #4
  call void @fwnode_remove_software_node(ptr noundef %call31) #4
  call void @software_node_unregister_nodes(ptr noundef nonnull @pe_test_reference.nodes) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %entries) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_create_software_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_remove_software_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_str_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @property_entries_dup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @property_entries_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @software_node_register_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_get_reference_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_software_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @software_node_unregister_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !38, !40, !42, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !61, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !102, !104, !106, !108, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !133, !135, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !208, !210, !211, !213, !215, !217, !218, !220, !222, !223, !225, !226, !228, !230}
!llvm.module.flags = !{!232, !233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../drivers/base/test/property-entry-test.c", i32 510, i32 1}
!2 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!3 = !{ptr @property_entry_test_suite, !4, !"property_entry_test_suite", i1 false, i1 false}
!4 = !{!"../drivers/base/test/property-entry-test.c", i32 505, i32 27}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/base/test/property-entry-test.c", i32 495, i32 2}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/base/test/property-entry-test.c", i32 496, i32 2}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/base/test/property-entry-test.c", i32 497, i32 2}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/base/test/property-entry-test.c", i32 498, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/test/property-entry-test.c", i32 499, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/base/test/property-entry-test.c", i32 500, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/base/test/property-entry-test.c", i32 501, i32 2}
!19 = !{ptr @property_entry_test_cases, !20, !"property_entry_test_cases", i1 false, i1 false}
!20 = !{!"../drivers/base/test/property-entry-test.c", i32 494, i32 26}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/test/property-entry-test.c", i32 13, i32 3}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/base/test/property-entry-test.c", i32 14, i32 3}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/base/test/property-entry-test.c", i32 15, i32 3}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/base/test/property-entry-test.c", i32 16, i32 3}
!29 = !{ptr @pe_test_uints.entries, !30, !"entries", i1 false, i1 false}
!30 = !{!"../drivers/base/test/property-entry-test.c", i32 12, i32 37}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/base/test/property-entry-test.c", i32 28, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/base/test/property-entry-test.c", i32 31, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/base/test/property-entry-test.c", i32 34, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/base/test/property-entry-test.c", i32 35, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/test/property-entry-test.c", i32 39, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/base/test/property-entry-test.c", i32 42, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/base/test/property-entry-test.c", i32 44, i32 40}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/base/test/property-entry-test.c", i32 52, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/base/test/property-entry-test.c", i32 59, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/base/test/property-entry-test.c", i32 64, i32 41}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/base/test/property-entry-test.c", i32 72, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/base/test/property-entry-test.c", i32 79, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/base/test/property-entry-test.c", i32 84, i32 41}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/base/test/property-entry-test.c", i32 92, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/base/test/property-entry-test.c", i32 99, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/base/test/property-entry-test.c", i32 104, i32 41}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/base/test/property-entry-test.c", i32 112, i32 2}
!72 = !{ptr @pe_test_uint_arrays.a_u8, !73, !"a_u8", i1 false, i1 false}
!73 = !{!"../drivers/base/test/property-entry-test.c", i32 119, i32 18}
!74 = !{ptr @pe_test_uint_arrays.a_u16, !75, !"a_u16", i1 false, i1 false}
!75 = !{!"../drivers/base/test/property-entry-test.c", i32 120, i32 19}
!76 = !{ptr @pe_test_uint_arrays.a_u32, !77, !"a_u32", i1 false, i1 false}
!77 = !{!"../drivers/base/test/property-entry-test.c", i32 121, i32 19}
!78 = !{ptr @pe_test_uint_arrays.a_u64, !79, !"a_u64", i1 false, i1 false}
!79 = !{!"../drivers/base/test/property-entry-test.c", i32 122, i32 19}
!80 = !{ptr @pe_test_uint_arrays.entries, !81, !"entries", i1 false, i1 false}
!81 = !{!"../drivers/base/test/property-entry-test.c", i32 123, i32 37}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/base/test/property-entry-test.c", i32 146, i32 2}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/base/test/property-entry-test.c", i32 155, i32 2}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/base/test/property-entry-test.c", i32 180, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/base/test/property-entry-test.c", i32 205, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/base/test/property-entry-test.c", i32 230, i32 2}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/base/test/property-entry-test.c", i32 243, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/base/test/property-entry-test.c", i32 247, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/base/test/property-entry-test.c", i32 255, i32 3}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/base/test/property-entry-test.c", i32 256, i32 3}
!104 = !{ptr @pe_test_strings.strings, !105, !"strings", i1 false, i1 false}
!105 = !{!"../drivers/base/test/property-entry-test.c", i32 254, i32 21}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/base/test/property-entry-test.c", i32 260, i32 3}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/base/test/property-entry-test.c", i32 261, i32 3}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/base/test/property-entry-test.c", i32 262, i32 3}
!114 = !{ptr @pe_test_strings.entries, !115, !"entries", i1 false, i1 false}
!115 = !{!"../drivers/base/test/property-entry-test.c", i32 259, i32 37}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/base/test/property-entry-test.c", i32 276, i32 2}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/base/test/property-entry-test.c", i32 283, i32 2}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/base/test/property-entry-test.c", i32 290, i32 44}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/base/test/property-entry-test.c", i32 294, i32 2}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/base/test/property-entry-test.c", i32 298, i32 2}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/base/test/property-entry-test.c", i32 305, i32 2}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/base/test/property-entry-test.c", i32 306, i32 2}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/base/test/property-entry-test.c", i32 327, i32 3}
!133 = !{ptr @pe_test_bool.entries, !134, !"entries", i1 false, i1 false}
!134 = !{!"../drivers/base/test/property-entry-test.c", i32 326, i32 37}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/base/test/property-entry-test.c", i32 336, i32 2}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/base/test/property-entry-test.c", i32 337, i32 2}
!139 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @pe_test_move_inline_u8.u8_array_small, !141, !"u8_array_small", i1 false, i1 false}
!141 = !{!"../drivers/base/test/property-entry-test.c", i32 345, i32 18}
!142 = !{ptr @pe_test_move_inline_u8.u8_array_big, !143, !"u8_array_big", i1 false, i1 false}
!143 = !{!"../drivers/base/test/property-entry-test.c", i32 346, i32 18}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/base/test/property-entry-test.c", i32 348, i32 3}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/base/test/property-entry-test.c", i32 349, i32 3}
!148 = !{ptr @pe_test_move_inline_u8.entries, !149, !"entries", i1 false, i1 false}
!149 = !{!"../drivers/base/test/property-entry-test.c", i32 347, i32 37}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/base/test/property-entry-test.c", i32 357, i32 2}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/base/test/property-entry-test.c", i32 359, i32 2}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/base/test/property-entry-test.c", i32 361, i32 2}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/base/test/property-entry-test.c", i32 362, i32 2}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/base/test/property-entry-test.c", i32 364, i32 2}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/base/test/property-entry-test.c", i32 366, i32 2}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/base/test/property-entry-test.c", i32 367, i32 2}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/base/test/property-entry-test.c", i32 375, i32 37}
!166 = !{ptr @pe_test_move_inline_str.str_array_small, !167, !"str_array_small", i1 false, i1 false}
!167 = !{!"../drivers/base/test/property-entry-test.c", i32 375, i32 15}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/base/test/property-entry-test.c", i32 376, i32 35}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/base/test/property-entry-test.c", i32 376, i32 40}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/base/test/property-entry-test.c", i32 376, i32 45}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/base/test/property-entry-test.c", i32 376, i32 50}
!176 = !{ptr @pe_test_move_inline_str.str_array_big, !177, !"str_array_big", i1 false, i1 false}
!177 = !{!"../drivers/base/test/property-entry-test.c", i32 376, i32 15}
!178 = !{ptr @pe_test_move_inline_str.str_array_small_empty, !179, !"str_array_small_empty", i1 false, i1 false}
!179 = !{!"../drivers/base/test/property-entry-test.c", i32 377, i32 15}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/base/test/property-entry-test.c", i32 381, i32 3}
!182 = !{ptr @pe_test_move_inline_str.entries, !183, !"entries", i1 false, i1 false}
!183 = !{!"../drivers/base/test/property-entry-test.c", i32 378, i32 31}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/base/test/property-entry-test.c", i32 392, i32 2}
!186 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/base/test/property-entry-test.c", i32 396, i32 2}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/base/test/property-entry-test.c", i32 397, i32 2}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/base/test/property-entry-test.c", i32 399, i32 2}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/base/test/property-entry-test.c", i32 400, i32 2}
!195 = !{ptr @pe_test_reference.nodes, !196, !"nodes", i1 false, i1 false}
!196 = !{!"../drivers/base/test/property-entry-test.c", i32 408, i32 36}
!197 = !{ptr @pe_test_reference.refs, !198, !"refs", i1 false, i1 false}
!198 = !{!"../drivers/base/test/property-entry-test.c", i32 414, i32 45}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/base/test/property-entry-test.c", i32 420, i32 3}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/base/test/property-entry-test.c", i32 421, i32 3}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/base/test/property-entry-test.c", i32 422, i32 3}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/base/test/property-entry-test.c", i32 439, i32 2}
!207 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/base/test/property-entry-test.c", i32 440, i32 2}
!210 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/base/test/property-entry-test.c", i32 450, i32 2}
!213 = !{ptr @.str.94, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/base/test/property-entry-test.c", i32 451, i32 2}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/base/test/property-entry-test.c", i32 452, i32 2}
!217 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/base/test/property-entry-test.c", i32 459, i32 2}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/base/test/property-entry-test.c", i32 461, i32 2}
!222 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/base/test/property-entry-test.c", i32 462, i32 2}
!225 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/base/test/property-entry-test.c", i32 481, i32 2}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/base/test/property-entry-test.c", i32 482, i32 2}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/base/test/property-entry-test.c", i32 483, i32 2}
!232 = !{i32 1, !"wchar_size", i32 2}
!233 = !{i32 1, !"min_enum_size", i32 4}
!234 = !{i32 8, !"branch-target-enforcement", i32 0}
!235 = !{i32 8, !"sign-return-address", i32 0}
!236 = !{i32 8, !"sign-return-address-all", i32 0}
!237 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!241 = !{!"auto-init"}
!242 = !{i8 0, i8 2}
