; ModuleID = '/llk/IR_all_yes/lib/bitfield_kunit.c_pt.bc'
source_filename = "../lib/bitfield_kunit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @bitfields_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_author176 = internal constant [64 x i8] c"bitfield_kunit.author=Johannes Berg <johannes@sipsolutions.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [39 x i8] c"bitfield_kunit.file=lib/bitfield_kunit\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [27 x i8] c"bitfield_kunit.license=GPL\00", section ".modinfo", align 1
@bitfields_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"bitfields\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @bitfields_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@bitfields_test_cases = internal global [3 x %struct.kunit_case] [%struct.kunit_case { ptr @test_bitfields_constants, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @test_bitfields_variables, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], section ".ref.data", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_bitfields_constants\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_bitfields_variables\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/bitfield_kunit.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_res != 0x0001\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"u16_encode_bits(1, 0x000f) is 0x%llx != 0x0001\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"u16_get_bits(_res, 0x000f) != 1\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"_res != (( __le16)(__u16)__builtin_bswap16((__u16)((0x0001))))\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le16_encode_bits(1, 0x000f) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"le16_get_bits(_res, 0x000f) != 1\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_res != (( __be16)(__u16)(0x0001))\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be16_encode_bits(1, 0x000f) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"be16_get_bits(_res, 0x000f) != 1\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_res != 0x0030\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"u16_encode_bits(3, 0x00f0) is 0x%llx != 0x0030\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"u16_get_bits(_res, 0x00f0) != 3\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"_res != (( __le16)(__u16)__builtin_bswap16((__u16)((0x0030))))\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le16_encode_bits(3, 0x00f0) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"le16_get_bits(_res, 0x00f0) != 3\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_res != (( __be16)(__u16)(0x0030))\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be16_encode_bits(3, 0x00f0) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"be16_get_bits(_res, 0x00f0) != 3\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_res != 0x0500\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"u16_encode_bits(5, 0x0f00) is 0x%llx != 0x0500\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"u16_get_bits(_res, 0x0f00) != 5\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"_res != (( __le16)(__u16)__builtin_bswap16((__u16)((0x0500))))\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le16_encode_bits(5, 0x0f00) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"le16_get_bits(_res, 0x0f00) != 5\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_res != (( __be16)(__u16)(0x0500))\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be16_encode_bits(5, 0x0f00) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"be16_get_bits(_res, 0x0f00) != 5\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_res != 0x7000\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"u16_encode_bits(7, 0xf000) is 0x%llx != 0x7000\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"u16_get_bits(_res, 0xf000) != 7\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"_res != (( __le16)(__u16)__builtin_bswap16((__u16)((0x7000))))\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le16_encode_bits(7, 0xf000) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"le16_get_bits(_res, 0xf000) != 7\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_res != (( __be16)(__u16)(0x7000))\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be16_encode_bits(7, 0xf000) is 0x%llx != 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"be16_get_bits(_res, 0xf000) != 7\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_res != 0x000e\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"u16_encode_bits(14, 0x000f) is 0x%llx != 0x000e\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"u16_get_bits(_res, 0x000f) != 14\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"_res != (( __le16)(__u16)__builtin_bswap16((__u16)((0x000e))))\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"le16_encode_bits(14, 0x000f) is 0x%llx != 0x%llx\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"le16_get_bits(_res, 0x000f) != 14\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_res != (( __be16)(__u16)(0x000e))\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"be16_encode_bits(14, 0x000f) is 0x%llx != 0x%llx\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"be16_get_bits(_res, 0x000f) != 14\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_res != 0x00f0\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"u16_encode_bits(15, 0x00f0) is 0x%llx != 0x00f0\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"u16_get_bits(_res, 0x00f0) != 15\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"_res != (( __le16)(__u16)__builtin_bswap16((__u16)((0x00f0))))\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"le16_encode_bits(15, 0x00f0) is 0x%llx != 0x%llx\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"le16_get_bits(_res, 0x00f0) != 15\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_res != (( __be16)(__u16)(0x00f0))\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"be16_encode_bits(15, 0x00f0) is 0x%llx != 0x%llx\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"be16_get_bits(_res, 0x00f0) != 15\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_res != 0x01\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"u8_encode_bits(1, 0x0f) is 0x%llx != 0x01\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"u8_get_bits(_res, 0x0f) != 1\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_res != 0x30\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"u8_encode_bits(3, 0xf0) is 0x%llx != 0x30\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"u8_get_bits(_res, 0xf0) != 3\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_res != 0x0e\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"u8_encode_bits(14, 0x0f) is 0x%llx != 0x0e\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"u8_get_bits(_res, 0x0f) != 14\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_res != 0xf0\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"u8_encode_bits(15, 0xf0) is 0x%llx != 0xf0\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"u8_get_bits(_res, 0xf0) != 15\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_res != 0x00000100\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"u32_encode_bits(1, 0x00000f00) is 0x%llx != 0x00000100\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"u32_get_bits(_res, 0x00000f00) != 1\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"_res != (( __le32)(__u32)__builtin_bswap32((__u32)((0x00000100))))\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"le32_encode_bits(1, 0x00000f00) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"le32_get_bits(_res, 0x00000f00) != 1\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_res != (( __be32)(__u32)(0x00000100))\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"be32_encode_bits(1, 0x00000f00) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"be32_get_bits(_res, 0x00000f00) != 1\00", [59 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_res != 0x00003000\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"u32_encode_bits(3, 0x0000f000) is 0x%llx != 0x00003000\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"u32_get_bits(_res, 0x0000f000) != 3\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"_res != (( __le32)(__u32)__builtin_bswap32((__u32)((0x00003000))))\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"le32_encode_bits(3, 0x0000f000) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"le32_get_bits(_res, 0x0000f000) != 3\00", [59 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_res != (( __be32)(__u32)(0x00003000))\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"be32_encode_bits(3, 0x0000f000) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"be32_get_bits(_res, 0x0000f000) != 3\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_res != 0x00050000\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"u32_encode_bits(5, 0x000f0000) is 0x%llx != 0x00050000\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"u32_get_bits(_res, 0x000f0000) != 5\00", [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"_res != (( __le32)(__u32)__builtin_bswap32((__u32)((0x00050000))))\00", [61 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"le32_encode_bits(5, 0x000f0000) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"le32_get_bits(_res, 0x000f0000) != 5\00", [59 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_res != (( __be32)(__u32)(0x00050000))\00", [57 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"be32_encode_bits(5, 0x000f0000) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"be32_get_bits(_res, 0x000f0000) != 5\00", [59 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_res != 0x00700000\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"u32_encode_bits(7, 0x00f00000) is 0x%llx != 0x00700000\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"u32_get_bits(_res, 0x00f00000) != 7\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"_res != (( __le32)(__u32)__builtin_bswap32((__u32)((0x00700000))))\00", [61 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"le32_encode_bits(7, 0x00f00000) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"le32_get_bits(_res, 0x00f00000) != 7\00", [59 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_res != (( __be32)(__u32)(0x00700000))\00", [57 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"be32_encode_bits(7, 0x00f00000) is 0x%llx != 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"be32_get_bits(_res, 0x00f00000) != 7\00", [59 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_res != 0x0e000000\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"u32_encode_bits(14, 0x0f000000) is 0x%llx != 0x0e000000\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"u32_get_bits(_res, 0x0f000000) != 14\00", [59 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"_res != (( __le32)(__u32)__builtin_bswap32((__u32)((0x0e000000))))\00", [61 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"le32_encode_bits(14, 0x0f000000) is 0x%llx != 0x%llx\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"le32_get_bits(_res, 0x0f000000) != 14\00", [58 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_res != (( __be32)(__u32)(0x0e000000))\00", [57 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"be32_encode_bits(14, 0x0f000000) is 0x%llx != 0x%llx\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"be32_get_bits(_res, 0x0f000000) != 14\00", [58 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_res != 0xf0000000\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"u32_encode_bits(15, 0xf0000000) is 0x%llx != 0xf0000000\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"u32_get_bits(_res, 0xf0000000) != 15\00", [59 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"_res != (( __le32)(__u32)__builtin_bswap32((__u32)((0xf0000000))))\00", [61 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"le32_encode_bits(15, 0xf0000000) is 0x%llx != 0x%llx\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"le32_get_bits(_res, 0xf0000000) != 15\00", [58 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_res != (( __be32)(__u32)(0xf0000000))\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"be32_encode_bits(15, 0xf0000000) is 0x%llx != 0x%llx\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"be32_get_bits(_res, 0xf0000000) != 15\00", [58 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_res != 0x0000010000000000ull\00", [34 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"u64_encode_bits(1, 0x00000f0000000000ull) is 0x%llx != 0x0000010000000000ull\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"u64_get_bits(_res, 0x00000f0000000000ull) != 1\00", [49 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"_res != (( __le64)(__u64)__builtin_bswap64((__u64)((0x0000010000000000ull))))\00", [50 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"le64_encode_bits(1, 0x00000f0000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le64_get_bits(_res, 0x00000f0000000000ull) != 1\00", [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"_res != (( __be64)(__u64)(0x0000010000000000ull))\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"be64_encode_bits(1, 0x00000f0000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be64_get_bits(_res, 0x00000f0000000000ull) != 1\00", [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_res != 0x0000300000000000ull\00", [34 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"u64_encode_bits(3, 0x0000f00000000000ull) is 0x%llx != 0x0000300000000000ull\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"u64_get_bits(_res, 0x0000f00000000000ull) != 3\00", [49 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"_res != (( __le64)(__u64)__builtin_bswap64((__u64)((0x0000300000000000ull))))\00", [50 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"le64_encode_bits(3, 0x0000f00000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le64_get_bits(_res, 0x0000f00000000000ull) != 3\00", [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"_res != (( __be64)(__u64)(0x0000300000000000ull))\00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"be64_encode_bits(3, 0x0000f00000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be64_get_bits(_res, 0x0000f00000000000ull) != 3\00", [48 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_res != 0x0005000000000000ull\00", [34 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"u64_encode_bits(5, 0x000f000000000000ull) is 0x%llx != 0x0005000000000000ull\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"u64_get_bits(_res, 0x000f000000000000ull) != 5\00", [49 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"_res != (( __le64)(__u64)__builtin_bswap64((__u64)((0x0005000000000000ull))))\00", [50 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"le64_encode_bits(5, 0x000f000000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le64_get_bits(_res, 0x000f000000000000ull) != 5\00", [48 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"_res != (( __be64)(__u64)(0x0005000000000000ull))\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"be64_encode_bits(5, 0x000f000000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be64_get_bits(_res, 0x000f000000000000ull) != 5\00", [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_res != 0x0070000000000000ull\00", [34 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"u64_encode_bits(7, 0x00f0000000000000ull) is 0x%llx != 0x0070000000000000ull\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"u64_get_bits(_res, 0x00f0000000000000ull) != 7\00", [49 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"_res != (( __le64)(__u64)__builtin_bswap64((__u64)((0x0070000000000000ull))))\00", [50 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"le64_encode_bits(7, 0x00f0000000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"le64_get_bits(_res, 0x00f0000000000000ull) != 7\00", [48 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"_res != (( __be64)(__u64)(0x0070000000000000ull))\00", [46 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"be64_encode_bits(7, 0x00f0000000000000ull) is 0x%llx != 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"be64_get_bits(_res, 0x00f0000000000000ull) != 7\00", [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_res != 0x0e00000000000000ull\00", [34 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"u64_encode_bits(14, 0x0f00000000000000ull) is 0x%llx != 0x0e00000000000000ull\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"u64_get_bits(_res, 0x0f00000000000000ull) != 14\00", [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"_res != (( __le64)(__u64)__builtin_bswap64((__u64)((0x0e00000000000000ull))))\00", [50 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"le64_encode_bits(14, 0x0f00000000000000ull) is 0x%llx != 0x%llx\00", [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"le64_get_bits(_res, 0x0f00000000000000ull) != 14\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"_res != (( __be64)(__u64)(0x0e00000000000000ull))\00", [46 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"be64_encode_bits(14, 0x0f00000000000000ull) is 0x%llx != 0x%llx\00", [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"be64_get_bits(_res, 0x0f00000000000000ull) != 14\00", [47 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_res != 0xf000000000000000ull\00", [34 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"u64_encode_bits(15, 0xf000000000000000ull) is 0x%llx != 0xf000000000000000ull\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"u64_get_bits(_res, 0xf000000000000000ull) != 15\00", [48 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"_res != (( __le64)(__u64)__builtin_bswap64((__u64)((0xf000000000000000ull))))\00", [50 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"le64_encode_bits(15, 0xf000000000000000ull) is 0x%llx != 0x%llx\00", [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"le64_get_bits(_res, 0xf000000000000000ull) != 15\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"_res != (( __be64)(__u64)(0xf000000000000000ull))\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"be64_encode_bits(15, 0xf000000000000000ull) is 0x%llx != 0x%llx\00", [32 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"be64_get_bits(_res, 0xf000000000000000ull) != 15\00", [47 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"u8_encode_bits(v, 0x0f) != v << __ffs64(0x0f)\00", [50 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"u8_encode_bits(v, 0xf0) != v << __ffs64(0xf0)\00", [50 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"u8_encode_bits(v, 0x38) != v << __ffs64(0x38)\00", [50 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"u16_encode_bits(v, 0x0038) != v << __ffs64(0x0038)\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"u16_encode_bits(v, 0x0380) != v << __ffs64(0x0380)\00", [45 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"u16_encode_bits(v, 0x3800) != v << __ffs64(0x3800)\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"u16_encode_bits(v, 0x8000) != v << __ffs64(0x8000)\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32_encode_bits(v, 0x80000000) != v << __ffs64(0x80000000)\00", [37 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32_encode_bits(v, 0x7f000000) != v << __ffs64(0x7f000000)\00", [37 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32_encode_bits(v, 0x07e00000) != v << __ffs64(0x07e00000)\00", [37 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32_encode_bits(v, 0x00018000) != v << __ffs64(0x00018000)\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"u64_encode_bits(v, 0x8000000000000000ull) != v << __ffs64(0x8000000000000000ull)\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"u64_encode_bits(v, 0x7f00000000000000ull) != v << __ffs64(0x7f00000000000000ull)\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"u64_encode_bits(v, 0x0001800000000000ull) != v << __ffs64(0x0001800000000000ull)\00", [47 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"u64_encode_bits(v, 0x0000000080000000ull) != v << __ffs64(0x0000000080000000ull)\00", [47 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"u64_encode_bits(v, 0x000000007f000000ull) != v << __ffs64(0x000000007f000000ull)\00", [47 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"u64_encode_bits(v, 0x0000000018000000ull) != v << __ffs64(0x0000000018000000ull)\00", [47 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"u64_encode_bits(v, 0x0000001f8000000ull) != v << __ffs64(0x0000001f8000000ull)\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"bitfields_test_suite\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 146, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 141, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 142, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 68, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 69, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 70, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 71, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 72, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 73, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 75, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 76, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 77, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 78, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 80, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 81, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 82, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 83, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 84, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 85, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 87, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 88, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 89, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 90, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 91, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 92, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 105, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 106, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 107, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 109, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 110, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 111, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 112, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 114, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 115, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 116, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 117, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 119, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 120, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 121, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 122, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 123, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 124, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.781 = private constant [24 x i8] c"../lib/bitfield_kunit.c\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 125, i32 2 }
@llvm.compiler.used = appending global [200 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_suites175, ptr @bitfields_test_suite, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194], section "llvm.metadata"
@0 = internal global [196 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitfields_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_bitfields_constants(ptr noundef %context) #0 section ".init.text" align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion10 = alloca %struct.kunit_unary_assert, align 4
  %__assertion41 = alloca %struct.kunit_unary_assert, align 4
  %__assertion67 = alloca %struct.kunit_unary_assert, align 4
  %__assertion98 = alloca %struct.kunit_unary_assert, align 4
  %__assertion124 = alloca %struct.kunit_unary_assert, align 4
  %__assertion158 = alloca %struct.kunit_unary_assert, align 4
  %__assertion184 = alloca %struct.kunit_unary_assert, align 4
  %__assertion215 = alloca %struct.kunit_unary_assert, align 4
  %__assertion241 = alloca %struct.kunit_unary_assert, align 4
  %__assertion272 = alloca %struct.kunit_unary_assert, align 4
  %__assertion298 = alloca %struct.kunit_unary_assert, align 4
  %__assertion332 = alloca %struct.kunit_unary_assert, align 4
  %__assertion358 = alloca %struct.kunit_unary_assert, align 4
  %__assertion389 = alloca %struct.kunit_unary_assert, align 4
  %__assertion415 = alloca %struct.kunit_unary_assert, align 4
  %__assertion446 = alloca %struct.kunit_unary_assert, align 4
  %__assertion472 = alloca %struct.kunit_unary_assert, align 4
  %__assertion506 = alloca %struct.kunit_unary_assert, align 4
  %__assertion532 = alloca %struct.kunit_unary_assert, align 4
  %__assertion563 = alloca %struct.kunit_unary_assert, align 4
  %__assertion589 = alloca %struct.kunit_unary_assert, align 4
  %__assertion620 = alloca %struct.kunit_unary_assert, align 4
  %__assertion646 = alloca %struct.kunit_unary_assert, align 4
  %__assertion680 = alloca %struct.kunit_unary_assert, align 4
  %__assertion706 = alloca %struct.kunit_unary_assert, align 4
  %__assertion737 = alloca %struct.kunit_unary_assert, align 4
  %__assertion763 = alloca %struct.kunit_unary_assert, align 4
  %__assertion794 = alloca %struct.kunit_unary_assert, align 4
  %__assertion820 = alloca %struct.kunit_unary_assert, align 4
  %__assertion854 = alloca %struct.kunit_unary_assert, align 4
  %__assertion880 = alloca %struct.kunit_unary_assert, align 4
  %__assertion911 = alloca %struct.kunit_unary_assert, align 4
  %__assertion937 = alloca %struct.kunit_unary_assert, align 4
  %__assertion968 = alloca %struct.kunit_unary_assert, align 4
  %__assertion994 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1027 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1053 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1084 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1110 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1141 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1167 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1198 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1224 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1256 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1281 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1311 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1336 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1366 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1391 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1424 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1449 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1479 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1504 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1534 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1559 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1592 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1617 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1647 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1672 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1702 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1727 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1760 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1785 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1815 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1840 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1870 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1895 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1928 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1953 = alloca %struct.kunit_unary_assert, align 4
  %__assertion1983 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2008 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2038 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2063 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2096 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2121 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2151 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2176 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2206 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2231 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2264 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2288 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2318 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2342 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2372 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2396 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2429 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2453 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2483 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2507 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2537 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2561 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2594 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2618 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2648 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2672 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2702 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2726 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2759 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2783 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2813 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2837 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2867 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2891 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2924 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2948 = alloca %struct.kunit_unary_assert, align 4
  %__assertion2978 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3002 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3032 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3056 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3089 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3113 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3143 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3167 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3197 = alloca %struct.kunit_unary_assert, align 4
  %__assertion3221 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #5
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !257
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %context, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 68, ptr %line, align 4
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
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.3, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %expected_true, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef nonnull @.str.4, i64 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion10) #5
  %11 = getelementptr inbounds i8, ptr %__assertion10, i32 32
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !257
  %13 = ptrtoint ptr %__assertion10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %context, ptr %__assertion10, align 4
  %type13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 1
  %14 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %type13, align 4
  %line14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion10, i32 0, i32 2
  %15 = ptrtoint ptr %line14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 68, ptr %line14, align 4
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
  %condition20 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 1
  %20 = ptrtoint ptr %condition20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.5, ptr %condition20, align 4
  %expected_true21 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion10, i32 0, i32 2
  %21 = ptrtoint ptr %expected_true21 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %expected_true21, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion10, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion10) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion41) #5
  %22 = getelementptr inbounds i8, ptr %__assertion41, i32 32
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !257
  %24 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %context, ptr %__assertion41, align 4
  %type44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %25 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type44, align 4
  %line45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %26 = ptrtoint ptr %line45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 68, ptr %line45, align 4
  %file46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %27 = ptrtoint ptr %file46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.2, ptr %file46, align 4
  %message47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %28 = ptrtoint ptr %message47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message47, align 4
  %va49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %va49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va49, align 4
  %format50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %30 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_unary_assert_format, ptr %format50, align 4
  %condition51 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion41, i32 0, i32 1
  %31 = ptrtoint ptr %condition51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.6, ptr %condition51, align 4
  %expected_true52 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion41, i32 0, i32 2
  %32 = ptrtoint ptr %expected_true52 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %expected_true52, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion41, i1 noundef zeroext true, ptr noundef nonnull @.str.7, i64 noundef 1, i64 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion41) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion67) #5
  %33 = getelementptr inbounds i8, ptr %__assertion67, i32 32
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4, !annotation !257
  %35 = ptrtoint ptr %__assertion67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %context, ptr %__assertion67, align 4
  %type70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 1
  %36 = ptrtoint ptr %type70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %type70, align 4
  %line71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 2
  %37 = ptrtoint ptr %line71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 68, ptr %line71, align 4
  %file72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 3
  %38 = ptrtoint ptr %file72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.2, ptr %file72, align 4
  %message73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 4
  %39 = ptrtoint ptr %message73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message73, align 4
  %va75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va75 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va75, align 4
  %format76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 5
  %41 = ptrtoint ptr %format76 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_unary_assert_format, ptr %format76, align 4
  %condition77 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion67, i32 0, i32 1
  %42 = ptrtoint ptr %condition77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.8, ptr %condition77, align 4
  %expected_true78 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion67, i32 0, i32 2
  %43 = ptrtoint ptr %expected_true78 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %expected_true78, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion67, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion67) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion98) #5
  %44 = getelementptr inbounds i8, ptr %__assertion98, i32 32
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %44, align 4, !annotation !257
  %46 = ptrtoint ptr %__assertion98 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %context, ptr %__assertion98, align 4
  %type101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 1
  %47 = ptrtoint ptr %type101 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %type101, align 4
  %line102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 2
  %48 = ptrtoint ptr %line102 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 68, ptr %line102, align 4
  %file103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 3
  %49 = ptrtoint ptr %file103 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.2, ptr %file103, align 4
  %message104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4
  %50 = ptrtoint ptr %message104 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message104, align 4
  %va106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va106 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va106, align 4
  %format107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 5
  %52 = ptrtoint ptr %format107 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_unary_assert_format, ptr %format107, align 4
  %condition108 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion98, i32 0, i32 1
  %53 = ptrtoint ptr %condition108 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.9, ptr %condition108, align 4
  %expected_true109 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion98, i32 0, i32 2
  %54 = ptrtoint ptr %expected_true109 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %expected_true109, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion98, i1 noundef zeroext true, ptr noundef nonnull @.str.10, i64 noundef 1, i64 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion98) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion124) #5
  %55 = getelementptr inbounds i8, ptr %__assertion124, i32 32
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %55, align 4, !annotation !257
  %57 = ptrtoint ptr %__assertion124 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %context, ptr %__assertion124, align 4
  %type127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 1
  %58 = ptrtoint ptr %type127 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %type127, align 4
  %line128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 2
  %59 = ptrtoint ptr %line128 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 68, ptr %line128, align 4
  %file129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 3
  %60 = ptrtoint ptr %file129 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.2, ptr %file129, align 4
  %message130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4
  %61 = ptrtoint ptr %message130 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %message130, align 4
  %va132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %va132 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %va132, align 4
  %format133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion124, i32 0, i32 5
  %63 = ptrtoint ptr %format133 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kunit_unary_assert_format, ptr %format133, align 4
  %condition134 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion124, i32 0, i32 1
  %64 = ptrtoint ptr %condition134 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.11, ptr %condition134, align 4
  %expected_true135 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion124, i32 0, i32 2
  %65 = ptrtoint ptr %expected_true135 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %expected_true135, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion124, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion124) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion158) #5
  %66 = getelementptr inbounds i8, ptr %__assertion158, i32 32
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %66, align 4, !annotation !257
  %68 = ptrtoint ptr %__assertion158 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %context, ptr %__assertion158, align 4
  %type161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 1
  %69 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %type161, align 4
  %line162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 2
  %70 = ptrtoint ptr %line162 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 69, ptr %line162, align 4
  %file163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 3
  %71 = ptrtoint ptr %file163 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.2, ptr %file163, align 4
  %message164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4
  %72 = ptrtoint ptr %message164 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %message164, align 4
  %va166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %va166 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %va166, align 4
  %format167 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 5
  %74 = ptrtoint ptr %format167 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @kunit_unary_assert_format, ptr %format167, align 4
  %condition168 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion158, i32 0, i32 1
  %75 = ptrtoint ptr %condition168 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.12, ptr %condition168, align 4
  %expected_true169 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion158, i32 0, i32 2
  %76 = ptrtoint ptr %expected_true169 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %expected_true169, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion158, i1 noundef zeroext true, ptr noundef nonnull @.str.13, i64 noundef 48) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion158) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion184) #5
  %77 = getelementptr inbounds i8, ptr %__assertion184, i32 32
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %77, align 4, !annotation !257
  %79 = ptrtoint ptr %__assertion184 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %context, ptr %__assertion184, align 4
  %type187 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion184, i32 0, i32 1
  %80 = ptrtoint ptr %type187 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %type187, align 4
  %line188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion184, i32 0, i32 2
  %81 = ptrtoint ptr %line188 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 69, ptr %line188, align 4
  %file189 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion184, i32 0, i32 3
  %82 = ptrtoint ptr %file189 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.2, ptr %file189, align 4
  %message190 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion184, i32 0, i32 4
  %83 = ptrtoint ptr %message190 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message190, align 4
  %va192 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion184, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va192 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va192, align 4
  %format193 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion184, i32 0, i32 5
  %85 = ptrtoint ptr %format193 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_unary_assert_format, ptr %format193, align 4
  %condition194 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion184, i32 0, i32 1
  %86 = ptrtoint ptr %condition194 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.14, ptr %condition194, align 4
  %expected_true195 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion184, i32 0, i32 2
  %87 = ptrtoint ptr %expected_true195 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %expected_true195, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion184, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion184) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion215) #5
  %88 = getelementptr inbounds i8, ptr %__assertion215, i32 32
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %88, align 4, !annotation !257
  %90 = ptrtoint ptr %__assertion215 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %context, ptr %__assertion215, align 4
  %type218 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion215, i32 0, i32 1
  %91 = ptrtoint ptr %type218 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %type218, align 4
  %line219 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion215, i32 0, i32 2
  %92 = ptrtoint ptr %line219 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 69, ptr %line219, align 4
  %file220 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion215, i32 0, i32 3
  %93 = ptrtoint ptr %file220 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.2, ptr %file220, align 4
  %message221 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion215, i32 0, i32 4
  %94 = ptrtoint ptr %message221 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %message221, align 4
  %va223 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion215, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %va223 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %va223, align 4
  %format224 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion215, i32 0, i32 5
  %96 = ptrtoint ptr %format224 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @kunit_unary_assert_format, ptr %format224, align 4
  %condition225 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion215, i32 0, i32 1
  %97 = ptrtoint ptr %condition225 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.15, ptr %condition225, align 4
  %expected_true226 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion215, i32 0, i32 2
  %98 = ptrtoint ptr %expected_true226 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %expected_true226, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion215, i1 noundef zeroext true, ptr noundef nonnull @.str.16, i64 noundef 48, i64 noundef 48) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion215) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion241) #5
  %99 = getelementptr inbounds i8, ptr %__assertion241, i32 32
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %99, align 4, !annotation !257
  %101 = ptrtoint ptr %__assertion241 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %context, ptr %__assertion241, align 4
  %type244 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion241, i32 0, i32 1
  %102 = ptrtoint ptr %type244 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %type244, align 4
  %line245 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion241, i32 0, i32 2
  %103 = ptrtoint ptr %line245 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 69, ptr %line245, align 4
  %file246 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion241, i32 0, i32 3
  %104 = ptrtoint ptr %file246 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.2, ptr %file246, align 4
  %message247 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion241, i32 0, i32 4
  %105 = ptrtoint ptr %message247 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %message247, align 4
  %va249 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion241, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %va249 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %va249, align 4
  %format250 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion241, i32 0, i32 5
  %107 = ptrtoint ptr %format250 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @kunit_unary_assert_format, ptr %format250, align 4
  %condition251 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion241, i32 0, i32 1
  %108 = ptrtoint ptr %condition251 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.17, ptr %condition251, align 4
  %expected_true252 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion241, i32 0, i32 2
  %109 = ptrtoint ptr %expected_true252 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %expected_true252, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion241, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion241) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion272) #5
  %110 = getelementptr inbounds i8, ptr %__assertion272, i32 32
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %110, align 4, !annotation !257
  %112 = ptrtoint ptr %__assertion272 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %context, ptr %__assertion272, align 4
  %type275 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272, i32 0, i32 1
  %113 = ptrtoint ptr %type275 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %type275, align 4
  %line276 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272, i32 0, i32 2
  %114 = ptrtoint ptr %line276 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 69, ptr %line276, align 4
  %file277 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272, i32 0, i32 3
  %115 = ptrtoint ptr %file277 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.2, ptr %file277, align 4
  %message278 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272, i32 0, i32 4
  %116 = ptrtoint ptr %message278 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %message278, align 4
  %va280 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272, i32 0, i32 4, i32 1
  %117 = ptrtoint ptr %va280 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %va280, align 4
  %format281 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion272, i32 0, i32 5
  %118 = ptrtoint ptr %format281 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @kunit_unary_assert_format, ptr %format281, align 4
  %condition282 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion272, i32 0, i32 1
  %119 = ptrtoint ptr %condition282 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.18, ptr %condition282, align 4
  %expected_true283 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion272, i32 0, i32 2
  %120 = ptrtoint ptr %expected_true283 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %expected_true283, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion272, i1 noundef zeroext true, ptr noundef nonnull @.str.19, i64 noundef 48, i64 noundef 48) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion272) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion298) #5
  %121 = getelementptr inbounds i8, ptr %__assertion298, i32 32
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %121, align 4, !annotation !257
  %123 = ptrtoint ptr %__assertion298 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %context, ptr %__assertion298, align 4
  %type301 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 1
  %124 = ptrtoint ptr %type301 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %type301, align 4
  %line302 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 2
  %125 = ptrtoint ptr %line302 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 69, ptr %line302, align 4
  %file303 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 3
  %126 = ptrtoint ptr %file303 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.2, ptr %file303, align 4
  %message304 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 4
  %127 = ptrtoint ptr %message304 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %message304, align 4
  %va306 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 4, i32 1
  %128 = ptrtoint ptr %va306 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %va306, align 4
  %format307 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion298, i32 0, i32 5
  %129 = ptrtoint ptr %format307 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @kunit_unary_assert_format, ptr %format307, align 4
  %condition308 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion298, i32 0, i32 1
  %130 = ptrtoint ptr %condition308 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.20, ptr %condition308, align 4
  %expected_true309 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion298, i32 0, i32 2
  %131 = ptrtoint ptr %expected_true309 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %expected_true309, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion298, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion298) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion332) #5
  %132 = getelementptr inbounds i8, ptr %__assertion332, i32 32
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %132, align 4, !annotation !257
  %134 = ptrtoint ptr %__assertion332 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %context, ptr %__assertion332, align 4
  %type335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 1
  %135 = ptrtoint ptr %type335 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %type335, align 4
  %line336 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 2
  %136 = ptrtoint ptr %line336 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 70, ptr %line336, align 4
  %file337 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 3
  %137 = ptrtoint ptr %file337 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.2, ptr %file337, align 4
  %message338 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 4
  %138 = ptrtoint ptr %message338 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %message338, align 4
  %va340 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 4, i32 1
  %139 = ptrtoint ptr %va340 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %va340, align 4
  %format341 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 5
  %140 = ptrtoint ptr %format341 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @kunit_unary_assert_format, ptr %format341, align 4
  %condition342 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion332, i32 0, i32 1
  %141 = ptrtoint ptr %condition342 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.21, ptr %condition342, align 4
  %expected_true343 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion332, i32 0, i32 2
  %142 = ptrtoint ptr %expected_true343 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %expected_true343, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion332, i1 noundef zeroext true, ptr noundef nonnull @.str.22, i64 noundef 1280) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion332) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion358) #5
  %143 = getelementptr inbounds i8, ptr %__assertion358, i32 32
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %143, align 4, !annotation !257
  %145 = ptrtoint ptr %__assertion358 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %context, ptr %__assertion358, align 4
  %type361 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 1
  %146 = ptrtoint ptr %type361 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %type361, align 4
  %line362 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 2
  %147 = ptrtoint ptr %line362 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 70, ptr %line362, align 4
  %file363 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 3
  %148 = ptrtoint ptr %file363 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.2, ptr %file363, align 4
  %message364 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 4
  %149 = ptrtoint ptr %message364 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %message364, align 4
  %va366 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %va366 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %va366, align 4
  %format367 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 5
  %151 = ptrtoint ptr %format367 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @kunit_unary_assert_format, ptr %format367, align 4
  %condition368 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion358, i32 0, i32 1
  %152 = ptrtoint ptr %condition368 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @.str.23, ptr %condition368, align 4
  %expected_true369 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion358, i32 0, i32 2
  %153 = ptrtoint ptr %expected_true369 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %expected_true369, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion358, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion358) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion389) #5
  %154 = getelementptr inbounds i8, ptr %__assertion389, i32 32
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -1, ptr %154, align 4, !annotation !257
  %156 = ptrtoint ptr %__assertion389 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %context, ptr %__assertion389, align 4
  %type392 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion389, i32 0, i32 1
  %157 = ptrtoint ptr %type392 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %type392, align 4
  %line393 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion389, i32 0, i32 2
  %158 = ptrtoint ptr %line393 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 70, ptr %line393, align 4
  %file394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion389, i32 0, i32 3
  %159 = ptrtoint ptr %file394 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str.2, ptr %file394, align 4
  %message395 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion389, i32 0, i32 4
  %160 = ptrtoint ptr %message395 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %message395, align 4
  %va397 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion389, i32 0, i32 4, i32 1
  %161 = ptrtoint ptr %va397 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %va397, align 4
  %format398 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion389, i32 0, i32 5
  %162 = ptrtoint ptr %format398 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @kunit_unary_assert_format, ptr %format398, align 4
  %condition399 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion389, i32 0, i32 1
  %163 = ptrtoint ptr %condition399 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.24, ptr %condition399, align 4
  %expected_true400 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion389, i32 0, i32 2
  %164 = ptrtoint ptr %expected_true400 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %expected_true400, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion389, i1 noundef zeroext true, ptr noundef nonnull @.str.25, i64 noundef 1280, i64 noundef 1280) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion389) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion415) #5
  %165 = getelementptr inbounds i8, ptr %__assertion415, i32 32
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %165, align 4, !annotation !257
  %167 = ptrtoint ptr %__assertion415 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %context, ptr %__assertion415, align 4
  %type418 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 1
  %168 = ptrtoint ptr %type418 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %type418, align 4
  %line419 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 2
  %169 = ptrtoint ptr %line419 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 70, ptr %line419, align 4
  %file420 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 3
  %170 = ptrtoint ptr %file420 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @.str.2, ptr %file420, align 4
  %message421 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 4
  %171 = ptrtoint ptr %message421 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %message421, align 4
  %va423 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 4, i32 1
  %172 = ptrtoint ptr %va423 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %va423, align 4
  %format424 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion415, i32 0, i32 5
  %173 = ptrtoint ptr %format424 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @kunit_unary_assert_format, ptr %format424, align 4
  %condition425 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion415, i32 0, i32 1
  %174 = ptrtoint ptr %condition425 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.26, ptr %condition425, align 4
  %expected_true426 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion415, i32 0, i32 2
  %175 = ptrtoint ptr %expected_true426 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %expected_true426, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion415, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion415) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion446) #5
  %176 = getelementptr inbounds i8, ptr %__assertion446, i32 32
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -1, ptr %176, align 4, !annotation !257
  %178 = ptrtoint ptr %__assertion446 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %context, ptr %__assertion446, align 4
  %type449 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 1
  %179 = ptrtoint ptr %type449 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %type449, align 4
  %line450 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 2
  %180 = ptrtoint ptr %line450 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 70, ptr %line450, align 4
  %file451 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 3
  %181 = ptrtoint ptr %file451 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.2, ptr %file451, align 4
  %message452 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 4
  %182 = ptrtoint ptr %message452 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %message452, align 4
  %va454 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 4, i32 1
  %183 = ptrtoint ptr %va454 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %va454, align 4
  %format455 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion446, i32 0, i32 5
  %184 = ptrtoint ptr %format455 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr @kunit_unary_assert_format, ptr %format455, align 4
  %condition456 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion446, i32 0, i32 1
  %185 = ptrtoint ptr %condition456 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.27, ptr %condition456, align 4
  %expected_true457 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion446, i32 0, i32 2
  %186 = ptrtoint ptr %expected_true457 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %expected_true457, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion446, i1 noundef zeroext true, ptr noundef nonnull @.str.28, i64 noundef 1280, i64 noundef 1280) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion446) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion472) #5
  %187 = getelementptr inbounds i8, ptr %__assertion472, i32 32
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %187, align 4, !annotation !257
  %189 = ptrtoint ptr %__assertion472 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %context, ptr %__assertion472, align 4
  %type475 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion472, i32 0, i32 1
  %190 = ptrtoint ptr %type475 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %type475, align 4
  %line476 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion472, i32 0, i32 2
  %191 = ptrtoint ptr %line476 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 70, ptr %line476, align 4
  %file477 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion472, i32 0, i32 3
  %192 = ptrtoint ptr %file477 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.2, ptr %file477, align 4
  %message478 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion472, i32 0, i32 4
  %193 = ptrtoint ptr %message478 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %message478, align 4
  %va480 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion472, i32 0, i32 4, i32 1
  %194 = ptrtoint ptr %va480 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %va480, align 4
  %format481 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion472, i32 0, i32 5
  %195 = ptrtoint ptr %format481 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @kunit_unary_assert_format, ptr %format481, align 4
  %condition482 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion472, i32 0, i32 1
  %196 = ptrtoint ptr %condition482 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.29, ptr %condition482, align 4
  %expected_true483 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion472, i32 0, i32 2
  %197 = ptrtoint ptr %expected_true483 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %expected_true483, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion472, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion472) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion506) #5
  %198 = getelementptr inbounds i8, ptr %__assertion506, i32 32
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %198, align 4, !annotation !257
  %200 = ptrtoint ptr %__assertion506 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %context, ptr %__assertion506, align 4
  %type509 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion506, i32 0, i32 1
  %201 = ptrtoint ptr %type509 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %type509, align 4
  %line510 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion506, i32 0, i32 2
  %202 = ptrtoint ptr %line510 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 71, ptr %line510, align 4
  %file511 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion506, i32 0, i32 3
  %203 = ptrtoint ptr %file511 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @.str.2, ptr %file511, align 4
  %message512 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion506, i32 0, i32 4
  %204 = ptrtoint ptr %message512 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %message512, align 4
  %va514 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion506, i32 0, i32 4, i32 1
  %205 = ptrtoint ptr %va514 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %va514, align 4
  %format515 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion506, i32 0, i32 5
  %206 = ptrtoint ptr %format515 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @kunit_unary_assert_format, ptr %format515, align 4
  %condition516 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion506, i32 0, i32 1
  %207 = ptrtoint ptr %condition516 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.30, ptr %condition516, align 4
  %expected_true517 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion506, i32 0, i32 2
  %208 = ptrtoint ptr %expected_true517 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %expected_true517, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion506, i1 noundef zeroext true, ptr noundef nonnull @.str.31, i64 noundef 28672) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion506) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion532) #5
  %209 = getelementptr inbounds i8, ptr %__assertion532, i32 32
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -1, ptr %209, align 4, !annotation !257
  %211 = ptrtoint ptr %__assertion532 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %context, ptr %__assertion532, align 4
  %type535 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion532, i32 0, i32 1
  %212 = ptrtoint ptr %type535 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %type535, align 4
  %line536 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion532, i32 0, i32 2
  %213 = ptrtoint ptr %line536 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 71, ptr %line536, align 4
  %file537 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion532, i32 0, i32 3
  %214 = ptrtoint ptr %file537 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @.str.2, ptr %file537, align 4
  %message538 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion532, i32 0, i32 4
  %215 = ptrtoint ptr %message538 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %message538, align 4
  %va540 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion532, i32 0, i32 4, i32 1
  %216 = ptrtoint ptr %va540 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %va540, align 4
  %format541 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion532, i32 0, i32 5
  %217 = ptrtoint ptr %format541 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @kunit_unary_assert_format, ptr %format541, align 4
  %condition542 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion532, i32 0, i32 1
  %218 = ptrtoint ptr %condition542 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @.str.32, ptr %condition542, align 4
  %expected_true543 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion532, i32 0, i32 2
  %219 = ptrtoint ptr %expected_true543 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %expected_true543, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion532, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion532) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion563) #5
  %220 = getelementptr inbounds i8, ptr %__assertion563, i32 32
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %220, align 4, !annotation !257
  %222 = ptrtoint ptr %__assertion563 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %context, ptr %__assertion563, align 4
  %type566 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion563, i32 0, i32 1
  %223 = ptrtoint ptr %type566 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %type566, align 4
  %line567 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion563, i32 0, i32 2
  %224 = ptrtoint ptr %line567 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 71, ptr %line567, align 4
  %file568 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion563, i32 0, i32 3
  %225 = ptrtoint ptr %file568 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @.str.2, ptr %file568, align 4
  %message569 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion563, i32 0, i32 4
  %226 = ptrtoint ptr %message569 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %message569, align 4
  %va571 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion563, i32 0, i32 4, i32 1
  %227 = ptrtoint ptr %va571 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %va571, align 4
  %format572 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion563, i32 0, i32 5
  %228 = ptrtoint ptr %format572 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @kunit_unary_assert_format, ptr %format572, align 4
  %condition573 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion563, i32 0, i32 1
  %229 = ptrtoint ptr %condition573 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.33, ptr %condition573, align 4
  %expected_true574 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion563, i32 0, i32 2
  %230 = ptrtoint ptr %expected_true574 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %expected_true574, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion563, i1 noundef zeroext true, ptr noundef nonnull @.str.34, i64 noundef 28672, i64 noundef 28672) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion563) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion589) #5
  %231 = getelementptr inbounds i8, ptr %__assertion589, i32 32
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -1, ptr %231, align 4, !annotation !257
  %233 = ptrtoint ptr %__assertion589 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %context, ptr %__assertion589, align 4
  %type592 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 1
  %234 = ptrtoint ptr %type592 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %type592, align 4
  %line593 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 2
  %235 = ptrtoint ptr %line593 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 71, ptr %line593, align 4
  %file594 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 3
  %236 = ptrtoint ptr %file594 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @.str.2, ptr %file594, align 4
  %message595 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 4
  %237 = ptrtoint ptr %message595 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %message595, align 4
  %va597 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 4, i32 1
  %238 = ptrtoint ptr %va597 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %va597, align 4
  %format598 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion589, i32 0, i32 5
  %239 = ptrtoint ptr %format598 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr @kunit_unary_assert_format, ptr %format598, align 4
  %condition599 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion589, i32 0, i32 1
  %240 = ptrtoint ptr %condition599 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr @.str.35, ptr %condition599, align 4
  %expected_true600 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion589, i32 0, i32 2
  %241 = ptrtoint ptr %expected_true600 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %expected_true600, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion589, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion589) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion620) #5
  %242 = getelementptr inbounds i8, ptr %__assertion620, i32 32
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 -1, ptr %242, align 4, !annotation !257
  %244 = ptrtoint ptr %__assertion620 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %context, ptr %__assertion620, align 4
  %type623 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion620, i32 0, i32 1
  %245 = ptrtoint ptr %type623 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %type623, align 4
  %line624 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion620, i32 0, i32 2
  %246 = ptrtoint ptr %line624 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 71, ptr %line624, align 4
  %file625 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion620, i32 0, i32 3
  %247 = ptrtoint ptr %file625 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @.str.2, ptr %file625, align 4
  %message626 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion620, i32 0, i32 4
  %248 = ptrtoint ptr %message626 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr null, ptr %message626, align 4
  %va628 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion620, i32 0, i32 4, i32 1
  %249 = ptrtoint ptr %va628 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr null, ptr %va628, align 4
  %format629 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion620, i32 0, i32 5
  %250 = ptrtoint ptr %format629 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @kunit_unary_assert_format, ptr %format629, align 4
  %condition630 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion620, i32 0, i32 1
  %251 = ptrtoint ptr %condition630 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @.str.36, ptr %condition630, align 4
  %expected_true631 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion620, i32 0, i32 2
  %252 = ptrtoint ptr %expected_true631 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 0, ptr %expected_true631, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion620, i1 noundef zeroext true, ptr noundef nonnull @.str.37, i64 noundef 28672, i64 noundef 28672) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion620) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion646) #5
  %253 = getelementptr inbounds i8, ptr %__assertion646, i32 32
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 -1, ptr %253, align 4, !annotation !257
  %255 = ptrtoint ptr %__assertion646 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %context, ptr %__assertion646, align 4
  %type649 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion646, i32 0, i32 1
  %256 = ptrtoint ptr %type649 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %type649, align 4
  %line650 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion646, i32 0, i32 2
  %257 = ptrtoint ptr %line650 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 71, ptr %line650, align 4
  %file651 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion646, i32 0, i32 3
  %258 = ptrtoint ptr %file651 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @.str.2, ptr %file651, align 4
  %message652 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion646, i32 0, i32 4
  %259 = ptrtoint ptr %message652 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr null, ptr %message652, align 4
  %va654 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion646, i32 0, i32 4, i32 1
  %260 = ptrtoint ptr %va654 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %va654, align 4
  %format655 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion646, i32 0, i32 5
  %261 = ptrtoint ptr %format655 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @kunit_unary_assert_format, ptr %format655, align 4
  %condition656 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion646, i32 0, i32 1
  %262 = ptrtoint ptr %condition656 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @.str.38, ptr %condition656, align 4
  %expected_true657 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion646, i32 0, i32 2
  %263 = ptrtoint ptr %expected_true657 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %expected_true657, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion646, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion646) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion680) #5
  %264 = getelementptr inbounds i8, ptr %__assertion680, i32 32
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 -1, ptr %264, align 4, !annotation !257
  %266 = ptrtoint ptr %__assertion680 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %context, ptr %__assertion680, align 4
  %type683 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion680, i32 0, i32 1
  %267 = ptrtoint ptr %type683 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %type683, align 4
  %line684 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion680, i32 0, i32 2
  %268 = ptrtoint ptr %line684 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 72, ptr %line684, align 4
  %file685 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion680, i32 0, i32 3
  %269 = ptrtoint ptr %file685 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @.str.2, ptr %file685, align 4
  %message686 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion680, i32 0, i32 4
  %270 = ptrtoint ptr %message686 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr null, ptr %message686, align 4
  %va688 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion680, i32 0, i32 4, i32 1
  %271 = ptrtoint ptr %va688 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %va688, align 4
  %format689 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion680, i32 0, i32 5
  %272 = ptrtoint ptr %format689 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr @kunit_unary_assert_format, ptr %format689, align 4
  %condition690 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion680, i32 0, i32 1
  %273 = ptrtoint ptr %condition690 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr @.str.39, ptr %condition690, align 4
  %expected_true691 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion680, i32 0, i32 2
  %274 = ptrtoint ptr %expected_true691 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 0, ptr %expected_true691, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion680, i1 noundef zeroext true, ptr noundef nonnull @.str.40, i64 noundef 14) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion680) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion706) #5
  %275 = getelementptr inbounds i8, ptr %__assertion706, i32 32
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 -1, ptr %275, align 4, !annotation !257
  %277 = ptrtoint ptr %__assertion706 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %context, ptr %__assertion706, align 4
  %type709 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion706, i32 0, i32 1
  %278 = ptrtoint ptr %type709 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 0, ptr %type709, align 4
  %line710 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion706, i32 0, i32 2
  %279 = ptrtoint ptr %line710 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 72, ptr %line710, align 4
  %file711 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion706, i32 0, i32 3
  %280 = ptrtoint ptr %file711 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr @.str.2, ptr %file711, align 4
  %message712 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion706, i32 0, i32 4
  %281 = ptrtoint ptr %message712 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr null, ptr %message712, align 4
  %va714 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion706, i32 0, i32 4, i32 1
  %282 = ptrtoint ptr %va714 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr null, ptr %va714, align 4
  %format715 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion706, i32 0, i32 5
  %283 = ptrtoint ptr %format715 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @kunit_unary_assert_format, ptr %format715, align 4
  %condition716 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion706, i32 0, i32 1
  %284 = ptrtoint ptr %condition716 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr @.str.41, ptr %condition716, align 4
  %expected_true717 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion706, i32 0, i32 2
  %285 = ptrtoint ptr %expected_true717 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %expected_true717, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion706, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion706) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion737) #5
  %286 = getelementptr inbounds i8, ptr %__assertion737, i32 32
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 -1, ptr %286, align 4, !annotation !257
  %288 = ptrtoint ptr %__assertion737 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %context, ptr %__assertion737, align 4
  %type740 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion737, i32 0, i32 1
  %289 = ptrtoint ptr %type740 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %type740, align 4
  %line741 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion737, i32 0, i32 2
  %290 = ptrtoint ptr %line741 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 72, ptr %line741, align 4
  %file742 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion737, i32 0, i32 3
  %291 = ptrtoint ptr %file742 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr @.str.2, ptr %file742, align 4
  %message743 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion737, i32 0, i32 4
  %292 = ptrtoint ptr %message743 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr null, ptr %message743, align 4
  %va745 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion737, i32 0, i32 4, i32 1
  %293 = ptrtoint ptr %va745 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr null, ptr %va745, align 4
  %format746 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion737, i32 0, i32 5
  %294 = ptrtoint ptr %format746 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr @kunit_unary_assert_format, ptr %format746, align 4
  %condition747 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion737, i32 0, i32 1
  %295 = ptrtoint ptr %condition747 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr @.str.42, ptr %condition747, align 4
  %expected_true748 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion737, i32 0, i32 2
  %296 = ptrtoint ptr %expected_true748 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 0, ptr %expected_true748, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion737, i1 noundef zeroext true, ptr noundef nonnull @.str.43, i64 noundef 14, i64 noundef 14) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion737) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion763) #5
  %297 = getelementptr inbounds i8, ptr %__assertion763, i32 32
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 -1, ptr %297, align 4, !annotation !257
  %299 = ptrtoint ptr %__assertion763 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %context, ptr %__assertion763, align 4
  %type766 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion763, i32 0, i32 1
  %300 = ptrtoint ptr %type766 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 0, ptr %type766, align 4
  %line767 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion763, i32 0, i32 2
  %301 = ptrtoint ptr %line767 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 72, ptr %line767, align 4
  %file768 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion763, i32 0, i32 3
  %302 = ptrtoint ptr %file768 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @.str.2, ptr %file768, align 4
  %message769 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion763, i32 0, i32 4
  %303 = ptrtoint ptr %message769 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr null, ptr %message769, align 4
  %va771 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion763, i32 0, i32 4, i32 1
  %304 = ptrtoint ptr %va771 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr null, ptr %va771, align 4
  %format772 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion763, i32 0, i32 5
  %305 = ptrtoint ptr %format772 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr @kunit_unary_assert_format, ptr %format772, align 4
  %condition773 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion763, i32 0, i32 1
  %306 = ptrtoint ptr %condition773 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr @.str.44, ptr %condition773, align 4
  %expected_true774 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion763, i32 0, i32 2
  %307 = ptrtoint ptr %expected_true774 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %expected_true774, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion763, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion763) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion794) #5
  %308 = getelementptr inbounds i8, ptr %__assertion794, i32 32
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 -1, ptr %308, align 4, !annotation !257
  %310 = ptrtoint ptr %__assertion794 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %context, ptr %__assertion794, align 4
  %type797 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 1
  %311 = ptrtoint ptr %type797 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %type797, align 4
  %line798 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 2
  %312 = ptrtoint ptr %line798 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 72, ptr %line798, align 4
  %file799 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 3
  %313 = ptrtoint ptr %file799 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr @.str.2, ptr %file799, align 4
  %message800 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 4
  %314 = ptrtoint ptr %message800 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr null, ptr %message800, align 4
  %va802 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 4, i32 1
  %315 = ptrtoint ptr %va802 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr null, ptr %va802, align 4
  %format803 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion794, i32 0, i32 5
  %316 = ptrtoint ptr %format803 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr @kunit_unary_assert_format, ptr %format803, align 4
  %condition804 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion794, i32 0, i32 1
  %317 = ptrtoint ptr %condition804 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr @.str.45, ptr %condition804, align 4
  %expected_true805 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion794, i32 0, i32 2
  %318 = ptrtoint ptr %expected_true805 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 0, ptr %expected_true805, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion794, i1 noundef zeroext true, ptr noundef nonnull @.str.46, i64 noundef 14, i64 noundef 14) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion794) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion820) #5
  %319 = getelementptr inbounds i8, ptr %__assertion820, i32 32
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -1, ptr %319, align 4, !annotation !257
  %321 = ptrtoint ptr %__assertion820 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %context, ptr %__assertion820, align 4
  %type823 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion820, i32 0, i32 1
  %322 = ptrtoint ptr %type823 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 0, ptr %type823, align 4
  %line824 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion820, i32 0, i32 2
  %323 = ptrtoint ptr %line824 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 72, ptr %line824, align 4
  %file825 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion820, i32 0, i32 3
  %324 = ptrtoint ptr %file825 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr @.str.2, ptr %file825, align 4
  %message826 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion820, i32 0, i32 4
  %325 = ptrtoint ptr %message826 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr null, ptr %message826, align 4
  %va828 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion820, i32 0, i32 4, i32 1
  %326 = ptrtoint ptr %va828 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr null, ptr %va828, align 4
  %format829 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion820, i32 0, i32 5
  %327 = ptrtoint ptr %format829 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr @kunit_unary_assert_format, ptr %format829, align 4
  %condition830 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion820, i32 0, i32 1
  %328 = ptrtoint ptr %condition830 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr @.str.47, ptr %condition830, align 4
  %expected_true831 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion820, i32 0, i32 2
  %329 = ptrtoint ptr %expected_true831 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 0, ptr %expected_true831, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion820, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion820) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion854) #5
  %330 = getelementptr inbounds i8, ptr %__assertion854, i32 32
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 -1, ptr %330, align 4, !annotation !257
  %332 = ptrtoint ptr %__assertion854 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %context, ptr %__assertion854, align 4
  %type857 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion854, i32 0, i32 1
  %333 = ptrtoint ptr %type857 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %type857, align 4
  %line858 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion854, i32 0, i32 2
  %334 = ptrtoint ptr %line858 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 73, ptr %line858, align 4
  %file859 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion854, i32 0, i32 3
  %335 = ptrtoint ptr %file859 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr @.str.2, ptr %file859, align 4
  %message860 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion854, i32 0, i32 4
  %336 = ptrtoint ptr %message860 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr null, ptr %message860, align 4
  %va862 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion854, i32 0, i32 4, i32 1
  %337 = ptrtoint ptr %va862 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr null, ptr %va862, align 4
  %format863 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion854, i32 0, i32 5
  %338 = ptrtoint ptr %format863 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr @kunit_unary_assert_format, ptr %format863, align 4
  %condition864 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion854, i32 0, i32 1
  %339 = ptrtoint ptr %condition864 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr @.str.48, ptr %condition864, align 4
  %expected_true865 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion854, i32 0, i32 2
  %340 = ptrtoint ptr %expected_true865 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 0, ptr %expected_true865, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion854, i1 noundef zeroext true, ptr noundef nonnull @.str.49, i64 noundef 240) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion854) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion880) #5
  %341 = getelementptr inbounds i8, ptr %__assertion880, i32 32
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 -1, ptr %341, align 4, !annotation !257
  %343 = ptrtoint ptr %__assertion880 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %context, ptr %__assertion880, align 4
  %type883 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion880, i32 0, i32 1
  %344 = ptrtoint ptr %type883 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 0, ptr %type883, align 4
  %line884 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion880, i32 0, i32 2
  %345 = ptrtoint ptr %line884 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 73, ptr %line884, align 4
  %file885 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion880, i32 0, i32 3
  %346 = ptrtoint ptr %file885 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr @.str.2, ptr %file885, align 4
  %message886 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion880, i32 0, i32 4
  %347 = ptrtoint ptr %message886 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr null, ptr %message886, align 4
  %va888 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion880, i32 0, i32 4, i32 1
  %348 = ptrtoint ptr %va888 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr null, ptr %va888, align 4
  %format889 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion880, i32 0, i32 5
  %349 = ptrtoint ptr %format889 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr @kunit_unary_assert_format, ptr %format889, align 4
  %condition890 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion880, i32 0, i32 1
  %350 = ptrtoint ptr %condition890 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr @.str.50, ptr %condition890, align 4
  %expected_true891 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion880, i32 0, i32 2
  %351 = ptrtoint ptr %expected_true891 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %expected_true891, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion880, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion880) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion911) #5
  %352 = getelementptr inbounds i8, ptr %__assertion911, i32 32
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 -1, ptr %352, align 4, !annotation !257
  %354 = ptrtoint ptr %__assertion911 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %context, ptr %__assertion911, align 4
  %type914 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion911, i32 0, i32 1
  %355 = ptrtoint ptr %type914 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 0, ptr %type914, align 4
  %line915 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion911, i32 0, i32 2
  %356 = ptrtoint ptr %line915 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 73, ptr %line915, align 4
  %file916 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion911, i32 0, i32 3
  %357 = ptrtoint ptr %file916 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr @.str.2, ptr %file916, align 4
  %message917 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion911, i32 0, i32 4
  %358 = ptrtoint ptr %message917 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr null, ptr %message917, align 4
  %va919 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion911, i32 0, i32 4, i32 1
  %359 = ptrtoint ptr %va919 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr null, ptr %va919, align 4
  %format920 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion911, i32 0, i32 5
  %360 = ptrtoint ptr %format920 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr @kunit_unary_assert_format, ptr %format920, align 4
  %condition921 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion911, i32 0, i32 1
  %361 = ptrtoint ptr %condition921 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr @.str.51, ptr %condition921, align 4
  %expected_true922 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion911, i32 0, i32 2
  %362 = ptrtoint ptr %expected_true922 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 0, ptr %expected_true922, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion911, i1 noundef zeroext true, ptr noundef nonnull @.str.52, i64 noundef 240, i64 noundef 240) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion911) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion937) #5
  %363 = getelementptr inbounds i8, ptr %__assertion937, i32 32
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 -1, ptr %363, align 4, !annotation !257
  %365 = ptrtoint ptr %__assertion937 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %context, ptr %__assertion937, align 4
  %type940 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion937, i32 0, i32 1
  %366 = ptrtoint ptr %type940 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 0, ptr %type940, align 4
  %line941 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion937, i32 0, i32 2
  %367 = ptrtoint ptr %line941 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 73, ptr %line941, align 4
  %file942 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion937, i32 0, i32 3
  %368 = ptrtoint ptr %file942 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr @.str.2, ptr %file942, align 4
  %message943 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion937, i32 0, i32 4
  %369 = ptrtoint ptr %message943 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr null, ptr %message943, align 4
  %va945 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion937, i32 0, i32 4, i32 1
  %370 = ptrtoint ptr %va945 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr null, ptr %va945, align 4
  %format946 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion937, i32 0, i32 5
  %371 = ptrtoint ptr %format946 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr @kunit_unary_assert_format, ptr %format946, align 4
  %condition947 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion937, i32 0, i32 1
  %372 = ptrtoint ptr %condition947 to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr @.str.53, ptr %condition947, align 4
  %expected_true948 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion937, i32 0, i32 2
  %373 = ptrtoint ptr %expected_true948 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 0, ptr %expected_true948, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion937, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion937) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion968) #5
  %374 = getelementptr inbounds i8, ptr %__assertion968, i32 32
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 -1, ptr %374, align 4, !annotation !257
  %376 = ptrtoint ptr %__assertion968 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %context, ptr %__assertion968, align 4
  %type971 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion968, i32 0, i32 1
  %377 = ptrtoint ptr %type971 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %type971, align 4
  %line972 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion968, i32 0, i32 2
  %378 = ptrtoint ptr %line972 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 73, ptr %line972, align 4
  %file973 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion968, i32 0, i32 3
  %379 = ptrtoint ptr %file973 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr @.str.2, ptr %file973, align 4
  %message974 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion968, i32 0, i32 4
  %380 = ptrtoint ptr %message974 to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr null, ptr %message974, align 4
  %va976 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion968, i32 0, i32 4, i32 1
  %381 = ptrtoint ptr %va976 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr null, ptr %va976, align 4
  %format977 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion968, i32 0, i32 5
  %382 = ptrtoint ptr %format977 to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr @kunit_unary_assert_format, ptr %format977, align 4
  %condition978 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion968, i32 0, i32 1
  %383 = ptrtoint ptr %condition978 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr @.str.54, ptr %condition978, align 4
  %expected_true979 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion968, i32 0, i32 2
  %384 = ptrtoint ptr %expected_true979 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 0, ptr %expected_true979, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion968, i1 noundef zeroext true, ptr noundef nonnull @.str.55, i64 noundef 240, i64 noundef 240) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion968) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion994) #5
  %385 = getelementptr inbounds i8, ptr %__assertion994, i32 32
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 -1, ptr %385, align 4, !annotation !257
  %387 = ptrtoint ptr %__assertion994 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %context, ptr %__assertion994, align 4
  %type997 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion994, i32 0, i32 1
  %388 = ptrtoint ptr %type997 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 0, ptr %type997, align 4
  %line998 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion994, i32 0, i32 2
  %389 = ptrtoint ptr %line998 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 73, ptr %line998, align 4
  %file999 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion994, i32 0, i32 3
  %390 = ptrtoint ptr %file999 to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr @.str.2, ptr %file999, align 4
  %message1000 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion994, i32 0, i32 4
  %391 = ptrtoint ptr %message1000 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr null, ptr %message1000, align 4
  %va1002 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion994, i32 0, i32 4, i32 1
  %392 = ptrtoint ptr %va1002 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr null, ptr %va1002, align 4
  %format1003 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion994, i32 0, i32 5
  %393 = ptrtoint ptr %format1003 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr @kunit_unary_assert_format, ptr %format1003, align 4
  %condition1004 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion994, i32 0, i32 1
  %394 = ptrtoint ptr %condition1004 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr @.str.56, ptr %condition1004, align 4
  %expected_true1005 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion994, i32 0, i32 2
  %395 = ptrtoint ptr %expected_true1005 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 0, ptr %expected_true1005, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion994, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion994) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1027) #5
  %396 = getelementptr inbounds i8, ptr %__assertion1027, i32 32
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 -1, ptr %396, align 4, !annotation !257
  %398 = ptrtoint ptr %__assertion1027 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %context, ptr %__assertion1027, align 4
  %type1030 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1027, i32 0, i32 1
  %399 = ptrtoint ptr %type1030 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 0, ptr %type1030, align 4
  %line1031 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1027, i32 0, i32 2
  %400 = ptrtoint ptr %line1031 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 75, ptr %line1031, align 4
  %file1032 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1027, i32 0, i32 3
  %401 = ptrtoint ptr %file1032 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr @.str.2, ptr %file1032, align 4
  %message1033 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1027, i32 0, i32 4
  %402 = ptrtoint ptr %message1033 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr null, ptr %message1033, align 4
  %va1035 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1027, i32 0, i32 4, i32 1
  %403 = ptrtoint ptr %va1035 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr null, ptr %va1035, align 4
  %format1036 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1027, i32 0, i32 5
  %404 = ptrtoint ptr %format1036 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr @kunit_unary_assert_format, ptr %format1036, align 4
  %condition1037 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1027, i32 0, i32 1
  %405 = ptrtoint ptr %condition1037 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr @.str.57, ptr %condition1037, align 4
  %expected_true1038 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1027, i32 0, i32 2
  %406 = ptrtoint ptr %expected_true1038 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 0, ptr %expected_true1038, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1027, i1 noundef zeroext true, ptr noundef nonnull @.str.58, i64 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1027) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1053) #5
  %407 = getelementptr inbounds i8, ptr %__assertion1053, i32 32
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 -1, ptr %407, align 4, !annotation !257
  %409 = ptrtoint ptr %__assertion1053 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %context, ptr %__assertion1053, align 4
  %type1056 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1053, i32 0, i32 1
  %410 = ptrtoint ptr %type1056 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 0, ptr %type1056, align 4
  %line1057 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1053, i32 0, i32 2
  %411 = ptrtoint ptr %line1057 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 75, ptr %line1057, align 4
  %file1058 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1053, i32 0, i32 3
  %412 = ptrtoint ptr %file1058 to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr @.str.2, ptr %file1058, align 4
  %message1059 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1053, i32 0, i32 4
  %413 = ptrtoint ptr %message1059 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr null, ptr %message1059, align 4
  %va1061 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1053, i32 0, i32 4, i32 1
  %414 = ptrtoint ptr %va1061 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr null, ptr %va1061, align 4
  %format1062 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1053, i32 0, i32 5
  %415 = ptrtoint ptr %format1062 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr @kunit_unary_assert_format, ptr %format1062, align 4
  %condition1063 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1053, i32 0, i32 1
  %416 = ptrtoint ptr %condition1063 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr @.str.59, ptr %condition1063, align 4
  %expected_true1064 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1053, i32 0, i32 2
  %417 = ptrtoint ptr %expected_true1064 to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 0, ptr %expected_true1064, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1053, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1053) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1084) #5
  %418 = getelementptr inbounds i8, ptr %__assertion1084, i32 32
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 -1, ptr %418, align 4, !annotation !257
  %420 = ptrtoint ptr %__assertion1084 to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %context, ptr %__assertion1084, align 4
  %type1087 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1084, i32 0, i32 1
  %421 = ptrtoint ptr %type1087 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 0, ptr %type1087, align 4
  %line1088 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1084, i32 0, i32 2
  %422 = ptrtoint ptr %line1088 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 76, ptr %line1088, align 4
  %file1089 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1084, i32 0, i32 3
  %423 = ptrtoint ptr %file1089 to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr @.str.2, ptr %file1089, align 4
  %message1090 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1084, i32 0, i32 4
  %424 = ptrtoint ptr %message1090 to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr null, ptr %message1090, align 4
  %va1092 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1084, i32 0, i32 4, i32 1
  %425 = ptrtoint ptr %va1092 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr null, ptr %va1092, align 4
  %format1093 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1084, i32 0, i32 5
  %426 = ptrtoint ptr %format1093 to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr @kunit_unary_assert_format, ptr %format1093, align 4
  %condition1094 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1084, i32 0, i32 1
  %427 = ptrtoint ptr %condition1094 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr @.str.60, ptr %condition1094, align 4
  %expected_true1095 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1084, i32 0, i32 2
  %428 = ptrtoint ptr %expected_true1095 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 0, ptr %expected_true1095, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1084, i1 noundef zeroext true, ptr noundef nonnull @.str.61, i64 noundef 48) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1084) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1110) #5
  %429 = getelementptr inbounds i8, ptr %__assertion1110, i32 32
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 -1, ptr %429, align 4, !annotation !257
  %431 = ptrtoint ptr %__assertion1110 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %context, ptr %__assertion1110, align 4
  %type1113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1110, i32 0, i32 1
  %432 = ptrtoint ptr %type1113 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 0, ptr %type1113, align 4
  %line1114 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1110, i32 0, i32 2
  %433 = ptrtoint ptr %line1114 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 76, ptr %line1114, align 4
  %file1115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1110, i32 0, i32 3
  %434 = ptrtoint ptr %file1115 to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr @.str.2, ptr %file1115, align 4
  %message1116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1110, i32 0, i32 4
  %435 = ptrtoint ptr %message1116 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr null, ptr %message1116, align 4
  %va1118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1110, i32 0, i32 4, i32 1
  %436 = ptrtoint ptr %va1118 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr null, ptr %va1118, align 4
  %format1119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1110, i32 0, i32 5
  %437 = ptrtoint ptr %format1119 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr @kunit_unary_assert_format, ptr %format1119, align 4
  %condition1120 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1110, i32 0, i32 1
  %438 = ptrtoint ptr %condition1120 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr @.str.62, ptr %condition1120, align 4
  %expected_true1121 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1110, i32 0, i32 2
  %439 = ptrtoint ptr %expected_true1121 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 0, ptr %expected_true1121, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1110, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1110) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1141) #5
  %440 = getelementptr inbounds i8, ptr %__assertion1141, i32 32
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 -1, ptr %440, align 4, !annotation !257
  %442 = ptrtoint ptr %__assertion1141 to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %context, ptr %__assertion1141, align 4
  %type1144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1141, i32 0, i32 1
  %443 = ptrtoint ptr %type1144 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 0, ptr %type1144, align 4
  %line1145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1141, i32 0, i32 2
  %444 = ptrtoint ptr %line1145 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 77, ptr %line1145, align 4
  %file1146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1141, i32 0, i32 3
  %445 = ptrtoint ptr %file1146 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr @.str.2, ptr %file1146, align 4
  %message1147 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1141, i32 0, i32 4
  %446 = ptrtoint ptr %message1147 to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr null, ptr %message1147, align 4
  %va1149 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1141, i32 0, i32 4, i32 1
  %447 = ptrtoint ptr %va1149 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr null, ptr %va1149, align 4
  %format1150 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1141, i32 0, i32 5
  %448 = ptrtoint ptr %format1150 to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr @kunit_unary_assert_format, ptr %format1150, align 4
  %condition1151 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1141, i32 0, i32 1
  %449 = ptrtoint ptr %condition1151 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr @.str.63, ptr %condition1151, align 4
  %expected_true1152 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1141, i32 0, i32 2
  %450 = ptrtoint ptr %expected_true1152 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %expected_true1152, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1141, i1 noundef zeroext true, ptr noundef nonnull @.str.64, i64 noundef 14) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1141) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1167) #5
  %451 = getelementptr inbounds i8, ptr %__assertion1167, i32 32
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 -1, ptr %451, align 4, !annotation !257
  %453 = ptrtoint ptr %__assertion1167 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %context, ptr %__assertion1167, align 4
  %type1170 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1167, i32 0, i32 1
  %454 = ptrtoint ptr %type1170 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 0, ptr %type1170, align 4
  %line1171 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1167, i32 0, i32 2
  %455 = ptrtoint ptr %line1171 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 77, ptr %line1171, align 4
  %file1172 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1167, i32 0, i32 3
  %456 = ptrtoint ptr %file1172 to i32
  call void @__asan_store4_noabort(i32 %456)
  store ptr @.str.2, ptr %file1172, align 4
  %message1173 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1167, i32 0, i32 4
  %457 = ptrtoint ptr %message1173 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr null, ptr %message1173, align 4
  %va1175 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1167, i32 0, i32 4, i32 1
  %458 = ptrtoint ptr %va1175 to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr null, ptr %va1175, align 4
  %format1176 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1167, i32 0, i32 5
  %459 = ptrtoint ptr %format1176 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr @kunit_unary_assert_format, ptr %format1176, align 4
  %condition1177 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1167, i32 0, i32 1
  %460 = ptrtoint ptr %condition1177 to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr @.str.65, ptr %condition1177, align 4
  %expected_true1178 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1167, i32 0, i32 2
  %461 = ptrtoint ptr %expected_true1178 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 0, ptr %expected_true1178, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1167, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1167) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1198) #5
  %462 = getelementptr inbounds i8, ptr %__assertion1198, i32 32
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 -1, ptr %462, align 4, !annotation !257
  %464 = ptrtoint ptr %__assertion1198 to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %context, ptr %__assertion1198, align 4
  %type1201 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1198, i32 0, i32 1
  %465 = ptrtoint ptr %type1201 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 0, ptr %type1201, align 4
  %line1202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1198, i32 0, i32 2
  %466 = ptrtoint ptr %line1202 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 78, ptr %line1202, align 4
  %file1203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1198, i32 0, i32 3
  %467 = ptrtoint ptr %file1203 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr @.str.2, ptr %file1203, align 4
  %message1204 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1198, i32 0, i32 4
  %468 = ptrtoint ptr %message1204 to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr null, ptr %message1204, align 4
  %va1206 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1198, i32 0, i32 4, i32 1
  %469 = ptrtoint ptr %va1206 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr null, ptr %va1206, align 4
  %format1207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1198, i32 0, i32 5
  %470 = ptrtoint ptr %format1207 to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr @kunit_unary_assert_format, ptr %format1207, align 4
  %condition1208 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1198, i32 0, i32 1
  %471 = ptrtoint ptr %condition1208 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr @.str.66, ptr %condition1208, align 4
  %expected_true1209 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1198, i32 0, i32 2
  %472 = ptrtoint ptr %expected_true1209 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 0, ptr %expected_true1209, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1198, i1 noundef zeroext true, ptr noundef nonnull @.str.67, i64 noundef 240) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1198) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1224) #5
  %473 = getelementptr inbounds i8, ptr %__assertion1224, i32 32
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 -1, ptr %473, align 4, !annotation !257
  %475 = ptrtoint ptr %__assertion1224 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %context, ptr %__assertion1224, align 4
  %type1227 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1224, i32 0, i32 1
  %476 = ptrtoint ptr %type1227 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 0, ptr %type1227, align 4
  %line1228 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1224, i32 0, i32 2
  %477 = ptrtoint ptr %line1228 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 78, ptr %line1228, align 4
  %file1229 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1224, i32 0, i32 3
  %478 = ptrtoint ptr %file1229 to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr @.str.2, ptr %file1229, align 4
  %message1230 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1224, i32 0, i32 4
  %479 = ptrtoint ptr %message1230 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr null, ptr %message1230, align 4
  %va1232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1224, i32 0, i32 4, i32 1
  %480 = ptrtoint ptr %va1232 to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr null, ptr %va1232, align 4
  %format1233 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1224, i32 0, i32 5
  %481 = ptrtoint ptr %format1233 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr @kunit_unary_assert_format, ptr %format1233, align 4
  %condition1234 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1224, i32 0, i32 1
  %482 = ptrtoint ptr %condition1234 to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr @.str.68, ptr %condition1234, align 4
  %expected_true1235 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1224, i32 0, i32 2
  %483 = ptrtoint ptr %expected_true1235 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 0, ptr %expected_true1235, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1224, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1224) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1256) #5
  %484 = getelementptr inbounds i8, ptr %__assertion1256, i32 32
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 -1, ptr %484, align 4, !annotation !257
  %486 = ptrtoint ptr %__assertion1256 to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr %context, ptr %__assertion1256, align 4
  %type1259 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1256, i32 0, i32 1
  %487 = ptrtoint ptr %type1259 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 0, ptr %type1259, align 4
  %line1260 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1256, i32 0, i32 2
  %488 = ptrtoint ptr %line1260 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 80, ptr %line1260, align 4
  %file1261 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1256, i32 0, i32 3
  %489 = ptrtoint ptr %file1261 to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr @.str.2, ptr %file1261, align 4
  %message1262 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1256, i32 0, i32 4
  %490 = ptrtoint ptr %message1262 to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr null, ptr %message1262, align 4
  %va1264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1256, i32 0, i32 4, i32 1
  %491 = ptrtoint ptr %va1264 to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr null, ptr %va1264, align 4
  %format1265 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1256, i32 0, i32 5
  %492 = ptrtoint ptr %format1265 to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr @kunit_unary_assert_format, ptr %format1265, align 4
  %condition1266 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1256, i32 0, i32 1
  %493 = ptrtoint ptr %condition1266 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr @.str.69, ptr %condition1266, align 4
  %expected_true1267 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1256, i32 0, i32 2
  %494 = ptrtoint ptr %expected_true1267 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 0, ptr %expected_true1267, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1256, i1 noundef zeroext true, ptr noundef nonnull @.str.70, i64 noundef 256) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1256) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1281) #5
  %495 = getelementptr inbounds i8, ptr %__assertion1281, i32 32
  %496 = ptrtoint ptr %495 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 -1, ptr %495, align 4, !annotation !257
  %497 = ptrtoint ptr %__assertion1281 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %context, ptr %__assertion1281, align 4
  %type1284 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1281, i32 0, i32 1
  %498 = ptrtoint ptr %type1284 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 0, ptr %type1284, align 4
  %line1285 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1281, i32 0, i32 2
  %499 = ptrtoint ptr %line1285 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 80, ptr %line1285, align 4
  %file1286 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1281, i32 0, i32 3
  %500 = ptrtoint ptr %file1286 to i32
  call void @__asan_store4_noabort(i32 %500)
  store ptr @.str.2, ptr %file1286, align 4
  %message1287 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1281, i32 0, i32 4
  %501 = ptrtoint ptr %message1287 to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr null, ptr %message1287, align 4
  %va1289 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1281, i32 0, i32 4, i32 1
  %502 = ptrtoint ptr %va1289 to i32
  call void @__asan_store4_noabort(i32 %502)
  store ptr null, ptr %va1289, align 4
  %format1290 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1281, i32 0, i32 5
  %503 = ptrtoint ptr %format1290 to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr @kunit_unary_assert_format, ptr %format1290, align 4
  %condition1291 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1281, i32 0, i32 1
  %504 = ptrtoint ptr %condition1291 to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr @.str.71, ptr %condition1291, align 4
  %expected_true1292 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1281, i32 0, i32 2
  %505 = ptrtoint ptr %expected_true1292 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 0, ptr %expected_true1292, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1281, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1281) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1311) #5
  %506 = getelementptr inbounds i8, ptr %__assertion1311, i32 32
  %507 = ptrtoint ptr %506 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 -1, ptr %506, align 4, !annotation !257
  %508 = ptrtoint ptr %__assertion1311 to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %context, ptr %__assertion1311, align 4
  %type1314 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1311, i32 0, i32 1
  %509 = ptrtoint ptr %type1314 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 0, ptr %type1314, align 4
  %line1315 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1311, i32 0, i32 2
  %510 = ptrtoint ptr %line1315 to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 80, ptr %line1315, align 4
  %file1316 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1311, i32 0, i32 3
  %511 = ptrtoint ptr %file1316 to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr @.str.2, ptr %file1316, align 4
  %message1317 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1311, i32 0, i32 4
  %512 = ptrtoint ptr %message1317 to i32
  call void @__asan_store4_noabort(i32 %512)
  store ptr null, ptr %message1317, align 4
  %va1319 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1311, i32 0, i32 4, i32 1
  %513 = ptrtoint ptr %va1319 to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr null, ptr %va1319, align 4
  %format1320 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1311, i32 0, i32 5
  %514 = ptrtoint ptr %format1320 to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr @kunit_unary_assert_format, ptr %format1320, align 4
  %condition1321 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1311, i32 0, i32 1
  %515 = ptrtoint ptr %condition1321 to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr @.str.72, ptr %condition1321, align 4
  %expected_true1322 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1311, i32 0, i32 2
  %516 = ptrtoint ptr %expected_true1322 to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 0, ptr %expected_true1322, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1311, i1 noundef zeroext true, ptr noundef nonnull @.str.73, i64 noundef 256, i64 noundef 256) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1311) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1336) #5
  %517 = getelementptr inbounds i8, ptr %__assertion1336, i32 32
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 -1, ptr %517, align 4, !annotation !257
  %519 = ptrtoint ptr %__assertion1336 to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %context, ptr %__assertion1336, align 4
  %type1339 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1336, i32 0, i32 1
  %520 = ptrtoint ptr %type1339 to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 0, ptr %type1339, align 4
  %line1340 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1336, i32 0, i32 2
  %521 = ptrtoint ptr %line1340 to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 80, ptr %line1340, align 4
  %file1341 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1336, i32 0, i32 3
  %522 = ptrtoint ptr %file1341 to i32
  call void @__asan_store4_noabort(i32 %522)
  store ptr @.str.2, ptr %file1341, align 4
  %message1342 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1336, i32 0, i32 4
  %523 = ptrtoint ptr %message1342 to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr null, ptr %message1342, align 4
  %va1344 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1336, i32 0, i32 4, i32 1
  %524 = ptrtoint ptr %va1344 to i32
  call void @__asan_store4_noabort(i32 %524)
  store ptr null, ptr %va1344, align 4
  %format1345 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1336, i32 0, i32 5
  %525 = ptrtoint ptr %format1345 to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr @kunit_unary_assert_format, ptr %format1345, align 4
  %condition1346 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1336, i32 0, i32 1
  %526 = ptrtoint ptr %condition1346 to i32
  call void @__asan_store4_noabort(i32 %526)
  store ptr @.str.74, ptr %condition1346, align 4
  %expected_true1347 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1336, i32 0, i32 2
  %527 = ptrtoint ptr %expected_true1347 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 0, ptr %expected_true1347, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1336, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1336) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1366) #5
  %528 = getelementptr inbounds i8, ptr %__assertion1366, i32 32
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 -1, ptr %528, align 4, !annotation !257
  %530 = ptrtoint ptr %__assertion1366 to i32
  call void @__asan_store4_noabort(i32 %530)
  store ptr %context, ptr %__assertion1366, align 4
  %type1369 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1366, i32 0, i32 1
  %531 = ptrtoint ptr %type1369 to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 0, ptr %type1369, align 4
  %line1370 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1366, i32 0, i32 2
  %532 = ptrtoint ptr %line1370 to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 80, ptr %line1370, align 4
  %file1371 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1366, i32 0, i32 3
  %533 = ptrtoint ptr %file1371 to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr @.str.2, ptr %file1371, align 4
  %message1372 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1366, i32 0, i32 4
  %534 = ptrtoint ptr %message1372 to i32
  call void @__asan_store4_noabort(i32 %534)
  store ptr null, ptr %message1372, align 4
  %va1374 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1366, i32 0, i32 4, i32 1
  %535 = ptrtoint ptr %va1374 to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr null, ptr %va1374, align 4
  %format1375 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1366, i32 0, i32 5
  %536 = ptrtoint ptr %format1375 to i32
  call void @__asan_store4_noabort(i32 %536)
  store ptr @kunit_unary_assert_format, ptr %format1375, align 4
  %condition1376 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1366, i32 0, i32 1
  %537 = ptrtoint ptr %condition1376 to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr @.str.75, ptr %condition1376, align 4
  %expected_true1377 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1366, i32 0, i32 2
  %538 = ptrtoint ptr %expected_true1377 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %expected_true1377, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1366, i1 noundef zeroext true, ptr noundef nonnull @.str.76, i64 noundef 256, i64 noundef 256) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1366) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1391) #5
  %539 = getelementptr inbounds i8, ptr %__assertion1391, i32 32
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 -1, ptr %539, align 4, !annotation !257
  %541 = ptrtoint ptr %__assertion1391 to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %context, ptr %__assertion1391, align 4
  %type1394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1391, i32 0, i32 1
  %542 = ptrtoint ptr %type1394 to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 0, ptr %type1394, align 4
  %line1395 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1391, i32 0, i32 2
  %543 = ptrtoint ptr %line1395 to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 80, ptr %line1395, align 4
  %file1396 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1391, i32 0, i32 3
  %544 = ptrtoint ptr %file1396 to i32
  call void @__asan_store4_noabort(i32 %544)
  store ptr @.str.2, ptr %file1396, align 4
  %message1397 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1391, i32 0, i32 4
  %545 = ptrtoint ptr %message1397 to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr null, ptr %message1397, align 4
  %va1399 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1391, i32 0, i32 4, i32 1
  %546 = ptrtoint ptr %va1399 to i32
  call void @__asan_store4_noabort(i32 %546)
  store ptr null, ptr %va1399, align 4
  %format1400 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1391, i32 0, i32 5
  %547 = ptrtoint ptr %format1400 to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr @kunit_unary_assert_format, ptr %format1400, align 4
  %condition1401 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1391, i32 0, i32 1
  %548 = ptrtoint ptr %condition1401 to i32
  call void @__asan_store4_noabort(i32 %548)
  store ptr @.str.77, ptr %condition1401, align 4
  %expected_true1402 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1391, i32 0, i32 2
  %549 = ptrtoint ptr %expected_true1402 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 0, ptr %expected_true1402, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1391, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1391) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1424) #5
  %550 = getelementptr inbounds i8, ptr %__assertion1424, i32 32
  %551 = ptrtoint ptr %550 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 -1, ptr %550, align 4, !annotation !257
  %552 = ptrtoint ptr %__assertion1424 to i32
  call void @__asan_store4_noabort(i32 %552)
  store ptr %context, ptr %__assertion1424, align 4
  %type1427 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1424, i32 0, i32 1
  %553 = ptrtoint ptr %type1427 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 0, ptr %type1427, align 4
  %line1428 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1424, i32 0, i32 2
  %554 = ptrtoint ptr %line1428 to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 81, ptr %line1428, align 4
  %file1429 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1424, i32 0, i32 3
  %555 = ptrtoint ptr %file1429 to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr @.str.2, ptr %file1429, align 4
  %message1430 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1424, i32 0, i32 4
  %556 = ptrtoint ptr %message1430 to i32
  call void @__asan_store4_noabort(i32 %556)
  store ptr null, ptr %message1430, align 4
  %va1432 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1424, i32 0, i32 4, i32 1
  %557 = ptrtoint ptr %va1432 to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr null, ptr %va1432, align 4
  %format1433 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1424, i32 0, i32 5
  %558 = ptrtoint ptr %format1433 to i32
  call void @__asan_store4_noabort(i32 %558)
  store ptr @kunit_unary_assert_format, ptr %format1433, align 4
  %condition1434 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1424, i32 0, i32 1
  %559 = ptrtoint ptr %condition1434 to i32
  call void @__asan_store4_noabort(i32 %559)
  store ptr @.str.78, ptr %condition1434, align 4
  %expected_true1435 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1424, i32 0, i32 2
  %560 = ptrtoint ptr %expected_true1435 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 0, ptr %expected_true1435, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1424, i1 noundef zeroext true, ptr noundef nonnull @.str.79, i64 noundef 12288) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1424) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1449) #5
  %561 = getelementptr inbounds i8, ptr %__assertion1449, i32 32
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 -1, ptr %561, align 4, !annotation !257
  %563 = ptrtoint ptr %__assertion1449 to i32
  call void @__asan_store4_noabort(i32 %563)
  store ptr %context, ptr %__assertion1449, align 4
  %type1452 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1449, i32 0, i32 1
  %564 = ptrtoint ptr %type1452 to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 0, ptr %type1452, align 4
  %line1453 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1449, i32 0, i32 2
  %565 = ptrtoint ptr %line1453 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 81, ptr %line1453, align 4
  %file1454 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1449, i32 0, i32 3
  %566 = ptrtoint ptr %file1454 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr @.str.2, ptr %file1454, align 4
  %message1455 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1449, i32 0, i32 4
  %567 = ptrtoint ptr %message1455 to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr null, ptr %message1455, align 4
  %va1457 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1449, i32 0, i32 4, i32 1
  %568 = ptrtoint ptr %va1457 to i32
  call void @__asan_store4_noabort(i32 %568)
  store ptr null, ptr %va1457, align 4
  %format1458 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1449, i32 0, i32 5
  %569 = ptrtoint ptr %format1458 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr @kunit_unary_assert_format, ptr %format1458, align 4
  %condition1459 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1449, i32 0, i32 1
  %570 = ptrtoint ptr %condition1459 to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr @.str.80, ptr %condition1459, align 4
  %expected_true1460 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1449, i32 0, i32 2
  %571 = ptrtoint ptr %expected_true1460 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 0, ptr %expected_true1460, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1449, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1449) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1479) #5
  %572 = getelementptr inbounds i8, ptr %__assertion1479, i32 32
  %573 = ptrtoint ptr %572 to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 -1, ptr %572, align 4, !annotation !257
  %574 = ptrtoint ptr %__assertion1479 to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %context, ptr %__assertion1479, align 4
  %type1482 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1479, i32 0, i32 1
  %575 = ptrtoint ptr %type1482 to i32
  call void @__asan_store4_noabort(i32 %575)
  store i32 0, ptr %type1482, align 4
  %line1483 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1479, i32 0, i32 2
  %576 = ptrtoint ptr %line1483 to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 81, ptr %line1483, align 4
  %file1484 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1479, i32 0, i32 3
  %577 = ptrtoint ptr %file1484 to i32
  call void @__asan_store4_noabort(i32 %577)
  store ptr @.str.2, ptr %file1484, align 4
  %message1485 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1479, i32 0, i32 4
  %578 = ptrtoint ptr %message1485 to i32
  call void @__asan_store4_noabort(i32 %578)
  store ptr null, ptr %message1485, align 4
  %va1487 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1479, i32 0, i32 4, i32 1
  %579 = ptrtoint ptr %va1487 to i32
  call void @__asan_store4_noabort(i32 %579)
  store ptr null, ptr %va1487, align 4
  %format1488 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1479, i32 0, i32 5
  %580 = ptrtoint ptr %format1488 to i32
  call void @__asan_store4_noabort(i32 %580)
  store ptr @kunit_unary_assert_format, ptr %format1488, align 4
  %condition1489 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1479, i32 0, i32 1
  %581 = ptrtoint ptr %condition1489 to i32
  call void @__asan_store4_noabort(i32 %581)
  store ptr @.str.81, ptr %condition1489, align 4
  %expected_true1490 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1479, i32 0, i32 2
  %582 = ptrtoint ptr %expected_true1490 to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 0, ptr %expected_true1490, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1479, i1 noundef zeroext true, ptr noundef nonnull @.str.82, i64 noundef 12288, i64 noundef 12288) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1479) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1504) #5
  %583 = getelementptr inbounds i8, ptr %__assertion1504, i32 32
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 -1, ptr %583, align 4, !annotation !257
  %585 = ptrtoint ptr %__assertion1504 to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %context, ptr %__assertion1504, align 4
  %type1507 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1504, i32 0, i32 1
  %586 = ptrtoint ptr %type1507 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 0, ptr %type1507, align 4
  %line1508 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1504, i32 0, i32 2
  %587 = ptrtoint ptr %line1508 to i32
  call void @__asan_store4_noabort(i32 %587)
  store i32 81, ptr %line1508, align 4
  %file1509 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1504, i32 0, i32 3
  %588 = ptrtoint ptr %file1509 to i32
  call void @__asan_store4_noabort(i32 %588)
  store ptr @.str.2, ptr %file1509, align 4
  %message1510 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1504, i32 0, i32 4
  %589 = ptrtoint ptr %message1510 to i32
  call void @__asan_store4_noabort(i32 %589)
  store ptr null, ptr %message1510, align 4
  %va1512 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1504, i32 0, i32 4, i32 1
  %590 = ptrtoint ptr %va1512 to i32
  call void @__asan_store4_noabort(i32 %590)
  store ptr null, ptr %va1512, align 4
  %format1513 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1504, i32 0, i32 5
  %591 = ptrtoint ptr %format1513 to i32
  call void @__asan_store4_noabort(i32 %591)
  store ptr @kunit_unary_assert_format, ptr %format1513, align 4
  %condition1514 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1504, i32 0, i32 1
  %592 = ptrtoint ptr %condition1514 to i32
  call void @__asan_store4_noabort(i32 %592)
  store ptr @.str.83, ptr %condition1514, align 4
  %expected_true1515 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1504, i32 0, i32 2
  %593 = ptrtoint ptr %expected_true1515 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 0, ptr %expected_true1515, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1504, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1504) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1534) #5
  %594 = getelementptr inbounds i8, ptr %__assertion1534, i32 32
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_store4_noabort(i32 %595)
  store i32 -1, ptr %594, align 4, !annotation !257
  %596 = ptrtoint ptr %__assertion1534 to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr %context, ptr %__assertion1534, align 4
  %type1537 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1534, i32 0, i32 1
  %597 = ptrtoint ptr %type1537 to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 0, ptr %type1537, align 4
  %line1538 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1534, i32 0, i32 2
  %598 = ptrtoint ptr %line1538 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 81, ptr %line1538, align 4
  %file1539 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1534, i32 0, i32 3
  %599 = ptrtoint ptr %file1539 to i32
  call void @__asan_store4_noabort(i32 %599)
  store ptr @.str.2, ptr %file1539, align 4
  %message1540 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1534, i32 0, i32 4
  %600 = ptrtoint ptr %message1540 to i32
  call void @__asan_store4_noabort(i32 %600)
  store ptr null, ptr %message1540, align 4
  %va1542 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1534, i32 0, i32 4, i32 1
  %601 = ptrtoint ptr %va1542 to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr null, ptr %va1542, align 4
  %format1543 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1534, i32 0, i32 5
  %602 = ptrtoint ptr %format1543 to i32
  call void @__asan_store4_noabort(i32 %602)
  store ptr @kunit_unary_assert_format, ptr %format1543, align 4
  %condition1544 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1534, i32 0, i32 1
  %603 = ptrtoint ptr %condition1544 to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr @.str.84, ptr %condition1544, align 4
  %expected_true1545 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1534, i32 0, i32 2
  %604 = ptrtoint ptr %expected_true1545 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 0, ptr %expected_true1545, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1534, i1 noundef zeroext true, ptr noundef nonnull @.str.85, i64 noundef 12288, i64 noundef 12288) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1534) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1559) #5
  %605 = getelementptr inbounds i8, ptr %__assertion1559, i32 32
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 -1, ptr %605, align 4, !annotation !257
  %607 = ptrtoint ptr %__assertion1559 to i32
  call void @__asan_store4_noabort(i32 %607)
  store ptr %context, ptr %__assertion1559, align 4
  %type1562 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1559, i32 0, i32 1
  %608 = ptrtoint ptr %type1562 to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 0, ptr %type1562, align 4
  %line1563 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1559, i32 0, i32 2
  %609 = ptrtoint ptr %line1563 to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 81, ptr %line1563, align 4
  %file1564 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1559, i32 0, i32 3
  %610 = ptrtoint ptr %file1564 to i32
  call void @__asan_store4_noabort(i32 %610)
  store ptr @.str.2, ptr %file1564, align 4
  %message1565 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1559, i32 0, i32 4
  %611 = ptrtoint ptr %message1565 to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr null, ptr %message1565, align 4
  %va1567 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1559, i32 0, i32 4, i32 1
  %612 = ptrtoint ptr %va1567 to i32
  call void @__asan_store4_noabort(i32 %612)
  store ptr null, ptr %va1567, align 4
  %format1568 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1559, i32 0, i32 5
  %613 = ptrtoint ptr %format1568 to i32
  call void @__asan_store4_noabort(i32 %613)
  store ptr @kunit_unary_assert_format, ptr %format1568, align 4
  %condition1569 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1559, i32 0, i32 1
  %614 = ptrtoint ptr %condition1569 to i32
  call void @__asan_store4_noabort(i32 %614)
  store ptr @.str.86, ptr %condition1569, align 4
  %expected_true1570 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1559, i32 0, i32 2
  %615 = ptrtoint ptr %expected_true1570 to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 0, ptr %expected_true1570, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1559, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1559) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1592) #5
  %616 = getelementptr inbounds i8, ptr %__assertion1592, i32 32
  %617 = ptrtoint ptr %616 to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 -1, ptr %616, align 4, !annotation !257
  %618 = ptrtoint ptr %__assertion1592 to i32
  call void @__asan_store4_noabort(i32 %618)
  store ptr %context, ptr %__assertion1592, align 4
  %type1595 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1592, i32 0, i32 1
  %619 = ptrtoint ptr %type1595 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 0, ptr %type1595, align 4
  %line1596 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1592, i32 0, i32 2
  %620 = ptrtoint ptr %line1596 to i32
  call void @__asan_store4_noabort(i32 %620)
  store i32 82, ptr %line1596, align 4
  %file1597 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1592, i32 0, i32 3
  %621 = ptrtoint ptr %file1597 to i32
  call void @__asan_store4_noabort(i32 %621)
  store ptr @.str.2, ptr %file1597, align 4
  %message1598 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1592, i32 0, i32 4
  %622 = ptrtoint ptr %message1598 to i32
  call void @__asan_store4_noabort(i32 %622)
  store ptr null, ptr %message1598, align 4
  %va1600 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1592, i32 0, i32 4, i32 1
  %623 = ptrtoint ptr %va1600 to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr null, ptr %va1600, align 4
  %format1601 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1592, i32 0, i32 5
  %624 = ptrtoint ptr %format1601 to i32
  call void @__asan_store4_noabort(i32 %624)
  store ptr @kunit_unary_assert_format, ptr %format1601, align 4
  %condition1602 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1592, i32 0, i32 1
  %625 = ptrtoint ptr %condition1602 to i32
  call void @__asan_store4_noabort(i32 %625)
  store ptr @.str.87, ptr %condition1602, align 4
  %expected_true1603 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1592, i32 0, i32 2
  %626 = ptrtoint ptr %expected_true1603 to i32
  call void @__asan_store1_noabort(i32 %626)
  store i8 0, ptr %expected_true1603, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1592, i1 noundef zeroext true, ptr noundef nonnull @.str.88, i64 noundef 327680) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1592) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1617) #5
  %627 = getelementptr inbounds i8, ptr %__assertion1617, i32 32
  %628 = ptrtoint ptr %627 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 -1, ptr %627, align 4, !annotation !257
  %629 = ptrtoint ptr %__assertion1617 to i32
  call void @__asan_store4_noabort(i32 %629)
  store ptr %context, ptr %__assertion1617, align 4
  %type1620 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1617, i32 0, i32 1
  %630 = ptrtoint ptr %type1620 to i32
  call void @__asan_store4_noabort(i32 %630)
  store i32 0, ptr %type1620, align 4
  %line1621 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1617, i32 0, i32 2
  %631 = ptrtoint ptr %line1621 to i32
  call void @__asan_store4_noabort(i32 %631)
  store i32 82, ptr %line1621, align 4
  %file1622 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1617, i32 0, i32 3
  %632 = ptrtoint ptr %file1622 to i32
  call void @__asan_store4_noabort(i32 %632)
  store ptr @.str.2, ptr %file1622, align 4
  %message1623 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1617, i32 0, i32 4
  %633 = ptrtoint ptr %message1623 to i32
  call void @__asan_store4_noabort(i32 %633)
  store ptr null, ptr %message1623, align 4
  %va1625 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1617, i32 0, i32 4, i32 1
  %634 = ptrtoint ptr %va1625 to i32
  call void @__asan_store4_noabort(i32 %634)
  store ptr null, ptr %va1625, align 4
  %format1626 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1617, i32 0, i32 5
  %635 = ptrtoint ptr %format1626 to i32
  call void @__asan_store4_noabort(i32 %635)
  store ptr @kunit_unary_assert_format, ptr %format1626, align 4
  %condition1627 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1617, i32 0, i32 1
  %636 = ptrtoint ptr %condition1627 to i32
  call void @__asan_store4_noabort(i32 %636)
  store ptr @.str.89, ptr %condition1627, align 4
  %expected_true1628 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1617, i32 0, i32 2
  %637 = ptrtoint ptr %expected_true1628 to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 0, ptr %expected_true1628, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1617, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1617) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1647) #5
  %638 = getelementptr inbounds i8, ptr %__assertion1647, i32 32
  %639 = ptrtoint ptr %638 to i32
  call void @__asan_store4_noabort(i32 %639)
  store i32 -1, ptr %638, align 4, !annotation !257
  %640 = ptrtoint ptr %__assertion1647 to i32
  call void @__asan_store4_noabort(i32 %640)
  store ptr %context, ptr %__assertion1647, align 4
  %type1650 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1647, i32 0, i32 1
  %641 = ptrtoint ptr %type1650 to i32
  call void @__asan_store4_noabort(i32 %641)
  store i32 0, ptr %type1650, align 4
  %line1651 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1647, i32 0, i32 2
  %642 = ptrtoint ptr %line1651 to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 82, ptr %line1651, align 4
  %file1652 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1647, i32 0, i32 3
  %643 = ptrtoint ptr %file1652 to i32
  call void @__asan_store4_noabort(i32 %643)
  store ptr @.str.2, ptr %file1652, align 4
  %message1653 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1647, i32 0, i32 4
  %644 = ptrtoint ptr %message1653 to i32
  call void @__asan_store4_noabort(i32 %644)
  store ptr null, ptr %message1653, align 4
  %va1655 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1647, i32 0, i32 4, i32 1
  %645 = ptrtoint ptr %va1655 to i32
  call void @__asan_store4_noabort(i32 %645)
  store ptr null, ptr %va1655, align 4
  %format1656 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1647, i32 0, i32 5
  %646 = ptrtoint ptr %format1656 to i32
  call void @__asan_store4_noabort(i32 %646)
  store ptr @kunit_unary_assert_format, ptr %format1656, align 4
  %condition1657 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1647, i32 0, i32 1
  %647 = ptrtoint ptr %condition1657 to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr @.str.90, ptr %condition1657, align 4
  %expected_true1658 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1647, i32 0, i32 2
  %648 = ptrtoint ptr %expected_true1658 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 0, ptr %expected_true1658, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1647, i1 noundef zeroext true, ptr noundef nonnull @.str.91, i64 noundef 327680, i64 noundef 327680) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1647) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1672) #5
  %649 = getelementptr inbounds i8, ptr %__assertion1672, i32 32
  %650 = ptrtoint ptr %649 to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 -1, ptr %649, align 4, !annotation !257
  %651 = ptrtoint ptr %__assertion1672 to i32
  call void @__asan_store4_noabort(i32 %651)
  store ptr %context, ptr %__assertion1672, align 4
  %type1675 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1672, i32 0, i32 1
  %652 = ptrtoint ptr %type1675 to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 0, ptr %type1675, align 4
  %line1676 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1672, i32 0, i32 2
  %653 = ptrtoint ptr %line1676 to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 82, ptr %line1676, align 4
  %file1677 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1672, i32 0, i32 3
  %654 = ptrtoint ptr %file1677 to i32
  call void @__asan_store4_noabort(i32 %654)
  store ptr @.str.2, ptr %file1677, align 4
  %message1678 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1672, i32 0, i32 4
  %655 = ptrtoint ptr %message1678 to i32
  call void @__asan_store4_noabort(i32 %655)
  store ptr null, ptr %message1678, align 4
  %va1680 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1672, i32 0, i32 4, i32 1
  %656 = ptrtoint ptr %va1680 to i32
  call void @__asan_store4_noabort(i32 %656)
  store ptr null, ptr %va1680, align 4
  %format1681 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1672, i32 0, i32 5
  %657 = ptrtoint ptr %format1681 to i32
  call void @__asan_store4_noabort(i32 %657)
  store ptr @kunit_unary_assert_format, ptr %format1681, align 4
  %condition1682 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1672, i32 0, i32 1
  %658 = ptrtoint ptr %condition1682 to i32
  call void @__asan_store4_noabort(i32 %658)
  store ptr @.str.92, ptr %condition1682, align 4
  %expected_true1683 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1672, i32 0, i32 2
  %659 = ptrtoint ptr %expected_true1683 to i32
  call void @__asan_store1_noabort(i32 %659)
  store i8 0, ptr %expected_true1683, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1672, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1672) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1702) #5
  %660 = getelementptr inbounds i8, ptr %__assertion1702, i32 32
  %661 = ptrtoint ptr %660 to i32
  call void @__asan_store4_noabort(i32 %661)
  store i32 -1, ptr %660, align 4, !annotation !257
  %662 = ptrtoint ptr %__assertion1702 to i32
  call void @__asan_store4_noabort(i32 %662)
  store ptr %context, ptr %__assertion1702, align 4
  %type1705 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1702, i32 0, i32 1
  %663 = ptrtoint ptr %type1705 to i32
  call void @__asan_store4_noabort(i32 %663)
  store i32 0, ptr %type1705, align 4
  %line1706 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1702, i32 0, i32 2
  %664 = ptrtoint ptr %line1706 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 82, ptr %line1706, align 4
  %file1707 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1702, i32 0, i32 3
  %665 = ptrtoint ptr %file1707 to i32
  call void @__asan_store4_noabort(i32 %665)
  store ptr @.str.2, ptr %file1707, align 4
  %message1708 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1702, i32 0, i32 4
  %666 = ptrtoint ptr %message1708 to i32
  call void @__asan_store4_noabort(i32 %666)
  store ptr null, ptr %message1708, align 4
  %va1710 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1702, i32 0, i32 4, i32 1
  %667 = ptrtoint ptr %va1710 to i32
  call void @__asan_store4_noabort(i32 %667)
  store ptr null, ptr %va1710, align 4
  %format1711 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1702, i32 0, i32 5
  %668 = ptrtoint ptr %format1711 to i32
  call void @__asan_store4_noabort(i32 %668)
  store ptr @kunit_unary_assert_format, ptr %format1711, align 4
  %condition1712 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1702, i32 0, i32 1
  %669 = ptrtoint ptr %condition1712 to i32
  call void @__asan_store4_noabort(i32 %669)
  store ptr @.str.93, ptr %condition1712, align 4
  %expected_true1713 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1702, i32 0, i32 2
  %670 = ptrtoint ptr %expected_true1713 to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 0, ptr %expected_true1713, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1702, i1 noundef zeroext true, ptr noundef nonnull @.str.94, i64 noundef 327680, i64 noundef 327680) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1702) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1727) #5
  %671 = getelementptr inbounds i8, ptr %__assertion1727, i32 32
  %672 = ptrtoint ptr %671 to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 -1, ptr %671, align 4, !annotation !257
  %673 = ptrtoint ptr %__assertion1727 to i32
  call void @__asan_store4_noabort(i32 %673)
  store ptr %context, ptr %__assertion1727, align 4
  %type1730 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1727, i32 0, i32 1
  %674 = ptrtoint ptr %type1730 to i32
  call void @__asan_store4_noabort(i32 %674)
  store i32 0, ptr %type1730, align 4
  %line1731 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1727, i32 0, i32 2
  %675 = ptrtoint ptr %line1731 to i32
  call void @__asan_store4_noabort(i32 %675)
  store i32 82, ptr %line1731, align 4
  %file1732 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1727, i32 0, i32 3
  %676 = ptrtoint ptr %file1732 to i32
  call void @__asan_store4_noabort(i32 %676)
  store ptr @.str.2, ptr %file1732, align 4
  %message1733 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1727, i32 0, i32 4
  %677 = ptrtoint ptr %message1733 to i32
  call void @__asan_store4_noabort(i32 %677)
  store ptr null, ptr %message1733, align 4
  %va1735 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1727, i32 0, i32 4, i32 1
  %678 = ptrtoint ptr %va1735 to i32
  call void @__asan_store4_noabort(i32 %678)
  store ptr null, ptr %va1735, align 4
  %format1736 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1727, i32 0, i32 5
  %679 = ptrtoint ptr %format1736 to i32
  call void @__asan_store4_noabort(i32 %679)
  store ptr @kunit_unary_assert_format, ptr %format1736, align 4
  %condition1737 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1727, i32 0, i32 1
  %680 = ptrtoint ptr %condition1737 to i32
  call void @__asan_store4_noabort(i32 %680)
  store ptr @.str.95, ptr %condition1737, align 4
  %expected_true1738 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1727, i32 0, i32 2
  %681 = ptrtoint ptr %expected_true1738 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 0, ptr %expected_true1738, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1727, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1727) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1760) #5
  %682 = getelementptr inbounds i8, ptr %__assertion1760, i32 32
  %683 = ptrtoint ptr %682 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 -1, ptr %682, align 4, !annotation !257
  %684 = ptrtoint ptr %__assertion1760 to i32
  call void @__asan_store4_noabort(i32 %684)
  store ptr %context, ptr %__assertion1760, align 4
  %type1763 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1760, i32 0, i32 1
  %685 = ptrtoint ptr %type1763 to i32
  call void @__asan_store4_noabort(i32 %685)
  store i32 0, ptr %type1763, align 4
  %line1764 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1760, i32 0, i32 2
  %686 = ptrtoint ptr %line1764 to i32
  call void @__asan_store4_noabort(i32 %686)
  store i32 83, ptr %line1764, align 4
  %file1765 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1760, i32 0, i32 3
  %687 = ptrtoint ptr %file1765 to i32
  call void @__asan_store4_noabort(i32 %687)
  store ptr @.str.2, ptr %file1765, align 4
  %message1766 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1760, i32 0, i32 4
  %688 = ptrtoint ptr %message1766 to i32
  call void @__asan_store4_noabort(i32 %688)
  store ptr null, ptr %message1766, align 4
  %va1768 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1760, i32 0, i32 4, i32 1
  %689 = ptrtoint ptr %va1768 to i32
  call void @__asan_store4_noabort(i32 %689)
  store ptr null, ptr %va1768, align 4
  %format1769 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1760, i32 0, i32 5
  %690 = ptrtoint ptr %format1769 to i32
  call void @__asan_store4_noabort(i32 %690)
  store ptr @kunit_unary_assert_format, ptr %format1769, align 4
  %condition1770 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1760, i32 0, i32 1
  %691 = ptrtoint ptr %condition1770 to i32
  call void @__asan_store4_noabort(i32 %691)
  store ptr @.str.96, ptr %condition1770, align 4
  %expected_true1771 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1760, i32 0, i32 2
  %692 = ptrtoint ptr %expected_true1771 to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 0, ptr %expected_true1771, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1760, i1 noundef zeroext true, ptr noundef nonnull @.str.97, i64 noundef 7340032) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1760) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1785) #5
  %693 = getelementptr inbounds i8, ptr %__assertion1785, i32 32
  %694 = ptrtoint ptr %693 to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 -1, ptr %693, align 4, !annotation !257
  %695 = ptrtoint ptr %__assertion1785 to i32
  call void @__asan_store4_noabort(i32 %695)
  store ptr %context, ptr %__assertion1785, align 4
  %type1788 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1785, i32 0, i32 1
  %696 = ptrtoint ptr %type1788 to i32
  call void @__asan_store4_noabort(i32 %696)
  store i32 0, ptr %type1788, align 4
  %line1789 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1785, i32 0, i32 2
  %697 = ptrtoint ptr %line1789 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 83, ptr %line1789, align 4
  %file1790 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1785, i32 0, i32 3
  %698 = ptrtoint ptr %file1790 to i32
  call void @__asan_store4_noabort(i32 %698)
  store ptr @.str.2, ptr %file1790, align 4
  %message1791 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1785, i32 0, i32 4
  %699 = ptrtoint ptr %message1791 to i32
  call void @__asan_store4_noabort(i32 %699)
  store ptr null, ptr %message1791, align 4
  %va1793 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1785, i32 0, i32 4, i32 1
  %700 = ptrtoint ptr %va1793 to i32
  call void @__asan_store4_noabort(i32 %700)
  store ptr null, ptr %va1793, align 4
  %format1794 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1785, i32 0, i32 5
  %701 = ptrtoint ptr %format1794 to i32
  call void @__asan_store4_noabort(i32 %701)
  store ptr @kunit_unary_assert_format, ptr %format1794, align 4
  %condition1795 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1785, i32 0, i32 1
  %702 = ptrtoint ptr %condition1795 to i32
  call void @__asan_store4_noabort(i32 %702)
  store ptr @.str.98, ptr %condition1795, align 4
  %expected_true1796 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1785, i32 0, i32 2
  %703 = ptrtoint ptr %expected_true1796 to i32
  call void @__asan_store1_noabort(i32 %703)
  store i8 0, ptr %expected_true1796, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1785, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1785) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1815) #5
  %704 = getelementptr inbounds i8, ptr %__assertion1815, i32 32
  %705 = ptrtoint ptr %704 to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 -1, ptr %704, align 4, !annotation !257
  %706 = ptrtoint ptr %__assertion1815 to i32
  call void @__asan_store4_noabort(i32 %706)
  store ptr %context, ptr %__assertion1815, align 4
  %type1818 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1815, i32 0, i32 1
  %707 = ptrtoint ptr %type1818 to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 0, ptr %type1818, align 4
  %line1819 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1815, i32 0, i32 2
  %708 = ptrtoint ptr %line1819 to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 83, ptr %line1819, align 4
  %file1820 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1815, i32 0, i32 3
  %709 = ptrtoint ptr %file1820 to i32
  call void @__asan_store4_noabort(i32 %709)
  store ptr @.str.2, ptr %file1820, align 4
  %message1821 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1815, i32 0, i32 4
  %710 = ptrtoint ptr %message1821 to i32
  call void @__asan_store4_noabort(i32 %710)
  store ptr null, ptr %message1821, align 4
  %va1823 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1815, i32 0, i32 4, i32 1
  %711 = ptrtoint ptr %va1823 to i32
  call void @__asan_store4_noabort(i32 %711)
  store ptr null, ptr %va1823, align 4
  %format1824 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1815, i32 0, i32 5
  %712 = ptrtoint ptr %format1824 to i32
  call void @__asan_store4_noabort(i32 %712)
  store ptr @kunit_unary_assert_format, ptr %format1824, align 4
  %condition1825 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1815, i32 0, i32 1
  %713 = ptrtoint ptr %condition1825 to i32
  call void @__asan_store4_noabort(i32 %713)
  store ptr @.str.99, ptr %condition1825, align 4
  %expected_true1826 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1815, i32 0, i32 2
  %714 = ptrtoint ptr %expected_true1826 to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 0, ptr %expected_true1826, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1815, i1 noundef zeroext true, ptr noundef nonnull @.str.100, i64 noundef 7340032, i64 noundef 7340032) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1815) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1840) #5
  %715 = getelementptr inbounds i8, ptr %__assertion1840, i32 32
  %716 = ptrtoint ptr %715 to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 -1, ptr %715, align 4, !annotation !257
  %717 = ptrtoint ptr %__assertion1840 to i32
  call void @__asan_store4_noabort(i32 %717)
  store ptr %context, ptr %__assertion1840, align 4
  %type1843 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1840, i32 0, i32 1
  %718 = ptrtoint ptr %type1843 to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 0, ptr %type1843, align 4
  %line1844 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1840, i32 0, i32 2
  %719 = ptrtoint ptr %line1844 to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 83, ptr %line1844, align 4
  %file1845 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1840, i32 0, i32 3
  %720 = ptrtoint ptr %file1845 to i32
  call void @__asan_store4_noabort(i32 %720)
  store ptr @.str.2, ptr %file1845, align 4
  %message1846 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1840, i32 0, i32 4
  %721 = ptrtoint ptr %message1846 to i32
  call void @__asan_store4_noabort(i32 %721)
  store ptr null, ptr %message1846, align 4
  %va1848 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1840, i32 0, i32 4, i32 1
  %722 = ptrtoint ptr %va1848 to i32
  call void @__asan_store4_noabort(i32 %722)
  store ptr null, ptr %va1848, align 4
  %format1849 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1840, i32 0, i32 5
  %723 = ptrtoint ptr %format1849 to i32
  call void @__asan_store4_noabort(i32 %723)
  store ptr @kunit_unary_assert_format, ptr %format1849, align 4
  %condition1850 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1840, i32 0, i32 1
  %724 = ptrtoint ptr %condition1850 to i32
  call void @__asan_store4_noabort(i32 %724)
  store ptr @.str.101, ptr %condition1850, align 4
  %expected_true1851 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1840, i32 0, i32 2
  %725 = ptrtoint ptr %expected_true1851 to i32
  call void @__asan_store1_noabort(i32 %725)
  store i8 0, ptr %expected_true1851, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1840, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1840) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1870) #5
  %726 = getelementptr inbounds i8, ptr %__assertion1870, i32 32
  %727 = ptrtoint ptr %726 to i32
  call void @__asan_store4_noabort(i32 %727)
  store i32 -1, ptr %726, align 4, !annotation !257
  %728 = ptrtoint ptr %__assertion1870 to i32
  call void @__asan_store4_noabort(i32 %728)
  store ptr %context, ptr %__assertion1870, align 4
  %type1873 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1870, i32 0, i32 1
  %729 = ptrtoint ptr %type1873 to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 0, ptr %type1873, align 4
  %line1874 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1870, i32 0, i32 2
  %730 = ptrtoint ptr %line1874 to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 83, ptr %line1874, align 4
  %file1875 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1870, i32 0, i32 3
  %731 = ptrtoint ptr %file1875 to i32
  call void @__asan_store4_noabort(i32 %731)
  store ptr @.str.2, ptr %file1875, align 4
  %message1876 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1870, i32 0, i32 4
  %732 = ptrtoint ptr %message1876 to i32
  call void @__asan_store4_noabort(i32 %732)
  store ptr null, ptr %message1876, align 4
  %va1878 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1870, i32 0, i32 4, i32 1
  %733 = ptrtoint ptr %va1878 to i32
  call void @__asan_store4_noabort(i32 %733)
  store ptr null, ptr %va1878, align 4
  %format1879 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1870, i32 0, i32 5
  %734 = ptrtoint ptr %format1879 to i32
  call void @__asan_store4_noabort(i32 %734)
  store ptr @kunit_unary_assert_format, ptr %format1879, align 4
  %condition1880 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1870, i32 0, i32 1
  %735 = ptrtoint ptr %condition1880 to i32
  call void @__asan_store4_noabort(i32 %735)
  store ptr @.str.102, ptr %condition1880, align 4
  %expected_true1881 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1870, i32 0, i32 2
  %736 = ptrtoint ptr %expected_true1881 to i32
  call void @__asan_store1_noabort(i32 %736)
  store i8 0, ptr %expected_true1881, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1870, i1 noundef zeroext true, ptr noundef nonnull @.str.103, i64 noundef 7340032, i64 noundef 7340032) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1870) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1895) #5
  %737 = getelementptr inbounds i8, ptr %__assertion1895, i32 32
  %738 = ptrtoint ptr %737 to i32
  call void @__asan_store4_noabort(i32 %738)
  store i32 -1, ptr %737, align 4, !annotation !257
  %739 = ptrtoint ptr %__assertion1895 to i32
  call void @__asan_store4_noabort(i32 %739)
  store ptr %context, ptr %__assertion1895, align 4
  %type1898 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1895, i32 0, i32 1
  %740 = ptrtoint ptr %type1898 to i32
  call void @__asan_store4_noabort(i32 %740)
  store i32 0, ptr %type1898, align 4
  %line1899 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1895, i32 0, i32 2
  %741 = ptrtoint ptr %line1899 to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 83, ptr %line1899, align 4
  %file1900 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1895, i32 0, i32 3
  %742 = ptrtoint ptr %file1900 to i32
  call void @__asan_store4_noabort(i32 %742)
  store ptr @.str.2, ptr %file1900, align 4
  %message1901 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1895, i32 0, i32 4
  %743 = ptrtoint ptr %message1901 to i32
  call void @__asan_store4_noabort(i32 %743)
  store ptr null, ptr %message1901, align 4
  %va1903 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1895, i32 0, i32 4, i32 1
  %744 = ptrtoint ptr %va1903 to i32
  call void @__asan_store4_noabort(i32 %744)
  store ptr null, ptr %va1903, align 4
  %format1904 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1895, i32 0, i32 5
  %745 = ptrtoint ptr %format1904 to i32
  call void @__asan_store4_noabort(i32 %745)
  store ptr @kunit_unary_assert_format, ptr %format1904, align 4
  %condition1905 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1895, i32 0, i32 1
  %746 = ptrtoint ptr %condition1905 to i32
  call void @__asan_store4_noabort(i32 %746)
  store ptr @.str.104, ptr %condition1905, align 4
  %expected_true1906 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1895, i32 0, i32 2
  %747 = ptrtoint ptr %expected_true1906 to i32
  call void @__asan_store1_noabort(i32 %747)
  store i8 0, ptr %expected_true1906, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1895, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1895) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1928) #5
  %748 = getelementptr inbounds i8, ptr %__assertion1928, i32 32
  %749 = ptrtoint ptr %748 to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 -1, ptr %748, align 4, !annotation !257
  %750 = ptrtoint ptr %__assertion1928 to i32
  call void @__asan_store4_noabort(i32 %750)
  store ptr %context, ptr %__assertion1928, align 4
  %type1931 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1928, i32 0, i32 1
  %751 = ptrtoint ptr %type1931 to i32
  call void @__asan_store4_noabort(i32 %751)
  store i32 0, ptr %type1931, align 4
  %line1932 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1928, i32 0, i32 2
  %752 = ptrtoint ptr %line1932 to i32
  call void @__asan_store4_noabort(i32 %752)
  store i32 84, ptr %line1932, align 4
  %file1933 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1928, i32 0, i32 3
  %753 = ptrtoint ptr %file1933 to i32
  call void @__asan_store4_noabort(i32 %753)
  store ptr @.str.2, ptr %file1933, align 4
  %message1934 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1928, i32 0, i32 4
  %754 = ptrtoint ptr %message1934 to i32
  call void @__asan_store4_noabort(i32 %754)
  store ptr null, ptr %message1934, align 4
  %va1936 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1928, i32 0, i32 4, i32 1
  %755 = ptrtoint ptr %va1936 to i32
  call void @__asan_store4_noabort(i32 %755)
  store ptr null, ptr %va1936, align 4
  %format1937 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1928, i32 0, i32 5
  %756 = ptrtoint ptr %format1937 to i32
  call void @__asan_store4_noabort(i32 %756)
  store ptr @kunit_unary_assert_format, ptr %format1937, align 4
  %condition1938 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1928, i32 0, i32 1
  %757 = ptrtoint ptr %condition1938 to i32
  call void @__asan_store4_noabort(i32 %757)
  store ptr @.str.105, ptr %condition1938, align 4
  %expected_true1939 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1928, i32 0, i32 2
  %758 = ptrtoint ptr %expected_true1939 to i32
  call void @__asan_store1_noabort(i32 %758)
  store i8 0, ptr %expected_true1939, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1928, i1 noundef zeroext true, ptr noundef nonnull @.str.106, i64 noundef 234881024) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1928) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1953) #5
  %759 = getelementptr inbounds i8, ptr %__assertion1953, i32 32
  %760 = ptrtoint ptr %759 to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 -1, ptr %759, align 4, !annotation !257
  %761 = ptrtoint ptr %__assertion1953 to i32
  call void @__asan_store4_noabort(i32 %761)
  store ptr %context, ptr %__assertion1953, align 4
  %type1956 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1953, i32 0, i32 1
  %762 = ptrtoint ptr %type1956 to i32
  call void @__asan_store4_noabort(i32 %762)
  store i32 0, ptr %type1956, align 4
  %line1957 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1953, i32 0, i32 2
  %763 = ptrtoint ptr %line1957 to i32
  call void @__asan_store4_noabort(i32 %763)
  store i32 84, ptr %line1957, align 4
  %file1958 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1953, i32 0, i32 3
  %764 = ptrtoint ptr %file1958 to i32
  call void @__asan_store4_noabort(i32 %764)
  store ptr @.str.2, ptr %file1958, align 4
  %message1959 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1953, i32 0, i32 4
  %765 = ptrtoint ptr %message1959 to i32
  call void @__asan_store4_noabort(i32 %765)
  store ptr null, ptr %message1959, align 4
  %va1961 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1953, i32 0, i32 4, i32 1
  %766 = ptrtoint ptr %va1961 to i32
  call void @__asan_store4_noabort(i32 %766)
  store ptr null, ptr %va1961, align 4
  %format1962 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1953, i32 0, i32 5
  %767 = ptrtoint ptr %format1962 to i32
  call void @__asan_store4_noabort(i32 %767)
  store ptr @kunit_unary_assert_format, ptr %format1962, align 4
  %condition1963 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1953, i32 0, i32 1
  %768 = ptrtoint ptr %condition1963 to i32
  call void @__asan_store4_noabort(i32 %768)
  store ptr @.str.107, ptr %condition1963, align 4
  %expected_true1964 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1953, i32 0, i32 2
  %769 = ptrtoint ptr %expected_true1964 to i32
  call void @__asan_store1_noabort(i32 %769)
  store i8 0, ptr %expected_true1964, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1953, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1953) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion1983) #5
  %770 = getelementptr inbounds i8, ptr %__assertion1983, i32 32
  %771 = ptrtoint ptr %770 to i32
  call void @__asan_store4_noabort(i32 %771)
  store i32 -1, ptr %770, align 4, !annotation !257
  %772 = ptrtoint ptr %__assertion1983 to i32
  call void @__asan_store4_noabort(i32 %772)
  store ptr %context, ptr %__assertion1983, align 4
  %type1986 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1983, i32 0, i32 1
  %773 = ptrtoint ptr %type1986 to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 0, ptr %type1986, align 4
  %line1987 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1983, i32 0, i32 2
  %774 = ptrtoint ptr %line1987 to i32
  call void @__asan_store4_noabort(i32 %774)
  store i32 84, ptr %line1987, align 4
  %file1988 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1983, i32 0, i32 3
  %775 = ptrtoint ptr %file1988 to i32
  call void @__asan_store4_noabort(i32 %775)
  store ptr @.str.2, ptr %file1988, align 4
  %message1989 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1983, i32 0, i32 4
  %776 = ptrtoint ptr %message1989 to i32
  call void @__asan_store4_noabort(i32 %776)
  store ptr null, ptr %message1989, align 4
  %va1991 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1983, i32 0, i32 4, i32 1
  %777 = ptrtoint ptr %va1991 to i32
  call void @__asan_store4_noabort(i32 %777)
  store ptr null, ptr %va1991, align 4
  %format1992 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion1983, i32 0, i32 5
  %778 = ptrtoint ptr %format1992 to i32
  call void @__asan_store4_noabort(i32 %778)
  store ptr @kunit_unary_assert_format, ptr %format1992, align 4
  %condition1993 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1983, i32 0, i32 1
  %779 = ptrtoint ptr %condition1993 to i32
  call void @__asan_store4_noabort(i32 %779)
  store ptr @.str.108, ptr %condition1993, align 4
  %expected_true1994 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion1983, i32 0, i32 2
  %780 = ptrtoint ptr %expected_true1994 to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 0, ptr %expected_true1994, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion1983, i1 noundef zeroext true, ptr noundef nonnull @.str.109, i64 noundef 234881024, i64 noundef 234881024) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion1983) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2008) #5
  %781 = getelementptr inbounds i8, ptr %__assertion2008, i32 32
  %782 = ptrtoint ptr %781 to i32
  call void @__asan_store4_noabort(i32 %782)
  store i32 -1, ptr %781, align 4, !annotation !257
  %783 = ptrtoint ptr %__assertion2008 to i32
  call void @__asan_store4_noabort(i32 %783)
  store ptr %context, ptr %__assertion2008, align 4
  %type2011 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2008, i32 0, i32 1
  %784 = ptrtoint ptr %type2011 to i32
  call void @__asan_store4_noabort(i32 %784)
  store i32 0, ptr %type2011, align 4
  %line2012 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2008, i32 0, i32 2
  %785 = ptrtoint ptr %line2012 to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 84, ptr %line2012, align 4
  %file2013 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2008, i32 0, i32 3
  %786 = ptrtoint ptr %file2013 to i32
  call void @__asan_store4_noabort(i32 %786)
  store ptr @.str.2, ptr %file2013, align 4
  %message2014 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2008, i32 0, i32 4
  %787 = ptrtoint ptr %message2014 to i32
  call void @__asan_store4_noabort(i32 %787)
  store ptr null, ptr %message2014, align 4
  %va2016 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2008, i32 0, i32 4, i32 1
  %788 = ptrtoint ptr %va2016 to i32
  call void @__asan_store4_noabort(i32 %788)
  store ptr null, ptr %va2016, align 4
  %format2017 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2008, i32 0, i32 5
  %789 = ptrtoint ptr %format2017 to i32
  call void @__asan_store4_noabort(i32 %789)
  store ptr @kunit_unary_assert_format, ptr %format2017, align 4
  %condition2018 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2008, i32 0, i32 1
  %790 = ptrtoint ptr %condition2018 to i32
  call void @__asan_store4_noabort(i32 %790)
  store ptr @.str.110, ptr %condition2018, align 4
  %expected_true2019 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2008, i32 0, i32 2
  %791 = ptrtoint ptr %expected_true2019 to i32
  call void @__asan_store1_noabort(i32 %791)
  store i8 0, ptr %expected_true2019, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2008, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2008) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2038) #5
  %792 = getelementptr inbounds i8, ptr %__assertion2038, i32 32
  %793 = ptrtoint ptr %792 to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 -1, ptr %792, align 4, !annotation !257
  %794 = ptrtoint ptr %__assertion2038 to i32
  call void @__asan_store4_noabort(i32 %794)
  store ptr %context, ptr %__assertion2038, align 4
  %type2041 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2038, i32 0, i32 1
  %795 = ptrtoint ptr %type2041 to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 0, ptr %type2041, align 4
  %line2042 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2038, i32 0, i32 2
  %796 = ptrtoint ptr %line2042 to i32
  call void @__asan_store4_noabort(i32 %796)
  store i32 84, ptr %line2042, align 4
  %file2043 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2038, i32 0, i32 3
  %797 = ptrtoint ptr %file2043 to i32
  call void @__asan_store4_noabort(i32 %797)
  store ptr @.str.2, ptr %file2043, align 4
  %message2044 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2038, i32 0, i32 4
  %798 = ptrtoint ptr %message2044 to i32
  call void @__asan_store4_noabort(i32 %798)
  store ptr null, ptr %message2044, align 4
  %va2046 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2038, i32 0, i32 4, i32 1
  %799 = ptrtoint ptr %va2046 to i32
  call void @__asan_store4_noabort(i32 %799)
  store ptr null, ptr %va2046, align 4
  %format2047 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2038, i32 0, i32 5
  %800 = ptrtoint ptr %format2047 to i32
  call void @__asan_store4_noabort(i32 %800)
  store ptr @kunit_unary_assert_format, ptr %format2047, align 4
  %condition2048 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2038, i32 0, i32 1
  %801 = ptrtoint ptr %condition2048 to i32
  call void @__asan_store4_noabort(i32 %801)
  store ptr @.str.111, ptr %condition2048, align 4
  %expected_true2049 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2038, i32 0, i32 2
  %802 = ptrtoint ptr %expected_true2049 to i32
  call void @__asan_store1_noabort(i32 %802)
  store i8 0, ptr %expected_true2049, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2038, i1 noundef zeroext true, ptr noundef nonnull @.str.112, i64 noundef 234881024, i64 noundef 234881024) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2038) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2063) #5
  %803 = getelementptr inbounds i8, ptr %__assertion2063, i32 32
  %804 = ptrtoint ptr %803 to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 -1, ptr %803, align 4, !annotation !257
  %805 = ptrtoint ptr %__assertion2063 to i32
  call void @__asan_store4_noabort(i32 %805)
  store ptr %context, ptr %__assertion2063, align 4
  %type2066 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2063, i32 0, i32 1
  %806 = ptrtoint ptr %type2066 to i32
  call void @__asan_store4_noabort(i32 %806)
  store i32 0, ptr %type2066, align 4
  %line2067 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2063, i32 0, i32 2
  %807 = ptrtoint ptr %line2067 to i32
  call void @__asan_store4_noabort(i32 %807)
  store i32 84, ptr %line2067, align 4
  %file2068 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2063, i32 0, i32 3
  %808 = ptrtoint ptr %file2068 to i32
  call void @__asan_store4_noabort(i32 %808)
  store ptr @.str.2, ptr %file2068, align 4
  %message2069 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2063, i32 0, i32 4
  %809 = ptrtoint ptr %message2069 to i32
  call void @__asan_store4_noabort(i32 %809)
  store ptr null, ptr %message2069, align 4
  %va2071 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2063, i32 0, i32 4, i32 1
  %810 = ptrtoint ptr %va2071 to i32
  call void @__asan_store4_noabort(i32 %810)
  store ptr null, ptr %va2071, align 4
  %format2072 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2063, i32 0, i32 5
  %811 = ptrtoint ptr %format2072 to i32
  call void @__asan_store4_noabort(i32 %811)
  store ptr @kunit_unary_assert_format, ptr %format2072, align 4
  %condition2073 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2063, i32 0, i32 1
  %812 = ptrtoint ptr %condition2073 to i32
  call void @__asan_store4_noabort(i32 %812)
  store ptr @.str.113, ptr %condition2073, align 4
  %expected_true2074 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2063, i32 0, i32 2
  %813 = ptrtoint ptr %expected_true2074 to i32
  call void @__asan_store1_noabort(i32 %813)
  store i8 0, ptr %expected_true2074, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2063, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2063) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2096) #5
  %814 = getelementptr inbounds i8, ptr %__assertion2096, i32 32
  %815 = ptrtoint ptr %814 to i32
  call void @__asan_store4_noabort(i32 %815)
  store i32 -1, ptr %814, align 4, !annotation !257
  %816 = ptrtoint ptr %__assertion2096 to i32
  call void @__asan_store4_noabort(i32 %816)
  store ptr %context, ptr %__assertion2096, align 4
  %type2099 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2096, i32 0, i32 1
  %817 = ptrtoint ptr %type2099 to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 0, ptr %type2099, align 4
  %line2100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2096, i32 0, i32 2
  %818 = ptrtoint ptr %line2100 to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 85, ptr %line2100, align 4
  %file2101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2096, i32 0, i32 3
  %819 = ptrtoint ptr %file2101 to i32
  call void @__asan_store4_noabort(i32 %819)
  store ptr @.str.2, ptr %file2101, align 4
  %message2102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2096, i32 0, i32 4
  %820 = ptrtoint ptr %message2102 to i32
  call void @__asan_store4_noabort(i32 %820)
  store ptr null, ptr %message2102, align 4
  %va2104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2096, i32 0, i32 4, i32 1
  %821 = ptrtoint ptr %va2104 to i32
  call void @__asan_store4_noabort(i32 %821)
  store ptr null, ptr %va2104, align 4
  %format2105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2096, i32 0, i32 5
  %822 = ptrtoint ptr %format2105 to i32
  call void @__asan_store4_noabort(i32 %822)
  store ptr @kunit_unary_assert_format, ptr %format2105, align 4
  %condition2106 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2096, i32 0, i32 1
  %823 = ptrtoint ptr %condition2106 to i32
  call void @__asan_store4_noabort(i32 %823)
  store ptr @.str.114, ptr %condition2106, align 4
  %expected_true2107 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2096, i32 0, i32 2
  %824 = ptrtoint ptr %expected_true2107 to i32
  call void @__asan_store1_noabort(i32 %824)
  store i8 0, ptr %expected_true2107, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2096, i1 noundef zeroext true, ptr noundef nonnull @.str.115, i64 noundef 4026531840) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2096) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2121) #5
  %825 = getelementptr inbounds i8, ptr %__assertion2121, i32 32
  %826 = ptrtoint ptr %825 to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 -1, ptr %825, align 4, !annotation !257
  %827 = ptrtoint ptr %__assertion2121 to i32
  call void @__asan_store4_noabort(i32 %827)
  store ptr %context, ptr %__assertion2121, align 4
  %type2124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2121, i32 0, i32 1
  %828 = ptrtoint ptr %type2124 to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 0, ptr %type2124, align 4
  %line2125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2121, i32 0, i32 2
  %829 = ptrtoint ptr %line2125 to i32
  call void @__asan_store4_noabort(i32 %829)
  store i32 85, ptr %line2125, align 4
  %file2126 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2121, i32 0, i32 3
  %830 = ptrtoint ptr %file2126 to i32
  call void @__asan_store4_noabort(i32 %830)
  store ptr @.str.2, ptr %file2126, align 4
  %message2127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2121, i32 0, i32 4
  %831 = ptrtoint ptr %message2127 to i32
  call void @__asan_store4_noabort(i32 %831)
  store ptr null, ptr %message2127, align 4
  %va2129 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2121, i32 0, i32 4, i32 1
  %832 = ptrtoint ptr %va2129 to i32
  call void @__asan_store4_noabort(i32 %832)
  store ptr null, ptr %va2129, align 4
  %format2130 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2121, i32 0, i32 5
  %833 = ptrtoint ptr %format2130 to i32
  call void @__asan_store4_noabort(i32 %833)
  store ptr @kunit_unary_assert_format, ptr %format2130, align 4
  %condition2131 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2121, i32 0, i32 1
  %834 = ptrtoint ptr %condition2131 to i32
  call void @__asan_store4_noabort(i32 %834)
  store ptr @.str.116, ptr %condition2131, align 4
  %expected_true2132 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2121, i32 0, i32 2
  %835 = ptrtoint ptr %expected_true2132 to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 0, ptr %expected_true2132, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2121, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2121) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2151) #5
  %836 = getelementptr inbounds i8, ptr %__assertion2151, i32 32
  %837 = ptrtoint ptr %836 to i32
  call void @__asan_store4_noabort(i32 %837)
  store i32 -1, ptr %836, align 4, !annotation !257
  %838 = ptrtoint ptr %__assertion2151 to i32
  call void @__asan_store4_noabort(i32 %838)
  store ptr %context, ptr %__assertion2151, align 4
  %type2154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2151, i32 0, i32 1
  %839 = ptrtoint ptr %type2154 to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 0, ptr %type2154, align 4
  %line2155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2151, i32 0, i32 2
  %840 = ptrtoint ptr %line2155 to i32
  call void @__asan_store4_noabort(i32 %840)
  store i32 85, ptr %line2155, align 4
  %file2156 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2151, i32 0, i32 3
  %841 = ptrtoint ptr %file2156 to i32
  call void @__asan_store4_noabort(i32 %841)
  store ptr @.str.2, ptr %file2156, align 4
  %message2157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2151, i32 0, i32 4
  %842 = ptrtoint ptr %message2157 to i32
  call void @__asan_store4_noabort(i32 %842)
  store ptr null, ptr %message2157, align 4
  %va2159 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2151, i32 0, i32 4, i32 1
  %843 = ptrtoint ptr %va2159 to i32
  call void @__asan_store4_noabort(i32 %843)
  store ptr null, ptr %va2159, align 4
  %format2160 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2151, i32 0, i32 5
  %844 = ptrtoint ptr %format2160 to i32
  call void @__asan_store4_noabort(i32 %844)
  store ptr @kunit_unary_assert_format, ptr %format2160, align 4
  %condition2161 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2151, i32 0, i32 1
  %845 = ptrtoint ptr %condition2161 to i32
  call void @__asan_store4_noabort(i32 %845)
  store ptr @.str.117, ptr %condition2161, align 4
  %expected_true2162 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2151, i32 0, i32 2
  %846 = ptrtoint ptr %expected_true2162 to i32
  call void @__asan_store1_noabort(i32 %846)
  store i8 0, ptr %expected_true2162, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2151, i1 noundef zeroext true, ptr noundef nonnull @.str.118, i64 noundef 4026531840, i64 noundef 4026531840) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2151) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2176) #5
  %847 = getelementptr inbounds i8, ptr %__assertion2176, i32 32
  %848 = ptrtoint ptr %847 to i32
  call void @__asan_store4_noabort(i32 %848)
  store i32 -1, ptr %847, align 4, !annotation !257
  %849 = ptrtoint ptr %__assertion2176 to i32
  call void @__asan_store4_noabort(i32 %849)
  store ptr %context, ptr %__assertion2176, align 4
  %type2179 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2176, i32 0, i32 1
  %850 = ptrtoint ptr %type2179 to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 0, ptr %type2179, align 4
  %line2180 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2176, i32 0, i32 2
  %851 = ptrtoint ptr %line2180 to i32
  call void @__asan_store4_noabort(i32 %851)
  store i32 85, ptr %line2180, align 4
  %file2181 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2176, i32 0, i32 3
  %852 = ptrtoint ptr %file2181 to i32
  call void @__asan_store4_noabort(i32 %852)
  store ptr @.str.2, ptr %file2181, align 4
  %message2182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2176, i32 0, i32 4
  %853 = ptrtoint ptr %message2182 to i32
  call void @__asan_store4_noabort(i32 %853)
  store ptr null, ptr %message2182, align 4
  %va2184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2176, i32 0, i32 4, i32 1
  %854 = ptrtoint ptr %va2184 to i32
  call void @__asan_store4_noabort(i32 %854)
  store ptr null, ptr %va2184, align 4
  %format2185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2176, i32 0, i32 5
  %855 = ptrtoint ptr %format2185 to i32
  call void @__asan_store4_noabort(i32 %855)
  store ptr @kunit_unary_assert_format, ptr %format2185, align 4
  %condition2186 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2176, i32 0, i32 1
  %856 = ptrtoint ptr %condition2186 to i32
  call void @__asan_store4_noabort(i32 %856)
  store ptr @.str.119, ptr %condition2186, align 4
  %expected_true2187 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2176, i32 0, i32 2
  %857 = ptrtoint ptr %expected_true2187 to i32
  call void @__asan_store1_noabort(i32 %857)
  store i8 0, ptr %expected_true2187, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2176, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2176) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2206) #5
  %858 = getelementptr inbounds i8, ptr %__assertion2206, i32 32
  %859 = ptrtoint ptr %858 to i32
  call void @__asan_store4_noabort(i32 %859)
  store i32 -1, ptr %858, align 4, !annotation !257
  %860 = ptrtoint ptr %__assertion2206 to i32
  call void @__asan_store4_noabort(i32 %860)
  store ptr %context, ptr %__assertion2206, align 4
  %type2209 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2206, i32 0, i32 1
  %861 = ptrtoint ptr %type2209 to i32
  call void @__asan_store4_noabort(i32 %861)
  store i32 0, ptr %type2209, align 4
  %line2210 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2206, i32 0, i32 2
  %862 = ptrtoint ptr %line2210 to i32
  call void @__asan_store4_noabort(i32 %862)
  store i32 85, ptr %line2210, align 4
  %file2211 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2206, i32 0, i32 3
  %863 = ptrtoint ptr %file2211 to i32
  call void @__asan_store4_noabort(i32 %863)
  store ptr @.str.2, ptr %file2211, align 4
  %message2212 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2206, i32 0, i32 4
  %864 = ptrtoint ptr %message2212 to i32
  call void @__asan_store4_noabort(i32 %864)
  store ptr null, ptr %message2212, align 4
  %va2214 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2206, i32 0, i32 4, i32 1
  %865 = ptrtoint ptr %va2214 to i32
  call void @__asan_store4_noabort(i32 %865)
  store ptr null, ptr %va2214, align 4
  %format2215 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2206, i32 0, i32 5
  %866 = ptrtoint ptr %format2215 to i32
  call void @__asan_store4_noabort(i32 %866)
  store ptr @kunit_unary_assert_format, ptr %format2215, align 4
  %condition2216 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2206, i32 0, i32 1
  %867 = ptrtoint ptr %condition2216 to i32
  call void @__asan_store4_noabort(i32 %867)
  store ptr @.str.120, ptr %condition2216, align 4
  %expected_true2217 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2206, i32 0, i32 2
  %868 = ptrtoint ptr %expected_true2217 to i32
  call void @__asan_store1_noabort(i32 %868)
  store i8 0, ptr %expected_true2217, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2206, i1 noundef zeroext true, ptr noundef nonnull @.str.121, i64 noundef 4026531840, i64 noundef 4026531840) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2206) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2231) #5
  %869 = getelementptr inbounds i8, ptr %__assertion2231, i32 32
  %870 = ptrtoint ptr %869 to i32
  call void @__asan_store4_noabort(i32 %870)
  store i32 -1, ptr %869, align 4, !annotation !257
  %871 = ptrtoint ptr %__assertion2231 to i32
  call void @__asan_store4_noabort(i32 %871)
  store ptr %context, ptr %__assertion2231, align 4
  %type2234 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2231, i32 0, i32 1
  %872 = ptrtoint ptr %type2234 to i32
  call void @__asan_store4_noabort(i32 %872)
  store i32 0, ptr %type2234, align 4
  %line2235 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2231, i32 0, i32 2
  %873 = ptrtoint ptr %line2235 to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 85, ptr %line2235, align 4
  %file2236 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2231, i32 0, i32 3
  %874 = ptrtoint ptr %file2236 to i32
  call void @__asan_store4_noabort(i32 %874)
  store ptr @.str.2, ptr %file2236, align 4
  %message2237 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2231, i32 0, i32 4
  %875 = ptrtoint ptr %message2237 to i32
  call void @__asan_store4_noabort(i32 %875)
  store ptr null, ptr %message2237, align 4
  %va2239 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2231, i32 0, i32 4, i32 1
  %876 = ptrtoint ptr %va2239 to i32
  call void @__asan_store4_noabort(i32 %876)
  store ptr null, ptr %va2239, align 4
  %format2240 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2231, i32 0, i32 5
  %877 = ptrtoint ptr %format2240 to i32
  call void @__asan_store4_noabort(i32 %877)
  store ptr @kunit_unary_assert_format, ptr %format2240, align 4
  %condition2241 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2231, i32 0, i32 1
  %878 = ptrtoint ptr %condition2241 to i32
  call void @__asan_store4_noabort(i32 %878)
  store ptr @.str.122, ptr %condition2241, align 4
  %expected_true2242 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2231, i32 0, i32 2
  %879 = ptrtoint ptr %expected_true2242 to i32
  call void @__asan_store1_noabort(i32 %879)
  store i8 0, ptr %expected_true2242, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2231, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2231) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2264) #5
  %880 = getelementptr inbounds i8, ptr %__assertion2264, i32 32
  %881 = ptrtoint ptr %880 to i32
  call void @__asan_store4_noabort(i32 %881)
  store i32 -1, ptr %880, align 4, !annotation !257
  %882 = ptrtoint ptr %__assertion2264 to i32
  call void @__asan_store4_noabort(i32 %882)
  store ptr %context, ptr %__assertion2264, align 4
  %type2267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2264, i32 0, i32 1
  %883 = ptrtoint ptr %type2267 to i32
  call void @__asan_store4_noabort(i32 %883)
  store i32 0, ptr %type2267, align 4
  %line2268 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2264, i32 0, i32 2
  %884 = ptrtoint ptr %line2268 to i32
  call void @__asan_store4_noabort(i32 %884)
  store i32 87, ptr %line2268, align 4
  %file2269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2264, i32 0, i32 3
  %885 = ptrtoint ptr %file2269 to i32
  call void @__asan_store4_noabort(i32 %885)
  store ptr @.str.2, ptr %file2269, align 4
  %message2270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2264, i32 0, i32 4
  %886 = ptrtoint ptr %message2270 to i32
  call void @__asan_store4_noabort(i32 %886)
  store ptr null, ptr %message2270, align 4
  %va2272 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2264, i32 0, i32 4, i32 1
  %887 = ptrtoint ptr %va2272 to i32
  call void @__asan_store4_noabort(i32 %887)
  store ptr null, ptr %va2272, align 4
  %format2273 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2264, i32 0, i32 5
  %888 = ptrtoint ptr %format2273 to i32
  call void @__asan_store4_noabort(i32 %888)
  store ptr @kunit_unary_assert_format, ptr %format2273, align 4
  %condition2274 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2264, i32 0, i32 1
  %889 = ptrtoint ptr %condition2274 to i32
  call void @__asan_store4_noabort(i32 %889)
  store ptr @.str.123, ptr %condition2274, align 4
  %expected_true2275 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2264, i32 0, i32 2
  %890 = ptrtoint ptr %expected_true2275 to i32
  call void @__asan_store1_noabort(i32 %890)
  store i8 0, ptr %expected_true2275, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2264, i1 noundef zeroext true, ptr noundef nonnull @.str.124, i64 noundef 1099511627776) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2264) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2288) #5
  %891 = getelementptr inbounds i8, ptr %__assertion2288, i32 32
  %892 = ptrtoint ptr %891 to i32
  call void @__asan_store4_noabort(i32 %892)
  store i32 -1, ptr %891, align 4, !annotation !257
  %893 = ptrtoint ptr %__assertion2288 to i32
  call void @__asan_store4_noabort(i32 %893)
  store ptr %context, ptr %__assertion2288, align 4
  %type2291 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2288, i32 0, i32 1
  %894 = ptrtoint ptr %type2291 to i32
  call void @__asan_store4_noabort(i32 %894)
  store i32 0, ptr %type2291, align 4
  %line2292 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2288, i32 0, i32 2
  %895 = ptrtoint ptr %line2292 to i32
  call void @__asan_store4_noabort(i32 %895)
  store i32 87, ptr %line2292, align 4
  %file2293 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2288, i32 0, i32 3
  %896 = ptrtoint ptr %file2293 to i32
  call void @__asan_store4_noabort(i32 %896)
  store ptr @.str.2, ptr %file2293, align 4
  %message2294 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2288, i32 0, i32 4
  %897 = ptrtoint ptr %message2294 to i32
  call void @__asan_store4_noabort(i32 %897)
  store ptr null, ptr %message2294, align 4
  %va2296 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2288, i32 0, i32 4, i32 1
  %898 = ptrtoint ptr %va2296 to i32
  call void @__asan_store4_noabort(i32 %898)
  store ptr null, ptr %va2296, align 4
  %format2297 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2288, i32 0, i32 5
  %899 = ptrtoint ptr %format2297 to i32
  call void @__asan_store4_noabort(i32 %899)
  store ptr @kunit_unary_assert_format, ptr %format2297, align 4
  %condition2298 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2288, i32 0, i32 1
  %900 = ptrtoint ptr %condition2298 to i32
  call void @__asan_store4_noabort(i32 %900)
  store ptr @.str.125, ptr %condition2298, align 4
  %expected_true2299 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2288, i32 0, i32 2
  %901 = ptrtoint ptr %expected_true2299 to i32
  call void @__asan_store1_noabort(i32 %901)
  store i8 0, ptr %expected_true2299, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2288, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2288) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2318) #5
  %902 = getelementptr inbounds i8, ptr %__assertion2318, i32 32
  %903 = ptrtoint ptr %902 to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 -1, ptr %902, align 4, !annotation !257
  %904 = ptrtoint ptr %__assertion2318 to i32
  call void @__asan_store4_noabort(i32 %904)
  store ptr %context, ptr %__assertion2318, align 4
  %type2321 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2318, i32 0, i32 1
  %905 = ptrtoint ptr %type2321 to i32
  call void @__asan_store4_noabort(i32 %905)
  store i32 0, ptr %type2321, align 4
  %line2322 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2318, i32 0, i32 2
  %906 = ptrtoint ptr %line2322 to i32
  call void @__asan_store4_noabort(i32 %906)
  store i32 87, ptr %line2322, align 4
  %file2323 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2318, i32 0, i32 3
  %907 = ptrtoint ptr %file2323 to i32
  call void @__asan_store4_noabort(i32 %907)
  store ptr @.str.2, ptr %file2323, align 4
  %message2324 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2318, i32 0, i32 4
  %908 = ptrtoint ptr %message2324 to i32
  call void @__asan_store4_noabort(i32 %908)
  store ptr null, ptr %message2324, align 4
  %va2326 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2318, i32 0, i32 4, i32 1
  %909 = ptrtoint ptr %va2326 to i32
  call void @__asan_store4_noabort(i32 %909)
  store ptr null, ptr %va2326, align 4
  %format2327 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2318, i32 0, i32 5
  %910 = ptrtoint ptr %format2327 to i32
  call void @__asan_store4_noabort(i32 %910)
  store ptr @kunit_unary_assert_format, ptr %format2327, align 4
  %condition2328 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2318, i32 0, i32 1
  %911 = ptrtoint ptr %condition2328 to i32
  call void @__asan_store4_noabort(i32 %911)
  store ptr @.str.126, ptr %condition2328, align 4
  %expected_true2329 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2318, i32 0, i32 2
  %912 = ptrtoint ptr %expected_true2329 to i32
  call void @__asan_store1_noabort(i32 %912)
  store i8 0, ptr %expected_true2329, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2318, i1 noundef zeroext true, ptr noundef nonnull @.str.127, i64 noundef 1099511627776, i64 noundef 1099511627776) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2318) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2342) #5
  %913 = getelementptr inbounds i8, ptr %__assertion2342, i32 32
  %914 = ptrtoint ptr %913 to i32
  call void @__asan_store4_noabort(i32 %914)
  store i32 -1, ptr %913, align 4, !annotation !257
  %915 = ptrtoint ptr %__assertion2342 to i32
  call void @__asan_store4_noabort(i32 %915)
  store ptr %context, ptr %__assertion2342, align 4
  %type2345 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2342, i32 0, i32 1
  %916 = ptrtoint ptr %type2345 to i32
  call void @__asan_store4_noabort(i32 %916)
  store i32 0, ptr %type2345, align 4
  %line2346 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2342, i32 0, i32 2
  %917 = ptrtoint ptr %line2346 to i32
  call void @__asan_store4_noabort(i32 %917)
  store i32 87, ptr %line2346, align 4
  %file2347 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2342, i32 0, i32 3
  %918 = ptrtoint ptr %file2347 to i32
  call void @__asan_store4_noabort(i32 %918)
  store ptr @.str.2, ptr %file2347, align 4
  %message2348 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2342, i32 0, i32 4
  %919 = ptrtoint ptr %message2348 to i32
  call void @__asan_store4_noabort(i32 %919)
  store ptr null, ptr %message2348, align 4
  %va2350 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2342, i32 0, i32 4, i32 1
  %920 = ptrtoint ptr %va2350 to i32
  call void @__asan_store4_noabort(i32 %920)
  store ptr null, ptr %va2350, align 4
  %format2351 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2342, i32 0, i32 5
  %921 = ptrtoint ptr %format2351 to i32
  call void @__asan_store4_noabort(i32 %921)
  store ptr @kunit_unary_assert_format, ptr %format2351, align 4
  %condition2352 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2342, i32 0, i32 1
  %922 = ptrtoint ptr %condition2352 to i32
  call void @__asan_store4_noabort(i32 %922)
  store ptr @.str.128, ptr %condition2352, align 4
  %expected_true2353 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2342, i32 0, i32 2
  %923 = ptrtoint ptr %expected_true2353 to i32
  call void @__asan_store1_noabort(i32 %923)
  store i8 0, ptr %expected_true2353, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2342, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2342) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2372) #5
  %924 = getelementptr inbounds i8, ptr %__assertion2372, i32 32
  %925 = ptrtoint ptr %924 to i32
  call void @__asan_store4_noabort(i32 %925)
  store i32 -1, ptr %924, align 4, !annotation !257
  %926 = ptrtoint ptr %__assertion2372 to i32
  call void @__asan_store4_noabort(i32 %926)
  store ptr %context, ptr %__assertion2372, align 4
  %type2375 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2372, i32 0, i32 1
  %927 = ptrtoint ptr %type2375 to i32
  call void @__asan_store4_noabort(i32 %927)
  store i32 0, ptr %type2375, align 4
  %line2376 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2372, i32 0, i32 2
  %928 = ptrtoint ptr %line2376 to i32
  call void @__asan_store4_noabort(i32 %928)
  store i32 87, ptr %line2376, align 4
  %file2377 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2372, i32 0, i32 3
  %929 = ptrtoint ptr %file2377 to i32
  call void @__asan_store4_noabort(i32 %929)
  store ptr @.str.2, ptr %file2377, align 4
  %message2378 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2372, i32 0, i32 4
  %930 = ptrtoint ptr %message2378 to i32
  call void @__asan_store4_noabort(i32 %930)
  store ptr null, ptr %message2378, align 4
  %va2380 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2372, i32 0, i32 4, i32 1
  %931 = ptrtoint ptr %va2380 to i32
  call void @__asan_store4_noabort(i32 %931)
  store ptr null, ptr %va2380, align 4
  %format2381 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2372, i32 0, i32 5
  %932 = ptrtoint ptr %format2381 to i32
  call void @__asan_store4_noabort(i32 %932)
  store ptr @kunit_unary_assert_format, ptr %format2381, align 4
  %condition2382 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2372, i32 0, i32 1
  %933 = ptrtoint ptr %condition2382 to i32
  call void @__asan_store4_noabort(i32 %933)
  store ptr @.str.129, ptr %condition2382, align 4
  %expected_true2383 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2372, i32 0, i32 2
  %934 = ptrtoint ptr %expected_true2383 to i32
  call void @__asan_store1_noabort(i32 %934)
  store i8 0, ptr %expected_true2383, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2372, i1 noundef zeroext true, ptr noundef nonnull @.str.130, i64 noundef 1099511627776, i64 noundef 1099511627776) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2372) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2396) #5
  %935 = getelementptr inbounds i8, ptr %__assertion2396, i32 32
  %936 = ptrtoint ptr %935 to i32
  call void @__asan_store4_noabort(i32 %936)
  store i32 -1, ptr %935, align 4, !annotation !257
  %937 = ptrtoint ptr %__assertion2396 to i32
  call void @__asan_store4_noabort(i32 %937)
  store ptr %context, ptr %__assertion2396, align 4
  %type2399 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2396, i32 0, i32 1
  %938 = ptrtoint ptr %type2399 to i32
  call void @__asan_store4_noabort(i32 %938)
  store i32 0, ptr %type2399, align 4
  %line2400 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2396, i32 0, i32 2
  %939 = ptrtoint ptr %line2400 to i32
  call void @__asan_store4_noabort(i32 %939)
  store i32 87, ptr %line2400, align 4
  %file2401 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2396, i32 0, i32 3
  %940 = ptrtoint ptr %file2401 to i32
  call void @__asan_store4_noabort(i32 %940)
  store ptr @.str.2, ptr %file2401, align 4
  %message2402 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2396, i32 0, i32 4
  %941 = ptrtoint ptr %message2402 to i32
  call void @__asan_store4_noabort(i32 %941)
  store ptr null, ptr %message2402, align 4
  %va2404 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2396, i32 0, i32 4, i32 1
  %942 = ptrtoint ptr %va2404 to i32
  call void @__asan_store4_noabort(i32 %942)
  store ptr null, ptr %va2404, align 4
  %format2405 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2396, i32 0, i32 5
  %943 = ptrtoint ptr %format2405 to i32
  call void @__asan_store4_noabort(i32 %943)
  store ptr @kunit_unary_assert_format, ptr %format2405, align 4
  %condition2406 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2396, i32 0, i32 1
  %944 = ptrtoint ptr %condition2406 to i32
  call void @__asan_store4_noabort(i32 %944)
  store ptr @.str.131, ptr %condition2406, align 4
  %expected_true2407 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2396, i32 0, i32 2
  %945 = ptrtoint ptr %expected_true2407 to i32
  call void @__asan_store1_noabort(i32 %945)
  store i8 0, ptr %expected_true2407, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2396, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2396) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2429) #5
  %946 = getelementptr inbounds i8, ptr %__assertion2429, i32 32
  %947 = ptrtoint ptr %946 to i32
  call void @__asan_store4_noabort(i32 %947)
  store i32 -1, ptr %946, align 4, !annotation !257
  %948 = ptrtoint ptr %__assertion2429 to i32
  call void @__asan_store4_noabort(i32 %948)
  store ptr %context, ptr %__assertion2429, align 4
  %type2432 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2429, i32 0, i32 1
  %949 = ptrtoint ptr %type2432 to i32
  call void @__asan_store4_noabort(i32 %949)
  store i32 0, ptr %type2432, align 4
  %line2433 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2429, i32 0, i32 2
  %950 = ptrtoint ptr %line2433 to i32
  call void @__asan_store4_noabort(i32 %950)
  store i32 88, ptr %line2433, align 4
  %file2434 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2429, i32 0, i32 3
  %951 = ptrtoint ptr %file2434 to i32
  call void @__asan_store4_noabort(i32 %951)
  store ptr @.str.2, ptr %file2434, align 4
  %message2435 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2429, i32 0, i32 4
  %952 = ptrtoint ptr %message2435 to i32
  call void @__asan_store4_noabort(i32 %952)
  store ptr null, ptr %message2435, align 4
  %va2437 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2429, i32 0, i32 4, i32 1
  %953 = ptrtoint ptr %va2437 to i32
  call void @__asan_store4_noabort(i32 %953)
  store ptr null, ptr %va2437, align 4
  %format2438 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2429, i32 0, i32 5
  %954 = ptrtoint ptr %format2438 to i32
  call void @__asan_store4_noabort(i32 %954)
  store ptr @kunit_unary_assert_format, ptr %format2438, align 4
  %condition2439 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2429, i32 0, i32 1
  %955 = ptrtoint ptr %condition2439 to i32
  call void @__asan_store4_noabort(i32 %955)
  store ptr @.str.132, ptr %condition2439, align 4
  %expected_true2440 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2429, i32 0, i32 2
  %956 = ptrtoint ptr %expected_true2440 to i32
  call void @__asan_store1_noabort(i32 %956)
  store i8 0, ptr %expected_true2440, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2429, i1 noundef zeroext true, ptr noundef nonnull @.str.133, i64 noundef 52776558133248) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2429) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2453) #5
  %957 = getelementptr inbounds i8, ptr %__assertion2453, i32 32
  %958 = ptrtoint ptr %957 to i32
  call void @__asan_store4_noabort(i32 %958)
  store i32 -1, ptr %957, align 4, !annotation !257
  %959 = ptrtoint ptr %__assertion2453 to i32
  call void @__asan_store4_noabort(i32 %959)
  store ptr %context, ptr %__assertion2453, align 4
  %type2456 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2453, i32 0, i32 1
  %960 = ptrtoint ptr %type2456 to i32
  call void @__asan_store4_noabort(i32 %960)
  store i32 0, ptr %type2456, align 4
  %line2457 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2453, i32 0, i32 2
  %961 = ptrtoint ptr %line2457 to i32
  call void @__asan_store4_noabort(i32 %961)
  store i32 88, ptr %line2457, align 4
  %file2458 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2453, i32 0, i32 3
  %962 = ptrtoint ptr %file2458 to i32
  call void @__asan_store4_noabort(i32 %962)
  store ptr @.str.2, ptr %file2458, align 4
  %message2459 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2453, i32 0, i32 4
  %963 = ptrtoint ptr %message2459 to i32
  call void @__asan_store4_noabort(i32 %963)
  store ptr null, ptr %message2459, align 4
  %va2461 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2453, i32 0, i32 4, i32 1
  %964 = ptrtoint ptr %va2461 to i32
  call void @__asan_store4_noabort(i32 %964)
  store ptr null, ptr %va2461, align 4
  %format2462 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2453, i32 0, i32 5
  %965 = ptrtoint ptr %format2462 to i32
  call void @__asan_store4_noabort(i32 %965)
  store ptr @kunit_unary_assert_format, ptr %format2462, align 4
  %condition2463 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2453, i32 0, i32 1
  %966 = ptrtoint ptr %condition2463 to i32
  call void @__asan_store4_noabort(i32 %966)
  store ptr @.str.134, ptr %condition2463, align 4
  %expected_true2464 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2453, i32 0, i32 2
  %967 = ptrtoint ptr %expected_true2464 to i32
  call void @__asan_store1_noabort(i32 %967)
  store i8 0, ptr %expected_true2464, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2453, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2453) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2483) #5
  %968 = getelementptr inbounds i8, ptr %__assertion2483, i32 32
  %969 = ptrtoint ptr %968 to i32
  call void @__asan_store4_noabort(i32 %969)
  store i32 -1, ptr %968, align 4, !annotation !257
  %970 = ptrtoint ptr %__assertion2483 to i32
  call void @__asan_store4_noabort(i32 %970)
  store ptr %context, ptr %__assertion2483, align 4
  %type2486 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2483, i32 0, i32 1
  %971 = ptrtoint ptr %type2486 to i32
  call void @__asan_store4_noabort(i32 %971)
  store i32 0, ptr %type2486, align 4
  %line2487 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2483, i32 0, i32 2
  %972 = ptrtoint ptr %line2487 to i32
  call void @__asan_store4_noabort(i32 %972)
  store i32 88, ptr %line2487, align 4
  %file2488 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2483, i32 0, i32 3
  %973 = ptrtoint ptr %file2488 to i32
  call void @__asan_store4_noabort(i32 %973)
  store ptr @.str.2, ptr %file2488, align 4
  %message2489 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2483, i32 0, i32 4
  %974 = ptrtoint ptr %message2489 to i32
  call void @__asan_store4_noabort(i32 %974)
  store ptr null, ptr %message2489, align 4
  %va2491 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2483, i32 0, i32 4, i32 1
  %975 = ptrtoint ptr %va2491 to i32
  call void @__asan_store4_noabort(i32 %975)
  store ptr null, ptr %va2491, align 4
  %format2492 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2483, i32 0, i32 5
  %976 = ptrtoint ptr %format2492 to i32
  call void @__asan_store4_noabort(i32 %976)
  store ptr @kunit_unary_assert_format, ptr %format2492, align 4
  %condition2493 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2483, i32 0, i32 1
  %977 = ptrtoint ptr %condition2493 to i32
  call void @__asan_store4_noabort(i32 %977)
  store ptr @.str.135, ptr %condition2493, align 4
  %expected_true2494 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2483, i32 0, i32 2
  %978 = ptrtoint ptr %expected_true2494 to i32
  call void @__asan_store1_noabort(i32 %978)
  store i8 0, ptr %expected_true2494, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2483, i1 noundef zeroext true, ptr noundef nonnull @.str.136, i64 noundef 52776558133248, i64 noundef 52776558133248) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2483) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2507) #5
  %979 = getelementptr inbounds i8, ptr %__assertion2507, i32 32
  %980 = ptrtoint ptr %979 to i32
  call void @__asan_store4_noabort(i32 %980)
  store i32 -1, ptr %979, align 4, !annotation !257
  %981 = ptrtoint ptr %__assertion2507 to i32
  call void @__asan_store4_noabort(i32 %981)
  store ptr %context, ptr %__assertion2507, align 4
  %type2510 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2507, i32 0, i32 1
  %982 = ptrtoint ptr %type2510 to i32
  call void @__asan_store4_noabort(i32 %982)
  store i32 0, ptr %type2510, align 4
  %line2511 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2507, i32 0, i32 2
  %983 = ptrtoint ptr %line2511 to i32
  call void @__asan_store4_noabort(i32 %983)
  store i32 88, ptr %line2511, align 4
  %file2512 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2507, i32 0, i32 3
  %984 = ptrtoint ptr %file2512 to i32
  call void @__asan_store4_noabort(i32 %984)
  store ptr @.str.2, ptr %file2512, align 4
  %message2513 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2507, i32 0, i32 4
  %985 = ptrtoint ptr %message2513 to i32
  call void @__asan_store4_noabort(i32 %985)
  store ptr null, ptr %message2513, align 4
  %va2515 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2507, i32 0, i32 4, i32 1
  %986 = ptrtoint ptr %va2515 to i32
  call void @__asan_store4_noabort(i32 %986)
  store ptr null, ptr %va2515, align 4
  %format2516 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2507, i32 0, i32 5
  %987 = ptrtoint ptr %format2516 to i32
  call void @__asan_store4_noabort(i32 %987)
  store ptr @kunit_unary_assert_format, ptr %format2516, align 4
  %condition2517 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2507, i32 0, i32 1
  %988 = ptrtoint ptr %condition2517 to i32
  call void @__asan_store4_noabort(i32 %988)
  store ptr @.str.137, ptr %condition2517, align 4
  %expected_true2518 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2507, i32 0, i32 2
  %989 = ptrtoint ptr %expected_true2518 to i32
  call void @__asan_store1_noabort(i32 %989)
  store i8 0, ptr %expected_true2518, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2507, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2507) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2537) #5
  %990 = getelementptr inbounds i8, ptr %__assertion2537, i32 32
  %991 = ptrtoint ptr %990 to i32
  call void @__asan_store4_noabort(i32 %991)
  store i32 -1, ptr %990, align 4, !annotation !257
  %992 = ptrtoint ptr %__assertion2537 to i32
  call void @__asan_store4_noabort(i32 %992)
  store ptr %context, ptr %__assertion2537, align 4
  %type2540 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2537, i32 0, i32 1
  %993 = ptrtoint ptr %type2540 to i32
  call void @__asan_store4_noabort(i32 %993)
  store i32 0, ptr %type2540, align 4
  %line2541 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2537, i32 0, i32 2
  %994 = ptrtoint ptr %line2541 to i32
  call void @__asan_store4_noabort(i32 %994)
  store i32 88, ptr %line2541, align 4
  %file2542 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2537, i32 0, i32 3
  %995 = ptrtoint ptr %file2542 to i32
  call void @__asan_store4_noabort(i32 %995)
  store ptr @.str.2, ptr %file2542, align 4
  %message2543 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2537, i32 0, i32 4
  %996 = ptrtoint ptr %message2543 to i32
  call void @__asan_store4_noabort(i32 %996)
  store ptr null, ptr %message2543, align 4
  %va2545 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2537, i32 0, i32 4, i32 1
  %997 = ptrtoint ptr %va2545 to i32
  call void @__asan_store4_noabort(i32 %997)
  store ptr null, ptr %va2545, align 4
  %format2546 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2537, i32 0, i32 5
  %998 = ptrtoint ptr %format2546 to i32
  call void @__asan_store4_noabort(i32 %998)
  store ptr @kunit_unary_assert_format, ptr %format2546, align 4
  %condition2547 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2537, i32 0, i32 1
  %999 = ptrtoint ptr %condition2547 to i32
  call void @__asan_store4_noabort(i32 %999)
  store ptr @.str.138, ptr %condition2547, align 4
  %expected_true2548 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2537, i32 0, i32 2
  %1000 = ptrtoint ptr %expected_true2548 to i32
  call void @__asan_store1_noabort(i32 %1000)
  store i8 0, ptr %expected_true2548, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2537, i1 noundef zeroext true, ptr noundef nonnull @.str.139, i64 noundef 52776558133248, i64 noundef 52776558133248) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2537) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2561) #5
  %1001 = getelementptr inbounds i8, ptr %__assertion2561, i32 32
  %1002 = ptrtoint ptr %1001 to i32
  call void @__asan_store4_noabort(i32 %1002)
  store i32 -1, ptr %1001, align 4, !annotation !257
  %1003 = ptrtoint ptr %__assertion2561 to i32
  call void @__asan_store4_noabort(i32 %1003)
  store ptr %context, ptr %__assertion2561, align 4
  %type2564 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2561, i32 0, i32 1
  %1004 = ptrtoint ptr %type2564 to i32
  call void @__asan_store4_noabort(i32 %1004)
  store i32 0, ptr %type2564, align 4
  %line2565 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2561, i32 0, i32 2
  %1005 = ptrtoint ptr %line2565 to i32
  call void @__asan_store4_noabort(i32 %1005)
  store i32 88, ptr %line2565, align 4
  %file2566 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2561, i32 0, i32 3
  %1006 = ptrtoint ptr %file2566 to i32
  call void @__asan_store4_noabort(i32 %1006)
  store ptr @.str.2, ptr %file2566, align 4
  %message2567 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2561, i32 0, i32 4
  %1007 = ptrtoint ptr %message2567 to i32
  call void @__asan_store4_noabort(i32 %1007)
  store ptr null, ptr %message2567, align 4
  %va2569 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2561, i32 0, i32 4, i32 1
  %1008 = ptrtoint ptr %va2569 to i32
  call void @__asan_store4_noabort(i32 %1008)
  store ptr null, ptr %va2569, align 4
  %format2570 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2561, i32 0, i32 5
  %1009 = ptrtoint ptr %format2570 to i32
  call void @__asan_store4_noabort(i32 %1009)
  store ptr @kunit_unary_assert_format, ptr %format2570, align 4
  %condition2571 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2561, i32 0, i32 1
  %1010 = ptrtoint ptr %condition2571 to i32
  call void @__asan_store4_noabort(i32 %1010)
  store ptr @.str.140, ptr %condition2571, align 4
  %expected_true2572 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2561, i32 0, i32 2
  %1011 = ptrtoint ptr %expected_true2572 to i32
  call void @__asan_store1_noabort(i32 %1011)
  store i8 0, ptr %expected_true2572, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2561, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2561) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2594) #5
  %1012 = getelementptr inbounds i8, ptr %__assertion2594, i32 32
  %1013 = ptrtoint ptr %1012 to i32
  call void @__asan_store4_noabort(i32 %1013)
  store i32 -1, ptr %1012, align 4, !annotation !257
  %1014 = ptrtoint ptr %__assertion2594 to i32
  call void @__asan_store4_noabort(i32 %1014)
  store ptr %context, ptr %__assertion2594, align 4
  %type2597 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2594, i32 0, i32 1
  %1015 = ptrtoint ptr %type2597 to i32
  call void @__asan_store4_noabort(i32 %1015)
  store i32 0, ptr %type2597, align 4
  %line2598 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2594, i32 0, i32 2
  %1016 = ptrtoint ptr %line2598 to i32
  call void @__asan_store4_noabort(i32 %1016)
  store i32 89, ptr %line2598, align 4
  %file2599 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2594, i32 0, i32 3
  %1017 = ptrtoint ptr %file2599 to i32
  call void @__asan_store4_noabort(i32 %1017)
  store ptr @.str.2, ptr %file2599, align 4
  %message2600 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2594, i32 0, i32 4
  %1018 = ptrtoint ptr %message2600 to i32
  call void @__asan_store4_noabort(i32 %1018)
  store ptr null, ptr %message2600, align 4
  %va2602 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2594, i32 0, i32 4, i32 1
  %1019 = ptrtoint ptr %va2602 to i32
  call void @__asan_store4_noabort(i32 %1019)
  store ptr null, ptr %va2602, align 4
  %format2603 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2594, i32 0, i32 5
  %1020 = ptrtoint ptr %format2603 to i32
  call void @__asan_store4_noabort(i32 %1020)
  store ptr @kunit_unary_assert_format, ptr %format2603, align 4
  %condition2604 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2594, i32 0, i32 1
  %1021 = ptrtoint ptr %condition2604 to i32
  call void @__asan_store4_noabort(i32 %1021)
  store ptr @.str.141, ptr %condition2604, align 4
  %expected_true2605 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2594, i32 0, i32 2
  %1022 = ptrtoint ptr %expected_true2605 to i32
  call void @__asan_store1_noabort(i32 %1022)
  store i8 0, ptr %expected_true2605, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2594, i1 noundef zeroext true, ptr noundef nonnull @.str.142, i64 noundef 1407374883553280) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2594) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2618) #5
  %1023 = getelementptr inbounds i8, ptr %__assertion2618, i32 32
  %1024 = ptrtoint ptr %1023 to i32
  call void @__asan_store4_noabort(i32 %1024)
  store i32 -1, ptr %1023, align 4, !annotation !257
  %1025 = ptrtoint ptr %__assertion2618 to i32
  call void @__asan_store4_noabort(i32 %1025)
  store ptr %context, ptr %__assertion2618, align 4
  %type2621 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2618, i32 0, i32 1
  %1026 = ptrtoint ptr %type2621 to i32
  call void @__asan_store4_noabort(i32 %1026)
  store i32 0, ptr %type2621, align 4
  %line2622 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2618, i32 0, i32 2
  %1027 = ptrtoint ptr %line2622 to i32
  call void @__asan_store4_noabort(i32 %1027)
  store i32 89, ptr %line2622, align 4
  %file2623 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2618, i32 0, i32 3
  %1028 = ptrtoint ptr %file2623 to i32
  call void @__asan_store4_noabort(i32 %1028)
  store ptr @.str.2, ptr %file2623, align 4
  %message2624 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2618, i32 0, i32 4
  %1029 = ptrtoint ptr %message2624 to i32
  call void @__asan_store4_noabort(i32 %1029)
  store ptr null, ptr %message2624, align 4
  %va2626 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2618, i32 0, i32 4, i32 1
  %1030 = ptrtoint ptr %va2626 to i32
  call void @__asan_store4_noabort(i32 %1030)
  store ptr null, ptr %va2626, align 4
  %format2627 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2618, i32 0, i32 5
  %1031 = ptrtoint ptr %format2627 to i32
  call void @__asan_store4_noabort(i32 %1031)
  store ptr @kunit_unary_assert_format, ptr %format2627, align 4
  %condition2628 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2618, i32 0, i32 1
  %1032 = ptrtoint ptr %condition2628 to i32
  call void @__asan_store4_noabort(i32 %1032)
  store ptr @.str.143, ptr %condition2628, align 4
  %expected_true2629 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2618, i32 0, i32 2
  %1033 = ptrtoint ptr %expected_true2629 to i32
  call void @__asan_store1_noabort(i32 %1033)
  store i8 0, ptr %expected_true2629, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2618, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2618) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2648) #5
  %1034 = getelementptr inbounds i8, ptr %__assertion2648, i32 32
  %1035 = ptrtoint ptr %1034 to i32
  call void @__asan_store4_noabort(i32 %1035)
  store i32 -1, ptr %1034, align 4, !annotation !257
  %1036 = ptrtoint ptr %__assertion2648 to i32
  call void @__asan_store4_noabort(i32 %1036)
  store ptr %context, ptr %__assertion2648, align 4
  %type2651 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2648, i32 0, i32 1
  %1037 = ptrtoint ptr %type2651 to i32
  call void @__asan_store4_noabort(i32 %1037)
  store i32 0, ptr %type2651, align 4
  %line2652 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2648, i32 0, i32 2
  %1038 = ptrtoint ptr %line2652 to i32
  call void @__asan_store4_noabort(i32 %1038)
  store i32 89, ptr %line2652, align 4
  %file2653 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2648, i32 0, i32 3
  %1039 = ptrtoint ptr %file2653 to i32
  call void @__asan_store4_noabort(i32 %1039)
  store ptr @.str.2, ptr %file2653, align 4
  %message2654 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2648, i32 0, i32 4
  %1040 = ptrtoint ptr %message2654 to i32
  call void @__asan_store4_noabort(i32 %1040)
  store ptr null, ptr %message2654, align 4
  %va2656 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2648, i32 0, i32 4, i32 1
  %1041 = ptrtoint ptr %va2656 to i32
  call void @__asan_store4_noabort(i32 %1041)
  store ptr null, ptr %va2656, align 4
  %format2657 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2648, i32 0, i32 5
  %1042 = ptrtoint ptr %format2657 to i32
  call void @__asan_store4_noabort(i32 %1042)
  store ptr @kunit_unary_assert_format, ptr %format2657, align 4
  %condition2658 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2648, i32 0, i32 1
  %1043 = ptrtoint ptr %condition2658 to i32
  call void @__asan_store4_noabort(i32 %1043)
  store ptr @.str.144, ptr %condition2658, align 4
  %expected_true2659 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2648, i32 0, i32 2
  %1044 = ptrtoint ptr %expected_true2659 to i32
  call void @__asan_store1_noabort(i32 %1044)
  store i8 0, ptr %expected_true2659, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2648, i1 noundef zeroext true, ptr noundef nonnull @.str.145, i64 noundef 1407374883553280, i64 noundef 1407374883553280) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2648) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2672) #5
  %1045 = getelementptr inbounds i8, ptr %__assertion2672, i32 32
  %1046 = ptrtoint ptr %1045 to i32
  call void @__asan_store4_noabort(i32 %1046)
  store i32 -1, ptr %1045, align 4, !annotation !257
  %1047 = ptrtoint ptr %__assertion2672 to i32
  call void @__asan_store4_noabort(i32 %1047)
  store ptr %context, ptr %__assertion2672, align 4
  %type2675 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2672, i32 0, i32 1
  %1048 = ptrtoint ptr %type2675 to i32
  call void @__asan_store4_noabort(i32 %1048)
  store i32 0, ptr %type2675, align 4
  %line2676 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2672, i32 0, i32 2
  %1049 = ptrtoint ptr %line2676 to i32
  call void @__asan_store4_noabort(i32 %1049)
  store i32 89, ptr %line2676, align 4
  %file2677 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2672, i32 0, i32 3
  %1050 = ptrtoint ptr %file2677 to i32
  call void @__asan_store4_noabort(i32 %1050)
  store ptr @.str.2, ptr %file2677, align 4
  %message2678 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2672, i32 0, i32 4
  %1051 = ptrtoint ptr %message2678 to i32
  call void @__asan_store4_noabort(i32 %1051)
  store ptr null, ptr %message2678, align 4
  %va2680 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2672, i32 0, i32 4, i32 1
  %1052 = ptrtoint ptr %va2680 to i32
  call void @__asan_store4_noabort(i32 %1052)
  store ptr null, ptr %va2680, align 4
  %format2681 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2672, i32 0, i32 5
  %1053 = ptrtoint ptr %format2681 to i32
  call void @__asan_store4_noabort(i32 %1053)
  store ptr @kunit_unary_assert_format, ptr %format2681, align 4
  %condition2682 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2672, i32 0, i32 1
  %1054 = ptrtoint ptr %condition2682 to i32
  call void @__asan_store4_noabort(i32 %1054)
  store ptr @.str.146, ptr %condition2682, align 4
  %expected_true2683 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2672, i32 0, i32 2
  %1055 = ptrtoint ptr %expected_true2683 to i32
  call void @__asan_store1_noabort(i32 %1055)
  store i8 0, ptr %expected_true2683, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2672, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2672) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2702) #5
  %1056 = getelementptr inbounds i8, ptr %__assertion2702, i32 32
  %1057 = ptrtoint ptr %1056 to i32
  call void @__asan_store4_noabort(i32 %1057)
  store i32 -1, ptr %1056, align 4, !annotation !257
  %1058 = ptrtoint ptr %__assertion2702 to i32
  call void @__asan_store4_noabort(i32 %1058)
  store ptr %context, ptr %__assertion2702, align 4
  %type2705 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2702, i32 0, i32 1
  %1059 = ptrtoint ptr %type2705 to i32
  call void @__asan_store4_noabort(i32 %1059)
  store i32 0, ptr %type2705, align 4
  %line2706 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2702, i32 0, i32 2
  %1060 = ptrtoint ptr %line2706 to i32
  call void @__asan_store4_noabort(i32 %1060)
  store i32 89, ptr %line2706, align 4
  %file2707 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2702, i32 0, i32 3
  %1061 = ptrtoint ptr %file2707 to i32
  call void @__asan_store4_noabort(i32 %1061)
  store ptr @.str.2, ptr %file2707, align 4
  %message2708 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2702, i32 0, i32 4
  %1062 = ptrtoint ptr %message2708 to i32
  call void @__asan_store4_noabort(i32 %1062)
  store ptr null, ptr %message2708, align 4
  %va2710 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2702, i32 0, i32 4, i32 1
  %1063 = ptrtoint ptr %va2710 to i32
  call void @__asan_store4_noabort(i32 %1063)
  store ptr null, ptr %va2710, align 4
  %format2711 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2702, i32 0, i32 5
  %1064 = ptrtoint ptr %format2711 to i32
  call void @__asan_store4_noabort(i32 %1064)
  store ptr @kunit_unary_assert_format, ptr %format2711, align 4
  %condition2712 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2702, i32 0, i32 1
  %1065 = ptrtoint ptr %condition2712 to i32
  call void @__asan_store4_noabort(i32 %1065)
  store ptr @.str.147, ptr %condition2712, align 4
  %expected_true2713 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2702, i32 0, i32 2
  %1066 = ptrtoint ptr %expected_true2713 to i32
  call void @__asan_store1_noabort(i32 %1066)
  store i8 0, ptr %expected_true2713, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2702, i1 noundef zeroext true, ptr noundef nonnull @.str.148, i64 noundef 1407374883553280, i64 noundef 1407374883553280) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2702) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2726) #5
  %1067 = getelementptr inbounds i8, ptr %__assertion2726, i32 32
  %1068 = ptrtoint ptr %1067 to i32
  call void @__asan_store4_noabort(i32 %1068)
  store i32 -1, ptr %1067, align 4, !annotation !257
  %1069 = ptrtoint ptr %__assertion2726 to i32
  call void @__asan_store4_noabort(i32 %1069)
  store ptr %context, ptr %__assertion2726, align 4
  %type2729 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2726, i32 0, i32 1
  %1070 = ptrtoint ptr %type2729 to i32
  call void @__asan_store4_noabort(i32 %1070)
  store i32 0, ptr %type2729, align 4
  %line2730 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2726, i32 0, i32 2
  %1071 = ptrtoint ptr %line2730 to i32
  call void @__asan_store4_noabort(i32 %1071)
  store i32 89, ptr %line2730, align 4
  %file2731 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2726, i32 0, i32 3
  %1072 = ptrtoint ptr %file2731 to i32
  call void @__asan_store4_noabort(i32 %1072)
  store ptr @.str.2, ptr %file2731, align 4
  %message2732 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2726, i32 0, i32 4
  %1073 = ptrtoint ptr %message2732 to i32
  call void @__asan_store4_noabort(i32 %1073)
  store ptr null, ptr %message2732, align 4
  %va2734 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2726, i32 0, i32 4, i32 1
  %1074 = ptrtoint ptr %va2734 to i32
  call void @__asan_store4_noabort(i32 %1074)
  store ptr null, ptr %va2734, align 4
  %format2735 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2726, i32 0, i32 5
  %1075 = ptrtoint ptr %format2735 to i32
  call void @__asan_store4_noabort(i32 %1075)
  store ptr @kunit_unary_assert_format, ptr %format2735, align 4
  %condition2736 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2726, i32 0, i32 1
  %1076 = ptrtoint ptr %condition2736 to i32
  call void @__asan_store4_noabort(i32 %1076)
  store ptr @.str.149, ptr %condition2736, align 4
  %expected_true2737 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2726, i32 0, i32 2
  %1077 = ptrtoint ptr %expected_true2737 to i32
  call void @__asan_store1_noabort(i32 %1077)
  store i8 0, ptr %expected_true2737, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2726, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2726) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2759) #5
  %1078 = getelementptr inbounds i8, ptr %__assertion2759, i32 32
  %1079 = ptrtoint ptr %1078 to i32
  call void @__asan_store4_noabort(i32 %1079)
  store i32 -1, ptr %1078, align 4, !annotation !257
  %1080 = ptrtoint ptr %__assertion2759 to i32
  call void @__asan_store4_noabort(i32 %1080)
  store ptr %context, ptr %__assertion2759, align 4
  %type2762 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2759, i32 0, i32 1
  %1081 = ptrtoint ptr %type2762 to i32
  call void @__asan_store4_noabort(i32 %1081)
  store i32 0, ptr %type2762, align 4
  %line2763 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2759, i32 0, i32 2
  %1082 = ptrtoint ptr %line2763 to i32
  call void @__asan_store4_noabort(i32 %1082)
  store i32 90, ptr %line2763, align 4
  %file2764 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2759, i32 0, i32 3
  %1083 = ptrtoint ptr %file2764 to i32
  call void @__asan_store4_noabort(i32 %1083)
  store ptr @.str.2, ptr %file2764, align 4
  %message2765 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2759, i32 0, i32 4
  %1084 = ptrtoint ptr %message2765 to i32
  call void @__asan_store4_noabort(i32 %1084)
  store ptr null, ptr %message2765, align 4
  %va2767 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2759, i32 0, i32 4, i32 1
  %1085 = ptrtoint ptr %va2767 to i32
  call void @__asan_store4_noabort(i32 %1085)
  store ptr null, ptr %va2767, align 4
  %format2768 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2759, i32 0, i32 5
  %1086 = ptrtoint ptr %format2768 to i32
  call void @__asan_store4_noabort(i32 %1086)
  store ptr @kunit_unary_assert_format, ptr %format2768, align 4
  %condition2769 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2759, i32 0, i32 1
  %1087 = ptrtoint ptr %condition2769 to i32
  call void @__asan_store4_noabort(i32 %1087)
  store ptr @.str.150, ptr %condition2769, align 4
  %expected_true2770 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2759, i32 0, i32 2
  %1088 = ptrtoint ptr %expected_true2770 to i32
  call void @__asan_store1_noabort(i32 %1088)
  store i8 0, ptr %expected_true2770, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2759, i1 noundef zeroext true, ptr noundef nonnull @.str.151, i64 noundef 31525197391593472) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2759) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2783) #5
  %1089 = getelementptr inbounds i8, ptr %__assertion2783, i32 32
  %1090 = ptrtoint ptr %1089 to i32
  call void @__asan_store4_noabort(i32 %1090)
  store i32 -1, ptr %1089, align 4, !annotation !257
  %1091 = ptrtoint ptr %__assertion2783 to i32
  call void @__asan_store4_noabort(i32 %1091)
  store ptr %context, ptr %__assertion2783, align 4
  %type2786 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2783, i32 0, i32 1
  %1092 = ptrtoint ptr %type2786 to i32
  call void @__asan_store4_noabort(i32 %1092)
  store i32 0, ptr %type2786, align 4
  %line2787 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2783, i32 0, i32 2
  %1093 = ptrtoint ptr %line2787 to i32
  call void @__asan_store4_noabort(i32 %1093)
  store i32 90, ptr %line2787, align 4
  %file2788 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2783, i32 0, i32 3
  %1094 = ptrtoint ptr %file2788 to i32
  call void @__asan_store4_noabort(i32 %1094)
  store ptr @.str.2, ptr %file2788, align 4
  %message2789 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2783, i32 0, i32 4
  %1095 = ptrtoint ptr %message2789 to i32
  call void @__asan_store4_noabort(i32 %1095)
  store ptr null, ptr %message2789, align 4
  %va2791 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2783, i32 0, i32 4, i32 1
  %1096 = ptrtoint ptr %va2791 to i32
  call void @__asan_store4_noabort(i32 %1096)
  store ptr null, ptr %va2791, align 4
  %format2792 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2783, i32 0, i32 5
  %1097 = ptrtoint ptr %format2792 to i32
  call void @__asan_store4_noabort(i32 %1097)
  store ptr @kunit_unary_assert_format, ptr %format2792, align 4
  %condition2793 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2783, i32 0, i32 1
  %1098 = ptrtoint ptr %condition2793 to i32
  call void @__asan_store4_noabort(i32 %1098)
  store ptr @.str.152, ptr %condition2793, align 4
  %expected_true2794 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2783, i32 0, i32 2
  %1099 = ptrtoint ptr %expected_true2794 to i32
  call void @__asan_store1_noabort(i32 %1099)
  store i8 0, ptr %expected_true2794, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2783, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2783) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2813) #5
  %1100 = getelementptr inbounds i8, ptr %__assertion2813, i32 32
  %1101 = ptrtoint ptr %1100 to i32
  call void @__asan_store4_noabort(i32 %1101)
  store i32 -1, ptr %1100, align 4, !annotation !257
  %1102 = ptrtoint ptr %__assertion2813 to i32
  call void @__asan_store4_noabort(i32 %1102)
  store ptr %context, ptr %__assertion2813, align 4
  %type2816 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2813, i32 0, i32 1
  %1103 = ptrtoint ptr %type2816 to i32
  call void @__asan_store4_noabort(i32 %1103)
  store i32 0, ptr %type2816, align 4
  %line2817 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2813, i32 0, i32 2
  %1104 = ptrtoint ptr %line2817 to i32
  call void @__asan_store4_noabort(i32 %1104)
  store i32 90, ptr %line2817, align 4
  %file2818 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2813, i32 0, i32 3
  %1105 = ptrtoint ptr %file2818 to i32
  call void @__asan_store4_noabort(i32 %1105)
  store ptr @.str.2, ptr %file2818, align 4
  %message2819 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2813, i32 0, i32 4
  %1106 = ptrtoint ptr %message2819 to i32
  call void @__asan_store4_noabort(i32 %1106)
  store ptr null, ptr %message2819, align 4
  %va2821 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2813, i32 0, i32 4, i32 1
  %1107 = ptrtoint ptr %va2821 to i32
  call void @__asan_store4_noabort(i32 %1107)
  store ptr null, ptr %va2821, align 4
  %format2822 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2813, i32 0, i32 5
  %1108 = ptrtoint ptr %format2822 to i32
  call void @__asan_store4_noabort(i32 %1108)
  store ptr @kunit_unary_assert_format, ptr %format2822, align 4
  %condition2823 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2813, i32 0, i32 1
  %1109 = ptrtoint ptr %condition2823 to i32
  call void @__asan_store4_noabort(i32 %1109)
  store ptr @.str.153, ptr %condition2823, align 4
  %expected_true2824 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2813, i32 0, i32 2
  %1110 = ptrtoint ptr %expected_true2824 to i32
  call void @__asan_store1_noabort(i32 %1110)
  store i8 0, ptr %expected_true2824, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2813, i1 noundef zeroext true, ptr noundef nonnull @.str.154, i64 noundef 31525197391593472, i64 noundef 31525197391593472) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2813) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2837) #5
  %1111 = getelementptr inbounds i8, ptr %__assertion2837, i32 32
  %1112 = ptrtoint ptr %1111 to i32
  call void @__asan_store4_noabort(i32 %1112)
  store i32 -1, ptr %1111, align 4, !annotation !257
  %1113 = ptrtoint ptr %__assertion2837 to i32
  call void @__asan_store4_noabort(i32 %1113)
  store ptr %context, ptr %__assertion2837, align 4
  %type2840 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2837, i32 0, i32 1
  %1114 = ptrtoint ptr %type2840 to i32
  call void @__asan_store4_noabort(i32 %1114)
  store i32 0, ptr %type2840, align 4
  %line2841 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2837, i32 0, i32 2
  %1115 = ptrtoint ptr %line2841 to i32
  call void @__asan_store4_noabort(i32 %1115)
  store i32 90, ptr %line2841, align 4
  %file2842 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2837, i32 0, i32 3
  %1116 = ptrtoint ptr %file2842 to i32
  call void @__asan_store4_noabort(i32 %1116)
  store ptr @.str.2, ptr %file2842, align 4
  %message2843 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2837, i32 0, i32 4
  %1117 = ptrtoint ptr %message2843 to i32
  call void @__asan_store4_noabort(i32 %1117)
  store ptr null, ptr %message2843, align 4
  %va2845 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2837, i32 0, i32 4, i32 1
  %1118 = ptrtoint ptr %va2845 to i32
  call void @__asan_store4_noabort(i32 %1118)
  store ptr null, ptr %va2845, align 4
  %format2846 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2837, i32 0, i32 5
  %1119 = ptrtoint ptr %format2846 to i32
  call void @__asan_store4_noabort(i32 %1119)
  store ptr @kunit_unary_assert_format, ptr %format2846, align 4
  %condition2847 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2837, i32 0, i32 1
  %1120 = ptrtoint ptr %condition2847 to i32
  call void @__asan_store4_noabort(i32 %1120)
  store ptr @.str.155, ptr %condition2847, align 4
  %expected_true2848 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2837, i32 0, i32 2
  %1121 = ptrtoint ptr %expected_true2848 to i32
  call void @__asan_store1_noabort(i32 %1121)
  store i8 0, ptr %expected_true2848, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2837, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2837) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2867) #5
  %1122 = getelementptr inbounds i8, ptr %__assertion2867, i32 32
  %1123 = ptrtoint ptr %1122 to i32
  call void @__asan_store4_noabort(i32 %1123)
  store i32 -1, ptr %1122, align 4, !annotation !257
  %1124 = ptrtoint ptr %__assertion2867 to i32
  call void @__asan_store4_noabort(i32 %1124)
  store ptr %context, ptr %__assertion2867, align 4
  %type2870 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2867, i32 0, i32 1
  %1125 = ptrtoint ptr %type2870 to i32
  call void @__asan_store4_noabort(i32 %1125)
  store i32 0, ptr %type2870, align 4
  %line2871 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2867, i32 0, i32 2
  %1126 = ptrtoint ptr %line2871 to i32
  call void @__asan_store4_noabort(i32 %1126)
  store i32 90, ptr %line2871, align 4
  %file2872 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2867, i32 0, i32 3
  %1127 = ptrtoint ptr %file2872 to i32
  call void @__asan_store4_noabort(i32 %1127)
  store ptr @.str.2, ptr %file2872, align 4
  %message2873 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2867, i32 0, i32 4
  %1128 = ptrtoint ptr %message2873 to i32
  call void @__asan_store4_noabort(i32 %1128)
  store ptr null, ptr %message2873, align 4
  %va2875 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2867, i32 0, i32 4, i32 1
  %1129 = ptrtoint ptr %va2875 to i32
  call void @__asan_store4_noabort(i32 %1129)
  store ptr null, ptr %va2875, align 4
  %format2876 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2867, i32 0, i32 5
  %1130 = ptrtoint ptr %format2876 to i32
  call void @__asan_store4_noabort(i32 %1130)
  store ptr @kunit_unary_assert_format, ptr %format2876, align 4
  %condition2877 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2867, i32 0, i32 1
  %1131 = ptrtoint ptr %condition2877 to i32
  call void @__asan_store4_noabort(i32 %1131)
  store ptr @.str.156, ptr %condition2877, align 4
  %expected_true2878 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2867, i32 0, i32 2
  %1132 = ptrtoint ptr %expected_true2878 to i32
  call void @__asan_store1_noabort(i32 %1132)
  store i8 0, ptr %expected_true2878, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2867, i1 noundef zeroext true, ptr noundef nonnull @.str.157, i64 noundef 31525197391593472, i64 noundef 31525197391593472) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2867) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2891) #5
  %1133 = getelementptr inbounds i8, ptr %__assertion2891, i32 32
  %1134 = ptrtoint ptr %1133 to i32
  call void @__asan_store4_noabort(i32 %1134)
  store i32 -1, ptr %1133, align 4, !annotation !257
  %1135 = ptrtoint ptr %__assertion2891 to i32
  call void @__asan_store4_noabort(i32 %1135)
  store ptr %context, ptr %__assertion2891, align 4
  %type2894 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2891, i32 0, i32 1
  %1136 = ptrtoint ptr %type2894 to i32
  call void @__asan_store4_noabort(i32 %1136)
  store i32 0, ptr %type2894, align 4
  %line2895 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2891, i32 0, i32 2
  %1137 = ptrtoint ptr %line2895 to i32
  call void @__asan_store4_noabort(i32 %1137)
  store i32 90, ptr %line2895, align 4
  %file2896 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2891, i32 0, i32 3
  %1138 = ptrtoint ptr %file2896 to i32
  call void @__asan_store4_noabort(i32 %1138)
  store ptr @.str.2, ptr %file2896, align 4
  %message2897 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2891, i32 0, i32 4
  %1139 = ptrtoint ptr %message2897 to i32
  call void @__asan_store4_noabort(i32 %1139)
  store ptr null, ptr %message2897, align 4
  %va2899 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2891, i32 0, i32 4, i32 1
  %1140 = ptrtoint ptr %va2899 to i32
  call void @__asan_store4_noabort(i32 %1140)
  store ptr null, ptr %va2899, align 4
  %format2900 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2891, i32 0, i32 5
  %1141 = ptrtoint ptr %format2900 to i32
  call void @__asan_store4_noabort(i32 %1141)
  store ptr @kunit_unary_assert_format, ptr %format2900, align 4
  %condition2901 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2891, i32 0, i32 1
  %1142 = ptrtoint ptr %condition2901 to i32
  call void @__asan_store4_noabort(i32 %1142)
  store ptr @.str.158, ptr %condition2901, align 4
  %expected_true2902 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2891, i32 0, i32 2
  %1143 = ptrtoint ptr %expected_true2902 to i32
  call void @__asan_store1_noabort(i32 %1143)
  store i8 0, ptr %expected_true2902, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2891, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2891) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2924) #5
  %1144 = getelementptr inbounds i8, ptr %__assertion2924, i32 32
  %1145 = ptrtoint ptr %1144 to i32
  call void @__asan_store4_noabort(i32 %1145)
  store i32 -1, ptr %1144, align 4, !annotation !257
  %1146 = ptrtoint ptr %__assertion2924 to i32
  call void @__asan_store4_noabort(i32 %1146)
  store ptr %context, ptr %__assertion2924, align 4
  %type2927 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2924, i32 0, i32 1
  %1147 = ptrtoint ptr %type2927 to i32
  call void @__asan_store4_noabort(i32 %1147)
  store i32 0, ptr %type2927, align 4
  %line2928 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2924, i32 0, i32 2
  %1148 = ptrtoint ptr %line2928 to i32
  call void @__asan_store4_noabort(i32 %1148)
  store i32 91, ptr %line2928, align 4
  %file2929 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2924, i32 0, i32 3
  %1149 = ptrtoint ptr %file2929 to i32
  call void @__asan_store4_noabort(i32 %1149)
  store ptr @.str.2, ptr %file2929, align 4
  %message2930 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2924, i32 0, i32 4
  %1150 = ptrtoint ptr %message2930 to i32
  call void @__asan_store4_noabort(i32 %1150)
  store ptr null, ptr %message2930, align 4
  %va2932 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2924, i32 0, i32 4, i32 1
  %1151 = ptrtoint ptr %va2932 to i32
  call void @__asan_store4_noabort(i32 %1151)
  store ptr null, ptr %va2932, align 4
  %format2933 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2924, i32 0, i32 5
  %1152 = ptrtoint ptr %format2933 to i32
  call void @__asan_store4_noabort(i32 %1152)
  store ptr @kunit_unary_assert_format, ptr %format2933, align 4
  %condition2934 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2924, i32 0, i32 1
  %1153 = ptrtoint ptr %condition2934 to i32
  call void @__asan_store4_noabort(i32 %1153)
  store ptr @.str.159, ptr %condition2934, align 4
  %expected_true2935 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2924, i32 0, i32 2
  %1154 = ptrtoint ptr %expected_true2935 to i32
  call void @__asan_store1_noabort(i32 %1154)
  store i8 0, ptr %expected_true2935, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2924, i1 noundef zeroext true, ptr noundef nonnull @.str.160, i64 noundef 1008806316530991104) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2924) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2948) #5
  %1155 = getelementptr inbounds i8, ptr %__assertion2948, i32 32
  %1156 = ptrtoint ptr %1155 to i32
  call void @__asan_store4_noabort(i32 %1156)
  store i32 -1, ptr %1155, align 4, !annotation !257
  %1157 = ptrtoint ptr %__assertion2948 to i32
  call void @__asan_store4_noabort(i32 %1157)
  store ptr %context, ptr %__assertion2948, align 4
  %type2951 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2948, i32 0, i32 1
  %1158 = ptrtoint ptr %type2951 to i32
  call void @__asan_store4_noabort(i32 %1158)
  store i32 0, ptr %type2951, align 4
  %line2952 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2948, i32 0, i32 2
  %1159 = ptrtoint ptr %line2952 to i32
  call void @__asan_store4_noabort(i32 %1159)
  store i32 91, ptr %line2952, align 4
  %file2953 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2948, i32 0, i32 3
  %1160 = ptrtoint ptr %file2953 to i32
  call void @__asan_store4_noabort(i32 %1160)
  store ptr @.str.2, ptr %file2953, align 4
  %message2954 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2948, i32 0, i32 4
  %1161 = ptrtoint ptr %message2954 to i32
  call void @__asan_store4_noabort(i32 %1161)
  store ptr null, ptr %message2954, align 4
  %va2956 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2948, i32 0, i32 4, i32 1
  %1162 = ptrtoint ptr %va2956 to i32
  call void @__asan_store4_noabort(i32 %1162)
  store ptr null, ptr %va2956, align 4
  %format2957 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2948, i32 0, i32 5
  %1163 = ptrtoint ptr %format2957 to i32
  call void @__asan_store4_noabort(i32 %1163)
  store ptr @kunit_unary_assert_format, ptr %format2957, align 4
  %condition2958 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2948, i32 0, i32 1
  %1164 = ptrtoint ptr %condition2958 to i32
  call void @__asan_store4_noabort(i32 %1164)
  store ptr @.str.161, ptr %condition2958, align 4
  %expected_true2959 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2948, i32 0, i32 2
  %1165 = ptrtoint ptr %expected_true2959 to i32
  call void @__asan_store1_noabort(i32 %1165)
  store i8 0, ptr %expected_true2959, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2948, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2948) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion2978) #5
  %1166 = getelementptr inbounds i8, ptr %__assertion2978, i32 32
  %1167 = ptrtoint ptr %1166 to i32
  call void @__asan_store4_noabort(i32 %1167)
  store i32 -1, ptr %1166, align 4, !annotation !257
  %1168 = ptrtoint ptr %__assertion2978 to i32
  call void @__asan_store4_noabort(i32 %1168)
  store ptr %context, ptr %__assertion2978, align 4
  %type2981 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2978, i32 0, i32 1
  %1169 = ptrtoint ptr %type2981 to i32
  call void @__asan_store4_noabort(i32 %1169)
  store i32 0, ptr %type2981, align 4
  %line2982 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2978, i32 0, i32 2
  %1170 = ptrtoint ptr %line2982 to i32
  call void @__asan_store4_noabort(i32 %1170)
  store i32 91, ptr %line2982, align 4
  %file2983 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2978, i32 0, i32 3
  %1171 = ptrtoint ptr %file2983 to i32
  call void @__asan_store4_noabort(i32 %1171)
  store ptr @.str.2, ptr %file2983, align 4
  %message2984 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2978, i32 0, i32 4
  %1172 = ptrtoint ptr %message2984 to i32
  call void @__asan_store4_noabort(i32 %1172)
  store ptr null, ptr %message2984, align 4
  %va2986 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2978, i32 0, i32 4, i32 1
  %1173 = ptrtoint ptr %va2986 to i32
  call void @__asan_store4_noabort(i32 %1173)
  store ptr null, ptr %va2986, align 4
  %format2987 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion2978, i32 0, i32 5
  %1174 = ptrtoint ptr %format2987 to i32
  call void @__asan_store4_noabort(i32 %1174)
  store ptr @kunit_unary_assert_format, ptr %format2987, align 4
  %condition2988 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2978, i32 0, i32 1
  %1175 = ptrtoint ptr %condition2988 to i32
  call void @__asan_store4_noabort(i32 %1175)
  store ptr @.str.162, ptr %condition2988, align 4
  %expected_true2989 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion2978, i32 0, i32 2
  %1176 = ptrtoint ptr %expected_true2989 to i32
  call void @__asan_store1_noabort(i32 %1176)
  store i8 0, ptr %expected_true2989, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion2978, i1 noundef zeroext true, ptr noundef nonnull @.str.163, i64 noundef 1008806316530991104, i64 noundef 1008806316530991104) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion2978) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3002) #5
  %1177 = getelementptr inbounds i8, ptr %__assertion3002, i32 32
  %1178 = ptrtoint ptr %1177 to i32
  call void @__asan_store4_noabort(i32 %1178)
  store i32 -1, ptr %1177, align 4, !annotation !257
  %1179 = ptrtoint ptr %__assertion3002 to i32
  call void @__asan_store4_noabort(i32 %1179)
  store ptr %context, ptr %__assertion3002, align 4
  %type3005 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3002, i32 0, i32 1
  %1180 = ptrtoint ptr %type3005 to i32
  call void @__asan_store4_noabort(i32 %1180)
  store i32 0, ptr %type3005, align 4
  %line3006 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3002, i32 0, i32 2
  %1181 = ptrtoint ptr %line3006 to i32
  call void @__asan_store4_noabort(i32 %1181)
  store i32 91, ptr %line3006, align 4
  %file3007 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3002, i32 0, i32 3
  %1182 = ptrtoint ptr %file3007 to i32
  call void @__asan_store4_noabort(i32 %1182)
  store ptr @.str.2, ptr %file3007, align 4
  %message3008 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3002, i32 0, i32 4
  %1183 = ptrtoint ptr %message3008 to i32
  call void @__asan_store4_noabort(i32 %1183)
  store ptr null, ptr %message3008, align 4
  %va3010 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3002, i32 0, i32 4, i32 1
  %1184 = ptrtoint ptr %va3010 to i32
  call void @__asan_store4_noabort(i32 %1184)
  store ptr null, ptr %va3010, align 4
  %format3011 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3002, i32 0, i32 5
  %1185 = ptrtoint ptr %format3011 to i32
  call void @__asan_store4_noabort(i32 %1185)
  store ptr @kunit_unary_assert_format, ptr %format3011, align 4
  %condition3012 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3002, i32 0, i32 1
  %1186 = ptrtoint ptr %condition3012 to i32
  call void @__asan_store4_noabort(i32 %1186)
  store ptr @.str.164, ptr %condition3012, align 4
  %expected_true3013 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3002, i32 0, i32 2
  %1187 = ptrtoint ptr %expected_true3013 to i32
  call void @__asan_store1_noabort(i32 %1187)
  store i8 0, ptr %expected_true3013, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3002, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3002) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3032) #5
  %1188 = getelementptr inbounds i8, ptr %__assertion3032, i32 32
  %1189 = ptrtoint ptr %1188 to i32
  call void @__asan_store4_noabort(i32 %1189)
  store i32 -1, ptr %1188, align 4, !annotation !257
  %1190 = ptrtoint ptr %__assertion3032 to i32
  call void @__asan_store4_noabort(i32 %1190)
  store ptr %context, ptr %__assertion3032, align 4
  %type3035 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3032, i32 0, i32 1
  %1191 = ptrtoint ptr %type3035 to i32
  call void @__asan_store4_noabort(i32 %1191)
  store i32 0, ptr %type3035, align 4
  %line3036 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3032, i32 0, i32 2
  %1192 = ptrtoint ptr %line3036 to i32
  call void @__asan_store4_noabort(i32 %1192)
  store i32 91, ptr %line3036, align 4
  %file3037 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3032, i32 0, i32 3
  %1193 = ptrtoint ptr %file3037 to i32
  call void @__asan_store4_noabort(i32 %1193)
  store ptr @.str.2, ptr %file3037, align 4
  %message3038 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3032, i32 0, i32 4
  %1194 = ptrtoint ptr %message3038 to i32
  call void @__asan_store4_noabort(i32 %1194)
  store ptr null, ptr %message3038, align 4
  %va3040 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3032, i32 0, i32 4, i32 1
  %1195 = ptrtoint ptr %va3040 to i32
  call void @__asan_store4_noabort(i32 %1195)
  store ptr null, ptr %va3040, align 4
  %format3041 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3032, i32 0, i32 5
  %1196 = ptrtoint ptr %format3041 to i32
  call void @__asan_store4_noabort(i32 %1196)
  store ptr @kunit_unary_assert_format, ptr %format3041, align 4
  %condition3042 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3032, i32 0, i32 1
  %1197 = ptrtoint ptr %condition3042 to i32
  call void @__asan_store4_noabort(i32 %1197)
  store ptr @.str.165, ptr %condition3042, align 4
  %expected_true3043 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3032, i32 0, i32 2
  %1198 = ptrtoint ptr %expected_true3043 to i32
  call void @__asan_store1_noabort(i32 %1198)
  store i8 0, ptr %expected_true3043, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3032, i1 noundef zeroext true, ptr noundef nonnull @.str.166, i64 noundef 1008806316530991104, i64 noundef 1008806316530991104) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3032) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3056) #5
  %1199 = getelementptr inbounds i8, ptr %__assertion3056, i32 32
  %1200 = ptrtoint ptr %1199 to i32
  call void @__asan_store4_noabort(i32 %1200)
  store i32 -1, ptr %1199, align 4, !annotation !257
  %1201 = ptrtoint ptr %__assertion3056 to i32
  call void @__asan_store4_noabort(i32 %1201)
  store ptr %context, ptr %__assertion3056, align 4
  %type3059 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3056, i32 0, i32 1
  %1202 = ptrtoint ptr %type3059 to i32
  call void @__asan_store4_noabort(i32 %1202)
  store i32 0, ptr %type3059, align 4
  %line3060 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3056, i32 0, i32 2
  %1203 = ptrtoint ptr %line3060 to i32
  call void @__asan_store4_noabort(i32 %1203)
  store i32 91, ptr %line3060, align 4
  %file3061 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3056, i32 0, i32 3
  %1204 = ptrtoint ptr %file3061 to i32
  call void @__asan_store4_noabort(i32 %1204)
  store ptr @.str.2, ptr %file3061, align 4
  %message3062 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3056, i32 0, i32 4
  %1205 = ptrtoint ptr %message3062 to i32
  call void @__asan_store4_noabort(i32 %1205)
  store ptr null, ptr %message3062, align 4
  %va3064 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3056, i32 0, i32 4, i32 1
  %1206 = ptrtoint ptr %va3064 to i32
  call void @__asan_store4_noabort(i32 %1206)
  store ptr null, ptr %va3064, align 4
  %format3065 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3056, i32 0, i32 5
  %1207 = ptrtoint ptr %format3065 to i32
  call void @__asan_store4_noabort(i32 %1207)
  store ptr @kunit_unary_assert_format, ptr %format3065, align 4
  %condition3066 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3056, i32 0, i32 1
  %1208 = ptrtoint ptr %condition3066 to i32
  call void @__asan_store4_noabort(i32 %1208)
  store ptr @.str.167, ptr %condition3066, align 4
  %expected_true3067 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3056, i32 0, i32 2
  %1209 = ptrtoint ptr %expected_true3067 to i32
  call void @__asan_store1_noabort(i32 %1209)
  store i8 0, ptr %expected_true3067, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3056, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3056) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3089) #5
  %1210 = getelementptr inbounds i8, ptr %__assertion3089, i32 32
  %1211 = ptrtoint ptr %1210 to i32
  call void @__asan_store4_noabort(i32 %1211)
  store i32 -1, ptr %1210, align 4, !annotation !257
  %1212 = ptrtoint ptr %__assertion3089 to i32
  call void @__asan_store4_noabort(i32 %1212)
  store ptr %context, ptr %__assertion3089, align 4
  %type3092 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3089, i32 0, i32 1
  %1213 = ptrtoint ptr %type3092 to i32
  call void @__asan_store4_noabort(i32 %1213)
  store i32 0, ptr %type3092, align 4
  %line3093 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3089, i32 0, i32 2
  %1214 = ptrtoint ptr %line3093 to i32
  call void @__asan_store4_noabort(i32 %1214)
  store i32 92, ptr %line3093, align 4
  %file3094 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3089, i32 0, i32 3
  %1215 = ptrtoint ptr %file3094 to i32
  call void @__asan_store4_noabort(i32 %1215)
  store ptr @.str.2, ptr %file3094, align 4
  %message3095 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3089, i32 0, i32 4
  %1216 = ptrtoint ptr %message3095 to i32
  call void @__asan_store4_noabort(i32 %1216)
  store ptr null, ptr %message3095, align 4
  %va3097 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3089, i32 0, i32 4, i32 1
  %1217 = ptrtoint ptr %va3097 to i32
  call void @__asan_store4_noabort(i32 %1217)
  store ptr null, ptr %va3097, align 4
  %format3098 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3089, i32 0, i32 5
  %1218 = ptrtoint ptr %format3098 to i32
  call void @__asan_store4_noabort(i32 %1218)
  store ptr @kunit_unary_assert_format, ptr %format3098, align 4
  %condition3099 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3089, i32 0, i32 1
  %1219 = ptrtoint ptr %condition3099 to i32
  call void @__asan_store4_noabort(i32 %1219)
  store ptr @.str.168, ptr %condition3099, align 4
  %expected_true3100 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3089, i32 0, i32 2
  %1220 = ptrtoint ptr %expected_true3100 to i32
  call void @__asan_store1_noabort(i32 %1220)
  store i8 0, ptr %expected_true3100, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3089, i1 noundef zeroext true, ptr noundef nonnull @.str.169, i64 noundef -1152921504606846976) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3089) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3113) #5
  %1221 = getelementptr inbounds i8, ptr %__assertion3113, i32 32
  %1222 = ptrtoint ptr %1221 to i32
  call void @__asan_store4_noabort(i32 %1222)
  store i32 -1, ptr %1221, align 4, !annotation !257
  %1223 = ptrtoint ptr %__assertion3113 to i32
  call void @__asan_store4_noabort(i32 %1223)
  store ptr %context, ptr %__assertion3113, align 4
  %type3116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3113, i32 0, i32 1
  %1224 = ptrtoint ptr %type3116 to i32
  call void @__asan_store4_noabort(i32 %1224)
  store i32 0, ptr %type3116, align 4
  %line3117 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3113, i32 0, i32 2
  %1225 = ptrtoint ptr %line3117 to i32
  call void @__asan_store4_noabort(i32 %1225)
  store i32 92, ptr %line3117, align 4
  %file3118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3113, i32 0, i32 3
  %1226 = ptrtoint ptr %file3118 to i32
  call void @__asan_store4_noabort(i32 %1226)
  store ptr @.str.2, ptr %file3118, align 4
  %message3119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3113, i32 0, i32 4
  %1227 = ptrtoint ptr %message3119 to i32
  call void @__asan_store4_noabort(i32 %1227)
  store ptr null, ptr %message3119, align 4
  %va3121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3113, i32 0, i32 4, i32 1
  %1228 = ptrtoint ptr %va3121 to i32
  call void @__asan_store4_noabort(i32 %1228)
  store ptr null, ptr %va3121, align 4
  %format3122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3113, i32 0, i32 5
  %1229 = ptrtoint ptr %format3122 to i32
  call void @__asan_store4_noabort(i32 %1229)
  store ptr @kunit_unary_assert_format, ptr %format3122, align 4
  %condition3123 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3113, i32 0, i32 1
  %1230 = ptrtoint ptr %condition3123 to i32
  call void @__asan_store4_noabort(i32 %1230)
  store ptr @.str.170, ptr %condition3123, align 4
  %expected_true3124 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3113, i32 0, i32 2
  %1231 = ptrtoint ptr %expected_true3124 to i32
  call void @__asan_store1_noabort(i32 %1231)
  store i8 0, ptr %expected_true3124, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3113, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3113) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3143) #5
  %1232 = getelementptr inbounds i8, ptr %__assertion3143, i32 32
  %1233 = ptrtoint ptr %1232 to i32
  call void @__asan_store4_noabort(i32 %1233)
  store i32 -1, ptr %1232, align 4, !annotation !257
  %1234 = ptrtoint ptr %__assertion3143 to i32
  call void @__asan_store4_noabort(i32 %1234)
  store ptr %context, ptr %__assertion3143, align 4
  %type3146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3143, i32 0, i32 1
  %1235 = ptrtoint ptr %type3146 to i32
  call void @__asan_store4_noabort(i32 %1235)
  store i32 0, ptr %type3146, align 4
  %line3147 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3143, i32 0, i32 2
  %1236 = ptrtoint ptr %line3147 to i32
  call void @__asan_store4_noabort(i32 %1236)
  store i32 92, ptr %line3147, align 4
  %file3148 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3143, i32 0, i32 3
  %1237 = ptrtoint ptr %file3148 to i32
  call void @__asan_store4_noabort(i32 %1237)
  store ptr @.str.2, ptr %file3148, align 4
  %message3149 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3143, i32 0, i32 4
  %1238 = ptrtoint ptr %message3149 to i32
  call void @__asan_store4_noabort(i32 %1238)
  store ptr null, ptr %message3149, align 4
  %va3151 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3143, i32 0, i32 4, i32 1
  %1239 = ptrtoint ptr %va3151 to i32
  call void @__asan_store4_noabort(i32 %1239)
  store ptr null, ptr %va3151, align 4
  %format3152 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3143, i32 0, i32 5
  %1240 = ptrtoint ptr %format3152 to i32
  call void @__asan_store4_noabort(i32 %1240)
  store ptr @kunit_unary_assert_format, ptr %format3152, align 4
  %condition3153 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3143, i32 0, i32 1
  %1241 = ptrtoint ptr %condition3153 to i32
  call void @__asan_store4_noabort(i32 %1241)
  store ptr @.str.171, ptr %condition3153, align 4
  %expected_true3154 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3143, i32 0, i32 2
  %1242 = ptrtoint ptr %expected_true3154 to i32
  call void @__asan_store1_noabort(i32 %1242)
  store i8 0, ptr %expected_true3154, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3143, i1 noundef zeroext true, ptr noundef nonnull @.str.172, i64 noundef -1152921504606846976, i64 noundef -1152921504606846976) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3143) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3167) #5
  %1243 = getelementptr inbounds i8, ptr %__assertion3167, i32 32
  %1244 = ptrtoint ptr %1243 to i32
  call void @__asan_store4_noabort(i32 %1244)
  store i32 -1, ptr %1243, align 4, !annotation !257
  %1245 = ptrtoint ptr %__assertion3167 to i32
  call void @__asan_store4_noabort(i32 %1245)
  store ptr %context, ptr %__assertion3167, align 4
  %type3170 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3167, i32 0, i32 1
  %1246 = ptrtoint ptr %type3170 to i32
  call void @__asan_store4_noabort(i32 %1246)
  store i32 0, ptr %type3170, align 4
  %line3171 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3167, i32 0, i32 2
  %1247 = ptrtoint ptr %line3171 to i32
  call void @__asan_store4_noabort(i32 %1247)
  store i32 92, ptr %line3171, align 4
  %file3172 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3167, i32 0, i32 3
  %1248 = ptrtoint ptr %file3172 to i32
  call void @__asan_store4_noabort(i32 %1248)
  store ptr @.str.2, ptr %file3172, align 4
  %message3173 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3167, i32 0, i32 4
  %1249 = ptrtoint ptr %message3173 to i32
  call void @__asan_store4_noabort(i32 %1249)
  store ptr null, ptr %message3173, align 4
  %va3175 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3167, i32 0, i32 4, i32 1
  %1250 = ptrtoint ptr %va3175 to i32
  call void @__asan_store4_noabort(i32 %1250)
  store ptr null, ptr %va3175, align 4
  %format3176 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3167, i32 0, i32 5
  %1251 = ptrtoint ptr %format3176 to i32
  call void @__asan_store4_noabort(i32 %1251)
  store ptr @kunit_unary_assert_format, ptr %format3176, align 4
  %condition3177 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3167, i32 0, i32 1
  %1252 = ptrtoint ptr %condition3177 to i32
  call void @__asan_store4_noabort(i32 %1252)
  store ptr @.str.173, ptr %condition3177, align 4
  %expected_true3178 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3167, i32 0, i32 2
  %1253 = ptrtoint ptr %expected_true3178 to i32
  call void @__asan_store1_noabort(i32 %1253)
  store i8 0, ptr %expected_true3178, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3167, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3167) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3197) #5
  %1254 = getelementptr inbounds i8, ptr %__assertion3197, i32 32
  %1255 = ptrtoint ptr %1254 to i32
  call void @__asan_store4_noabort(i32 %1255)
  store i32 -1, ptr %1254, align 4, !annotation !257
  %1256 = ptrtoint ptr %__assertion3197 to i32
  call void @__asan_store4_noabort(i32 %1256)
  store ptr %context, ptr %__assertion3197, align 4
  %type3200 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3197, i32 0, i32 1
  %1257 = ptrtoint ptr %type3200 to i32
  call void @__asan_store4_noabort(i32 %1257)
  store i32 0, ptr %type3200, align 4
  %line3201 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3197, i32 0, i32 2
  %1258 = ptrtoint ptr %line3201 to i32
  call void @__asan_store4_noabort(i32 %1258)
  store i32 92, ptr %line3201, align 4
  %file3202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3197, i32 0, i32 3
  %1259 = ptrtoint ptr %file3202 to i32
  call void @__asan_store4_noabort(i32 %1259)
  store ptr @.str.2, ptr %file3202, align 4
  %message3203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3197, i32 0, i32 4
  %1260 = ptrtoint ptr %message3203 to i32
  call void @__asan_store4_noabort(i32 %1260)
  store ptr null, ptr %message3203, align 4
  %va3205 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3197, i32 0, i32 4, i32 1
  %1261 = ptrtoint ptr %va3205 to i32
  call void @__asan_store4_noabort(i32 %1261)
  store ptr null, ptr %va3205, align 4
  %format3206 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3197, i32 0, i32 5
  %1262 = ptrtoint ptr %format3206 to i32
  call void @__asan_store4_noabort(i32 %1262)
  store ptr @kunit_unary_assert_format, ptr %format3206, align 4
  %condition3207 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3197, i32 0, i32 1
  %1263 = ptrtoint ptr %condition3207 to i32
  call void @__asan_store4_noabort(i32 %1263)
  store ptr @.str.174, ptr %condition3207, align 4
  %expected_true3208 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3197, i32 0, i32 2
  %1264 = ptrtoint ptr %expected_true3208 to i32
  call void @__asan_store1_noabort(i32 %1264)
  store i8 0, ptr %expected_true3208, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3197, i1 noundef zeroext true, ptr noundef nonnull @.str.175, i64 noundef -1152921504606846976, i64 noundef -1152921504606846976) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3197) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion3221) #5
  %1265 = getelementptr inbounds i8, ptr %__assertion3221, i32 32
  %1266 = ptrtoint ptr %1265 to i32
  call void @__asan_store4_noabort(i32 %1266)
  store i32 -1, ptr %1265, align 4, !annotation !257
  %1267 = ptrtoint ptr %__assertion3221 to i32
  call void @__asan_store4_noabort(i32 %1267)
  store ptr %context, ptr %__assertion3221, align 4
  %type3224 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3221, i32 0, i32 1
  %1268 = ptrtoint ptr %type3224 to i32
  call void @__asan_store4_noabort(i32 %1268)
  store i32 0, ptr %type3224, align 4
  %line3225 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3221, i32 0, i32 2
  %1269 = ptrtoint ptr %line3225 to i32
  call void @__asan_store4_noabort(i32 %1269)
  store i32 92, ptr %line3225, align 4
  %file3226 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3221, i32 0, i32 3
  %1270 = ptrtoint ptr %file3226 to i32
  call void @__asan_store4_noabort(i32 %1270)
  store ptr @.str.2, ptr %file3226, align 4
  %message3227 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3221, i32 0, i32 4
  %1271 = ptrtoint ptr %message3227 to i32
  call void @__asan_store4_noabort(i32 %1271)
  store ptr null, ptr %message3227, align 4
  %va3229 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3221, i32 0, i32 4, i32 1
  %1272 = ptrtoint ptr %va3229 to i32
  call void @__asan_store4_noabort(i32 %1272)
  store ptr null, ptr %va3229, align 4
  %format3230 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion3221, i32 0, i32 5
  %1273 = ptrtoint ptr %format3230 to i32
  call void @__asan_store4_noabort(i32 %1273)
  store ptr @kunit_unary_assert_format, ptr %format3230, align 4
  %condition3231 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3221, i32 0, i32 1
  %1274 = ptrtoint ptr %condition3231 to i32
  call void @__asan_store4_noabort(i32 %1274)
  store ptr @.str.176, ptr %condition3231, align 4
  %expected_true3232 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion3221, i32 0, i32 2
  %1275 = ptrtoint ptr %expected_true3232 to i32
  call void @__asan_store1_noabort(i32 %1275)
  store i8 0, ptr %expected_true3232, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion3221, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion3221) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_bitfields_variables(ptr noundef %context) #0 section ".init.text" align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion19 = alloca %struct.kunit_unary_assert, align 4
  %__assertion60 = alloca %struct.kunit_unary_assert, align 4
  %__assertion101 = alloca %struct.kunit_unary_assert, align 4
  %__assertion142 = alloca %struct.kunit_unary_assert, align 4
  %__assertion183 = alloca %struct.kunit_unary_assert, align 4
  %__assertion224 = alloca %struct.kunit_unary_assert, align 4
  %__assertion265 = alloca %struct.kunit_unary_assert, align 4
  %__assertion306 = alloca %struct.kunit_unary_assert, align 4
  %__assertion347 = alloca %struct.kunit_unary_assert, align 4
  %__assertion388 = alloca %struct.kunit_unary_assert, align 4
  %__assertion429 = alloca %struct.kunit_unary_assert, align 4
  %__assertion468 = alloca %struct.kunit_unary_assert, align 4
  %__assertion507 = alloca %struct.kunit_unary_assert, align 4
  %__assertion546 = alloca %struct.kunit_unary_assert, align 4
  %__assertion585 = alloca %struct.kunit_unary_assert, align 4
  %__assertion624 = alloca %struct.kunit_unary_assert, align 4
  %__assertion663 = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %do.body1

for.cond14.preheader:                             ; preds = %do.body1
  %type22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 1
  %line23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 2
  %file24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 3
  %message25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 4
  %va27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 4, i32 1
  %format28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 5
  %condition29 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion19, i32 0, i32 1
  %expected_true30 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion19, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %__assertion19, i32 32
  br label %do.body18

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry
  %v.0952 = phi i64 [ 0, %entry ], [ %inc, %do.body1.do.body1_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #5
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %0, align 4, !annotation !257
  %3 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %context, ptr %__assertion, align 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %5 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 105, ptr %line, align 4
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %file, align 4
  %7 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %message, align 4
  %8 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %va, align 4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %10 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.177, ptr %condition, align 4
  %11 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %expected_true, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #5
  %inc = add nuw nsw i64 %v.0952, 1
  %cmp = icmp ult i64 %v.0952, 15
  br i1 %cmp, label %do.body1.do.body1_crit_edge, label %for.cond14.preheader

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body1

for.cond55.preheader:                             ; preds = %do.body18
  %type63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 1
  %line64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 2
  %file65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 3
  %message66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4
  %va68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 4, i32 1
  %format69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion60, i32 0, i32 5
  %condition70 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion60, i32 0, i32 1
  %expected_true71 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion60, i32 0, i32 2
  %12 = getelementptr inbounds i8, ptr %__assertion60, i32 32
  br label %do.body59

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %for.cond14.preheader
  %v13.0953 = phi i64 [ 0, %for.cond14.preheader ], [ %inc49, %do.body18.do.body18_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion19) #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %1, align 4, !annotation !257
  %14 = ptrtoint ptr %__assertion19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %context, ptr %__assertion19, align 4
  %15 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %type22, align 4
  %16 = ptrtoint ptr %line23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 106, ptr %line23, align 4
  %17 = ptrtoint ptr %file24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.2, ptr %file24, align 4
  %18 = ptrtoint ptr %message25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message25, align 4
  %19 = ptrtoint ptr %va27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va27, align 4
  %20 = ptrtoint ptr %format28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_unary_assert_format, ptr %format28, align 4
  %21 = ptrtoint ptr %condition29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.178, ptr %condition29, align 4
  %22 = ptrtoint ptr %expected_true30 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %expected_true30, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion19, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion19) #5
  %inc49 = add nuw nsw i64 %v13.0953, 1
  %cmp15 = icmp ult i64 %v13.0953, 15
  br i1 %cmp15, label %do.body18.do.body18_crit_edge, label %for.cond55.preheader

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body18

for.cond96.preheader:                             ; preds = %do.body59
  %type104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 1
  %line105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 2
  %file106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 3
  %message107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 4
  %va109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 4, i32 1
  %format110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion101, i32 0, i32 5
  %condition111 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion101, i32 0, i32 1
  %expected_true112 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion101, i32 0, i32 2
  %23 = getelementptr inbounds i8, ptr %__assertion101, i32 32
  br label %do.body100

do.body59:                                        ; preds = %do.body59.do.body59_crit_edge, %for.cond55.preheader
  %v54.0954 = phi i64 [ 0, %for.cond55.preheader ], [ %inc90, %do.body59.do.body59_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion60) #5
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %12, align 4, !annotation !257
  %25 = ptrtoint ptr %__assertion60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %context, ptr %__assertion60, align 4
  %26 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %type63, align 4
  %27 = ptrtoint ptr %line64 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 107, ptr %line64, align 4
  %28 = ptrtoint ptr %file65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.2, ptr %file65, align 4
  %29 = ptrtoint ptr %message66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message66, align 4
  %30 = ptrtoint ptr %va68 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va68, align 4
  %31 = ptrtoint ptr %format69 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_unary_assert_format, ptr %format69, align 4
  %32 = ptrtoint ptr %condition70 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.179, ptr %condition70, align 4
  %33 = ptrtoint ptr %expected_true71 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %expected_true71, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion60, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion60) #5
  %inc90 = add nuw nsw i64 %v54.0954, 1
  %cmp56 = icmp ult i64 %v54.0954, 7
  br i1 %cmp56, label %do.body59.do.body59_crit_edge, label %for.cond96.preheader

do.body59.do.body59_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body59

for.cond137.preheader:                            ; preds = %do.body100
  %type145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 1
  %line146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 2
  %file147 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 3
  %message148 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 4
  %va150 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 4, i32 1
  %format151 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 5
  %condition152 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion142, i32 0, i32 1
  %expected_true153 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion142, i32 0, i32 2
  %34 = getelementptr inbounds i8, ptr %__assertion142, i32 32
  br label %do.body141

do.body100:                                       ; preds = %do.body100.do.body100_crit_edge, %for.cond96.preheader
  %v95.0955 = phi i64 [ 0, %for.cond96.preheader ], [ %inc131, %do.body100.do.body100_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion101) #5
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %23, align 4, !annotation !257
  %36 = ptrtoint ptr %__assertion101 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %context, ptr %__assertion101, align 4
  %37 = ptrtoint ptr %type104 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %type104, align 4
  %38 = ptrtoint ptr %line105 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 109, ptr %line105, align 4
  %39 = ptrtoint ptr %file106 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.2, ptr %file106, align 4
  %40 = ptrtoint ptr %message107 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message107, align 4
  %41 = ptrtoint ptr %va109 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va109, align 4
  %42 = ptrtoint ptr %format110 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_unary_assert_format, ptr %format110, align 4
  %43 = ptrtoint ptr %condition111 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.180, ptr %condition111, align 4
  %44 = ptrtoint ptr %expected_true112 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %expected_true112, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion101, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion101) #5
  %inc131 = add nuw nsw i64 %v95.0955, 1
  %cmp97 = icmp ult i64 %v95.0955, 7
  br i1 %cmp97, label %do.body100.do.body100_crit_edge, label %for.cond137.preheader

do.body100.do.body100_crit_edge:                  ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body100

for.cond178.preheader:                            ; preds = %do.body141
  %type186 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion183, i32 0, i32 1
  %line187 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion183, i32 0, i32 2
  %file188 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion183, i32 0, i32 3
  %message189 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion183, i32 0, i32 4
  %va191 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion183, i32 0, i32 4, i32 1
  %format192 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion183, i32 0, i32 5
  %condition193 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion183, i32 0, i32 1
  %expected_true194 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion183, i32 0, i32 2
  %45 = getelementptr inbounds i8, ptr %__assertion183, i32 32
  br label %do.body182

do.body141:                                       ; preds = %do.body141.do.body141_crit_edge, %for.cond137.preheader
  %v136.0956 = phi i64 [ 0, %for.cond137.preheader ], [ %inc172, %do.body141.do.body141_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion142) #5
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %34, align 4, !annotation !257
  %47 = ptrtoint ptr %__assertion142 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %context, ptr %__assertion142, align 4
  %48 = ptrtoint ptr %type145 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %type145, align 4
  %49 = ptrtoint ptr %line146 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 110, ptr %line146, align 4
  %50 = ptrtoint ptr %file147 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.2, ptr %file147, align 4
  %51 = ptrtoint ptr %message148 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message148, align 4
  %52 = ptrtoint ptr %va150 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va150, align 4
  %53 = ptrtoint ptr %format151 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_unary_assert_format, ptr %format151, align 4
  %54 = ptrtoint ptr %condition152 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.181, ptr %condition152, align 4
  %55 = ptrtoint ptr %expected_true153 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %expected_true153, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion142, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion142) #5
  %inc172 = add nuw nsw i64 %v136.0956, 1
  %cmp138 = icmp ult i64 %v136.0956, 7
  br i1 %cmp138, label %do.body141.do.body141_crit_edge, label %for.cond178.preheader

do.body141.do.body141_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body141

for.cond219.preheader:                            ; preds = %do.body182
  %type227 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion224, i32 0, i32 1
  %line228 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion224, i32 0, i32 2
  %file229 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion224, i32 0, i32 3
  %message230 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion224, i32 0, i32 4
  %va232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion224, i32 0, i32 4, i32 1
  %format233 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion224, i32 0, i32 5
  %condition234 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion224, i32 0, i32 1
  %expected_true235 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion224, i32 0, i32 2
  %56 = getelementptr inbounds i8, ptr %__assertion224, i32 32
  br label %do.body223

do.body182:                                       ; preds = %do.body182.do.body182_crit_edge, %for.cond178.preheader
  %v177.0957 = phi i64 [ 0, %for.cond178.preheader ], [ %inc213, %do.body182.do.body182_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion183) #5
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %45, align 4, !annotation !257
  %58 = ptrtoint ptr %__assertion183 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %context, ptr %__assertion183, align 4
  %59 = ptrtoint ptr %type186 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %type186, align 4
  %60 = ptrtoint ptr %line187 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 111, ptr %line187, align 4
  %61 = ptrtoint ptr %file188 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.2, ptr %file188, align 4
  %62 = ptrtoint ptr %message189 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message189, align 4
  %63 = ptrtoint ptr %va191 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va191, align 4
  %64 = ptrtoint ptr %format192 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_unary_assert_format, ptr %format192, align 4
  %65 = ptrtoint ptr %condition193 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.182, ptr %condition193, align 4
  %66 = ptrtoint ptr %expected_true194 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %expected_true194, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion183, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion183) #5
  %inc213 = add nuw nsw i64 %v177.0957, 1
  %cmp179 = icmp ult i64 %v177.0957, 7
  br i1 %cmp179, label %do.body182.do.body182_crit_edge, label %for.cond219.preheader

do.body182.do.body182_crit_edge:                  ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body182

for.cond260.preheader:                            ; preds = %do.body223
  %type268 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 1
  %line269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 2
  %file270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 3
  %message271 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 4
  %va273 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 4, i32 1
  %format274 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion265, i32 0, i32 5
  %condition275 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion265, i32 0, i32 1
  %expected_true276 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion265, i32 0, i32 2
  %67 = getelementptr inbounds i8, ptr %__assertion265, i32 32
  br label %do.body264

do.body223:                                       ; preds = %do.body223.do.body223_crit_edge, %for.cond219.preheader
  %cmp220 = phi i1 [ true, %for.cond219.preheader ], [ false, %do.body223.do.body223_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion224) #5
  %68 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %56, align 4, !annotation !257
  %69 = ptrtoint ptr %__assertion224 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %context, ptr %__assertion224, align 4
  %70 = ptrtoint ptr %type227 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %type227, align 4
  %71 = ptrtoint ptr %line228 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 112, ptr %line228, align 4
  %72 = ptrtoint ptr %file229 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.2, ptr %file229, align 4
  %73 = ptrtoint ptr %message230 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %message230, align 4
  %74 = ptrtoint ptr %va232 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %va232, align 4
  %75 = ptrtoint ptr %format233 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @kunit_unary_assert_format, ptr %format233, align 4
  %76 = ptrtoint ptr %condition234 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.183, ptr %condition234, align 4
  %77 = ptrtoint ptr %expected_true235 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %expected_true235, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion224, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion224) #5
  br i1 %cmp220, label %do.body223.do.body223_crit_edge, label %for.cond260.preheader

do.body223.do.body223_crit_edge:                  ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body223

for.cond301.preheader:                            ; preds = %do.body264
  %type309 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion306, i32 0, i32 1
  %line310 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion306, i32 0, i32 2
  %file311 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion306, i32 0, i32 3
  %message312 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion306, i32 0, i32 4
  %va314 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion306, i32 0, i32 4, i32 1
  %format315 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion306, i32 0, i32 5
  %condition316 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion306, i32 0, i32 1
  %expected_true317 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion306, i32 0, i32 2
  %78 = getelementptr inbounds i8, ptr %__assertion306, i32 32
  br label %do.body305

do.body264:                                       ; preds = %do.body264.do.body264_crit_edge, %for.cond260.preheader
  %cmp261 = phi i1 [ true, %for.cond260.preheader ], [ false, %do.body264.do.body264_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion265) #5
  %79 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %67, align 4, !annotation !257
  %80 = ptrtoint ptr %__assertion265 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %context, ptr %__assertion265, align 4
  %81 = ptrtoint ptr %type268 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %type268, align 4
  %82 = ptrtoint ptr %line269 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 114, ptr %line269, align 4
  %83 = ptrtoint ptr %file270 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.2, ptr %file270, align 4
  %84 = ptrtoint ptr %message271 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %message271, align 4
  %85 = ptrtoint ptr %va273 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %va273, align 4
  %86 = ptrtoint ptr %format274 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @kunit_unary_assert_format, ptr %format274, align 4
  %87 = ptrtoint ptr %condition275 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.184, ptr %condition275, align 4
  %88 = ptrtoint ptr %expected_true276 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %expected_true276, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion265, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion265) #5
  br i1 %cmp261, label %do.body264.do.body264_crit_edge, label %for.cond301.preheader

do.body264.do.body264_crit_edge:                  ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body264

for.cond342.preheader:                            ; preds = %do.body305
  %type350 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 1
  %line351 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 2
  %file352 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 3
  %message353 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 4
  %va355 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 4, i32 1
  %format356 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion347, i32 0, i32 5
  %condition357 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion347, i32 0, i32 1
  %expected_true358 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion347, i32 0, i32 2
  %89 = getelementptr inbounds i8, ptr %__assertion347, i32 32
  br label %do.body346

do.body305:                                       ; preds = %do.body305.do.body305_crit_edge, %for.cond301.preheader
  %v300.0960 = phi i64 [ 0, %for.cond301.preheader ], [ %inc336, %do.body305.do.body305_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion306) #5
  %90 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %78, align 4, !annotation !257
  %91 = ptrtoint ptr %__assertion306 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %context, ptr %__assertion306, align 4
  %92 = ptrtoint ptr %type309 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %type309, align 4
  %93 = ptrtoint ptr %line310 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 115, ptr %line310, align 4
  %94 = ptrtoint ptr %file311 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.2, ptr %file311, align 4
  %95 = ptrtoint ptr %message312 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %message312, align 4
  %96 = ptrtoint ptr %va314 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %va314, align 4
  %97 = ptrtoint ptr %format315 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @kunit_unary_assert_format, ptr %format315, align 4
  %98 = ptrtoint ptr %condition316 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.185, ptr %condition316, align 4
  %99 = ptrtoint ptr %expected_true317 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %expected_true317, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion306, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion306) #5
  %inc336 = add nuw nsw i64 %v300.0960, 1
  %cmp302 = icmp ult i64 %v300.0960, 127
  br i1 %cmp302, label %do.body305.do.body305_crit_edge, label %for.cond342.preheader

do.body305.do.body305_crit_edge:                  ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body305

for.cond383.preheader:                            ; preds = %do.body346
  %type391 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion388, i32 0, i32 1
  %line392 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion388, i32 0, i32 2
  %file393 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion388, i32 0, i32 3
  %message394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion388, i32 0, i32 4
  %va396 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion388, i32 0, i32 4, i32 1
  %format397 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion388, i32 0, i32 5
  %condition398 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion388, i32 0, i32 1
  %expected_true399 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion388, i32 0, i32 2
  %100 = getelementptr inbounds i8, ptr %__assertion388, i32 32
  br label %do.body387

do.body346:                                       ; preds = %do.body346.do.body346_crit_edge, %for.cond342.preheader
  %v341.0961 = phi i64 [ 0, %for.cond342.preheader ], [ %inc377, %do.body346.do.body346_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion347) #5
  %101 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %89, align 4, !annotation !257
  %102 = ptrtoint ptr %__assertion347 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %context, ptr %__assertion347, align 4
  %103 = ptrtoint ptr %type350 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %type350, align 4
  %104 = ptrtoint ptr %line351 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 116, ptr %line351, align 4
  %105 = ptrtoint ptr %file352 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.2, ptr %file352, align 4
  %106 = ptrtoint ptr %message353 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %message353, align 4
  %107 = ptrtoint ptr %va355 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %va355, align 4
  %108 = ptrtoint ptr %format356 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @kunit_unary_assert_format, ptr %format356, align 4
  %109 = ptrtoint ptr %condition357 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.186, ptr %condition357, align 4
  %110 = ptrtoint ptr %expected_true358 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %expected_true358, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion347, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion347) #5
  %inc377 = add nuw nsw i64 %v341.0961, 1
  %cmp343 = icmp ult i64 %v341.0961, 63
  br i1 %cmp343, label %do.body346.do.body346_crit_edge, label %for.cond383.preheader

do.body346.do.body346_crit_edge:                  ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body346

do.body387:                                       ; preds = %do.body387.do.body387_crit_edge, %for.cond383.preheader
  %v382.0962 = phi i64 [ 0, %for.cond383.preheader ], [ %inc418, %do.body387.do.body387_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion388) #5
  %111 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %100, align 4, !annotation !257
  %112 = ptrtoint ptr %__assertion388 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %context, ptr %__assertion388, align 4
  %113 = ptrtoint ptr %type391 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %type391, align 4
  %114 = ptrtoint ptr %line392 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 117, ptr %line392, align 4
  %115 = ptrtoint ptr %file393 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.2, ptr %file393, align 4
  %116 = ptrtoint ptr %message394 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %message394, align 4
  %117 = ptrtoint ptr %va396 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %va396, align 4
  %118 = ptrtoint ptr %format397 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @kunit_unary_assert_format, ptr %format397, align 4
  %119 = ptrtoint ptr %condition398 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.187, ptr %condition398, align 4
  %120 = ptrtoint ptr %expected_true399 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %expected_true399, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion388, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion388) #5
  %inc418 = add nuw nsw i64 %v382.0962, 1
  %cmp384 = icmp ult i64 %v382.0962, 3
  br i1 %cmp384, label %do.body387.do.body387_crit_edge, label %do.body428

do.body387.do.body387_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body387

do.body428:                                       ; preds = %do.body387
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion429) #5
  %121 = getelementptr inbounds i8, ptr %__assertion429, i32 32
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %121, align 4, !annotation !257
  %123 = ptrtoint ptr %__assertion429 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %context, ptr %__assertion429, align 4
  %type432 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion429, i32 0, i32 1
  %124 = ptrtoint ptr %type432 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %type432, align 4
  %line433 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion429, i32 0, i32 2
  %125 = ptrtoint ptr %line433 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 119, ptr %line433, align 4
  %file434 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion429, i32 0, i32 3
  %126 = ptrtoint ptr %file434 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.2, ptr %file434, align 4
  %message435 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion429, i32 0, i32 4
  %127 = ptrtoint ptr %message435 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %message435, align 4
  %va437 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion429, i32 0, i32 4, i32 1
  %128 = ptrtoint ptr %va437 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %va437, align 4
  %format438 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion429, i32 0, i32 5
  %129 = ptrtoint ptr %format438 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @kunit_unary_assert_format, ptr %format438, align 4
  %condition439 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion429, i32 0, i32 1
  %130 = ptrtoint ptr %condition439 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.188, ptr %condition439, align 4
  %expected_true440 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion429, i32 0, i32 2
  %131 = ptrtoint ptr %expected_true440 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %expected_true440, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion429, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion429) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion468) #5
  %132 = getelementptr inbounds i8, ptr %__assertion468, i32 32
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %132, align 4, !annotation !257
  %134 = ptrtoint ptr %__assertion468 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %context, ptr %__assertion468, align 4
  %type471 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion468, i32 0, i32 1
  %135 = ptrtoint ptr %type471 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %type471, align 4
  %line472 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion468, i32 0, i32 2
  %136 = ptrtoint ptr %line472 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 120, ptr %line472, align 4
  %file473 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion468, i32 0, i32 3
  %137 = ptrtoint ptr %file473 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.2, ptr %file473, align 4
  %message474 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion468, i32 0, i32 4
  %138 = ptrtoint ptr %message474 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %message474, align 4
  %va476 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion468, i32 0, i32 4, i32 1
  %139 = ptrtoint ptr %va476 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %va476, align 4
  %format477 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion468, i32 0, i32 5
  %140 = ptrtoint ptr %format477 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @kunit_unary_assert_format, ptr %format477, align 4
  %condition478 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion468, i32 0, i32 1
  %141 = ptrtoint ptr %condition478 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.189, ptr %condition478, align 4
  %expected_true479 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion468, i32 0, i32 2
  %142 = ptrtoint ptr %expected_true479 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %expected_true479, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion468, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion468) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion507) #5
  %143 = getelementptr inbounds i8, ptr %__assertion507, i32 32
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %143, align 4, !annotation !257
  %145 = ptrtoint ptr %__assertion507 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %context, ptr %__assertion507, align 4
  %type510 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion507, i32 0, i32 1
  %146 = ptrtoint ptr %type510 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %type510, align 4
  %line511 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion507, i32 0, i32 2
  %147 = ptrtoint ptr %line511 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 121, ptr %line511, align 4
  %file512 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion507, i32 0, i32 3
  %148 = ptrtoint ptr %file512 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.2, ptr %file512, align 4
  %message513 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion507, i32 0, i32 4
  %149 = ptrtoint ptr %message513 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %message513, align 4
  %va515 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion507, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %va515 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %va515, align 4
  %format516 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion507, i32 0, i32 5
  %151 = ptrtoint ptr %format516 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @kunit_unary_assert_format, ptr %format516, align 4
  %condition517 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion507, i32 0, i32 1
  %152 = ptrtoint ptr %condition517 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @.str.190, ptr %condition517, align 4
  %expected_true518 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion507, i32 0, i32 2
  %153 = ptrtoint ptr %expected_true518 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %expected_true518, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion507, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion507) #5
  %type549 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion546, i32 0, i32 1
  %line550 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion546, i32 0, i32 2
  %file551 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion546, i32 0, i32 3
  %message552 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion546, i32 0, i32 4
  %va554 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion546, i32 0, i32 4, i32 1
  %format555 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion546, i32 0, i32 5
  %condition556 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion546, i32 0, i32 1
  %expected_true557 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion546, i32 0, i32 2
  %154 = getelementptr inbounds i8, ptr %__assertion546, i32 32
  br label %do.body545

for.cond580.preheader:                            ; preds = %do.body545
  %type588 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion585, i32 0, i32 1
  %line589 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion585, i32 0, i32 2
  %file590 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion585, i32 0, i32 3
  %message591 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion585, i32 0, i32 4
  %va593 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion585, i32 0, i32 4, i32 1
  %format594 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion585, i32 0, i32 5
  %condition595 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion585, i32 0, i32 1
  %expected_true596 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion585, i32 0, i32 2
  %155 = getelementptr inbounds i8, ptr %__assertion585, i32 32
  br label %do.body584

do.body545:                                       ; preds = %do.body545.do.body545_crit_edge, %do.body428
  %cmp542 = phi i1 [ true, %do.body428 ], [ false, %do.body545.do.body545_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion546) #5
  %156 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1, ptr %154, align 4, !annotation !257
  %157 = ptrtoint ptr %__assertion546 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %context, ptr %__assertion546, align 4
  %158 = ptrtoint ptr %type549 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %type549, align 4
  %159 = ptrtoint ptr %line550 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 122, ptr %line550, align 4
  %160 = ptrtoint ptr %file551 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @.str.2, ptr %file551, align 4
  %161 = ptrtoint ptr %message552 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %message552, align 4
  %162 = ptrtoint ptr %va554 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %va554, align 4
  %163 = ptrtoint ptr %format555 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @kunit_unary_assert_format, ptr %format555, align 4
  %164 = ptrtoint ptr %condition556 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.191, ptr %condition556, align 4
  %165 = ptrtoint ptr %expected_true557 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %expected_true557, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion546, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion546) #5
  br i1 %cmp542, label %do.body545.do.body545_crit_edge, label %for.cond580.preheader

do.body545.do.body545_crit_edge:                  ; preds = %do.body545
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body545

for.cond619.preheader:                            ; preds = %do.body584
  %type627 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 1
  %line628 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 2
  %file629 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 3
  %message630 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 4
  %va632 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 4, i32 1
  %format633 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion624, i32 0, i32 5
  %condition634 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion624, i32 0, i32 1
  %expected_true635 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion624, i32 0, i32 2
  %166 = getelementptr inbounds i8, ptr %__assertion624, i32 32
  br label %do.body623

do.body584:                                       ; preds = %do.body584.do.body584_crit_edge, %for.cond580.preheader
  %v579.0964 = phi i64 [ 0, %for.cond580.preheader ], [ %inc613, %do.body584.do.body584_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion585) #5
  %167 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %155, align 4, !annotation !257
  %168 = ptrtoint ptr %__assertion585 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %context, ptr %__assertion585, align 4
  %169 = ptrtoint ptr %type588 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %type588, align 4
  %170 = ptrtoint ptr %line589 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 123, ptr %line589, align 4
  %171 = ptrtoint ptr %file590 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.2, ptr %file590, align 4
  %172 = ptrtoint ptr %message591 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %message591, align 4
  %173 = ptrtoint ptr %va593 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %va593, align 4
  %174 = ptrtoint ptr %format594 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @kunit_unary_assert_format, ptr %format594, align 4
  %175 = ptrtoint ptr %condition595 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @.str.192, ptr %condition595, align 4
  %176 = ptrtoint ptr %expected_true596 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %expected_true596, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion585, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion585) #5
  %inc613 = add nuw nsw i64 %v579.0964, 1
  %cmp581 = icmp ult i64 %v579.0964, 127
  br i1 %cmp581, label %do.body584.do.body584_crit_edge, label %for.cond619.preheader

do.body584.do.body584_crit_edge:                  ; preds = %do.body584
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body584

for.cond658.preheader:                            ; preds = %do.body623
  %type666 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion663, i32 0, i32 1
  %line667 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion663, i32 0, i32 2
  %file668 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion663, i32 0, i32 3
  %message669 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion663, i32 0, i32 4
  %va671 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion663, i32 0, i32 4, i32 1
  %format672 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion663, i32 0, i32 5
  %condition673 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion663, i32 0, i32 1
  %expected_true674 = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion663, i32 0, i32 2
  %177 = getelementptr inbounds i8, ptr %__assertion663, i32 32
  br label %do.body662

do.body623:                                       ; preds = %do.body623.do.body623_crit_edge, %for.cond619.preheader
  %v618.0965 = phi i64 [ 0, %for.cond619.preheader ], [ %inc652, %do.body623.do.body623_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion624) #5
  %178 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %166, align 4, !annotation !257
  %179 = ptrtoint ptr %__assertion624 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %context, ptr %__assertion624, align 4
  %180 = ptrtoint ptr %type627 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %type627, align 4
  %181 = ptrtoint ptr %line628 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 124, ptr %line628, align 4
  %182 = ptrtoint ptr %file629 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @.str.2, ptr %file629, align 4
  %183 = ptrtoint ptr %message630 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %message630, align 4
  %184 = ptrtoint ptr %va632 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %va632, align 4
  %185 = ptrtoint ptr %format633 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @kunit_unary_assert_format, ptr %format633, align 4
  %186 = ptrtoint ptr %condition634 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @.str.193, ptr %condition634, align 4
  %187 = ptrtoint ptr %expected_true635 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %expected_true635, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion624, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion624) #5
  %inc652 = add nuw nsw i64 %v618.0965, 1
  %cmp620 = icmp ult i64 %v618.0965, 3
  br i1 %cmp620, label %do.body623.do.body623_crit_edge, label %for.cond658.preheader

do.body623.do.body623_crit_edge:                  ; preds = %do.body623
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body623

do.body662:                                       ; preds = %do.body662.do.body662_crit_edge, %for.cond658.preheader
  %v657.0966 = phi i64 [ 0, %for.cond658.preheader ], [ %inc691, %do.body662.do.body662_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion663) #5
  %188 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %177, align 4, !annotation !257
  %189 = ptrtoint ptr %__assertion663 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %context, ptr %__assertion663, align 4
  %190 = ptrtoint ptr %type666 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %type666, align 4
  %191 = ptrtoint ptr %line667 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 125, ptr %line667, align 4
  %192 = ptrtoint ptr %file668 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.2, ptr %file668, align 4
  %193 = ptrtoint ptr %message669 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %message669, align 4
  %194 = ptrtoint ptr %va671 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %va671, align 4
  %195 = ptrtoint ptr %format672 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @kunit_unary_assert_format, ptr %format672, align 4
  %196 = ptrtoint ptr %condition673 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.194, ptr %condition673, align 4
  %197 = ptrtoint ptr %expected_true674 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %expected_true674, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %context, ptr noundef nonnull %__assertion663, i1 noundef zeroext true, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion663) #5
  %inc691 = add nuw nsw i64 %v657.0966, 1
  %cmp659 = icmp ult i64 %v657.0966, 31
  br i1 %cmp659, label %do.body662.do.body662_crit_edge, label %for.end692

do.body662.do.body662_crit_edge:                  ; preds = %do.body662
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body662

for.end692:                                       ; preds = %do.body662
  call void @__sanitizer_cov_trace_pc() #4
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

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !110, !111, !112, !113, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !130, !131, !132, !133, !135, !136, !137, !138, !139, !140, !141, !142, !143, !145, !146, !147, !148, !149, !150, !151, !152, !153, !155, !156, !157, !158, !159, !160, !161, !162, !163, !165, !166, !167, !168, !169, !170, !171, !172, !173, !175, !176, !177, !178, !179, !180, !181, !182, !183, !185, !186, !187, !188, !189, !190, !191, !192, !193, !195, !196, !197, !198, !199, !200, !201, !202, !203, !205, !206, !207, !208, !209, !210, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../lib/bitfield_kunit.c", i32 151, i32 1}
!2 = !{ptr @__UNIQUE_ID_author176, !3, !"__UNIQUE_ID_author176", i1 false, i1 false}
!3 = !{!"../lib/bitfield_kunit.c", i32 153, i32 1}
!4 = !{ptr @__UNIQUE_ID_file177, !5, !"__UNIQUE_ID_file177", i1 false, i1 false}
!5 = !{!"../lib/bitfield_kunit.c", i32 154, i32 1}
!6 = !{ptr @__UNIQUE_ID_license178, !5, !"__UNIQUE_ID_license178", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!8 = !{ptr @bitfields_test_suite, !9, !"bitfields_test_suite", i1 false, i1 false}
!9 = !{!"../lib/bitfield_kunit.c", i32 146, i32 27}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/bitfield_kunit.c", i32 141, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/bitfield_kunit.c", i32 142, i32 2}
!14 = !{ptr @bitfields_test_cases, !15, !"bitfields_test_cases", i1 false, i1 false}
!15 = !{!"../lib/bitfield_kunit.c", i32 140, i32 36}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/bitfield_kunit.c", i32 68, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/bitfield_kunit.c", i32 69, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/bitfield_kunit.c", i32 70, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.28, !38, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.29, !38, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/bitfield_kunit.c", i32 71, i32 2}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.34, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.35, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.36, !48, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.37, !48, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.38, !48, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.39, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/bitfield_kunit.c", i32 72, i32 2}
!59 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.41, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.42, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.43, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.44, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.45, !58, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.46, !58, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.47, !58, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../lib/bitfield_kunit.c", i32 73, i32 2}
!69 = !{ptr @.str.49, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.50, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.51, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.52, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.53, !68, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.54, !68, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.55, !68, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.56, !68, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.57, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/bitfield_kunit.c", i32 75, i32 2}
!79 = !{ptr @.str.58, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.59, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.60, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../lib/bitfield_kunit.c", i32 76, i32 2}
!83 = !{ptr @.str.61, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.62, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.63, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/bitfield_kunit.c", i32 77, i32 2}
!87 = !{ptr @.str.64, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.65, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.66, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/bitfield_kunit.c", i32 78, i32 2}
!91 = !{ptr @.str.67, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.68, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.69, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/bitfield_kunit.c", i32 80, i32 2}
!95 = !{ptr @.str.70, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.71, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.72, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.73, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.74, !94, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.75, !94, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.76, !94, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.77, !94, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.78, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/bitfield_kunit.c", i32 81, i32 2}
!105 = !{ptr @.str.79, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.80, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.81, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.82, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.83, !104, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.84, !104, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.85, !104, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.86, !104, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.87, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/bitfield_kunit.c", i32 82, i32 2}
!115 = !{ptr @.str.88, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.89, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.90, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.91, !114, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.92, !114, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.93, !114, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.94, !114, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.95, !114, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.96, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/bitfield_kunit.c", i32 83, i32 2}
!125 = !{ptr @.str.97, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.98, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.99, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.100, !124, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.101, !124, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.102, !124, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.103, !124, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.104, !124, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.105, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/bitfield_kunit.c", i32 84, i32 2}
!135 = !{ptr @.str.106, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.107, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.108, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.109, !134, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.110, !134, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.111, !134, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.112, !134, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.113, !134, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.114, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../lib/bitfield_kunit.c", i32 85, i32 2}
!145 = !{ptr @.str.115, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.116, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.117, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.118, !144, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.119, !144, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.120, !144, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.121, !144, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.122, !144, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.123, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../lib/bitfield_kunit.c", i32 87, i32 2}
!155 = !{ptr @.str.124, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.125, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.126, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.127, !154, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.128, !154, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.129, !154, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.130, !154, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.131, !154, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.132, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../lib/bitfield_kunit.c", i32 88, i32 2}
!165 = !{ptr @.str.133, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.134, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.135, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.136, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.137, !164, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.138, !164, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.139, !164, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.140, !164, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.141, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../lib/bitfield_kunit.c", i32 89, i32 2}
!175 = !{ptr @.str.142, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.143, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.144, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.145, !174, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.146, !174, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.147, !174, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.148, !174, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.149, !174, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.150, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../lib/bitfield_kunit.c", i32 90, i32 2}
!185 = !{ptr @.str.151, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.152, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.153, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.154, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.155, !184, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.156, !184, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.157, !184, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.158, !184, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.159, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../lib/bitfield_kunit.c", i32 91, i32 2}
!195 = !{ptr @.str.160, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.161, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.162, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.163, !194, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.164, !194, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.165, !194, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.166, !194, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.167, !194, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.168, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../lib/bitfield_kunit.c", i32 92, i32 2}
!205 = !{ptr @.str.169, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.170, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.171, !204, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.172, !204, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.173, !204, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.174, !204, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.175, !204, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.176, !204, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.177, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../lib/bitfield_kunit.c", i32 105, i32 2}
!215 = !{ptr @.str.178, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../lib/bitfield_kunit.c", i32 106, i32 2}
!217 = !{ptr @.str.179, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../lib/bitfield_kunit.c", i32 107, i32 2}
!219 = !{ptr @.str.180, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../lib/bitfield_kunit.c", i32 109, i32 2}
!221 = !{ptr @.str.181, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../lib/bitfield_kunit.c", i32 110, i32 2}
!223 = !{ptr @.str.182, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../lib/bitfield_kunit.c", i32 111, i32 2}
!225 = !{ptr @.str.183, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../lib/bitfield_kunit.c", i32 112, i32 2}
!227 = !{ptr @.str.184, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../lib/bitfield_kunit.c", i32 114, i32 2}
!229 = !{ptr @.str.185, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../lib/bitfield_kunit.c", i32 115, i32 2}
!231 = !{ptr @.str.186, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../lib/bitfield_kunit.c", i32 116, i32 2}
!233 = !{ptr @.str.187, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../lib/bitfield_kunit.c", i32 117, i32 2}
!235 = !{ptr @.str.188, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../lib/bitfield_kunit.c", i32 119, i32 2}
!237 = !{ptr @.str.189, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../lib/bitfield_kunit.c", i32 120, i32 2}
!239 = !{ptr @.str.190, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../lib/bitfield_kunit.c", i32 121, i32 2}
!241 = !{ptr @.str.191, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../lib/bitfield_kunit.c", i32 122, i32 2}
!243 = !{ptr @.str.192, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../lib/bitfield_kunit.c", i32 123, i32 2}
!245 = !{ptr @.str.193, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../lib/bitfield_kunit.c", i32 124, i32 2}
!247 = !{ptr @.str.194, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../lib/bitfield_kunit.c", i32 125, i32 2}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{!"auto-init"}
