; ModuleID = '/llk/IR_all_yes/drivers/iio/test/iio-test-format.c_pt.bc'
source_filename = "../drivers/iio/test/iio-test-format.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_binary_str_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_array184 = internal global [2 x ptr] [ptr @iio_format_test_suite, ptr null], align 4
@__UNIQUE_ID_suites185 = internal global ptr @__UNIQUE_ID_array184, section ".kunit_test_suites", align 4
@iio_format_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"iio-format\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @iio_format_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@iio_format_test_cases = internal global { [7 x %struct.kunit_case], [52 x i8] } { [7 x %struct.kunit_case] [%struct.kunit_case { ptr @iio_test_iio_format_value_integer, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @iio_test_iio_format_value_fixedpoint, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @iio_test_iio_format_value_fractional, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @iio_test_iio_format_value_fractional_log2, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @iio_test_iio_format_value_multiple, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @iio_test_iio_format_value_integer_64, ptr @.str.5, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iio_test_iio_format_value_integer\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iio_test_iio_format_value_fixedpoint\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iio_test_iio_format_value_fractional\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iio_test_iio_format_value_fractional_log2\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio_test_iio_format_value_multiple\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iio_test_iio_format_value_integer_64\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/test/iio-test-format.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"strlen(buf)\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"42\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(buf)\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(\2242\\n\22)\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-23\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(\22-23\\n\22)\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(\220\\n\22)\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2147483647\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(\222147483647\\n\22)\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"-2147483648\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\22-2147483648\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1.000010\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(\221.000010\\n\22)\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1.000010 dB\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\221.000010 dB\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1.000000010\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\221.000000010\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0.000012\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(\220.000012\\n\22)\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0.000012 dB\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\220.000012 dB\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0.000000012\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\220.000000012\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-1.000010\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(\22-1.000010\\n\22)\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-1.000010 dB\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\22-1.000010 dB\\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-1.000000010\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\22-1.000000010\\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-0.000123\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(\22-0.000123\\n\22)\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-0.000123 dB\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\22-0.000123 dB\\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-0.000000123\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\22-0.000000123\\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0.100000000\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\220.100000000\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"33.333333333\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\2233.333333333\\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-0.000000001\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\22-0.000000001\\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"-66.666666666\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(\22-66.666666666\\n\22)\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0.000000000\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\220.000000000\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0.120117187\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\220.120117187\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"1205.631835937\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(\221205.631835937\\n\22)\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-0.120117187\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\22-0.120117187\\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"-1205.631835937\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(\22-1205.631835937\\n\22)\00", [42 x i8] zeroinitializer }, align 32
@__const.iio_test_iio_format_value_multiple.values = private unnamed_addr constant [5 x i32] [i32 1, i32 -2, i32 3, i32 -4, i32 5], align 4
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"1 -2 3 -4 5 \0A\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(\221 -2 3 -4 5 \\n\22)\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(\2224\\n\22)\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-24\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(\22-24\\n\22)\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"4294967295\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(\224294967295\\n\22)\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"-4294967295\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(\22-4294967295\\n\22)\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"9223372036854775807\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(\229223372036854775807\\n\22)\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"-9223372036854775808\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(\22-9223372036854775808\\n\22)\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"iio_format_test_suite\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 263, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"iio_format_test_cases\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 253, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 254, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 255, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 256, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 257, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 258, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 259, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 22, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 26, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 30, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 34, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 38, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 42, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 59, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 62, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 65, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 72, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 75, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 78, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 85, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 88, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 91, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 97, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 100, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 103, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 119, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 125, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 131, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 137, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 143, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 159, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 165, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 171, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 177, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 197, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 214, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 220, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 232, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 238, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 244, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private constant [38 x i8] c"../drivers/iio/test/iio-test-format.c\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 250, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_suites185, ptr @iio_format_test_suite, ptr @iio_format_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_format_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_format_test_cases to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_test_iio_format_value_integer(ptr noundef %test) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_assert, align 8
  %__assertion33 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion65 = alloca %struct.kunit_binary_assert, align 8
  %__assertion93 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion125 = alloca %struct.kunit_binary_assert, align 8
  %__assertion153 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion185 = alloca %struct.kunit_binary_assert, align 8
  %__assertion213 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion245 = alloca %struct.kunit_binary_assert, align 8
  %__assertion273 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %call.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4096, i32 noundef 3264) #4
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
  store i32 22, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.6, ptr %file, align 4
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
  store ptr @.str.7, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 42, ptr %val, align 4
  %call7 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %val) #4
  %call10 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion12) #4
  %10 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %11 = call ptr @memset(ptr %10, i32 255, i32 24)
  %12 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion12, align 8
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %13 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %14 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 26, ptr %line16, align 8
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %15 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.6, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %16 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message18, align 8
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %18 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_binary_assert_format, ptr %format21, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 1
  %19 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.8, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 2
  %20 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 3
  %conv = zext i32 %call10 to i64
  %21 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 4
  %22 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.10, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 5
  %conv22 = sext i32 %call7 to i64
  %23 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv22, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %call7)
  %cmp = icmp eq i32 %call10, %call7
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion12) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion33) #4
  %24 = ptrtoint ptr %__assertion33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %test, ptr %__assertion33, align 4
  %type36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 1
  %25 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %type36, align 4
  %line37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 2
  %26 = ptrtoint ptr %line37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 26, ptr %line37, align 4
  %file38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 3
  %27 = ptrtoint ptr %file38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.6, ptr %file38, align 4
  %message39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 4
  %28 = ptrtoint ptr %message39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message39, align 4
  %va41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %va41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va41, align 4
  %format42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 5
  %30 = ptrtoint ptr %format42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_str_assert_format, ptr %format42, align 4
  %operation43 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 1
  %31 = ptrtoint ptr %operation43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.8, ptr %operation43, align 4
  %left_text44 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 2
  %32 = ptrtoint ptr %left_text44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.12, ptr %left_text44, align 4
  %left_value45 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 3
  %33 = ptrtoint ptr %left_value45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %left_value45, align 4
  %right_text46 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 4
  %34 = ptrtoint ptr %right_text46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.13, ptr %right_text46, align 4
  %right_value47 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 5
  %35 = ptrtoint ptr %right_value47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.11, ptr %right_value47, align 4
  %call49 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(4) @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion33, i1 noundef zeroext %cmp50, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion33) #4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -23, ptr %val, align 4
  %call58 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %val) #4
  %call62 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion65) #4
  %37 = getelementptr inbounds i8, ptr %__assertion65, i32 32
  %38 = call ptr @memset(ptr %37, i32 255, i32 24)
  %39 = ptrtoint ptr %__assertion65 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion65, align 8
  %type68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 1
  %40 = ptrtoint ptr %type68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type68, align 4
  %line69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 2
  %41 = ptrtoint ptr %line69 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 30, ptr %line69, align 8
  %file70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 3
  %42 = ptrtoint ptr %file70 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.6, ptr %file70, align 4
  %message71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 4
  %43 = ptrtoint ptr %message71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message71, align 8
  %va73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va73, align 4
  %format74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 5
  %45 = ptrtoint ptr %format74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_binary_assert_format, ptr %format74, align 8
  %operation75 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 1
  %46 = ptrtoint ptr %operation75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.8, ptr %operation75, align 4
  %left_text76 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 2
  %47 = ptrtoint ptr %left_text76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.9, ptr %left_text76, align 8
  %left_value77 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 3
  %conv78 = zext i32 %call62 to i64
  %48 = ptrtoint ptr %left_value77 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv78, ptr %left_value77, align 8
  %right_text79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 4
  %49 = ptrtoint ptr %right_text79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.10, ptr %right_text79, align 8
  %right_value80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 5
  %conv81 = sext i32 %call58 to i64
  %50 = ptrtoint ptr %right_value80 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv81, ptr %right_value80, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %call58)
  %cmp83 = icmp eq i32 %call62, %call58
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion65, i1 noundef zeroext %cmp83, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion65) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion93) #4
  %51 = ptrtoint ptr %__assertion93 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion93, align 4
  %type96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion93, i32 0, i32 1
  %52 = ptrtoint ptr %type96 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type96, align 4
  %line97 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion93, i32 0, i32 2
  %53 = ptrtoint ptr %line97 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 30, ptr %line97, align 4
  %file98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion93, i32 0, i32 3
  %54 = ptrtoint ptr %file98 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.6, ptr %file98, align 4
  %message99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion93, i32 0, i32 4
  %55 = ptrtoint ptr %message99 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message99, align 4
  %va101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion93, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %va101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va101, align 4
  %format102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion93, i32 0, i32 5
  %57 = ptrtoint ptr %format102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_str_assert_format, ptr %format102, align 4
  %operation103 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion93, i32 0, i32 1
  %58 = ptrtoint ptr %operation103 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.8, ptr %operation103, align 4
  %left_text104 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion93, i32 0, i32 2
  %59 = ptrtoint ptr %left_text104 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.12, ptr %left_text104, align 4
  %left_value105 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion93, i32 0, i32 3
  %60 = ptrtoint ptr %left_value105 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %left_value105, align 4
  %right_text106 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion93, i32 0, i32 4
  %61 = ptrtoint ptr %right_text106 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.15, ptr %right_text106, align 4
  %right_value107 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion93, i32 0, i32 5
  %62 = ptrtoint ptr %right_value107 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.14, ptr %right_value107, align 4
  %call109 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(5) @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp eq i32 %call109, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion93, i1 noundef zeroext %cmp110, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion93) #4
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %val, align 4
  %call118 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %val) #4
  %call122 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion125) #4
  %64 = getelementptr inbounds i8, ptr %__assertion125, i32 32
  %65 = call ptr @memset(ptr %64, i32 255, i32 24)
  %66 = ptrtoint ptr %__assertion125 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %test, ptr %__assertion125, align 8
  %type128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion125, i32 0, i32 1
  %67 = ptrtoint ptr %type128 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type128, align 4
  %line129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion125, i32 0, i32 2
  %68 = ptrtoint ptr %line129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 34, ptr %line129, align 8
  %file130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion125, i32 0, i32 3
  %69 = ptrtoint ptr %file130 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.6, ptr %file130, align 4
  %message131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion125, i32 0, i32 4
  %70 = ptrtoint ptr %message131 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %message131, align 8
  %va133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion125, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %va133 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %va133, align 4
  %format134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion125, i32 0, i32 5
  %72 = ptrtoint ptr %format134 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @kunit_binary_assert_format, ptr %format134, align 8
  %operation135 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion125, i32 0, i32 1
  %73 = ptrtoint ptr %operation135 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.8, ptr %operation135, align 4
  %left_text136 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion125, i32 0, i32 2
  %74 = ptrtoint ptr %left_text136 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.9, ptr %left_text136, align 8
  %left_value137 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion125, i32 0, i32 3
  %conv138 = zext i32 %call122 to i64
  %75 = ptrtoint ptr %left_value137 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv138, ptr %left_value137, align 8
  %right_text139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion125, i32 0, i32 4
  %76 = ptrtoint ptr %right_text139 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.10, ptr %right_text139, align 8
  %right_value140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion125, i32 0, i32 5
  %conv141 = sext i32 %call118 to i64
  %77 = ptrtoint ptr %right_value140 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv141, ptr %right_value140, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call122, i32 %call118)
  %cmp143 = icmp eq i32 %call122, %call118
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion125, i1 noundef zeroext %cmp143, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion125) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion153) #4
  %78 = ptrtoint ptr %__assertion153 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %test, ptr %__assertion153, align 4
  %type156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 1
  %79 = ptrtoint ptr %type156 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %type156, align 4
  %line157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 2
  %80 = ptrtoint ptr %line157 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 34, ptr %line157, align 4
  %file158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 3
  %81 = ptrtoint ptr %file158 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.6, ptr %file158, align 4
  %message159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 4
  %82 = ptrtoint ptr %message159 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %message159, align 4
  %va161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %va161 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %va161, align 4
  %format162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion153, i32 0, i32 5
  %84 = ptrtoint ptr %format162 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @kunit_binary_str_assert_format, ptr %format162, align 4
  %operation163 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 1
  %85 = ptrtoint ptr %operation163 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.8, ptr %operation163, align 4
  %left_text164 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 2
  %86 = ptrtoint ptr %left_text164 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.12, ptr %left_text164, align 4
  %left_value165 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 3
  %87 = ptrtoint ptr %left_value165 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %left_value165, align 4
  %right_text166 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 4
  %88 = ptrtoint ptr %right_text166 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.17, ptr %right_text166, align 4
  %right_value167 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion153, i32 0, i32 5
  %89 = ptrtoint ptr %right_value167 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.16, ptr %right_value167, align 4
  %call169 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(3) @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp eq i32 %call169, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion153, i1 noundef zeroext %cmp170, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion153) #4
  %90 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2147483647, ptr %val, align 4
  %call178 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %val) #4
  %call182 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion185) #4
  %91 = getelementptr inbounds i8, ptr %__assertion185, i32 32
  %92 = call ptr @memset(ptr %91, i32 255, i32 24)
  %93 = ptrtoint ptr %__assertion185 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %test, ptr %__assertion185, align 8
  %type188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion185, i32 0, i32 1
  %94 = ptrtoint ptr %type188 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %type188, align 4
  %line189 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion185, i32 0, i32 2
  %95 = ptrtoint ptr %line189 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 38, ptr %line189, align 8
  %file190 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion185, i32 0, i32 3
  %96 = ptrtoint ptr %file190 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.6, ptr %file190, align 4
  %message191 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion185, i32 0, i32 4
  %97 = ptrtoint ptr %message191 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %message191, align 8
  %va193 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion185, i32 0, i32 4, i32 1
  %98 = ptrtoint ptr %va193 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %va193, align 4
  %format194 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion185, i32 0, i32 5
  %99 = ptrtoint ptr %format194 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @kunit_binary_assert_format, ptr %format194, align 8
  %operation195 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion185, i32 0, i32 1
  %100 = ptrtoint ptr %operation195 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.8, ptr %operation195, align 4
  %left_text196 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion185, i32 0, i32 2
  %101 = ptrtoint ptr %left_text196 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.9, ptr %left_text196, align 8
  %left_value197 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion185, i32 0, i32 3
  %conv198 = zext i32 %call182 to i64
  %102 = ptrtoint ptr %left_value197 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv198, ptr %left_value197, align 8
  %right_text199 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion185, i32 0, i32 4
  %103 = ptrtoint ptr %right_text199 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.10, ptr %right_text199, align 8
  %right_value200 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion185, i32 0, i32 5
  %conv201 = sext i32 %call178 to i64
  %104 = ptrtoint ptr %right_value200 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv201, ptr %right_value200, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call182, i32 %call178)
  %cmp203 = icmp eq i32 %call182, %call178
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion185, i1 noundef zeroext %cmp203, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion185) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion213) #4
  %105 = ptrtoint ptr %__assertion213 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %test, ptr %__assertion213, align 4
  %type216 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion213, i32 0, i32 1
  %106 = ptrtoint ptr %type216 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %type216, align 4
  %line217 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion213, i32 0, i32 2
  %107 = ptrtoint ptr %line217 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 38, ptr %line217, align 4
  %file218 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion213, i32 0, i32 3
  %108 = ptrtoint ptr %file218 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.6, ptr %file218, align 4
  %message219 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion213, i32 0, i32 4
  %109 = ptrtoint ptr %message219 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %message219, align 4
  %va221 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion213, i32 0, i32 4, i32 1
  %110 = ptrtoint ptr %va221 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %va221, align 4
  %format222 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion213, i32 0, i32 5
  %111 = ptrtoint ptr %format222 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @kunit_binary_str_assert_format, ptr %format222, align 4
  %operation223 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion213, i32 0, i32 1
  %112 = ptrtoint ptr %operation223 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.8, ptr %operation223, align 4
  %left_text224 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion213, i32 0, i32 2
  %113 = ptrtoint ptr %left_text224 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.12, ptr %left_text224, align 4
  %left_value225 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion213, i32 0, i32 3
  %114 = ptrtoint ptr %left_value225 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %left_value225, align 4
  %right_text226 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion213, i32 0, i32 4
  %115 = ptrtoint ptr %right_text226 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.19, ptr %right_text226, align 4
  %right_value227 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion213, i32 0, i32 5
  %116 = ptrtoint ptr %right_value227 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.18, ptr %right_value227, align 4
  %call229 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(12) @.str.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp eq i32 %call229, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion213, i1 noundef zeroext %cmp230, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion213) #4
  %117 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -2147483648, ptr %val, align 4
  %call238 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %val) #4
  %call242 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion245) #4
  %118 = getelementptr inbounds i8, ptr %__assertion245, i32 32
  %119 = call ptr @memset(ptr %118, i32 255, i32 24)
  %120 = ptrtoint ptr %__assertion245 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %test, ptr %__assertion245, align 8
  %type248 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 1
  %121 = ptrtoint ptr %type248 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %type248, align 4
  %line249 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 2
  %122 = ptrtoint ptr %line249 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 42, ptr %line249, align 8
  %file250 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 3
  %123 = ptrtoint ptr %file250 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.6, ptr %file250, align 4
  %message251 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 4
  %124 = ptrtoint ptr %message251 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %message251, align 8
  %va253 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 4, i32 1
  %125 = ptrtoint ptr %va253 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %va253, align 4
  %format254 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 5
  %126 = ptrtoint ptr %format254 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @kunit_binary_assert_format, ptr %format254, align 8
  %operation255 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 1
  %127 = ptrtoint ptr %operation255 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.8, ptr %operation255, align 4
  %left_text256 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 2
  %128 = ptrtoint ptr %left_text256 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.9, ptr %left_text256, align 8
  %left_value257 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 3
  %conv258 = zext i32 %call242 to i64
  %129 = ptrtoint ptr %left_value257 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv258, ptr %left_value257, align 8
  %right_text259 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 4
  %130 = ptrtoint ptr %right_text259 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.10, ptr %right_text259, align 8
  %right_value260 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 5
  %conv261 = sext i32 %call238 to i64
  %131 = ptrtoint ptr %right_value260 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv261, ptr %right_value260, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call242, i32 %call238)
  %cmp263 = icmp eq i32 %call242, %call238
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion245, i1 noundef zeroext %cmp263, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion245) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion273) #4
  %132 = ptrtoint ptr %__assertion273 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %test, ptr %__assertion273, align 4
  %type276 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion273, i32 0, i32 1
  %133 = ptrtoint ptr %type276 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %type276, align 4
  %line277 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion273, i32 0, i32 2
  %134 = ptrtoint ptr %line277 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 42, ptr %line277, align 4
  %file278 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion273, i32 0, i32 3
  %135 = ptrtoint ptr %file278 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.6, ptr %file278, align 4
  %message279 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion273, i32 0, i32 4
  %136 = ptrtoint ptr %message279 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %message279, align 4
  %va281 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion273, i32 0, i32 4, i32 1
  %137 = ptrtoint ptr %va281 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %va281, align 4
  %format282 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion273, i32 0, i32 5
  %138 = ptrtoint ptr %format282 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @kunit_binary_str_assert_format, ptr %format282, align 4
  %operation283 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion273, i32 0, i32 1
  %139 = ptrtoint ptr %operation283 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.8, ptr %operation283, align 4
  %left_text284 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion273, i32 0, i32 2
  %140 = ptrtoint ptr %left_text284 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.12, ptr %left_text284, align 4
  %left_value285 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion273, i32 0, i32 3
  %141 = ptrtoint ptr %left_value285 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i, ptr %left_value285, align 4
  %right_text286 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion273, i32 0, i32 4
  %142 = ptrtoint ptr %right_text286 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @.str.21, ptr %right_text286, align 4
  %right_value287 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion273, i32 0, i32 5
  %143 = ptrtoint ptr %right_value287 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str.20, ptr %right_value287, align 4
  %call289 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %cmp290 = icmp eq i32 %call289, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion273, i1 noundef zeroext %cmp290, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion273) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_test_iio_format_value_fixedpoint(ptr noundef %test) #0 align 64 {
entry:
  %values = alloca [2 x i32], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion34 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion67 = alloca %struct.kunit_binary_assert, align 8
  %__assertion95 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion128 = alloca %struct.kunit_binary_assert, align 8
  %__assertion156 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion191 = alloca %struct.kunit_binary_assert, align 8
  %__assertion219 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion252 = alloca %struct.kunit_binary_assert, align 8
  %__assertion280 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion313 = alloca %struct.kunit_binary_assert, align 8
  %__assertion341 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion376 = alloca %struct.kunit_binary_assert, align 8
  %__assertion404 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion437 = alloca %struct.kunit_binary_assert, align 8
  %__assertion465 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion498 = alloca %struct.kunit_binary_assert, align 8
  %__assertion526 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion561 = alloca %struct.kunit_binary_assert, align 8
  %__assertion589 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion622 = alloca %struct.kunit_binary_assert, align 8
  %__assertion650 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion683 = alloca %struct.kunit_binary_assert, align 8
  %__assertion711 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #4
  %0 = getelementptr inbounds [2 x i32], ptr %values, i32 0, i32 1
  %call.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4096, i32 noundef 3264) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 52, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %file, align 4
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
  store ptr @.str.7, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %10 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %values, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %0, align 4
  %call8 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %values) #4
  %call11 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #4
  %12 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %13 = call ptr @memset(ptr %12, i32 255, i32 24)
  %14 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %15 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %16 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 59, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %17 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %18 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %20 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %21 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %22 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv = zext i32 %call11 to i64
  %23 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %24 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.10, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv23 = sext i32 %call8 to i64
  %25 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv23, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %call8)
  %cmp = icmp eq i32 %call11, %call8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion34) #4
  %26 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %27 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %28 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 59, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %29 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.6, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %30 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %32 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_binary_str_assert_format, ptr %format43, align 4
  %operation44 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 1
  %33 = ptrtoint ptr %operation44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.8, ptr %operation44, align 4
  %left_text45 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 2
  %34 = ptrtoint ptr %left_text45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.12, ptr %left_text45, align 4
  %left_value46 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 3
  %35 = ptrtoint ptr %left_value46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %left_value46, align 4
  %right_text47 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 4
  %36 = ptrtoint ptr %right_text47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.23, ptr %right_text47, align 4
  %right_value48 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 5
  %37 = ptrtoint ptr %right_value48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.22, ptr %right_value48, align 4
  %call50 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(10) @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %cmp51, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion34) #4
  %call60 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %values) #4
  %call64 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion67) #4
  %38 = getelementptr inbounds i8, ptr %__assertion67, i32 32
  %39 = call ptr @memset(ptr %38, i32 255, i32 24)
  %40 = ptrtoint ptr %__assertion67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion67, align 8
  %type70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 1
  %41 = ptrtoint ptr %type70 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type70, align 4
  %line71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 2
  %42 = ptrtoint ptr %line71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 62, ptr %line71, align 8
  %file72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 3
  %43 = ptrtoint ptr %file72 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.6, ptr %file72, align 4
  %message73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 4
  %44 = ptrtoint ptr %message73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message73, align 8
  %va75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %va75 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va75, align 4
  %format76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 5
  %46 = ptrtoint ptr %format76 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_assert_format, ptr %format76, align 8
  %operation77 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 1
  %47 = ptrtoint ptr %operation77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.8, ptr %operation77, align 4
  %left_text78 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 2
  %48 = ptrtoint ptr %left_text78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.9, ptr %left_text78, align 8
  %left_value79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 3
  %conv80 = zext i32 %call64 to i64
  %49 = ptrtoint ptr %left_value79 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv80, ptr %left_value79, align 8
  %right_text81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 4
  %50 = ptrtoint ptr %right_text81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.10, ptr %right_text81, align 8
  %right_value82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 5
  %conv83 = sext i32 %call60 to i64
  %51 = ptrtoint ptr %right_value82 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv83, ptr %right_value82, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call64, i32 %call60)
  %cmp85 = icmp eq i32 %call64, %call60
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion67, i1 noundef zeroext %cmp85, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion67) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion95) #4
  %52 = ptrtoint ptr %__assertion95 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %test, ptr %__assertion95, align 4
  %type98 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 1
  %53 = ptrtoint ptr %type98 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %type98, align 4
  %line99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 2
  %54 = ptrtoint ptr %line99 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 62, ptr %line99, align 4
  %file100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 3
  %55 = ptrtoint ptr %file100 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.6, ptr %file100, align 4
  %message101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 4
  %56 = ptrtoint ptr %message101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %message101, align 4
  %va103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %va103 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %va103, align 4
  %format104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion95, i32 0, i32 5
  %58 = ptrtoint ptr %format104 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @kunit_binary_str_assert_format, ptr %format104, align 4
  %operation105 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 1
  %59 = ptrtoint ptr %operation105 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.8, ptr %operation105, align 4
  %left_text106 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 2
  %60 = ptrtoint ptr %left_text106 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.12, ptr %left_text106, align 4
  %left_value107 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 3
  %61 = ptrtoint ptr %left_value107 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %left_value107, align 4
  %right_text108 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 4
  %62 = ptrtoint ptr %right_text108 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.25, ptr %right_text108, align 4
  %right_value109 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion95, i32 0, i32 5
  %63 = ptrtoint ptr %right_value109 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.24, ptr %right_value109, align 4
  %call111 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp eq i32 %call111, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion95, i1 noundef zeroext %cmp112, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion95) #4
  %call121 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %values) #4
  %call125 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion128) #4
  %64 = getelementptr inbounds i8, ptr %__assertion128, i32 32
  %65 = call ptr @memset(ptr %64, i32 255, i32 24)
  %66 = ptrtoint ptr %__assertion128 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %test, ptr %__assertion128, align 8
  %type131 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion128, i32 0, i32 1
  %67 = ptrtoint ptr %type131 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type131, align 4
  %line132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion128, i32 0, i32 2
  %68 = ptrtoint ptr %line132 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 65, ptr %line132, align 8
  %file133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion128, i32 0, i32 3
  %69 = ptrtoint ptr %file133 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.6, ptr %file133, align 4
  %message134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion128, i32 0, i32 4
  %70 = ptrtoint ptr %message134 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %message134, align 8
  %va136 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion128, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %va136 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %va136, align 4
  %format137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion128, i32 0, i32 5
  %72 = ptrtoint ptr %format137 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @kunit_binary_assert_format, ptr %format137, align 8
  %operation138 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion128, i32 0, i32 1
  %73 = ptrtoint ptr %operation138 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.8, ptr %operation138, align 4
  %left_text139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion128, i32 0, i32 2
  %74 = ptrtoint ptr %left_text139 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.9, ptr %left_text139, align 8
  %left_value140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion128, i32 0, i32 3
  %conv141 = zext i32 %call125 to i64
  %75 = ptrtoint ptr %left_value140 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv141, ptr %left_value140, align 8
  %right_text142 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion128, i32 0, i32 4
  %76 = ptrtoint ptr %right_text142 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.10, ptr %right_text142, align 8
  %right_value143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion128, i32 0, i32 5
  %conv144 = sext i32 %call121 to i64
  %77 = ptrtoint ptr %right_value143 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv144, ptr %right_value143, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call125, i32 %call121)
  %cmp146 = icmp eq i32 %call125, %call121
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion128, i1 noundef zeroext %cmp146, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion128) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion156) #4
  %78 = ptrtoint ptr %__assertion156 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %test, ptr %__assertion156, align 4
  %type159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion156, i32 0, i32 1
  %79 = ptrtoint ptr %type159 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %type159, align 4
  %line160 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion156, i32 0, i32 2
  %80 = ptrtoint ptr %line160 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 65, ptr %line160, align 4
  %file161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion156, i32 0, i32 3
  %81 = ptrtoint ptr %file161 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.6, ptr %file161, align 4
  %message162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion156, i32 0, i32 4
  %82 = ptrtoint ptr %message162 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %message162, align 4
  %va164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion156, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %va164 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %va164, align 4
  %format165 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion156, i32 0, i32 5
  %84 = ptrtoint ptr %format165 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @kunit_binary_str_assert_format, ptr %format165, align 4
  %operation166 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion156, i32 0, i32 1
  %85 = ptrtoint ptr %operation166 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.8, ptr %operation166, align 4
  %left_text167 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion156, i32 0, i32 2
  %86 = ptrtoint ptr %left_text167 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.12, ptr %left_text167, align 4
  %left_value168 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion156, i32 0, i32 3
  %87 = ptrtoint ptr %left_value168 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %left_value168, align 4
  %right_text169 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion156, i32 0, i32 4
  %88 = ptrtoint ptr %right_text169 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.27, ptr %right_text169, align 4
  %right_value170 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion156, i32 0, i32 5
  %89 = ptrtoint ptr %right_value170 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.26, ptr %right_value170, align 4
  %call172 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173 = icmp eq i32 %call172, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion156, i1 noundef zeroext %cmp173, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion156) #4
  %90 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %values, align 4
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 12, ptr %0, align 4
  %call184 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %values) #4
  %call188 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion191) #4
  %92 = getelementptr inbounds i8, ptr %__assertion191, i32 32
  %93 = call ptr @memset(ptr %92, i32 255, i32 24)
  %94 = ptrtoint ptr %__assertion191 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %test, ptr %__assertion191, align 8
  %type194 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion191, i32 0, i32 1
  %95 = ptrtoint ptr %type194 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %type194, align 4
  %line195 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion191, i32 0, i32 2
  %96 = ptrtoint ptr %line195 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 72, ptr %line195, align 8
  %file196 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion191, i32 0, i32 3
  %97 = ptrtoint ptr %file196 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.6, ptr %file196, align 4
  %message197 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion191, i32 0, i32 4
  %98 = ptrtoint ptr %message197 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %message197, align 8
  %va199 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion191, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %va199 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %va199, align 4
  %format200 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion191, i32 0, i32 5
  %100 = ptrtoint ptr %format200 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @kunit_binary_assert_format, ptr %format200, align 8
  %operation201 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion191, i32 0, i32 1
  %101 = ptrtoint ptr %operation201 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.8, ptr %operation201, align 4
  %left_text202 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion191, i32 0, i32 2
  %102 = ptrtoint ptr %left_text202 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.9, ptr %left_text202, align 8
  %left_value203 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion191, i32 0, i32 3
  %conv204 = zext i32 %call188 to i64
  %103 = ptrtoint ptr %left_value203 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv204, ptr %left_value203, align 8
  %right_text205 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion191, i32 0, i32 4
  %104 = ptrtoint ptr %right_text205 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.10, ptr %right_text205, align 8
  %right_value206 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion191, i32 0, i32 5
  %conv207 = sext i32 %call184 to i64
  %105 = ptrtoint ptr %right_value206 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv207, ptr %right_value206, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call188, i32 %call184)
  %cmp209 = icmp eq i32 %call188, %call184
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion191, i1 noundef zeroext %cmp209, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion191) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion219) #4
  %106 = ptrtoint ptr %__assertion219 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %test, ptr %__assertion219, align 4
  %type222 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion219, i32 0, i32 1
  %107 = ptrtoint ptr %type222 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %type222, align 4
  %line223 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion219, i32 0, i32 2
  %108 = ptrtoint ptr %line223 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 72, ptr %line223, align 4
  %file224 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion219, i32 0, i32 3
  %109 = ptrtoint ptr %file224 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.6, ptr %file224, align 4
  %message225 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion219, i32 0, i32 4
  %110 = ptrtoint ptr %message225 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %message225, align 4
  %va227 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion219, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %va227 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %va227, align 4
  %format228 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion219, i32 0, i32 5
  %112 = ptrtoint ptr %format228 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @kunit_binary_str_assert_format, ptr %format228, align 4
  %operation229 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion219, i32 0, i32 1
  %113 = ptrtoint ptr %operation229 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.8, ptr %operation229, align 4
  %left_text230 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion219, i32 0, i32 2
  %114 = ptrtoint ptr %left_text230 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.12, ptr %left_text230, align 4
  %left_value231 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion219, i32 0, i32 3
  %115 = ptrtoint ptr %left_value231 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i, ptr %left_value231, align 4
  %right_text232 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion219, i32 0, i32 4
  %116 = ptrtoint ptr %right_text232 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.29, ptr %right_text232, align 4
  %right_value233 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion219, i32 0, i32 5
  %117 = ptrtoint ptr %right_value233 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.28, ptr %right_value233, align 4
  %call235 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(10) @.str.28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236 = icmp eq i32 %call235, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion219, i1 noundef zeroext %cmp236, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion219) #4
  %call245 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %values) #4
  %call249 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion252) #4
  %118 = getelementptr inbounds i8, ptr %__assertion252, i32 32
  %119 = call ptr @memset(ptr %118, i32 255, i32 24)
  %120 = ptrtoint ptr %__assertion252 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %test, ptr %__assertion252, align 8
  %type255 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion252, i32 0, i32 1
  %121 = ptrtoint ptr %type255 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %type255, align 4
  %line256 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion252, i32 0, i32 2
  %122 = ptrtoint ptr %line256 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 75, ptr %line256, align 8
  %file257 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion252, i32 0, i32 3
  %123 = ptrtoint ptr %file257 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.6, ptr %file257, align 4
  %message258 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion252, i32 0, i32 4
  %124 = ptrtoint ptr %message258 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %message258, align 8
  %va260 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion252, i32 0, i32 4, i32 1
  %125 = ptrtoint ptr %va260 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %va260, align 4
  %format261 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion252, i32 0, i32 5
  %126 = ptrtoint ptr %format261 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @kunit_binary_assert_format, ptr %format261, align 8
  %operation262 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion252, i32 0, i32 1
  %127 = ptrtoint ptr %operation262 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.8, ptr %operation262, align 4
  %left_text263 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion252, i32 0, i32 2
  %128 = ptrtoint ptr %left_text263 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.9, ptr %left_text263, align 8
  %left_value264 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion252, i32 0, i32 3
  %conv265 = zext i32 %call249 to i64
  %129 = ptrtoint ptr %left_value264 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv265, ptr %left_value264, align 8
  %right_text266 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion252, i32 0, i32 4
  %130 = ptrtoint ptr %right_text266 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.10, ptr %right_text266, align 8
  %right_value267 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion252, i32 0, i32 5
  %conv268 = sext i32 %call245 to i64
  %131 = ptrtoint ptr %right_value267 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv268, ptr %right_value267, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call249, i32 %call245)
  %cmp270 = icmp eq i32 %call249, %call245
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion252, i1 noundef zeroext %cmp270, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion252) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion280) #4
  %132 = ptrtoint ptr %__assertion280 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %test, ptr %__assertion280, align 4
  %type283 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion280, i32 0, i32 1
  %133 = ptrtoint ptr %type283 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %type283, align 4
  %line284 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion280, i32 0, i32 2
  %134 = ptrtoint ptr %line284 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 75, ptr %line284, align 4
  %file285 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion280, i32 0, i32 3
  %135 = ptrtoint ptr %file285 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.6, ptr %file285, align 4
  %message286 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion280, i32 0, i32 4
  %136 = ptrtoint ptr %message286 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %message286, align 4
  %va288 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion280, i32 0, i32 4, i32 1
  %137 = ptrtoint ptr %va288 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %va288, align 4
  %format289 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion280, i32 0, i32 5
  %138 = ptrtoint ptr %format289 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @kunit_binary_str_assert_format, ptr %format289, align 4
  %operation290 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion280, i32 0, i32 1
  %139 = ptrtoint ptr %operation290 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.8, ptr %operation290, align 4
  %left_text291 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion280, i32 0, i32 2
  %140 = ptrtoint ptr %left_text291 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.12, ptr %left_text291, align 4
  %left_value292 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion280, i32 0, i32 3
  %141 = ptrtoint ptr %left_value292 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i, ptr %left_value292, align 4
  %right_text293 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion280, i32 0, i32 4
  %142 = ptrtoint ptr %right_text293 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @.str.31, ptr %right_text293, align 4
  %right_value294 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion280, i32 0, i32 5
  %143 = ptrtoint ptr %right_value294 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str.30, ptr %right_value294, align 4
  %call296 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %cmp297 = icmp eq i32 %call296, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion280, i1 noundef zeroext %cmp297, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion280) #4
  %call306 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %values) #4
  %call310 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion313) #4
  %144 = getelementptr inbounds i8, ptr %__assertion313, i32 32
  %145 = call ptr @memset(ptr %144, i32 255, i32 24)
  %146 = ptrtoint ptr %__assertion313 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %test, ptr %__assertion313, align 8
  %type316 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion313, i32 0, i32 1
  %147 = ptrtoint ptr %type316 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %type316, align 4
  %line317 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion313, i32 0, i32 2
  %148 = ptrtoint ptr %line317 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 78, ptr %line317, align 8
  %file318 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion313, i32 0, i32 3
  %149 = ptrtoint ptr %file318 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.6, ptr %file318, align 4
  %message319 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion313, i32 0, i32 4
  %150 = ptrtoint ptr %message319 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %message319, align 8
  %va321 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion313, i32 0, i32 4, i32 1
  %151 = ptrtoint ptr %va321 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %va321, align 4
  %format322 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion313, i32 0, i32 5
  %152 = ptrtoint ptr %format322 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @kunit_binary_assert_format, ptr %format322, align 8
  %operation323 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion313, i32 0, i32 1
  %153 = ptrtoint ptr %operation323 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.8, ptr %operation323, align 4
  %left_text324 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion313, i32 0, i32 2
  %154 = ptrtoint ptr %left_text324 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.9, ptr %left_text324, align 8
  %left_value325 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion313, i32 0, i32 3
  %conv326 = zext i32 %call310 to i64
  %155 = ptrtoint ptr %left_value325 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv326, ptr %left_value325, align 8
  %right_text327 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion313, i32 0, i32 4
  %156 = ptrtoint ptr %right_text327 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @.str.10, ptr %right_text327, align 8
  %right_value328 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion313, i32 0, i32 5
  %conv329 = sext i32 %call306 to i64
  %157 = ptrtoint ptr %right_value328 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %conv329, ptr %right_value328, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call310, i32 %call306)
  %cmp331 = icmp eq i32 %call310, %call306
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion313, i1 noundef zeroext %cmp331, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion313) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion341) #4
  %158 = ptrtoint ptr %__assertion341 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %test, ptr %__assertion341, align 4
  %type344 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion341, i32 0, i32 1
  %159 = ptrtoint ptr %type344 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %type344, align 4
  %line345 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion341, i32 0, i32 2
  %160 = ptrtoint ptr %line345 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 78, ptr %line345, align 4
  %file346 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion341, i32 0, i32 3
  %161 = ptrtoint ptr %file346 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.6, ptr %file346, align 4
  %message347 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion341, i32 0, i32 4
  %162 = ptrtoint ptr %message347 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %message347, align 4
  %va349 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion341, i32 0, i32 4, i32 1
  %163 = ptrtoint ptr %va349 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %va349, align 4
  %format350 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion341, i32 0, i32 5
  %164 = ptrtoint ptr %format350 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @kunit_binary_str_assert_format, ptr %format350, align 4
  %operation351 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion341, i32 0, i32 1
  %165 = ptrtoint ptr %operation351 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @.str.8, ptr %operation351, align 4
  %left_text352 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion341, i32 0, i32 2
  %166 = ptrtoint ptr %left_text352 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.12, ptr %left_text352, align 4
  %left_value353 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion341, i32 0, i32 3
  %167 = ptrtoint ptr %left_value353 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call.i, ptr %left_value353, align 4
  %right_text354 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion341, i32 0, i32 4
  %168 = ptrtoint ptr %right_text354 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @.str.33, ptr %right_text354, align 4
  %right_value355 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion341, i32 0, i32 5
  %169 = ptrtoint ptr %right_value355 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.32, ptr %right_value355, align 4
  %call357 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %cmp358 = icmp eq i32 %call357, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion341, i1 noundef zeroext %cmp358, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion341) #4
  %170 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -1, ptr %values, align 4
  %171 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 10, ptr %0, align 4
  %call369 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %values) #4
  %call373 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion376) #4
  %172 = getelementptr inbounds i8, ptr %__assertion376, i32 32
  %173 = call ptr @memset(ptr %172, i32 255, i32 24)
  %174 = ptrtoint ptr %__assertion376 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %test, ptr %__assertion376, align 8
  %type379 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 1
  %175 = ptrtoint ptr %type379 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 1, ptr %type379, align 4
  %line380 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 2
  %176 = ptrtoint ptr %line380 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 85, ptr %line380, align 8
  %file381 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 3
  %177 = ptrtoint ptr %file381 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.6, ptr %file381, align 4
  %message382 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 4
  %178 = ptrtoint ptr %message382 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %message382, align 8
  %va384 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 4, i32 1
  %179 = ptrtoint ptr %va384 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %va384, align 4
  %format385 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion376, i32 0, i32 5
  %180 = ptrtoint ptr %format385 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @kunit_binary_assert_format, ptr %format385, align 8
  %operation386 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion376, i32 0, i32 1
  %181 = ptrtoint ptr %operation386 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.8, ptr %operation386, align 4
  %left_text387 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion376, i32 0, i32 2
  %182 = ptrtoint ptr %left_text387 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @.str.9, ptr %left_text387, align 8
  %left_value388 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion376, i32 0, i32 3
  %conv389 = zext i32 %call373 to i64
  %183 = ptrtoint ptr %left_value388 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %conv389, ptr %left_value388, align 8
  %right_text390 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion376, i32 0, i32 4
  %184 = ptrtoint ptr %right_text390 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr @.str.10, ptr %right_text390, align 8
  %right_value391 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion376, i32 0, i32 5
  %conv392 = sext i32 %call369 to i64
  %185 = ptrtoint ptr %right_value391 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %conv392, ptr %right_value391, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call373, i32 %call369)
  %cmp394 = icmp eq i32 %call373, %call369
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion376, i1 noundef zeroext %cmp394, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion376) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion404) #4
  %186 = ptrtoint ptr %__assertion404 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %test, ptr %__assertion404, align 4
  %type407 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 1
  %187 = ptrtoint ptr %type407 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %type407, align 4
  %line408 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 2
  %188 = ptrtoint ptr %line408 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 85, ptr %line408, align 4
  %file409 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 3
  %189 = ptrtoint ptr %file409 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @.str.6, ptr %file409, align 4
  %message410 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 4
  %190 = ptrtoint ptr %message410 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %message410, align 4
  %va412 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 4, i32 1
  %191 = ptrtoint ptr %va412 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %va412, align 4
  %format413 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion404, i32 0, i32 5
  %192 = ptrtoint ptr %format413 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @kunit_binary_str_assert_format, ptr %format413, align 4
  %operation414 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 1
  %193 = ptrtoint ptr %operation414 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @.str.8, ptr %operation414, align 4
  %left_text415 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 2
  %194 = ptrtoint ptr %left_text415 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @.str.12, ptr %left_text415, align 4
  %left_value416 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 3
  %195 = ptrtoint ptr %left_value416 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call.i, ptr %left_value416, align 4
  %right_text417 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 4
  %196 = ptrtoint ptr %right_text417 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.35, ptr %right_text417, align 4
  %right_value418 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion404, i32 0, i32 5
  %197 = ptrtoint ptr %right_value418 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @.str.34, ptr %right_value418, align 4
  %call420 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(11) @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %cmp421 = icmp eq i32 %call420, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion404, i1 noundef zeroext %cmp421, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion404) #4
  %call430 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %values) #4
  %call434 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion437) #4
  %198 = getelementptr inbounds i8, ptr %__assertion437, i32 32
  %199 = call ptr @memset(ptr %198, i32 255, i32 24)
  %200 = ptrtoint ptr %__assertion437 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %test, ptr %__assertion437, align 8
  %type440 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion437, i32 0, i32 1
  %201 = ptrtoint ptr %type440 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1, ptr %type440, align 4
  %line441 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion437, i32 0, i32 2
  %202 = ptrtoint ptr %line441 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 88, ptr %line441, align 8
  %file442 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion437, i32 0, i32 3
  %203 = ptrtoint ptr %file442 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @.str.6, ptr %file442, align 4
  %message443 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion437, i32 0, i32 4
  %204 = ptrtoint ptr %message443 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %message443, align 8
  %va445 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion437, i32 0, i32 4, i32 1
  %205 = ptrtoint ptr %va445 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %va445, align 4
  %format446 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion437, i32 0, i32 5
  %206 = ptrtoint ptr %format446 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @kunit_binary_assert_format, ptr %format446, align 8
  %operation447 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion437, i32 0, i32 1
  %207 = ptrtoint ptr %operation447 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.8, ptr %operation447, align 4
  %left_text448 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion437, i32 0, i32 2
  %208 = ptrtoint ptr %left_text448 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @.str.9, ptr %left_text448, align 8
  %left_value449 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion437, i32 0, i32 3
  %conv450 = zext i32 %call434 to i64
  %209 = ptrtoint ptr %left_value449 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %conv450, ptr %left_value449, align 8
  %right_text451 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion437, i32 0, i32 4
  %210 = ptrtoint ptr %right_text451 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @.str.10, ptr %right_text451, align 8
  %right_value452 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion437, i32 0, i32 5
  %conv453 = sext i32 %call430 to i64
  %211 = ptrtoint ptr %right_value452 to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %conv453, ptr %right_value452, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call434, i32 %call430)
  %cmp455 = icmp eq i32 %call434, %call430
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion437, i1 noundef zeroext %cmp455, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion437) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion465) #4
  %212 = ptrtoint ptr %__assertion465 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %test, ptr %__assertion465, align 4
  %type468 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion465, i32 0, i32 1
  %213 = ptrtoint ptr %type468 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %type468, align 4
  %line469 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion465, i32 0, i32 2
  %214 = ptrtoint ptr %line469 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 88, ptr %line469, align 4
  %file470 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion465, i32 0, i32 3
  %215 = ptrtoint ptr %file470 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @.str.6, ptr %file470, align 4
  %message471 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion465, i32 0, i32 4
  %216 = ptrtoint ptr %message471 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %message471, align 4
  %va473 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion465, i32 0, i32 4, i32 1
  %217 = ptrtoint ptr %va473 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %va473, align 4
  %format474 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion465, i32 0, i32 5
  %218 = ptrtoint ptr %format474 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @kunit_binary_str_assert_format, ptr %format474, align 4
  %operation475 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion465, i32 0, i32 1
  %219 = ptrtoint ptr %operation475 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @.str.8, ptr %operation475, align 4
  %left_text476 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion465, i32 0, i32 2
  %220 = ptrtoint ptr %left_text476 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.12, ptr %left_text476, align 4
  %left_value477 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion465, i32 0, i32 3
  %221 = ptrtoint ptr %left_value477 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i, ptr %left_value477, align 4
  %right_text478 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion465, i32 0, i32 4
  %222 = ptrtoint ptr %right_text478 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @.str.37, ptr %right_text478, align 4
  %right_value479 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion465, i32 0, i32 5
  %223 = ptrtoint ptr %right_value479 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @.str.36, ptr %right_value479, align 4
  %call481 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481)
  %cmp482 = icmp eq i32 %call481, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion465, i1 noundef zeroext %cmp482, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion465) #4
  %call491 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %values) #4
  %call495 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion498) #4
  %224 = getelementptr inbounds i8, ptr %__assertion498, i32 32
  %225 = call ptr @memset(ptr %224, i32 255, i32 24)
  %226 = ptrtoint ptr %__assertion498 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %test, ptr %__assertion498, align 8
  %type501 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion498, i32 0, i32 1
  %227 = ptrtoint ptr %type501 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %type501, align 4
  %line502 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion498, i32 0, i32 2
  %228 = ptrtoint ptr %line502 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 91, ptr %line502, align 8
  %file503 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion498, i32 0, i32 3
  %229 = ptrtoint ptr %file503 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.6, ptr %file503, align 4
  %message504 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion498, i32 0, i32 4
  %230 = ptrtoint ptr %message504 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %message504, align 8
  %va506 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion498, i32 0, i32 4, i32 1
  %231 = ptrtoint ptr %va506 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %va506, align 4
  %format507 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion498, i32 0, i32 5
  %232 = ptrtoint ptr %format507 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @kunit_binary_assert_format, ptr %format507, align 8
  %operation508 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion498, i32 0, i32 1
  %233 = ptrtoint ptr %operation508 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @.str.8, ptr %operation508, align 4
  %left_text509 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion498, i32 0, i32 2
  %234 = ptrtoint ptr %left_text509 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @.str.9, ptr %left_text509, align 8
  %left_value510 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion498, i32 0, i32 3
  %conv511 = zext i32 %call495 to i64
  %235 = ptrtoint ptr %left_value510 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %conv511, ptr %left_value510, align 8
  %right_text512 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion498, i32 0, i32 4
  %236 = ptrtoint ptr %right_text512 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @.str.10, ptr %right_text512, align 8
  %right_value513 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion498, i32 0, i32 5
  %conv514 = sext i32 %call491 to i64
  %237 = ptrtoint ptr %right_value513 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %conv514, ptr %right_value513, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call495, i32 %call491)
  %cmp516 = icmp eq i32 %call495, %call491
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion498, i1 noundef zeroext %cmp516, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion498) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion526) #4
  %238 = ptrtoint ptr %__assertion526 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %test, ptr %__assertion526, align 4
  %type529 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion526, i32 0, i32 1
  %239 = ptrtoint ptr %type529 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1, ptr %type529, align 4
  %line530 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion526, i32 0, i32 2
  %240 = ptrtoint ptr %line530 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 91, ptr %line530, align 4
  %file531 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion526, i32 0, i32 3
  %241 = ptrtoint ptr %file531 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @.str.6, ptr %file531, align 4
  %message532 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion526, i32 0, i32 4
  %242 = ptrtoint ptr %message532 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %message532, align 4
  %va534 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion526, i32 0, i32 4, i32 1
  %243 = ptrtoint ptr %va534 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %va534, align 4
  %format535 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion526, i32 0, i32 5
  %244 = ptrtoint ptr %format535 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @kunit_binary_str_assert_format, ptr %format535, align 4
  %operation536 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion526, i32 0, i32 1
  %245 = ptrtoint ptr %operation536 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @.str.8, ptr %operation536, align 4
  %left_text537 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion526, i32 0, i32 2
  %246 = ptrtoint ptr %left_text537 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @.str.12, ptr %left_text537, align 4
  %left_value538 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion526, i32 0, i32 3
  %247 = ptrtoint ptr %left_value538 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call.i, ptr %left_value538, align 4
  %right_text539 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion526, i32 0, i32 4
  %248 = ptrtoint ptr %right_text539 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @.str.39, ptr %right_text539, align 4
  %right_value540 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion526, i32 0, i32 5
  %249 = ptrtoint ptr %right_value540 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @.str.38, ptr %right_value540, align 4
  %call542 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call542)
  %cmp543 = icmp eq i32 %call542, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion526, i1 noundef zeroext %cmp543, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion526) #4
  %250 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %values, align 4
  %251 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 -123, ptr %0, align 4
  %call554 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %values) #4
  %call558 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion561) #4
  %252 = getelementptr inbounds i8, ptr %__assertion561, i32 32
  %253 = call ptr @memset(ptr %252, i32 255, i32 24)
  %254 = ptrtoint ptr %__assertion561 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %test, ptr %__assertion561, align 8
  %type564 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion561, i32 0, i32 1
  %255 = ptrtoint ptr %type564 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 1, ptr %type564, align 4
  %line565 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion561, i32 0, i32 2
  %256 = ptrtoint ptr %line565 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 97, ptr %line565, align 8
  %file566 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion561, i32 0, i32 3
  %257 = ptrtoint ptr %file566 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr @.str.6, ptr %file566, align 4
  %message567 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion561, i32 0, i32 4
  %258 = ptrtoint ptr %message567 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %message567, align 8
  %va569 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion561, i32 0, i32 4, i32 1
  %259 = ptrtoint ptr %va569 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr null, ptr %va569, align 4
  %format570 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion561, i32 0, i32 5
  %260 = ptrtoint ptr %format570 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @kunit_binary_assert_format, ptr %format570, align 8
  %operation571 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion561, i32 0, i32 1
  %261 = ptrtoint ptr %operation571 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @.str.8, ptr %operation571, align 4
  %left_text572 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion561, i32 0, i32 2
  %262 = ptrtoint ptr %left_text572 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @.str.9, ptr %left_text572, align 8
  %left_value573 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion561, i32 0, i32 3
  %conv574 = zext i32 %call558 to i64
  %263 = ptrtoint ptr %left_value573 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %conv574, ptr %left_value573, align 8
  %right_text575 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion561, i32 0, i32 4
  %264 = ptrtoint ptr %right_text575 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @.str.10, ptr %right_text575, align 8
  %right_value576 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion561, i32 0, i32 5
  %conv577 = sext i32 %call554 to i64
  %265 = ptrtoint ptr %right_value576 to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %conv577, ptr %right_value576, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call558, i32 %call554)
  %cmp579 = icmp eq i32 %call558, %call554
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion561, i1 noundef zeroext %cmp579, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion561) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion589) #4
  %266 = ptrtoint ptr %__assertion589 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %test, ptr %__assertion589, align 4
  %type592 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 1
  %267 = ptrtoint ptr %type592 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 1, ptr %type592, align 4
  %line593 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 2
  %268 = ptrtoint ptr %line593 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 97, ptr %line593, align 4
  %file594 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 3
  %269 = ptrtoint ptr %file594 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @.str.6, ptr %file594, align 4
  %message595 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 4
  %270 = ptrtoint ptr %message595 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr null, ptr %message595, align 4
  %va597 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 4, i32 1
  %271 = ptrtoint ptr %va597 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %va597, align 4
  %format598 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 5
  %272 = ptrtoint ptr %format598 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr @kunit_binary_str_assert_format, ptr %format598, align 4
  %operation599 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion589, i32 0, i32 1
  %273 = ptrtoint ptr %operation599 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr @.str.8, ptr %operation599, align 4
  %left_text600 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion589, i32 0, i32 2
  %274 = ptrtoint ptr %left_text600 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @.str.12, ptr %left_text600, align 4
  %left_value601 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion589, i32 0, i32 3
  %275 = ptrtoint ptr %left_value601 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call.i, ptr %left_value601, align 4
  %right_text602 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion589, i32 0, i32 4
  %276 = ptrtoint ptr %right_text602 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr @.str.41, ptr %right_text602, align 4
  %right_value603 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion589, i32 0, i32 5
  %277 = ptrtoint ptr %right_value603 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr @.str.40, ptr %right_value603, align 4
  %call605 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(11) @.str.40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605)
  %cmp606 = icmp eq i32 %call605, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion589, i1 noundef zeroext %cmp606, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion589) #4
  %call615 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %values) #4
  %call619 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion622) #4
  %278 = getelementptr inbounds i8, ptr %__assertion622, i32 32
  %279 = call ptr @memset(ptr %278, i32 255, i32 24)
  %280 = ptrtoint ptr %__assertion622 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %test, ptr %__assertion622, align 8
  %type625 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion622, i32 0, i32 1
  %281 = ptrtoint ptr %type625 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 1, ptr %type625, align 4
  %line626 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion622, i32 0, i32 2
  %282 = ptrtoint ptr %line626 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 100, ptr %line626, align 8
  %file627 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion622, i32 0, i32 3
  %283 = ptrtoint ptr %file627 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @.str.6, ptr %file627, align 4
  %message628 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion622, i32 0, i32 4
  %284 = ptrtoint ptr %message628 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %message628, align 8
  %va630 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion622, i32 0, i32 4, i32 1
  %285 = ptrtoint ptr %va630 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %va630, align 4
  %format631 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion622, i32 0, i32 5
  %286 = ptrtoint ptr %format631 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr @kunit_binary_assert_format, ptr %format631, align 8
  %operation632 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion622, i32 0, i32 1
  %287 = ptrtoint ptr %operation632 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr @.str.8, ptr %operation632, align 4
  %left_text633 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion622, i32 0, i32 2
  %288 = ptrtoint ptr %left_text633 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr @.str.9, ptr %left_text633, align 8
  %left_value634 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion622, i32 0, i32 3
  %conv635 = zext i32 %call619 to i64
  %289 = ptrtoint ptr %left_value634 to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %conv635, ptr %left_value634, align 8
  %right_text636 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion622, i32 0, i32 4
  %290 = ptrtoint ptr %right_text636 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr @.str.10, ptr %right_text636, align 8
  %right_value637 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion622, i32 0, i32 5
  %conv638 = sext i32 %call615 to i64
  %291 = ptrtoint ptr %right_value637 to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %conv638, ptr %right_value637, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call619, i32 %call615)
  %cmp640 = icmp eq i32 %call619, %call615
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion622, i1 noundef zeroext %cmp640, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion622) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion650) #4
  %292 = ptrtoint ptr %__assertion650 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %test, ptr %__assertion650, align 4
  %type653 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion650, i32 0, i32 1
  %293 = ptrtoint ptr %type653 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 1, ptr %type653, align 4
  %line654 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion650, i32 0, i32 2
  %294 = ptrtoint ptr %line654 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 100, ptr %line654, align 4
  %file655 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion650, i32 0, i32 3
  %295 = ptrtoint ptr %file655 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr @.str.6, ptr %file655, align 4
  %message656 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion650, i32 0, i32 4
  %296 = ptrtoint ptr %message656 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr null, ptr %message656, align 4
  %va658 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion650, i32 0, i32 4, i32 1
  %297 = ptrtoint ptr %va658 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr null, ptr %va658, align 4
  %format659 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion650, i32 0, i32 5
  %298 = ptrtoint ptr %format659 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr @kunit_binary_str_assert_format, ptr %format659, align 4
  %operation660 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion650, i32 0, i32 1
  %299 = ptrtoint ptr %operation660 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr @.str.8, ptr %operation660, align 4
  %left_text661 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion650, i32 0, i32 2
  %300 = ptrtoint ptr %left_text661 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr @.str.12, ptr %left_text661, align 4
  %left_value662 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion650, i32 0, i32 3
  %301 = ptrtoint ptr %left_value662 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i, ptr %left_value662, align 4
  %right_text663 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion650, i32 0, i32 4
  %302 = ptrtoint ptr %right_text663 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @.str.43, ptr %right_text663, align 4
  %right_value664 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion650, i32 0, i32 5
  %303 = ptrtoint ptr %right_value664 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr @.str.42, ptr %right_value664, align 4
  %call666 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call666)
  %cmp667 = icmp eq i32 %call666, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion650, i1 noundef zeroext %cmp667, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion650) #4
  %call676 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %values) #4
  %call680 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion683) #4
  %304 = getelementptr inbounds i8, ptr %__assertion683, i32 32
  %305 = call ptr @memset(ptr %304, i32 255, i32 24)
  %306 = ptrtoint ptr %__assertion683 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %test, ptr %__assertion683, align 8
  %type686 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion683, i32 0, i32 1
  %307 = ptrtoint ptr %type686 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 1, ptr %type686, align 4
  %line687 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion683, i32 0, i32 2
  %308 = ptrtoint ptr %line687 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 103, ptr %line687, align 8
  %file688 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion683, i32 0, i32 3
  %309 = ptrtoint ptr %file688 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @.str.6, ptr %file688, align 4
  %message689 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion683, i32 0, i32 4
  %310 = ptrtoint ptr %message689 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr null, ptr %message689, align 8
  %va691 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion683, i32 0, i32 4, i32 1
  %311 = ptrtoint ptr %va691 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %va691, align 4
  %format692 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion683, i32 0, i32 5
  %312 = ptrtoint ptr %format692 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr @kunit_binary_assert_format, ptr %format692, align 8
  %operation693 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion683, i32 0, i32 1
  %313 = ptrtoint ptr %operation693 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr @.str.8, ptr %operation693, align 4
  %left_text694 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion683, i32 0, i32 2
  %314 = ptrtoint ptr %left_text694 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr @.str.9, ptr %left_text694, align 8
  %left_value695 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion683, i32 0, i32 3
  %conv696 = zext i32 %call680 to i64
  %315 = ptrtoint ptr %left_value695 to i32
  call void @__asan_store8_noabort(i32 %315)
  store i64 %conv696, ptr %left_value695, align 8
  %right_text697 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion683, i32 0, i32 4
  %316 = ptrtoint ptr %right_text697 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr @.str.10, ptr %right_text697, align 8
  %right_value698 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion683, i32 0, i32 5
  %conv699 = sext i32 %call676 to i64
  %317 = ptrtoint ptr %right_value698 to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 %conv699, ptr %right_value698, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call680, i32 %call676)
  %cmp701 = icmp eq i32 %call680, %call676
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion683, i1 noundef zeroext %cmp701, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion683) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion711) #4
  %318 = ptrtoint ptr %__assertion711 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %test, ptr %__assertion711, align 4
  %type714 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion711, i32 0, i32 1
  %319 = ptrtoint ptr %type714 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 1, ptr %type714, align 4
  %line715 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion711, i32 0, i32 2
  %320 = ptrtoint ptr %line715 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 103, ptr %line715, align 4
  %file716 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion711, i32 0, i32 3
  %321 = ptrtoint ptr %file716 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr @.str.6, ptr %file716, align 4
  %message717 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion711, i32 0, i32 4
  %322 = ptrtoint ptr %message717 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr null, ptr %message717, align 4
  %va719 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion711, i32 0, i32 4, i32 1
  %323 = ptrtoint ptr %va719 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr null, ptr %va719, align 4
  %format720 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion711, i32 0, i32 5
  %324 = ptrtoint ptr %format720 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr @kunit_binary_str_assert_format, ptr %format720, align 4
  %operation721 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion711, i32 0, i32 1
  %325 = ptrtoint ptr %operation721 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr @.str.8, ptr %operation721, align 4
  %left_text722 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion711, i32 0, i32 2
  %326 = ptrtoint ptr %left_text722 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr @.str.12, ptr %left_text722, align 4
  %left_value723 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion711, i32 0, i32 3
  %327 = ptrtoint ptr %left_value723 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call.i, ptr %left_value723, align 4
  %right_text724 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion711, i32 0, i32 4
  %328 = ptrtoint ptr %right_text724 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr @.str.45, ptr %right_text724, align 4
  %right_value725 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion711, i32 0, i32 5
  %329 = ptrtoint ptr %right_value725 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr @.str.44, ptr %right_value725, align 4
  %call727 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call727)
  %cmp728 = icmp eq i32 %call727, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion711, i1 noundef zeroext %cmp728, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion711) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_test_iio_format_value_fractional(ptr noundef %test) #0 align 64 {
entry:
  %values = alloca [2 x i32], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion34 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion69 = alloca %struct.kunit_binary_assert, align 8
  %__assertion97 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion132 = alloca %struct.kunit_binary_assert, align 8
  %__assertion160 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion195 = alloca %struct.kunit_binary_assert, align 8
  %__assertion223 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion258 = alloca %struct.kunit_binary_assert, align 8
  %__assertion286 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #4
  %0 = getelementptr inbounds [2 x i32], ptr %values, i32 0, i32 1
  %call.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4096, i32 noundef 3264) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 113, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %file, align 4
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
  store ptr @.str.7, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %10 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %values, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %0, align 4
  %call8 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %values) #4
  %call11 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #4
  %12 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %13 = call ptr @memset(ptr %12, i32 255, i32 24)
  %14 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %15 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %16 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 119, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %17 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %18 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %20 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %21 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %22 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv = zext i32 %call11 to i64
  %23 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %24 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.10, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv23 = sext i32 %call8 to i64
  %25 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv23, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %call8)
  %cmp = icmp eq i32 %call11, %call8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion34) #4
  %26 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %27 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %28 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 119, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %29 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.6, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %30 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %32 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_binary_str_assert_format, ptr %format43, align 4
  %operation44 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 1
  %33 = ptrtoint ptr %operation44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.8, ptr %operation44, align 4
  %left_text45 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 2
  %34 = ptrtoint ptr %left_text45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.12, ptr %left_text45, align 4
  %left_value46 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 3
  %35 = ptrtoint ptr %left_value46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %left_value46, align 4
  %right_text47 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 4
  %36 = ptrtoint ptr %right_text47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.47, ptr %right_text47, align 4
  %right_value48 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 5
  %37 = ptrtoint ptr %right_value48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.46, ptr %right_value48, align 4
  %call50 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %cmp51, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion34) #4
  %38 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 100, ptr %values, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %0, align 4
  %call62 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %values) #4
  %call66 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion69) #4
  %40 = getelementptr inbounds i8, ptr %__assertion69, i32 32
  %41 = call ptr @memset(ptr %40, i32 255, i32 24)
  %42 = ptrtoint ptr %__assertion69 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %test, ptr %__assertion69, align 8
  %type72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 1
  %43 = ptrtoint ptr %type72 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %type72, align 4
  %line73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 2
  %44 = ptrtoint ptr %line73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 125, ptr %line73, align 8
  %file74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 3
  %45 = ptrtoint ptr %file74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.6, ptr %file74, align 4
  %message75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 4
  %46 = ptrtoint ptr %message75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %message75, align 8
  %va77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %va77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %va77, align 4
  %format78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 5
  %48 = ptrtoint ptr %format78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kunit_binary_assert_format, ptr %format78, align 8
  %operation79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 1
  %49 = ptrtoint ptr %operation79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.8, ptr %operation79, align 4
  %left_text80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 2
  %50 = ptrtoint ptr %left_text80 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.9, ptr %left_text80, align 8
  %left_value81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 3
  %conv82 = zext i32 %call66 to i64
  %51 = ptrtoint ptr %left_value81 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv82, ptr %left_value81, align 8
  %right_text83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 4
  %52 = ptrtoint ptr %right_text83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.10, ptr %right_text83, align 8
  %right_value84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 5
  %conv85 = sext i32 %call62 to i64
  %53 = ptrtoint ptr %right_value84 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv85, ptr %right_value84, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call66, i32 %call62)
  %cmp87 = icmp eq i32 %call66, %call62
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion69, i1 noundef zeroext %cmp87, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion69) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion97) #4
  %54 = ptrtoint ptr %__assertion97 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %test, ptr %__assertion97, align 4
  %type100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 1
  %55 = ptrtoint ptr %type100 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %type100, align 4
  %line101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 2
  %56 = ptrtoint ptr %line101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 125, ptr %line101, align 4
  %file102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 3
  %57 = ptrtoint ptr %file102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.6, ptr %file102, align 4
  %message103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 4
  %58 = ptrtoint ptr %message103 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %message103, align 4
  %va105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %va105 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %va105, align 4
  %format106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 5
  %60 = ptrtoint ptr %format106 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @kunit_binary_str_assert_format, ptr %format106, align 4
  %operation107 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 1
  %61 = ptrtoint ptr %operation107 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.8, ptr %operation107, align 4
  %left_text108 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 2
  %62 = ptrtoint ptr %left_text108 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.12, ptr %left_text108, align 4
  %left_value109 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 3
  %63 = ptrtoint ptr %left_value109 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %left_value109, align 4
  %right_text110 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 4
  %64 = ptrtoint ptr %right_text110 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.49, ptr %right_text110, align 4
  %right_value111 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 5
  %65 = ptrtoint ptr %right_value111 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.48, ptr %right_value111, align 4
  %call113 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp eq i32 %call113, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion97, i1 noundef zeroext %cmp114, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion97) #4
  %66 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %values, align 4
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1000000000, ptr %0, align 4
  %call125 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %values) #4
  %call129 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion132) #4
  %68 = getelementptr inbounds i8, ptr %__assertion132, i32 32
  %69 = call ptr @memset(ptr %68, i32 255, i32 24)
  %70 = ptrtoint ptr %__assertion132 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %test, ptr %__assertion132, align 8
  %type135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 1
  %71 = ptrtoint ptr %type135 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %type135, align 4
  %line136 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 2
  %72 = ptrtoint ptr %line136 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 131, ptr %line136, align 8
  %file137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 3
  %73 = ptrtoint ptr %file137 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.6, ptr %file137, align 4
  %message138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 4
  %74 = ptrtoint ptr %message138 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %message138, align 8
  %va140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %va140 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %va140, align 4
  %format141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 5
  %76 = ptrtoint ptr %format141 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @kunit_binary_assert_format, ptr %format141, align 8
  %operation142 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 1
  %77 = ptrtoint ptr %operation142 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.8, ptr %operation142, align 4
  %left_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 2
  %78 = ptrtoint ptr %left_text143 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.9, ptr %left_text143, align 8
  %left_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 3
  %conv145 = zext i32 %call129 to i64
  %79 = ptrtoint ptr %left_value144 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv145, ptr %left_value144, align 8
  %right_text146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 4
  %80 = ptrtoint ptr %right_text146 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.10, ptr %right_text146, align 8
  %right_value147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 5
  %conv148 = sext i32 %call125 to i64
  %81 = ptrtoint ptr %right_value147 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv148, ptr %right_value147, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call129, i32 %call125)
  %cmp150 = icmp eq i32 %call129, %call125
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion132, i1 noundef zeroext %cmp150, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion132) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion160) #4
  %82 = ptrtoint ptr %__assertion160 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %test, ptr %__assertion160, align 4
  %type163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 1
  %83 = ptrtoint ptr %type163 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %type163, align 4
  %line164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 2
  %84 = ptrtoint ptr %line164 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 131, ptr %line164, align 4
  %file165 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 3
  %85 = ptrtoint ptr %file165 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.6, ptr %file165, align 4
  %message166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 4
  %86 = ptrtoint ptr %message166 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %message166, align 4
  %va168 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %va168 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %va168, align 4
  %format169 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 5
  %88 = ptrtoint ptr %format169 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @kunit_binary_str_assert_format, ptr %format169, align 4
  %operation170 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 1
  %89 = ptrtoint ptr %operation170 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.8, ptr %operation170, align 4
  %left_text171 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 2
  %90 = ptrtoint ptr %left_text171 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.12, ptr %left_text171, align 4
  %left_value172 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 3
  %91 = ptrtoint ptr %left_value172 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i, ptr %left_value172, align 4
  %right_text173 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 4
  %92 = ptrtoint ptr %right_text173 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.51, ptr %right_text173, align 4
  %right_value174 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 5
  %93 = ptrtoint ptr %right_value174 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.50, ptr %right_value174, align 4
  %call176 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp eq i32 %call176, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion160, i1 noundef zeroext %cmp177, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion160) #4
  %94 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -200, ptr %values, align 4
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %0, align 4
  %call188 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %values) #4
  %call192 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion195) #4
  %96 = getelementptr inbounds i8, ptr %__assertion195, i32 32
  %97 = call ptr @memset(ptr %96, i32 255, i32 24)
  %98 = ptrtoint ptr %__assertion195 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %test, ptr %__assertion195, align 8
  %type198 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 1
  %99 = ptrtoint ptr %type198 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %type198, align 4
  %line199 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 2
  %100 = ptrtoint ptr %line199 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 137, ptr %line199, align 8
  %file200 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 3
  %101 = ptrtoint ptr %file200 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.6, ptr %file200, align 4
  %message201 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 4
  %102 = ptrtoint ptr %message201 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %message201, align 8
  %va203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %va203 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %va203, align 4
  %format204 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 5
  %104 = ptrtoint ptr %format204 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @kunit_binary_assert_format, ptr %format204, align 8
  %operation205 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 1
  %105 = ptrtoint ptr %operation205 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.8, ptr %operation205, align 4
  %left_text206 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 2
  %106 = ptrtoint ptr %left_text206 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.9, ptr %left_text206, align 8
  %left_value207 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 3
  %conv208 = zext i32 %call192 to i64
  %107 = ptrtoint ptr %left_value207 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv208, ptr %left_value207, align 8
  %right_text209 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 4
  %108 = ptrtoint ptr %right_text209 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.10, ptr %right_text209, align 8
  %right_value210 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 5
  %conv211 = sext i32 %call188 to i64
  %109 = ptrtoint ptr %right_value210 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv211, ptr %right_value210, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call192, i32 %call188)
  %cmp213 = icmp eq i32 %call192, %call188
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion195, i1 noundef zeroext %cmp213, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion195) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion223) #4
  %110 = ptrtoint ptr %__assertion223 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion223, align 4
  %type226 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 1
  %111 = ptrtoint ptr %type226 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type226, align 4
  %line227 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 2
  %112 = ptrtoint ptr %line227 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 137, ptr %line227, align 4
  %file228 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 3
  %113 = ptrtoint ptr %file228 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.6, ptr %file228, align 4
  %message229 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 4
  %114 = ptrtoint ptr %message229 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message229, align 4
  %va231 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %va231 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va231, align 4
  %format232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 5
  %116 = ptrtoint ptr %format232 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_str_assert_format, ptr %format232, align 4
  %operation233 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 1
  %117 = ptrtoint ptr %operation233 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.8, ptr %operation233, align 4
  %left_text234 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 2
  %118 = ptrtoint ptr %left_text234 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.12, ptr %left_text234, align 4
  %left_value235 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 3
  %119 = ptrtoint ptr %left_value235 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %left_value235, align 4
  %right_text236 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 4
  %120 = ptrtoint ptr %right_text236 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.53, ptr %right_text236, align 4
  %right_value237 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 5
  %121 = ptrtoint ptr %right_value237 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.52, ptr %right_value237, align 4
  %call239 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(15) @.str.52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp eq i32 %call239, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion223, i1 noundef zeroext %cmp240, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion223) #4
  %122 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %values, align 4
  %123 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -10, ptr %0, align 4
  %call251 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %values) #4
  %call255 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion258) #4
  %124 = getelementptr inbounds i8, ptr %__assertion258, i32 32
  %125 = call ptr @memset(ptr %124, i32 255, i32 24)
  %126 = ptrtoint ptr %__assertion258 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %test, ptr %__assertion258, align 8
  %type261 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 1
  %127 = ptrtoint ptr %type261 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %type261, align 4
  %line262 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 2
  %128 = ptrtoint ptr %line262 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 143, ptr %line262, align 8
  %file263 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 3
  %129 = ptrtoint ptr %file263 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str.6, ptr %file263, align 4
  %message264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 4
  %130 = ptrtoint ptr %message264 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %message264, align 8
  %va266 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %va266 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %va266, align 4
  %format267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 5
  %132 = ptrtoint ptr %format267 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @kunit_binary_assert_format, ptr %format267, align 8
  %operation268 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 1
  %133 = ptrtoint ptr %operation268 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.8, ptr %operation268, align 4
  %left_text269 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 2
  %134 = ptrtoint ptr %left_text269 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.9, ptr %left_text269, align 8
  %left_value270 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 3
  %conv271 = zext i32 %call255 to i64
  %135 = ptrtoint ptr %left_value270 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv271, ptr %left_value270, align 8
  %right_text272 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 4
  %136 = ptrtoint ptr %right_text272 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.10, ptr %right_text272, align 8
  %right_value273 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 5
  %conv274 = sext i32 %call251 to i64
  %137 = ptrtoint ptr %right_value273 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv274, ptr %right_value273, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call255, i32 %call251)
  %cmp276 = icmp eq i32 %call255, %call251
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion258, i1 noundef zeroext %cmp276, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion258) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion286) #4
  %138 = ptrtoint ptr %__assertion286 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %test, ptr %__assertion286, align 4
  %type289 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 1
  %139 = ptrtoint ptr %type289 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %type289, align 4
  %line290 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 2
  %140 = ptrtoint ptr %line290 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 143, ptr %line290, align 4
  %file291 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 3
  %141 = ptrtoint ptr %file291 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.6, ptr %file291, align 4
  %message292 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 4
  %142 = ptrtoint ptr %message292 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %message292, align 4
  %va294 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 4, i32 1
  %143 = ptrtoint ptr %va294 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %va294, align 4
  %format295 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 5
  %144 = ptrtoint ptr %format295 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @kunit_binary_str_assert_format, ptr %format295, align 4
  %operation296 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 1
  %145 = ptrtoint ptr %operation296 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.8, ptr %operation296, align 4
  %left_text297 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 2
  %146 = ptrtoint ptr %left_text297 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @.str.12, ptr %left_text297, align 4
  %left_value298 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 3
  %147 = ptrtoint ptr %left_value298 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i, ptr %left_value298, align 4
  %right_text299 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 4
  %148 = ptrtoint ptr %right_text299 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.55, ptr %right_text299, align 4
  %right_value300 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 5
  %149 = ptrtoint ptr %right_value300 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.54, ptr %right_value300, align 4
  %call302 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %cmp303 = icmp eq i32 %call302, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion286, i1 noundef zeroext %cmp303, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion286) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_test_iio_format_value_fractional_log2(ptr noundef %test) #0 align 64 {
entry:
  %values = alloca [2 x i32], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion34 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion69 = alloca %struct.kunit_binary_assert, align 8
  %__assertion97 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion132 = alloca %struct.kunit_binary_assert, align 8
  %__assertion160 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion195 = alloca %struct.kunit_binary_assert, align 8
  %__assertion223 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion258 = alloca %struct.kunit_binary_assert, align 8
  %__assertion286 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #4
  %0 = getelementptr inbounds [2 x i32], ptr %values, i32 0, i32 1
  %call.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4096, i32 noundef 3264) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 153, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %file, align 4
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
  store ptr @.str.7, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %10 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 123, ptr %values, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %0, align 4
  %call8 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %values) #4
  %call11 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #4
  %12 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %13 = call ptr @memset(ptr %12, i32 255, i32 24)
  %14 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %15 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %16 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 159, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %17 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %18 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %20 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %21 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %22 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv = zext i32 %call11 to i64
  %23 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %24 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.10, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv23 = sext i32 %call8 to i64
  %25 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv23, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %call8)
  %cmp = icmp eq i32 %call11, %call8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion34) #4
  %26 = ptrtoint ptr %__assertion34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion34, align 4
  %type37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 1
  %27 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type37, align 4
  %line38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 2
  %28 = ptrtoint ptr %line38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 159, ptr %line38, align 4
  %file39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 3
  %29 = ptrtoint ptr %file39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.6, ptr %file39, align 4
  %message40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4
  %30 = ptrtoint ptr %message40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message40, align 4
  %va42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %va42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va42, align 4
  %format43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion34, i32 0, i32 5
  %32 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_binary_str_assert_format, ptr %format43, align 4
  %operation44 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 1
  %33 = ptrtoint ptr %operation44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.8, ptr %operation44, align 4
  %left_text45 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 2
  %34 = ptrtoint ptr %left_text45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.12, ptr %left_text45, align 4
  %left_value46 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 3
  %35 = ptrtoint ptr %left_value46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %left_value46, align 4
  %right_text47 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 4
  %36 = ptrtoint ptr %right_text47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.57, ptr %right_text47, align 4
  %right_value48 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion34, i32 0, i32 5
  %37 = ptrtoint ptr %right_value48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.56, ptr %right_value48, align 4
  %call50 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion34, i1 noundef zeroext %cmp51, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion34) #4
  %38 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1234567, ptr %values, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10, ptr %0, align 4
  %call62 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %values) #4
  %call66 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion69) #4
  %40 = getelementptr inbounds i8, ptr %__assertion69, i32 32
  %41 = call ptr @memset(ptr %40, i32 255, i32 24)
  %42 = ptrtoint ptr %__assertion69 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %test, ptr %__assertion69, align 8
  %type72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 1
  %43 = ptrtoint ptr %type72 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %type72, align 4
  %line73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 2
  %44 = ptrtoint ptr %line73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 165, ptr %line73, align 8
  %file74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 3
  %45 = ptrtoint ptr %file74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.6, ptr %file74, align 4
  %message75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 4
  %46 = ptrtoint ptr %message75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %message75, align 8
  %va77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %va77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %va77, align 4
  %format78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion69, i32 0, i32 5
  %48 = ptrtoint ptr %format78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kunit_binary_assert_format, ptr %format78, align 8
  %operation79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 1
  %49 = ptrtoint ptr %operation79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.8, ptr %operation79, align 4
  %left_text80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 2
  %50 = ptrtoint ptr %left_text80 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.9, ptr %left_text80, align 8
  %left_value81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 3
  %conv82 = zext i32 %call66 to i64
  %51 = ptrtoint ptr %left_value81 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv82, ptr %left_value81, align 8
  %right_text83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 4
  %52 = ptrtoint ptr %right_text83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.10, ptr %right_text83, align 8
  %right_value84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion69, i32 0, i32 5
  %conv85 = sext i32 %call62 to i64
  %53 = ptrtoint ptr %right_value84 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv85, ptr %right_value84, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call66, i32 %call62)
  %cmp87 = icmp eq i32 %call66, %call62
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion69, i1 noundef zeroext %cmp87, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion69) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion97) #4
  %54 = ptrtoint ptr %__assertion97 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %test, ptr %__assertion97, align 4
  %type100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 1
  %55 = ptrtoint ptr %type100 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %type100, align 4
  %line101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 2
  %56 = ptrtoint ptr %line101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 165, ptr %line101, align 4
  %file102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 3
  %57 = ptrtoint ptr %file102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.6, ptr %file102, align 4
  %message103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 4
  %58 = ptrtoint ptr %message103 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %message103, align 4
  %va105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %va105 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %va105, align 4
  %format106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion97, i32 0, i32 5
  %60 = ptrtoint ptr %format106 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @kunit_binary_str_assert_format, ptr %format106, align 4
  %operation107 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 1
  %61 = ptrtoint ptr %operation107 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.8, ptr %operation107, align 4
  %left_text108 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 2
  %62 = ptrtoint ptr %left_text108 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.12, ptr %left_text108, align 4
  %left_value109 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 3
  %63 = ptrtoint ptr %left_value109 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %left_value109, align 4
  %right_text110 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 4
  %64 = ptrtoint ptr %right_text110 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.59, ptr %right_text110, align 4
  %right_value111 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion97, i32 0, i32 5
  %65 = ptrtoint ptr %right_value111 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.58, ptr %right_value111, align 4
  %call113 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(16) @.str.58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp eq i32 %call113, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion97, i1 noundef zeroext %cmp114, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion97) #4
  %66 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -123, ptr %values, align 4
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 10, ptr %0, align 4
  %call125 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %values) #4
  %call129 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion132) #4
  %68 = getelementptr inbounds i8, ptr %__assertion132, i32 32
  %69 = call ptr @memset(ptr %68, i32 255, i32 24)
  %70 = ptrtoint ptr %__assertion132 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %test, ptr %__assertion132, align 8
  %type135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 1
  %71 = ptrtoint ptr %type135 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %type135, align 4
  %line136 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 2
  %72 = ptrtoint ptr %line136 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 171, ptr %line136, align 8
  %file137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 3
  %73 = ptrtoint ptr %file137 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.6, ptr %file137, align 4
  %message138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 4
  %74 = ptrtoint ptr %message138 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %message138, align 8
  %va140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %va140 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %va140, align 4
  %format141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 5
  %76 = ptrtoint ptr %format141 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @kunit_binary_assert_format, ptr %format141, align 8
  %operation142 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 1
  %77 = ptrtoint ptr %operation142 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.8, ptr %operation142, align 4
  %left_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 2
  %78 = ptrtoint ptr %left_text143 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.9, ptr %left_text143, align 8
  %left_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 3
  %conv145 = zext i32 %call129 to i64
  %79 = ptrtoint ptr %left_value144 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv145, ptr %left_value144, align 8
  %right_text146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 4
  %80 = ptrtoint ptr %right_text146 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.10, ptr %right_text146, align 8
  %right_value147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 5
  %conv148 = sext i32 %call125 to i64
  %81 = ptrtoint ptr %right_value147 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv148, ptr %right_value147, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call129, i32 %call125)
  %cmp150 = icmp eq i32 %call129, %call125
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion132, i1 noundef zeroext %cmp150, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion132) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion160) #4
  %82 = ptrtoint ptr %__assertion160 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %test, ptr %__assertion160, align 4
  %type163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 1
  %83 = ptrtoint ptr %type163 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %type163, align 4
  %line164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 2
  %84 = ptrtoint ptr %line164 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 171, ptr %line164, align 4
  %file165 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 3
  %85 = ptrtoint ptr %file165 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.6, ptr %file165, align 4
  %message166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 4
  %86 = ptrtoint ptr %message166 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %message166, align 4
  %va168 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %va168 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %va168, align 4
  %format169 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion160, i32 0, i32 5
  %88 = ptrtoint ptr %format169 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @kunit_binary_str_assert_format, ptr %format169, align 4
  %operation170 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 1
  %89 = ptrtoint ptr %operation170 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.8, ptr %operation170, align 4
  %left_text171 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 2
  %90 = ptrtoint ptr %left_text171 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.12, ptr %left_text171, align 4
  %left_value172 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 3
  %91 = ptrtoint ptr %left_value172 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i, ptr %left_value172, align 4
  %right_text173 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 4
  %92 = ptrtoint ptr %right_text173 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.61, ptr %right_text173, align 4
  %right_value174 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion160, i32 0, i32 5
  %93 = ptrtoint ptr %right_value174 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.60, ptr %right_value174, align 4
  %call176 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp eq i32 %call176, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion160, i1 noundef zeroext %cmp177, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion160) #4
  %94 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1234567, ptr %values, align 4
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 10, ptr %0, align 4
  %call188 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %values) #4
  %call192 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion195) #4
  %96 = getelementptr inbounds i8, ptr %__assertion195, i32 32
  %97 = call ptr @memset(ptr %96, i32 255, i32 24)
  %98 = ptrtoint ptr %__assertion195 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %test, ptr %__assertion195, align 8
  %type198 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 1
  %99 = ptrtoint ptr %type198 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %type198, align 4
  %line199 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 2
  %100 = ptrtoint ptr %line199 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 177, ptr %line199, align 8
  %file200 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 3
  %101 = ptrtoint ptr %file200 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.6, ptr %file200, align 4
  %message201 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 4
  %102 = ptrtoint ptr %message201 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %message201, align 8
  %va203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %va203 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %va203, align 4
  %format204 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion195, i32 0, i32 5
  %104 = ptrtoint ptr %format204 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @kunit_binary_assert_format, ptr %format204, align 8
  %operation205 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 1
  %105 = ptrtoint ptr %operation205 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.8, ptr %operation205, align 4
  %left_text206 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 2
  %106 = ptrtoint ptr %left_text206 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.9, ptr %left_text206, align 8
  %left_value207 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 3
  %conv208 = zext i32 %call192 to i64
  %107 = ptrtoint ptr %left_value207 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv208, ptr %left_value207, align 8
  %right_text209 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 4
  %108 = ptrtoint ptr %right_text209 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.10, ptr %right_text209, align 8
  %right_value210 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion195, i32 0, i32 5
  %conv211 = sext i32 %call188 to i64
  %109 = ptrtoint ptr %right_value210 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv211, ptr %right_value210, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call192, i32 %call188)
  %cmp213 = icmp eq i32 %call192, %call188
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion195, i1 noundef zeroext %cmp213, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion195) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion223) #4
  %110 = ptrtoint ptr %__assertion223 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion223, align 4
  %type226 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 1
  %111 = ptrtoint ptr %type226 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type226, align 4
  %line227 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 2
  %112 = ptrtoint ptr %line227 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 177, ptr %line227, align 4
  %file228 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 3
  %113 = ptrtoint ptr %file228 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.6, ptr %file228, align 4
  %message229 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 4
  %114 = ptrtoint ptr %message229 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message229, align 4
  %va231 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %va231 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va231, align 4
  %format232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion223, i32 0, i32 5
  %116 = ptrtoint ptr %format232 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_str_assert_format, ptr %format232, align 4
  %operation233 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 1
  %117 = ptrtoint ptr %operation233 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.8, ptr %operation233, align 4
  %left_text234 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 2
  %118 = ptrtoint ptr %left_text234 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.12, ptr %left_text234, align 4
  %left_value235 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 3
  %119 = ptrtoint ptr %left_value235 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %left_value235, align 4
  %right_text236 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 4
  %120 = ptrtoint ptr %right_text236 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.63, ptr %right_text236, align 4
  %right_value237 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion223, i32 0, i32 5
  %121 = ptrtoint ptr %right_value237 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.62, ptr %right_value237, align 4
  %call239 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(17) @.str.62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp eq i32 %call239, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion223, i1 noundef zeroext %cmp240, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion223) #4
  %122 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %values, align 4
  %123 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 10, ptr %0, align 4
  %call251 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %values) #4
  %call255 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion258) #4
  %124 = getelementptr inbounds i8, ptr %__assertion258, i32 32
  %125 = call ptr @memset(ptr %124, i32 255, i32 24)
  %126 = ptrtoint ptr %__assertion258 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %test, ptr %__assertion258, align 8
  %type261 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 1
  %127 = ptrtoint ptr %type261 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %type261, align 4
  %line262 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 2
  %128 = ptrtoint ptr %line262 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 183, ptr %line262, align 8
  %file263 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 3
  %129 = ptrtoint ptr %file263 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str.6, ptr %file263, align 4
  %message264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 4
  %130 = ptrtoint ptr %message264 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %message264, align 8
  %va266 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %va266 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %va266, align 4
  %format267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion258, i32 0, i32 5
  %132 = ptrtoint ptr %format267 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @kunit_binary_assert_format, ptr %format267, align 8
  %operation268 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 1
  %133 = ptrtoint ptr %operation268 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.8, ptr %operation268, align 4
  %left_text269 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 2
  %134 = ptrtoint ptr %left_text269 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.9, ptr %left_text269, align 8
  %left_value270 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 3
  %conv271 = zext i32 %call255 to i64
  %135 = ptrtoint ptr %left_value270 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv271, ptr %left_value270, align 8
  %right_text272 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 4
  %136 = ptrtoint ptr %right_text272 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.10, ptr %right_text272, align 8
  %right_value273 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion258, i32 0, i32 5
  %conv274 = sext i32 %call251 to i64
  %137 = ptrtoint ptr %right_value273 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv274, ptr %right_value273, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call255, i32 %call251)
  %cmp276 = icmp eq i32 %call255, %call251
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion258, i1 noundef zeroext %cmp276, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion258) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion286) #4
  %138 = ptrtoint ptr %__assertion286 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %test, ptr %__assertion286, align 4
  %type289 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 1
  %139 = ptrtoint ptr %type289 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %type289, align 4
  %line290 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 2
  %140 = ptrtoint ptr %line290 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 183, ptr %line290, align 4
  %file291 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 3
  %141 = ptrtoint ptr %file291 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.6, ptr %file291, align 4
  %message292 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 4
  %142 = ptrtoint ptr %message292 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %message292, align 4
  %va294 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 4, i32 1
  %143 = ptrtoint ptr %va294 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %va294, align 4
  %format295 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion286, i32 0, i32 5
  %144 = ptrtoint ptr %format295 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @kunit_binary_str_assert_format, ptr %format295, align 4
  %operation296 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 1
  %145 = ptrtoint ptr %operation296 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.8, ptr %operation296, align 4
  %left_text297 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 2
  %146 = ptrtoint ptr %left_text297 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @.str.12, ptr %left_text297, align 4
  %left_value298 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 3
  %147 = ptrtoint ptr %left_value298 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i, ptr %left_value298, align 4
  %right_text299 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 4
  %148 = ptrtoint ptr %right_text299 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.55, ptr %right_text299, align 4
  %right_value300 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion286, i32 0, i32 5
  %149 = ptrtoint ptr %right_value300 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.54, ptr %right_value300, align 4
  %call302 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %cmp303 = icmp eq i32 %call302, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion286, i1 noundef zeroext %cmp303, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion286) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_test_iio_format_value_multiple(ptr noundef %test) #0 align 64 {
entry:
  %values = alloca [5 x i32], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_binary_assert, align 8
  %__assertion33 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %values) #4
  %0 = call ptr @memcpy(ptr %values, ptr @__const.iio_test_iio_format_value_multiple.values, i32 20)
  %call.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4096, i32 noundef 3264) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 193, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %file, align 4
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
  store ptr @.str.7, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %call7 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 5, i32 noundef 5, ptr noundef nonnull %values) #4
  %call10 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion12) #4
  %10 = getelementptr inbounds i8, ptr %__assertion12, i32 32
  %11 = call ptr @memset(ptr %10, i32 255, i32 24)
  %12 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion12, align 8
  %type15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %13 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type15, align 4
  %line16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %14 = ptrtoint ptr %line16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 197, ptr %line16, align 8
  %file17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %15 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.6, ptr %file17, align 4
  %message18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %16 = ptrtoint ptr %message18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message18, align 8
  %va20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va20, align 4
  %format21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %18 = ptrtoint ptr %format21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_binary_assert_format, ptr %format21, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 1
  %19 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.8, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 2
  %20 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 3
  %conv = zext i32 %call10 to i64
  %21 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 4
  %22 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.10, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion12, i32 0, i32 5
  %conv22 = sext i32 %call7 to i64
  %23 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv22, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %call7)
  %cmp = icmp eq i32 %call10, %call7
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion12, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion12) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion33) #4
  %24 = ptrtoint ptr %__assertion33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %test, ptr %__assertion33, align 4
  %type36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 1
  %25 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %type36, align 4
  %line37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 2
  %26 = ptrtoint ptr %line37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 197, ptr %line37, align 4
  %file38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 3
  %27 = ptrtoint ptr %file38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.6, ptr %file38, align 4
  %message39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 4
  %28 = ptrtoint ptr %message39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message39, align 4
  %va41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %va41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va41, align 4
  %format42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion33, i32 0, i32 5
  %30 = ptrtoint ptr %format42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_str_assert_format, ptr %format42, align 4
  %operation43 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 1
  %31 = ptrtoint ptr %operation43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.8, ptr %operation43, align 4
  %left_text44 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 2
  %32 = ptrtoint ptr %left_text44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.12, ptr %left_text44, align 4
  %left_value45 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 3
  %33 = ptrtoint ptr %left_value45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %left_value45, align 4
  %right_text46 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 4
  %34 = ptrtoint ptr %right_text46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.65, ptr %right_text46, align 4
  %right_value47 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion33, i32 0, i32 5
  %35 = ptrtoint ptr %right_value47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.64, ptr %right_value47, align 4
  %call49 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(14) @.str.64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion33, i1 noundef zeroext %cmp50, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion33) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %values) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_test_iio_format_value_integer_64(ptr noundef %test) #0 align 64 {
entry:
  %values = alloca [2 x i32], align 4
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion16 = alloca %struct.kunit_binary_assert, align 8
  %__assertion38 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion78 = alloca %struct.kunit_binary_assert, align 8
  %__assertion106 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion146 = alloca %struct.kunit_binary_assert, align 8
  %__assertion174 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion214 = alloca %struct.kunit_binary_assert, align 8
  %__assertion242 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion282 = alloca %struct.kunit_binary_assert, align 8
  %__assertion310 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion350 = alloca %struct.kunit_binary_assert, align 8
  %__assertion378 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion418 = alloca %struct.kunit_binary_assert, align 8
  %__assertion446 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #4
  %0 = getelementptr inbounds [2 x i32], ptr %values, i32 0, i32 1
  %call.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 4096, i32 noundef 3264) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
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
  store i32 208, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %file, align 4
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
  store ptr @.str.7, ptr %text, align 4
  %value3 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %value3, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %10 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %values, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %0, align 4
  %call11 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %values) #4
  %call14 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion16) #4
  %12 = getelementptr inbounds i8, ptr %__assertion16, i32 32
  %13 = call ptr @memset(ptr %12, i32 255, i32 24)
  %14 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion16, align 8
  %type19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %15 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type19, align 4
  %line20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %16 = ptrtoint ptr %line20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 214, ptr %line20, align 8
  %file21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %17 = ptrtoint ptr %file21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %file21, align 4
  %message22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %18 = ptrtoint ptr %message22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message22, align 8
  %va24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va24, align 4
  %format25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %20 = ptrtoint ptr %format25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_binary_assert_format, ptr %format25, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 1
  %21 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 2
  %22 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 3
  %conv26 = zext i32 %call14 to i64
  %23 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv26, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 4
  %24 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.10, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 5
  %conv27 = sext i32 %call11 to i64
  %25 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv27, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %call11)
  %cmp = icmp eq i32 %call14, %call11
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion16) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion38) #4
  %26 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion38, align 4
  %type41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %27 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type41, align 4
  %line42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %28 = ptrtoint ptr %line42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 214, ptr %line42, align 4
  %file43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %29 = ptrtoint ptr %file43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.6, ptr %file43, align 4
  %message44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %30 = ptrtoint ptr %message44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message44, align 4
  %va46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %va46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va46, align 4
  %format47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %32 = ptrtoint ptr %format47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_binary_str_assert_format, ptr %format47, align 4
  %operation48 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion38, i32 0, i32 1
  %33 = ptrtoint ptr %operation48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.8, ptr %operation48, align 4
  %left_text49 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion38, i32 0, i32 2
  %34 = ptrtoint ptr %left_text49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.12, ptr %left_text49, align 4
  %left_value50 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion38, i32 0, i32 3
  %35 = ptrtoint ptr %left_value50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %left_value50, align 4
  %right_text51 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion38, i32 0, i32 4
  %36 = ptrtoint ptr %right_text51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.67, ptr %right_text51, align 4
  %right_value52 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion38, i32 0, i32 5
  %37 = ptrtoint ptr %right_value52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.66, ptr %right_value52, align 4
  %call54 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(4) @.str.66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext %cmp55, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion38) #4
  %38 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -24, ptr %values, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %0, align 4
  %call71 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %values) #4
  %call75 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion78) #4
  %40 = getelementptr inbounds i8, ptr %__assertion78, i32 32
  %41 = call ptr @memset(ptr %40, i32 255, i32 24)
  %42 = ptrtoint ptr %__assertion78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %test, ptr %__assertion78, align 8
  %type81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 1
  %43 = ptrtoint ptr %type81 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %type81, align 4
  %line82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 2
  %44 = ptrtoint ptr %line82 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 220, ptr %line82, align 8
  %file83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 3
  %45 = ptrtoint ptr %file83 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.6, ptr %file83, align 4
  %message84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 4
  %46 = ptrtoint ptr %message84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %message84, align 8
  %va86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %va86 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %va86, align 4
  %format87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion78, i32 0, i32 5
  %48 = ptrtoint ptr %format87 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kunit_binary_assert_format, ptr %format87, align 8
  %operation88 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion78, i32 0, i32 1
  %49 = ptrtoint ptr %operation88 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.8, ptr %operation88, align 4
  %left_text89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion78, i32 0, i32 2
  %50 = ptrtoint ptr %left_text89 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.9, ptr %left_text89, align 8
  %left_value90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion78, i32 0, i32 3
  %conv91 = zext i32 %call75 to i64
  %51 = ptrtoint ptr %left_value90 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv91, ptr %left_value90, align 8
  %right_text92 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion78, i32 0, i32 4
  %52 = ptrtoint ptr %right_text92 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.10, ptr %right_text92, align 8
  %right_value93 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion78, i32 0, i32 5
  %conv94 = sext i32 %call71 to i64
  %53 = ptrtoint ptr %right_value93 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv94, ptr %right_value93, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call75, i32 %call71)
  %cmp96 = icmp eq i32 %call75, %call71
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion78, i1 noundef zeroext %cmp96, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion78) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion106) #4
  %54 = ptrtoint ptr %__assertion106 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %test, ptr %__assertion106, align 4
  %type109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106, i32 0, i32 1
  %55 = ptrtoint ptr %type109 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %type109, align 4
  %line110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106, i32 0, i32 2
  %56 = ptrtoint ptr %line110 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 220, ptr %line110, align 4
  %file111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106, i32 0, i32 3
  %57 = ptrtoint ptr %file111 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.6, ptr %file111, align 4
  %message112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106, i32 0, i32 4
  %58 = ptrtoint ptr %message112 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %message112, align 4
  %va114 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %va114 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %va114, align 4
  %format115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion106, i32 0, i32 5
  %60 = ptrtoint ptr %format115 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @kunit_binary_str_assert_format, ptr %format115, align 4
  %operation116 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion106, i32 0, i32 1
  %61 = ptrtoint ptr %operation116 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.8, ptr %operation116, align 4
  %left_text117 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion106, i32 0, i32 2
  %62 = ptrtoint ptr %left_text117 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.12, ptr %left_text117, align 4
  %left_value118 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion106, i32 0, i32 3
  %63 = ptrtoint ptr %left_value118 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %left_value118, align 4
  %right_text119 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion106, i32 0, i32 4
  %64 = ptrtoint ptr %right_text119 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.69, ptr %right_text119, align 4
  %right_value120 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion106, i32 0, i32 5
  %65 = ptrtoint ptr %right_value120 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.68, ptr %right_value120, align 4
  %call122 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(5) @.str.68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp eq i32 %call122, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion106, i1 noundef zeroext %cmp123, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion106) #4
  %66 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %values, align 4
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %0, align 4
  %call139 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %values) #4
  %call143 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion146) #4
  %68 = getelementptr inbounds i8, ptr %__assertion146, i32 32
  %69 = call ptr @memset(ptr %68, i32 255, i32 24)
  %70 = ptrtoint ptr %__assertion146 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %test, ptr %__assertion146, align 8
  %type149 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion146, i32 0, i32 1
  %71 = ptrtoint ptr %type149 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %type149, align 4
  %line150 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion146, i32 0, i32 2
  %72 = ptrtoint ptr %line150 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 226, ptr %line150, align 8
  %file151 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion146, i32 0, i32 3
  %73 = ptrtoint ptr %file151 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.6, ptr %file151, align 4
  %message152 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion146, i32 0, i32 4
  %74 = ptrtoint ptr %message152 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %message152, align 8
  %va154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion146, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %va154 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %va154, align 4
  %format155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion146, i32 0, i32 5
  %76 = ptrtoint ptr %format155 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @kunit_binary_assert_format, ptr %format155, align 8
  %operation156 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion146, i32 0, i32 1
  %77 = ptrtoint ptr %operation156 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.8, ptr %operation156, align 4
  %left_text157 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion146, i32 0, i32 2
  %78 = ptrtoint ptr %left_text157 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.9, ptr %left_text157, align 8
  %left_value158 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion146, i32 0, i32 3
  %conv159 = zext i32 %call143 to i64
  %79 = ptrtoint ptr %left_value158 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv159, ptr %left_value158, align 8
  %right_text160 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion146, i32 0, i32 4
  %80 = ptrtoint ptr %right_text160 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.10, ptr %right_text160, align 8
  %right_value161 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion146, i32 0, i32 5
  %conv162 = sext i32 %call139 to i64
  %81 = ptrtoint ptr %right_value161 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv162, ptr %right_value161, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call143, i32 %call139)
  %cmp164 = icmp eq i32 %call143, %call139
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion146, i1 noundef zeroext %cmp164, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion146) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion174) #4
  %82 = ptrtoint ptr %__assertion174 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %test, ptr %__assertion174, align 4
  %type177 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 1
  %83 = ptrtoint ptr %type177 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %type177, align 4
  %line178 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 2
  %84 = ptrtoint ptr %line178 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 226, ptr %line178, align 4
  %file179 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 3
  %85 = ptrtoint ptr %file179 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.6, ptr %file179, align 4
  %message180 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 4
  %86 = ptrtoint ptr %message180 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %message180, align 4
  %va182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %va182 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %va182, align 4
  %format183 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion174, i32 0, i32 5
  %88 = ptrtoint ptr %format183 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @kunit_binary_str_assert_format, ptr %format183, align 4
  %operation184 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 1
  %89 = ptrtoint ptr %operation184 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.8, ptr %operation184, align 4
  %left_text185 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 2
  %90 = ptrtoint ptr %left_text185 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.12, ptr %left_text185, align 4
  %left_value186 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 3
  %91 = ptrtoint ptr %left_value186 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i, ptr %left_value186, align 4
  %right_text187 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 4
  %92 = ptrtoint ptr %right_text187 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.17, ptr %right_text187, align 4
  %right_value188 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion174, i32 0, i32 5
  %93 = ptrtoint ptr %right_value188 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.16, ptr %right_value188, align 4
  %call190 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(3) @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp eq i32 %call190, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion174, i1 noundef zeroext %cmp191, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion174) #4
  %94 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %values, align 4
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %0, align 4
  %call207 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %values) #4
  %call211 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion214) #4
  %96 = getelementptr inbounds i8, ptr %__assertion214, i32 32
  %97 = call ptr @memset(ptr %96, i32 255, i32 24)
  %98 = ptrtoint ptr %__assertion214 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %test, ptr %__assertion214, align 8
  %type217 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion214, i32 0, i32 1
  %99 = ptrtoint ptr %type217 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %type217, align 4
  %line218 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion214, i32 0, i32 2
  %100 = ptrtoint ptr %line218 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 232, ptr %line218, align 8
  %file219 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion214, i32 0, i32 3
  %101 = ptrtoint ptr %file219 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.6, ptr %file219, align 4
  %message220 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion214, i32 0, i32 4
  %102 = ptrtoint ptr %message220 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %message220, align 8
  %va222 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion214, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %va222 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %va222, align 4
  %format223 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion214, i32 0, i32 5
  %104 = ptrtoint ptr %format223 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @kunit_binary_assert_format, ptr %format223, align 8
  %operation224 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion214, i32 0, i32 1
  %105 = ptrtoint ptr %operation224 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.8, ptr %operation224, align 4
  %left_text225 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion214, i32 0, i32 2
  %106 = ptrtoint ptr %left_text225 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.9, ptr %left_text225, align 8
  %left_value226 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion214, i32 0, i32 3
  %conv227 = zext i32 %call211 to i64
  %107 = ptrtoint ptr %left_value226 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv227, ptr %left_value226, align 8
  %right_text228 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion214, i32 0, i32 4
  %108 = ptrtoint ptr %right_text228 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.10, ptr %right_text228, align 8
  %right_value229 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion214, i32 0, i32 5
  %conv230 = sext i32 %call207 to i64
  %109 = ptrtoint ptr %right_value229 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv230, ptr %right_value229, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call211, i32 %call207)
  %cmp232 = icmp eq i32 %call211, %call207
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion214, i1 noundef zeroext %cmp232, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion214) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion242) #4
  %110 = ptrtoint ptr %__assertion242 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion242, align 4
  %type245 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion242, i32 0, i32 1
  %111 = ptrtoint ptr %type245 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type245, align 4
  %line246 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion242, i32 0, i32 2
  %112 = ptrtoint ptr %line246 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 232, ptr %line246, align 4
  %file247 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion242, i32 0, i32 3
  %113 = ptrtoint ptr %file247 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.6, ptr %file247, align 4
  %message248 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion242, i32 0, i32 4
  %114 = ptrtoint ptr %message248 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message248, align 4
  %va250 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion242, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %va250 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va250, align 4
  %format251 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion242, i32 0, i32 5
  %116 = ptrtoint ptr %format251 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_str_assert_format, ptr %format251, align 4
  %operation252 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion242, i32 0, i32 1
  %117 = ptrtoint ptr %operation252 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.8, ptr %operation252, align 4
  %left_text253 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion242, i32 0, i32 2
  %118 = ptrtoint ptr %left_text253 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.12, ptr %left_text253, align 4
  %left_value254 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion242, i32 0, i32 3
  %119 = ptrtoint ptr %left_value254 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %left_value254, align 4
  %right_text255 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion242, i32 0, i32 4
  %120 = ptrtoint ptr %right_text255 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.71, ptr %right_text255, align 4
  %right_value256 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion242, i32 0, i32 5
  %121 = ptrtoint ptr %right_value256 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.70, ptr %right_value256, align 4
  %call258 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(12) @.str.70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259 = icmp eq i32 %call258, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion242, i1 noundef zeroext %cmp259, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion242) #4
  %122 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %values, align 4
  %123 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %0, align 4
  %call275 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %values) #4
  %call279 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion282) #4
  %124 = getelementptr inbounds i8, ptr %__assertion282, i32 32
  %125 = call ptr @memset(ptr %124, i32 255, i32 24)
  %126 = ptrtoint ptr %__assertion282 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %test, ptr %__assertion282, align 8
  %type285 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 1
  %127 = ptrtoint ptr %type285 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %type285, align 4
  %line286 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 2
  %128 = ptrtoint ptr %line286 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 238, ptr %line286, align 8
  %file287 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 3
  %129 = ptrtoint ptr %file287 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str.6, ptr %file287, align 4
  %message288 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 4
  %130 = ptrtoint ptr %message288 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %message288, align 8
  %va290 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %va290 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %va290, align 4
  %format291 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion282, i32 0, i32 5
  %132 = ptrtoint ptr %format291 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @kunit_binary_assert_format, ptr %format291, align 8
  %operation292 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 1
  %133 = ptrtoint ptr %operation292 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.8, ptr %operation292, align 4
  %left_text293 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 2
  %134 = ptrtoint ptr %left_text293 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.9, ptr %left_text293, align 8
  %left_value294 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 3
  %conv295 = zext i32 %call279 to i64
  %135 = ptrtoint ptr %left_value294 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv295, ptr %left_value294, align 8
  %right_text296 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 4
  %136 = ptrtoint ptr %right_text296 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.10, ptr %right_text296, align 8
  %right_value297 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion282, i32 0, i32 5
  %conv298 = sext i32 %call275 to i64
  %137 = ptrtoint ptr %right_value297 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv298, ptr %right_value297, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call279, i32 %call275)
  %cmp300 = icmp eq i32 %call279, %call275
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion282, i1 noundef zeroext %cmp300, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion282) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion310) #4
  %138 = ptrtoint ptr %__assertion310 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %test, ptr %__assertion310, align 4
  %type313 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion310, i32 0, i32 1
  %139 = ptrtoint ptr %type313 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %type313, align 4
  %line314 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion310, i32 0, i32 2
  %140 = ptrtoint ptr %line314 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 238, ptr %line314, align 4
  %file315 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion310, i32 0, i32 3
  %141 = ptrtoint ptr %file315 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.6, ptr %file315, align 4
  %message316 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion310, i32 0, i32 4
  %142 = ptrtoint ptr %message316 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %message316, align 4
  %va318 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion310, i32 0, i32 4, i32 1
  %143 = ptrtoint ptr %va318 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %va318, align 4
  %format319 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion310, i32 0, i32 5
  %144 = ptrtoint ptr %format319 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @kunit_binary_str_assert_format, ptr %format319, align 4
  %operation320 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion310, i32 0, i32 1
  %145 = ptrtoint ptr %operation320 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.8, ptr %operation320, align 4
  %left_text321 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion310, i32 0, i32 2
  %146 = ptrtoint ptr %left_text321 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @.str.12, ptr %left_text321, align 4
  %left_value322 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion310, i32 0, i32 3
  %147 = ptrtoint ptr %left_value322 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i, ptr %left_value322, align 4
  %right_text323 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion310, i32 0, i32 4
  %148 = ptrtoint ptr %right_text323 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.73, ptr %right_text323, align 4
  %right_value324 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion310, i32 0, i32 5
  %149 = ptrtoint ptr %right_value324 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.72, ptr %right_value324, align 4
  %call326 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(13) @.str.72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %cmp327 = icmp eq i32 %call326, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion310, i1 noundef zeroext %cmp327, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion310) #4
  %150 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -1, ptr %values, align 4
  %151 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 2147483647, ptr %0, align 4
  %call343 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %values) #4
  %call347 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion350) #4
  %152 = getelementptr inbounds i8, ptr %__assertion350, i32 32
  %153 = call ptr @memset(ptr %152, i32 255, i32 24)
  %154 = ptrtoint ptr %__assertion350 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %test, ptr %__assertion350, align 8
  %type353 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion350, i32 0, i32 1
  %155 = ptrtoint ptr %type353 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %type353, align 4
  %line354 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion350, i32 0, i32 2
  %156 = ptrtoint ptr %line354 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 244, ptr %line354, align 8
  %file355 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion350, i32 0, i32 3
  %157 = ptrtoint ptr %file355 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @.str.6, ptr %file355, align 4
  %message356 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion350, i32 0, i32 4
  %158 = ptrtoint ptr %message356 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %message356, align 8
  %va358 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion350, i32 0, i32 4, i32 1
  %159 = ptrtoint ptr %va358 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %va358, align 4
  %format359 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion350, i32 0, i32 5
  %160 = ptrtoint ptr %format359 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @kunit_binary_assert_format, ptr %format359, align 8
  %operation360 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion350, i32 0, i32 1
  %161 = ptrtoint ptr %operation360 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.8, ptr %operation360, align 4
  %left_text361 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion350, i32 0, i32 2
  %162 = ptrtoint ptr %left_text361 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @.str.9, ptr %left_text361, align 8
  %left_value362 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion350, i32 0, i32 3
  %conv363 = zext i32 %call347 to i64
  %163 = ptrtoint ptr %left_value362 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %conv363, ptr %left_value362, align 8
  %right_text364 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion350, i32 0, i32 4
  %164 = ptrtoint ptr %right_text364 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.10, ptr %right_text364, align 8
  %right_value365 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion350, i32 0, i32 5
  %conv366 = sext i32 %call343 to i64
  %165 = ptrtoint ptr %right_value365 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %conv366, ptr %right_value365, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call347, i32 %call343)
  %cmp368 = icmp eq i32 %call347, %call343
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion350, i1 noundef zeroext %cmp368, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion350) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion378) #4
  %166 = ptrtoint ptr %__assertion378 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %test, ptr %__assertion378, align 4
  %type381 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion378, i32 0, i32 1
  %167 = ptrtoint ptr %type381 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %type381, align 4
  %line382 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion378, i32 0, i32 2
  %168 = ptrtoint ptr %line382 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 244, ptr %line382, align 4
  %file383 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion378, i32 0, i32 3
  %169 = ptrtoint ptr %file383 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.6, ptr %file383, align 4
  %message384 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion378, i32 0, i32 4
  %170 = ptrtoint ptr %message384 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %message384, align 4
  %va386 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion378, i32 0, i32 4, i32 1
  %171 = ptrtoint ptr %va386 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %va386, align 4
  %format387 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion378, i32 0, i32 5
  %172 = ptrtoint ptr %format387 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @kunit_binary_str_assert_format, ptr %format387, align 4
  %operation388 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion378, i32 0, i32 1
  %173 = ptrtoint ptr %operation388 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.8, ptr %operation388, align 4
  %left_text389 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion378, i32 0, i32 2
  %174 = ptrtoint ptr %left_text389 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.12, ptr %left_text389, align 4
  %left_value390 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion378, i32 0, i32 3
  %175 = ptrtoint ptr %left_value390 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call.i, ptr %left_value390, align 4
  %right_text391 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion378, i32 0, i32 4
  %176 = ptrtoint ptr %right_text391 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.75, ptr %right_text391, align 4
  %right_value392 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion378, i32 0, i32 5
  %177 = ptrtoint ptr %right_value392 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.74, ptr %right_value392, align 4
  %call394 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(21) @.str.74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %cmp395 = icmp eq i32 %call394, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion378, i1 noundef zeroext %cmp395, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion378) #4
  %178 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %values, align 4
  %179 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -2147483648, ptr %0, align 4
  %call411 = call i32 @iio_format_value(ptr noundef %call.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %values) #4
  %call415 = call i32 @strlen(ptr noundef %call.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion418) #4
  %180 = getelementptr inbounds i8, ptr %__assertion418, i32 32
  %181 = call ptr @memset(ptr %180, i32 255, i32 24)
  %182 = ptrtoint ptr %__assertion418 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %test, ptr %__assertion418, align 8
  %type421 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion418, i32 0, i32 1
  %183 = ptrtoint ptr %type421 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %type421, align 4
  %line422 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion418, i32 0, i32 2
  %184 = ptrtoint ptr %line422 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 250, ptr %line422, align 8
  %file423 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion418, i32 0, i32 3
  %185 = ptrtoint ptr %file423 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.6, ptr %file423, align 4
  %message424 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion418, i32 0, i32 4
  %186 = ptrtoint ptr %message424 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %message424, align 8
  %va426 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion418, i32 0, i32 4, i32 1
  %187 = ptrtoint ptr %va426 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %va426, align 4
  %format427 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion418, i32 0, i32 5
  %188 = ptrtoint ptr %format427 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @kunit_binary_assert_format, ptr %format427, align 8
  %operation428 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion418, i32 0, i32 1
  %189 = ptrtoint ptr %operation428 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @.str.8, ptr %operation428, align 4
  %left_text429 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion418, i32 0, i32 2
  %190 = ptrtoint ptr %left_text429 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @.str.9, ptr %left_text429, align 8
  %left_value430 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion418, i32 0, i32 3
  %conv431 = zext i32 %call415 to i64
  %191 = ptrtoint ptr %left_value430 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv431, ptr %left_value430, align 8
  %right_text432 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion418, i32 0, i32 4
  %192 = ptrtoint ptr %right_text432 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.10, ptr %right_text432, align 8
  %right_value433 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion418, i32 0, i32 5
  %conv434 = sext i32 %call411 to i64
  %193 = ptrtoint ptr %right_value433 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %conv434, ptr %right_value433, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call415, i32 %call411)
  %cmp436 = icmp eq i32 %call415, %call411
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion418, i1 noundef zeroext %cmp436, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion418) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion446) #4
  %194 = ptrtoint ptr %__assertion446 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %test, ptr %__assertion446, align 4
  %type449 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 1
  %195 = ptrtoint ptr %type449 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1, ptr %type449, align 4
  %line450 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 2
  %196 = ptrtoint ptr %line450 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 250, ptr %line450, align 4
  %file451 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 3
  %197 = ptrtoint ptr %file451 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @.str.6, ptr %file451, align 4
  %message452 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 4
  %198 = ptrtoint ptr %message452 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr null, ptr %message452, align 4
  %va454 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 4, i32 1
  %199 = ptrtoint ptr %va454 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr null, ptr %va454, align 4
  %format455 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 5
  %200 = ptrtoint ptr %format455 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @kunit_binary_str_assert_format, ptr %format455, align 4
  %operation456 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion446, i32 0, i32 1
  %201 = ptrtoint ptr %operation456 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @.str.8, ptr %operation456, align 4
  %left_text457 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion446, i32 0, i32 2
  %202 = ptrtoint ptr %left_text457 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @.str.12, ptr %left_text457, align 4
  %left_value458 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion446, i32 0, i32 3
  %203 = ptrtoint ptr %left_value458 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call.i, ptr %left_value458, align 4
  %right_text459 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion446, i32 0, i32 4
  %204 = ptrtoint ptr %right_text459 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @.str.77, ptr %right_text459, align 4
  %right_value460 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion446, i32 0, i32 5
  %205 = ptrtoint ptr %right_value460 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @.str.76, ptr %right_value460, align 4
  %call462 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(22) @.str.76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call462)
  %cmp463 = icmp eq i32 %call462, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion446, i1 noundef zeroext %cmp463, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion446) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #4
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
declare dso_local i32 @iio_format_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_str_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__UNIQUE_ID_suites185, !1, !"__UNIQUE_ID_suites185", i1 false, i1 false}
!1 = !{!"../drivers/iio/test/iio-test-format.c", i32 267, i32 1}
!2 = !{ptr @__UNIQUE_ID_array184, !1, !"__UNIQUE_ID_array184", i1 false, i1 false}
!3 = !{ptr @iio_format_test_suite, !4, !"iio_format_test_suite", i1 false, i1 false}
!4 = !{!"../drivers/iio/test/iio-test-format.c", i32 263, i32 27}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/iio/test/iio-test-format.c", i32 254, i32 3}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/iio/test/iio-test-format.c", i32 255, i32 3}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/iio/test/iio-test-format.c", i32 256, i32 3}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/test/iio-test-format.c", i32 257, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/test/iio-test-format.c", i32 258, i32 3}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/test/iio-test-format.c", i32 259, i32 3}
!17 = !{ptr @iio_format_test_cases, !18, !"iio_format_test_cases", i1 false, i1 false}
!18 = !{!"../drivers/iio/test/iio-test-format.c", i32 253, i32 26}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/test/iio-test-format.c", i32 22, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/test/iio-test-format.c", i32 26, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/test/iio-test-format.c", i32 30, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/test/iio-test-format.c", i32 34, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/test/iio-test-format.c", i32 38, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/test/iio-test-format.c", i32 42, i32 2}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/test/iio-test-format.c", i32 59, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/test/iio-test-format.c", i32 62, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/test/iio-test-format.c", i32 65, i32 2}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/test/iio-test-format.c", i32 72, i32 2}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/test/iio-test-format.c", i32 75, i32 2}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/test/iio-test-format.c", i32 78, i32 2}
!58 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/test/iio-test-format.c", i32 85, i32 2}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/test/iio-test-format.c", i32 88, i32 2}
!64 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/test/iio-test-format.c", i32 91, i32 2}
!67 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/test/iio-test-format.c", i32 97, i32 2}
!70 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/test/iio-test-format.c", i32 100, i32 2}
!73 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/test/iio-test-format.c", i32 103, i32 2}
!76 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/test/iio-test-format.c", i32 119, i32 2}
!79 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/test/iio-test-format.c", i32 125, i32 2}
!82 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/test/iio-test-format.c", i32 131, i32 2}
!85 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/test/iio-test-format.c", i32 137, i32 2}
!88 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/test/iio-test-format.c", i32 143, i32 2}
!91 = !{ptr @.str.55, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.56, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/test/iio-test-format.c", i32 159, i32 2}
!94 = !{ptr @.str.57, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/test/iio-test-format.c", i32 165, i32 2}
!97 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/test/iio-test-format.c", i32 171, i32 2}
!100 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/test/iio-test-format.c", i32 177, i32 2}
!103 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/test/iio-test-format.c", i32 197, i32 2}
!106 = !{ptr @.str.65, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.66, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/test/iio-test-format.c", i32 214, i32 2}
!109 = !{ptr @.str.67, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.68, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/test/iio-test-format.c", i32 220, i32 2}
!112 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.70, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/test/iio-test-format.c", i32 232, i32 2}
!115 = !{ptr @.str.71, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.72, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/test/iio-test-format.c", i32 238, i32 2}
!118 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/test/iio-test-format.c", i32 244, i32 2}
!121 = !{ptr @.str.75, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.76, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/test/iio-test-format.c", i32 250, i32 2}
!124 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
