; ModuleID = '/llk/IR_all_yes/lib/test-kstrtox.c_pt.bc'
source_filename = "../lib/test-kstrtox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.test_ull = type { ptr, i32, i64 }
%struct.test_fail = type { ptr, i32 }
%struct.test_ll = type { ptr, i32, i64 }
%struct.test_u64 = type { ptr, i32, i64 }
%struct.test_s64 = type { ptr, i32, i64 }
%struct.test_u32 = type { ptr, i32, i32 }
%struct.test_s32 = type { ptr, i32, i32 }
%struct.test_u16 = type { ptr, i32, i16 }
%struct.test_s16 = type { ptr, i32, i16 }
%struct.test_u8 = type { ptr, i32, i8 }
%struct.test_s8 = type { ptr, i32, i8 }

@__initcall__kmod_test_kstrtox__106_734_test_kstrtox_init6 = internal global ptr @test_kstrtox_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file107 = internal constant [35 x i8] c"test_kstrtox.file=lib/test-kstrtox\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [34 x i8] c"test_kstrtox.license=Dual BSD/GPL\00", section ".modinfo", align 1
@test_kstrtoull_ok.test_ull_ok = internal unnamed_addr constant [76 x %struct.test_ull] [%struct.test_ull { ptr @.str, i32 10, i64 0 }, %struct.test_ull { ptr @.str.1, i32 10, i64 1 }, %struct.test_ull { ptr @.str.2, i32 10, i64 127 }, %struct.test_ull { ptr @.str.3, i32 10, i64 128 }, %struct.test_ull { ptr @.str.4, i32 10, i64 129 }, %struct.test_ull { ptr @.str.5, i32 10, i64 255 }, %struct.test_ull { ptr @.str.6, i32 10, i64 256 }, %struct.test_ull { ptr @.str.7, i32 10, i64 257 }, %struct.test_ull { ptr @.str.8, i32 10, i64 32767 }, %struct.test_ull { ptr @.str.9, i32 10, i64 32768 }, %struct.test_ull { ptr @.str.10, i32 10, i64 32769 }, %struct.test_ull { ptr @.str.11, i32 10, i64 65535 }, %struct.test_ull { ptr @.str.12, i32 10, i64 65536 }, %struct.test_ull { ptr @.str.13, i32 10, i64 65537 }, %struct.test_ull { ptr @.str.14, i32 10, i64 2147483647 }, %struct.test_ull { ptr @.str.15, i32 10, i64 2147483648 }, %struct.test_ull { ptr @.str.16, i32 10, i64 2147483649 }, %struct.test_ull { ptr @.str.17, i32 10, i64 4294967295 }, %struct.test_ull { ptr @.str.18, i32 10, i64 4294967296 }, %struct.test_ull { ptr @.str.19, i32 10, i64 4294967297 }, %struct.test_ull { ptr @.str.20, i32 10, i64 9223372036854775807 }, %struct.test_ull { ptr @.str.21, i32 10, i64 -9223372036854775808 }, %struct.test_ull { ptr @.str.22, i32 10, i64 -9223372036854775807 }, %struct.test_ull { ptr @.str.23, i32 10, i64 -2 }, %struct.test_ull { ptr @.str.24, i32 10, i64 -1 }, %struct.test_ull { ptr @.str.25, i32 8, i64 0 }, %struct.test_ull { ptr @.str.26, i32 8, i64 1 }, %struct.test_ull { ptr @.str.27, i32 8, i64 127 }, %struct.test_ull { ptr @.str.28, i32 8, i64 128 }, %struct.test_ull { ptr @.str.29, i32 8, i64 129 }, %struct.test_ull { ptr @.str.30, i32 8, i64 255 }, %struct.test_ull { ptr @.str.31, i32 8, i64 256 }, %struct.test_ull { ptr @.str.32, i32 8, i64 257 }, %struct.test_ull { ptr @.str.33, i32 8, i64 32767 }, %struct.test_ull { ptr @.str.34, i32 8, i64 32768 }, %struct.test_ull { ptr @.str.35, i32 8, i64 32769 }, %struct.test_ull { ptr @.str.36, i32 8, i64 65535 }, %struct.test_ull { ptr @.str.37, i32 8, i64 65536 }, %struct.test_ull { ptr @.str.38, i32 8, i64 65537 }, %struct.test_ull { ptr @.str.39, i32 8, i64 2147483647 }, %struct.test_ull { ptr @.str.40, i32 8, i64 2147483648 }, %struct.test_ull { ptr @.str.41, i32 8, i64 2147483649 }, %struct.test_ull { ptr @.str.42, i32 8, i64 4294967295 }, %struct.test_ull { ptr @.str.43, i32 8, i64 4294967296 }, %struct.test_ull { ptr @.str.44, i32 8, i64 4294967297 }, %struct.test_ull { ptr @.str.45, i32 8, i64 9223372036854775807 }, %struct.test_ull { ptr @.str.46, i32 8, i64 -9223372036854775808 }, %struct.test_ull { ptr @.str.47, i32 8, i64 -9223372036854775807 }, %struct.test_ull { ptr @.str.48, i32 8, i64 -2 }, %struct.test_ull { ptr @.str.49, i32 8, i64 -1 }, %struct.test_ull { ptr @.str.50, i32 16, i64 0 }, %struct.test_ull { ptr @.str.51, i32 16, i64 1 }, %struct.test_ull { ptr @.str.52, i32 16, i64 127 }, %struct.test_ull { ptr @.str.53, i32 16, i64 128 }, %struct.test_ull { ptr @.str.54, i32 16, i64 129 }, %struct.test_ull { ptr @.str.55, i32 16, i64 255 }, %struct.test_ull { ptr @.str.56, i32 16, i64 256 }, %struct.test_ull { ptr @.str.57, i32 16, i64 257 }, %struct.test_ull { ptr @.str.58, i32 16, i64 32767 }, %struct.test_ull { ptr @.str.59, i32 16, i64 32768 }, %struct.test_ull { ptr @.str.60, i32 16, i64 32769 }, %struct.test_ull { ptr @.str.61, i32 16, i64 65535 }, %struct.test_ull { ptr @.str.62, i32 16, i64 65536 }, %struct.test_ull { ptr @.str.63, i32 16, i64 65537 }, %struct.test_ull { ptr @.str.64, i32 16, i64 2147483647 }, %struct.test_ull { ptr @.str.65, i32 16, i64 2147483648 }, %struct.test_ull { ptr @.str.66, i32 16, i64 2147483649 }, %struct.test_ull { ptr @.str.67, i32 16, i64 4294967295 }, %struct.test_ull { ptr @.str.68, i32 16, i64 4294967296 }, %struct.test_ull { ptr @.str.69, i32 16, i64 4294967297 }, %struct.test_ull { ptr @.str.70, i32 16, i64 9223372036854775807 }, %struct.test_ull { ptr @.str.71, i32 16, i64 -9223372036854775808 }, %struct.test_ull { ptr @.str.72, i32 16, i64 -9223372036854775807 }, %struct.test_ull { ptr @.str.73, i32 16, i64 -2 }, %struct.test_ull { ptr @.str.74, i32 16, i64 -1 }, %struct.test_ull { ptr @.str.75, i32 0, i64 0 }], section ".init.rodata", align 8
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"127\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"129\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"255\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"256\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"257\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32767\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32768\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32769\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"65535\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"65536\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"65537\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2147483647\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2147483648\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2147483649\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"4294967295\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"4294967296\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"4294967297\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"9223372036854775807\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"9223372036854775808\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"9223372036854775809\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"18446744073709551614\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"18446744073709551615\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"00\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"01\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0177\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0200\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0201\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0377\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0400\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0401\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"077777\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0100000\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0100001\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0177777\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0200000\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0200001\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"017777777777\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"020000000000\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"020000000001\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"037777777777\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"040000000000\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"040000000001\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0777777777777777777777\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"01000000000000000000000\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"01000000000000000000001\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"01777777777777777777776\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"01777777777777777777777\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x0\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x1\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x7f\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x80\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x81\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0xff\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x100\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x101\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x7fff\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x8000\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x8001\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0xffff\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x10000\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x10001\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x7fffffff\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x80000000\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x80000001\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0xffffffff\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0x100000000\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0x100000001\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x7fffffffffffffff\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x8000000000000000\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x8000000000000001\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0xfffffffffffffffe\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0xffffffffffffffff\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/test-kstrtox.c\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected 0/%llu, got %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected %llu, got %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@test_kstrtoull_fail.test_ull_fail = internal unnamed_addr constant [69 x %struct.test_fail] [%struct.test_fail { ptr @.str.79, i32 0 }, %struct.test_fail { ptr @.str.79, i32 8 }, %struct.test_fail { ptr @.str.79, i32 10 }, %struct.test_fail { ptr @.str.79, i32 16 }, %struct.test_fail { ptr @.str.80, i32 0 }, %struct.test_fail { ptr @.str.80, i32 8 }, %struct.test_fail { ptr @.str.80, i32 10 }, %struct.test_fail { ptr @.str.80, i32 16 }, %struct.test_fail { ptr @.str.81, i32 0 }, %struct.test_fail { ptr @.str.81, i32 8 }, %struct.test_fail { ptr @.str.81, i32 10 }, %struct.test_fail { ptr @.str.81, i32 16 }, %struct.test_fail { ptr @.str.82, i32 0 }, %struct.test_fail { ptr @.str.82, i32 8 }, %struct.test_fail { ptr @.str.82, i32 10 }, %struct.test_fail { ptr @.str.82, i32 16 }, %struct.test_fail { ptr @.str.83, i32 0 }, %struct.test_fail { ptr @.str.83, i32 8 }, %struct.test_fail { ptr @.str.83, i32 10 }, %struct.test_fail { ptr @.str.83, i32 16 }, %struct.test_fail { ptr @.str.84, i32 0 }, %struct.test_fail { ptr @.str.84, i32 16 }, %struct.test_fail { ptr @.str.85, i32 0 }, %struct.test_fail { ptr @.str.85, i32 16 }, %struct.test_fail { ptr @.str.86, i32 0 }, %struct.test_fail { ptr @.str.87, i32 0 }, %struct.test_fail { ptr @.str.88, i32 0 }, %struct.test_fail { ptr @.str.89, i32 0 }, %struct.test_fail { ptr @.str.90, i32 0 }, %struct.test_fail { ptr @.str.91, i32 0 }, %struct.test_fail { ptr @.str.92, i32 0 }, %struct.test_fail { ptr @.str.93, i32 2 }, %struct.test_fail { ptr @.str.94, i32 8 }, %struct.test_fail { ptr @.str.92, i32 10 }, %struct.test_fail { ptr @.str.95, i32 10 }, %struct.test_fail { ptr @.str.96, i32 16 }, %struct.test_fail { ptr @.str.97, i32 16 }, %struct.test_fail { ptr @.str.98, i32 2 }, %struct.test_fail { ptr @.str.99, i32 8 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.101, i32 16 }, %struct.test_fail { ptr @.str.102, i32 0 }, %struct.test_fail { ptr @.str.102, i32 8 }, %struct.test_fail { ptr @.str.102, i32 10 }, %struct.test_fail { ptr @.str.102, i32 16 }, %struct.test_fail { ptr @.str.103, i32 0 }, %struct.test_fail { ptr @.str.103, i32 8 }, %struct.test_fail { ptr @.str.103, i32 10 }, %struct.test_fail { ptr @.str.103, i32 16 }, %struct.test_fail { ptr @.str.104, i32 0 }, %struct.test_fail { ptr @.str.104, i32 8 }, %struct.test_fail { ptr @.str.104, i32 10 }, %struct.test_fail { ptr @.str.104, i32 16 }, %struct.test_fail { ptr @.str.105, i32 0 }, %struct.test_fail { ptr @.str.105, i32 8 }, %struct.test_fail { ptr @.str.105, i32 10 }, %struct.test_fail { ptr @.str.105, i32 16 }, %struct.test_fail { ptr @.str.106, i32 0 }, %struct.test_fail { ptr @.str.106, i32 8 }, %struct.test_fail { ptr @.str.106, i32 10 }, %struct.test_fail { ptr @.str.106, i32 16 }, %struct.test_fail { ptr @.str.107, i32 0 }, %struct.test_fail { ptr @.str.107, i32 8 }, %struct.test_fail { ptr @.str.107, i32 10 }, %struct.test_fail { ptr @.str.107, i32 16 }, %struct.test_fail { ptr @.str.108, i32 0 }, %struct.test_fail { ptr @.str.108, i32 8 }, %struct.test_fail { ptr @.str.108, i32 10 }, %struct.test_fail { ptr @.str.108, i32 16 }], section ".init.rodata", align 4
@.str.79 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A0\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0x\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0X\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0 \00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1+\00", [29 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1-\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" 2\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x0z\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0z\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"g\00", [30 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"10000000000000000000000000000000000000000000000000000000000000000\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"2000000000000000000000\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"18446744073709551616\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"10000000000000000\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-0\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-1\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-+1\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0\0A0\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0\0A+\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0\0A-\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0\0A \00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"str '%s', base %u, expected -E, got %d/%llu\0A\00", [51 x i8] zeroinitializer }, align 32
@test_kstrtoll_ok.test_ll_ok = internal unnamed_addr constant [25 x %struct.test_ll] [%struct.test_ll { ptr @.str, i32 10, i64 0 }, %struct.test_ll { ptr @.str.1, i32 10, i64 1 }, %struct.test_ll { ptr @.str.2, i32 10, i64 127 }, %struct.test_ll { ptr @.str.3, i32 10, i64 128 }, %struct.test_ll { ptr @.str.4, i32 10, i64 129 }, %struct.test_ll { ptr @.str.5, i32 10, i64 255 }, %struct.test_ll { ptr @.str.6, i32 10, i64 256 }, %struct.test_ll { ptr @.str.7, i32 10, i64 257 }, %struct.test_ll { ptr @.str.8, i32 10, i64 32767 }, %struct.test_ll { ptr @.str.9, i32 10, i64 32768 }, %struct.test_ll { ptr @.str.10, i32 10, i64 32769 }, %struct.test_ll { ptr @.str.11, i32 10, i64 65535 }, %struct.test_ll { ptr @.str.12, i32 10, i64 65536 }, %struct.test_ll { ptr @.str.13, i32 10, i64 65537 }, %struct.test_ll { ptr @.str.14, i32 10, i64 2147483647 }, %struct.test_ll { ptr @.str.15, i32 10, i64 2147483648 }, %struct.test_ll { ptr @.str.16, i32 10, i64 2147483649 }, %struct.test_ll { ptr @.str.17, i32 10, i64 4294967295 }, %struct.test_ll { ptr @.str.18, i32 10, i64 4294967296 }, %struct.test_ll { ptr @.str.19, i32 10, i64 4294967297 }, %struct.test_ll { ptr @.str.20, i32 10, i64 9223372036854775807 }, %struct.test_ll { ptr @.str.102, i32 10, i64 0 }, %struct.test_ll { ptr @.str.103, i32 10, i64 -1 }, %struct.test_ll { ptr @.str.110, i32 10, i64 -2 }, %struct.test_ll { ptr @.str.111, i32 10, i64 -9223372036854775808 }], section ".init.rodata", align 8
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-2\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-9223372036854775808\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected 0/%lld, got %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected %lld, got %lld\0A\00", [52 x i8] zeroinitializer }, align 32
@test_kstrtoll_fail.test_ll_fail = internal unnamed_addr constant [11 x %struct.test_fail] [%struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.114, i32 10 }, %struct.test_fail { ptr @.str.115, i32 10 }, %struct.test_fail { ptr @.str.116, i32 10 }, %struct.test_fail { ptr @.str.104, i32 0 }, %struct.test_fail { ptr @.str.104, i32 8 }, %struct.test_fail { ptr @.str.104, i32 10 }, %struct.test_fail { ptr @.str.104, i32 16 }], section ".init.rodata", align 4
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-9223372036854775809\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"-18446744073709551614\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"-18446744073709551615\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"str '%s', base %u, expected -E, got %d/%lld\0A\00", [51 x i8] zeroinitializer }, align 32
@test_kstrtou64_ok.test_u64_ok = internal unnamed_addr constant [32 x %struct.test_u64] [%struct.test_u64 { ptr @.str, i32 10, i64 0 }, %struct.test_u64 { ptr @.str.1, i32 10, i64 1 }, %struct.test_u64 { ptr @.str.118, i32 10, i64 126 }, %struct.test_u64 { ptr @.str.2, i32 10, i64 127 }, %struct.test_u64 { ptr @.str.3, i32 10, i64 128 }, %struct.test_u64 { ptr @.str.4, i32 10, i64 129 }, %struct.test_u64 { ptr @.str.119, i32 10, i64 254 }, %struct.test_u64 { ptr @.str.5, i32 10, i64 255 }, %struct.test_u64 { ptr @.str.6, i32 10, i64 256 }, %struct.test_u64 { ptr @.str.7, i32 10, i64 257 }, %struct.test_u64 { ptr @.str.120, i32 10, i64 32766 }, %struct.test_u64 { ptr @.str.8, i32 10, i64 32767 }, %struct.test_u64 { ptr @.str.9, i32 10, i64 32768 }, %struct.test_u64 { ptr @.str.10, i32 10, i64 32769 }, %struct.test_u64 { ptr @.str.121, i32 10, i64 65534 }, %struct.test_u64 { ptr @.str.11, i32 10, i64 65535 }, %struct.test_u64 { ptr @.str.12, i32 10, i64 65536 }, %struct.test_u64 { ptr @.str.13, i32 10, i64 65537 }, %struct.test_u64 { ptr @.str.122, i32 10, i64 2147483646 }, %struct.test_u64 { ptr @.str.14, i32 10, i64 2147483647 }, %struct.test_u64 { ptr @.str.15, i32 10, i64 2147483648 }, %struct.test_u64 { ptr @.str.16, i32 10, i64 2147483649 }, %struct.test_u64 { ptr @.str.123, i32 10, i64 4294967294 }, %struct.test_u64 { ptr @.str.17, i32 10, i64 4294967295 }, %struct.test_u64 { ptr @.str.18, i32 10, i64 4294967296 }, %struct.test_u64 { ptr @.str.19, i32 10, i64 4294967297 }, %struct.test_u64 { ptr @.str.124, i32 10, i64 9223372036854775806 }, %struct.test_u64 { ptr @.str.20, i32 10, i64 9223372036854775807 }, %struct.test_u64 { ptr @.str.21, i32 10, i64 -9223372036854775808 }, %struct.test_u64 { ptr @.str.22, i32 10, i64 -9223372036854775807 }, %struct.test_u64 { ptr @.str.23, i32 10, i64 -2 }, %struct.test_u64 { ptr @.str.24, i32 10, i64 -1 }], section ".init.rodata", align 8
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"126\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"254\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32766\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"65534\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2147483646\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"4294967294\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"9223372036854775806\00", [44 x i8] zeroinitializer }, align 32
@test_kstrtou64_fail.test_u64_fail = internal unnamed_addr constant [4 x %struct.test_fail] [%struct.test_fail { ptr @.str.110, i32 10 }, %struct.test_fail { ptr @.str.103, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"18446744073709551617\00", [43 x i8] zeroinitializer }, align 32
@test_kstrtos64_ok.test_s64_ok = internal unnamed_addr constant [31 x %struct.test_s64] [%struct.test_s64 { ptr @.str.126, i32 10, i64 -128 }, %struct.test_s64 { ptr @.str.127, i32 10, i64 -127 }, %struct.test_s64 { ptr @.str.103, i32 10, i64 -1 }, %struct.test_s64 { ptr @.str, i32 10, i64 0 }, %struct.test_s64 { ptr @.str.1, i32 10, i64 1 }, %struct.test_s64 { ptr @.str.118, i32 10, i64 126 }, %struct.test_s64 { ptr @.str.2, i32 10, i64 127 }, %struct.test_s64 { ptr @.str.3, i32 10, i64 128 }, %struct.test_s64 { ptr @.str.4, i32 10, i64 129 }, %struct.test_s64 { ptr @.str.119, i32 10, i64 254 }, %struct.test_s64 { ptr @.str.5, i32 10, i64 255 }, %struct.test_s64 { ptr @.str.6, i32 10, i64 256 }, %struct.test_s64 { ptr @.str.7, i32 10, i64 257 }, %struct.test_s64 { ptr @.str.120, i32 10, i64 32766 }, %struct.test_s64 { ptr @.str.8, i32 10, i64 32767 }, %struct.test_s64 { ptr @.str.9, i32 10, i64 32768 }, %struct.test_s64 { ptr @.str.10, i32 10, i64 32769 }, %struct.test_s64 { ptr @.str.121, i32 10, i64 65534 }, %struct.test_s64 { ptr @.str.11, i32 10, i64 65535 }, %struct.test_s64 { ptr @.str.12, i32 10, i64 65536 }, %struct.test_s64 { ptr @.str.13, i32 10, i64 65537 }, %struct.test_s64 { ptr @.str.122, i32 10, i64 2147483646 }, %struct.test_s64 { ptr @.str.14, i32 10, i64 2147483647 }, %struct.test_s64 { ptr @.str.15, i32 10, i64 2147483648 }, %struct.test_s64 { ptr @.str.16, i32 10, i64 2147483649 }, %struct.test_s64 { ptr @.str.123, i32 10, i64 4294967294 }, %struct.test_s64 { ptr @.str.17, i32 10, i64 4294967295 }, %struct.test_s64 { ptr @.str.18, i32 10, i64 4294967296 }, %struct.test_s64 { ptr @.str.19, i32 10, i64 4294967297 }, %struct.test_s64 { ptr @.str.124, i32 10, i64 9223372036854775806 }, %struct.test_s64 { ptr @.str.20, i32 10, i64 9223372036854775807 }], section ".init.rodata", align 8
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-128\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-127\00", [27 x i8] zeroinitializer }, align 32
@test_kstrtos64_fail.test_s64_fail = internal unnamed_addr constant [6 x %struct.test_fail] [%struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@test_kstrtou32_ok.test_u32_ok = internal unnamed_addr constant [24 x %struct.test_u32] [%struct.test_u32 { ptr @.str, i32 10, i32 0 }, %struct.test_u32 { ptr @.str.1, i32 10, i32 1 }, %struct.test_u32 { ptr @.str.118, i32 10, i32 126 }, %struct.test_u32 { ptr @.str.2, i32 10, i32 127 }, %struct.test_u32 { ptr @.str.3, i32 10, i32 128 }, %struct.test_u32 { ptr @.str.4, i32 10, i32 129 }, %struct.test_u32 { ptr @.str.119, i32 10, i32 254 }, %struct.test_u32 { ptr @.str.5, i32 10, i32 255 }, %struct.test_u32 { ptr @.str.6, i32 10, i32 256 }, %struct.test_u32 { ptr @.str.7, i32 10, i32 257 }, %struct.test_u32 { ptr @.str.120, i32 10, i32 32766 }, %struct.test_u32 { ptr @.str.8, i32 10, i32 32767 }, %struct.test_u32 { ptr @.str.9, i32 10, i32 32768 }, %struct.test_u32 { ptr @.str.10, i32 10, i32 32769 }, %struct.test_u32 { ptr @.str.121, i32 10, i32 65534 }, %struct.test_u32 { ptr @.str.11, i32 10, i32 65535 }, %struct.test_u32 { ptr @.str.12, i32 10, i32 65536 }, %struct.test_u32 { ptr @.str.13, i32 10, i32 65537 }, %struct.test_u32 { ptr @.str.122, i32 10, i32 2147483646 }, %struct.test_u32 { ptr @.str.14, i32 10, i32 2147483647 }, %struct.test_u32 { ptr @.str.15, i32 10, i32 -2147483648 }, %struct.test_u32 { ptr @.str.16, i32 10, i32 -2147483647 }, %struct.test_u32 { ptr @.str.123, i32 10, i32 -2 }, %struct.test_u32 { ptr @.str.17, i32 10, i32 -1 }], section ".init.rodata", align 4
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"str '%s', base %u, expected 0/%u, got %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"str '%s', base %u, expected %u, got %u\0A\00", [56 x i8] zeroinitializer }, align 32
@test_kstrtou32_fail.test_u32_fail = internal unnamed_addr constant [12 x %struct.test_fail] [%struct.test_fail { ptr @.str.110, i32 10 }, %struct.test_fail { ptr @.str.103, i32 10 }, %struct.test_fail { ptr @.str.18, i32 10 }, %struct.test_fail { ptr @.str.19, i32 10 }, %struct.test_fail { ptr @.str.124, i32 10 }, %struct.test_fail { ptr @.str.20, i32 10 }, %struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"str '%s', base %u, expected -E, got %d/%u\0A\00", [53 x i8] zeroinitializer }, align 32
@test_kstrtos32_ok.test_s32_ok = internal unnamed_addr constant [23 x %struct.test_s32] [%struct.test_s32 { ptr @.str.126, i32 10, i32 -128 }, %struct.test_s32 { ptr @.str.127, i32 10, i32 -127 }, %struct.test_s32 { ptr @.str.103, i32 10, i32 -1 }, %struct.test_s32 { ptr @.str, i32 10, i32 0 }, %struct.test_s32 { ptr @.str.1, i32 10, i32 1 }, %struct.test_s32 { ptr @.str.118, i32 10, i32 126 }, %struct.test_s32 { ptr @.str.2, i32 10, i32 127 }, %struct.test_s32 { ptr @.str.3, i32 10, i32 128 }, %struct.test_s32 { ptr @.str.4, i32 10, i32 129 }, %struct.test_s32 { ptr @.str.119, i32 10, i32 254 }, %struct.test_s32 { ptr @.str.5, i32 10, i32 255 }, %struct.test_s32 { ptr @.str.6, i32 10, i32 256 }, %struct.test_s32 { ptr @.str.7, i32 10, i32 257 }, %struct.test_s32 { ptr @.str.120, i32 10, i32 32766 }, %struct.test_s32 { ptr @.str.8, i32 10, i32 32767 }, %struct.test_s32 { ptr @.str.9, i32 10, i32 32768 }, %struct.test_s32 { ptr @.str.10, i32 10, i32 32769 }, %struct.test_s32 { ptr @.str.121, i32 10, i32 65534 }, %struct.test_s32 { ptr @.str.11, i32 10, i32 65535 }, %struct.test_s32 { ptr @.str.12, i32 10, i32 65536 }, %struct.test_s32 { ptr @.str.13, i32 10, i32 65537 }, %struct.test_s32 { ptr @.str.122, i32 10, i32 2147483646 }, %struct.test_s32 { ptr @.str.14, i32 10, i32 2147483647 }], section ".init.rodata", align 4
@.str.131 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"str '%s', base %u, expected 0/%d, got %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"str '%s', base %u, expected %d, got %d\0A\00", [56 x i8] zeroinitializer }, align 32
@test_kstrtos32_fail.test_s32_fail = internal unnamed_addr constant [14 x %struct.test_fail] [%struct.test_fail { ptr @.str.15, i32 10 }, %struct.test_fail { ptr @.str.16, i32 10 }, %struct.test_fail { ptr @.str.123, i32 10 }, %struct.test_fail { ptr @.str.17, i32 10 }, %struct.test_fail { ptr @.str.18, i32 10 }, %struct.test_fail { ptr @.str.19, i32 10 }, %struct.test_fail { ptr @.str.124, i32 10 }, %struct.test_fail { ptr @.str.20, i32 10 }, %struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@.str.133 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"str '%s', base %u, expected -E, got %d/%d\0A\00", [53 x i8] zeroinitializer }, align 32
@test_kstrtou16_ok.test_u16_ok = internal unnamed_addr constant [16 x %struct.test_u16] [%struct.test_u16 { ptr @.str, i32 10, i16 0 }, %struct.test_u16 { ptr @.str.1, i32 10, i16 1 }, %struct.test_u16 { ptr @.str.118, i32 10, i16 126 }, %struct.test_u16 { ptr @.str.2, i32 10, i16 127 }, %struct.test_u16 { ptr @.str.3, i32 10, i16 128 }, %struct.test_u16 { ptr @.str.4, i32 10, i16 129 }, %struct.test_u16 { ptr @.str.119, i32 10, i16 254 }, %struct.test_u16 { ptr @.str.5, i32 10, i16 255 }, %struct.test_u16 { ptr @.str.6, i32 10, i16 256 }, %struct.test_u16 { ptr @.str.7, i32 10, i16 257 }, %struct.test_u16 { ptr @.str.120, i32 10, i16 32766 }, %struct.test_u16 { ptr @.str.8, i32 10, i16 32767 }, %struct.test_u16 { ptr @.str.9, i32 10, i16 -32768 }, %struct.test_u16 { ptr @.str.10, i32 10, i16 -32767 }, %struct.test_u16 { ptr @.str.121, i32 10, i16 -2 }, %struct.test_u16 { ptr @.str.11, i32 10, i16 -1 }], section ".init.rodata", align 4
@.str.134 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"str '%s', base %u, expected 0/%hu, got %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"str '%s', base %u, expected %hu, got %hu\0A\00", [54 x i8] zeroinitializer }, align 32
@test_kstrtou16_fail.test_u16_fail = internal unnamed_addr constant [20 x %struct.test_fail] [%struct.test_fail { ptr @.str.110, i32 10 }, %struct.test_fail { ptr @.str.103, i32 10 }, %struct.test_fail { ptr @.str.12, i32 10 }, %struct.test_fail { ptr @.str.13, i32 10 }, %struct.test_fail { ptr @.str.122, i32 10 }, %struct.test_fail { ptr @.str.14, i32 10 }, %struct.test_fail { ptr @.str.15, i32 10 }, %struct.test_fail { ptr @.str.16, i32 10 }, %struct.test_fail { ptr @.str.123, i32 10 }, %struct.test_fail { ptr @.str.17, i32 10 }, %struct.test_fail { ptr @.str.18, i32 10 }, %struct.test_fail { ptr @.str.19, i32 10 }, %struct.test_fail { ptr @.str.124, i32 10 }, %struct.test_fail { ptr @.str.20, i32 10 }, %struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@.str.136 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected -E, got %d/%hu\0A\00", [52 x i8] zeroinitializer }, align 32
@test_kstrtos16_ok.test_s16_ok = internal unnamed_addr constant [17 x %struct.test_s16] [%struct.test_s16 { ptr @.str.137, i32 10, i16 -130 }, %struct.test_s16 { ptr @.str.138, i32 10, i16 -129 }, %struct.test_s16 { ptr @.str.126, i32 10, i16 -128 }, %struct.test_s16 { ptr @.str.127, i32 10, i16 -127 }, %struct.test_s16 { ptr @.str.103, i32 10, i16 -1 }, %struct.test_s16 { ptr @.str, i32 10, i16 0 }, %struct.test_s16 { ptr @.str.1, i32 10, i16 1 }, %struct.test_s16 { ptr @.str.118, i32 10, i16 126 }, %struct.test_s16 { ptr @.str.2, i32 10, i16 127 }, %struct.test_s16 { ptr @.str.3, i32 10, i16 128 }, %struct.test_s16 { ptr @.str.4, i32 10, i16 129 }, %struct.test_s16 { ptr @.str.119, i32 10, i16 254 }, %struct.test_s16 { ptr @.str.5, i32 10, i16 255 }, %struct.test_s16 { ptr @.str.6, i32 10, i16 256 }, %struct.test_s16 { ptr @.str.7, i32 10, i16 257 }, %struct.test_s16 { ptr @.str.120, i32 10, i16 32766 }, %struct.test_s16 { ptr @.str.8, i32 10, i16 32767 }], section ".init.rodata", align 4
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-130\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-129\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"str '%s', base %u, expected 0/%hd, got %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"str '%s', base %u, expected %hd, got %hd\0A\00", [54 x i8] zeroinitializer }, align 32
@test_kstrtos16_fail.test_s16_fail = internal unnamed_addr constant [22 x %struct.test_fail] [%struct.test_fail { ptr @.str.9, i32 10 }, %struct.test_fail { ptr @.str.10, i32 10 }, %struct.test_fail { ptr @.str.121, i32 10 }, %struct.test_fail { ptr @.str.11, i32 10 }, %struct.test_fail { ptr @.str.12, i32 10 }, %struct.test_fail { ptr @.str.13, i32 10 }, %struct.test_fail { ptr @.str.122, i32 10 }, %struct.test_fail { ptr @.str.14, i32 10 }, %struct.test_fail { ptr @.str.15, i32 10 }, %struct.test_fail { ptr @.str.16, i32 10 }, %struct.test_fail { ptr @.str.123, i32 10 }, %struct.test_fail { ptr @.str.17, i32 10 }, %struct.test_fail { ptr @.str.18, i32 10 }, %struct.test_fail { ptr @.str.19, i32 10 }, %struct.test_fail { ptr @.str.124, i32 10 }, %struct.test_fail { ptr @.str.20, i32 10 }, %struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@.str.141 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected -E, got %d/%hd\0A\00", [52 x i8] zeroinitializer }, align 32
@test_kstrtou8_ok.test_u8_ok = internal unnamed_addr constant [8 x %struct.test_u8] [%struct.test_u8 { ptr @.str, i32 10, i8 0 }, %struct.test_u8 { ptr @.str.1, i32 10, i8 1 }, %struct.test_u8 { ptr @.str.118, i32 10, i8 126 }, %struct.test_u8 { ptr @.str.2, i32 10, i8 127 }, %struct.test_u8 { ptr @.str.3, i32 10, i8 -128 }, %struct.test_u8 { ptr @.str.4, i32 10, i8 -127 }, %struct.test_u8 { ptr @.str.119, i32 10, i8 -2 }, %struct.test_u8 { ptr @.str.5, i32 10, i8 -1 }], section ".init.rodata", align 4
@.str.142 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected 0/%hhu, got %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected %hhu, got %hhu\0A\00", [52 x i8] zeroinitializer }, align 32
@test_kstrtou8_fail.test_u8_fail = internal unnamed_addr constant [28 x %struct.test_fail] [%struct.test_fail { ptr @.str.110, i32 10 }, %struct.test_fail { ptr @.str.103, i32 10 }, %struct.test_fail { ptr @.str.6, i32 10 }, %struct.test_fail { ptr @.str.7, i32 10 }, %struct.test_fail { ptr @.str.120, i32 10 }, %struct.test_fail { ptr @.str.8, i32 10 }, %struct.test_fail { ptr @.str.9, i32 10 }, %struct.test_fail { ptr @.str.10, i32 10 }, %struct.test_fail { ptr @.str.121, i32 10 }, %struct.test_fail { ptr @.str.11, i32 10 }, %struct.test_fail { ptr @.str.12, i32 10 }, %struct.test_fail { ptr @.str.13, i32 10 }, %struct.test_fail { ptr @.str.122, i32 10 }, %struct.test_fail { ptr @.str.14, i32 10 }, %struct.test_fail { ptr @.str.15, i32 10 }, %struct.test_fail { ptr @.str.16, i32 10 }, %struct.test_fail { ptr @.str.123, i32 10 }, %struct.test_fail { ptr @.str.17, i32 10 }, %struct.test_fail { ptr @.str.18, i32 10 }, %struct.test_fail { ptr @.str.19, i32 10 }, %struct.test_fail { ptr @.str.124, i32 10 }, %struct.test_fail { ptr @.str.20, i32 10 }, %struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@.str.144 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"str '%s', base %u, expected -E, got %d/%hhu\0A\00", [51 x i8] zeroinitializer }, align 32
@test_kstrtos8_ok.test_s8_ok = internal unnamed_addr constant [7 x %struct.test_s8] [%struct.test_s8 { ptr @.str.126, i32 10, i8 -128 }, %struct.test_s8 { ptr @.str.127, i32 10, i8 -127 }, %struct.test_s8 { ptr @.str.103, i32 10, i8 -1 }, %struct.test_s8 { ptr @.str, i32 10, i8 0 }, %struct.test_s8 { ptr @.str.1, i32 10, i8 1 }, %struct.test_s8 { ptr @.str.118, i32 10, i8 126 }, %struct.test_s8 { ptr @.str.2, i32 10, i8 127 }], section ".init.rodata", align 4
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected 0/%hhd, got %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"str '%s', base %u, expected %hhd, got %hhd\0A\00", [52 x i8] zeroinitializer }, align 32
@test_kstrtos8_fail.test_s8_fail = internal unnamed_addr constant [32 x %struct.test_fail] [%struct.test_fail { ptr @.str.137, i32 10 }, %struct.test_fail { ptr @.str.138, i32 10 }, %struct.test_fail { ptr @.str.3, i32 10 }, %struct.test_fail { ptr @.str.4, i32 10 }, %struct.test_fail { ptr @.str.119, i32 10 }, %struct.test_fail { ptr @.str.5, i32 10 }, %struct.test_fail { ptr @.str.6, i32 10 }, %struct.test_fail { ptr @.str.7, i32 10 }, %struct.test_fail { ptr @.str.120, i32 10 }, %struct.test_fail { ptr @.str.8, i32 10 }, %struct.test_fail { ptr @.str.9, i32 10 }, %struct.test_fail { ptr @.str.10, i32 10 }, %struct.test_fail { ptr @.str.121, i32 10 }, %struct.test_fail { ptr @.str.11, i32 10 }, %struct.test_fail { ptr @.str.12, i32 10 }, %struct.test_fail { ptr @.str.13, i32 10 }, %struct.test_fail { ptr @.str.122, i32 10 }, %struct.test_fail { ptr @.str.14, i32 10 }, %struct.test_fail { ptr @.str.15, i32 10 }, %struct.test_fail { ptr @.str.16, i32 10 }, %struct.test_fail { ptr @.str.123, i32 10 }, %struct.test_fail { ptr @.str.17, i32 10 }, %struct.test_fail { ptr @.str.18, i32 10 }, %struct.test_fail { ptr @.str.19, i32 10 }, %struct.test_fail { ptr @.str.124, i32 10 }, %struct.test_fail { ptr @.str.20, i32 10 }, %struct.test_fail { ptr @.str.21, i32 10 }, %struct.test_fail { ptr @.str.22, i32 10 }, %struct.test_fail { ptr @.str.23, i32 10 }, %struct.test_fail { ptr @.str.24, i32 10 }, %struct.test_fail { ptr @.str.100, i32 10 }, %struct.test_fail { ptr @.str.125, i32 10 }], section ".init.rodata", align 4
@.str.147 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"str '%s', base %u, expected -E, got %d/%hhd\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 72, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 73, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 74, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 75, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 76, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 77, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 78, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 79, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 80, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 81, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 82, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 83, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 84, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 85, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 86, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 87, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 88, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 89, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 90, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 91, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 92, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 93, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 94, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 95, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 96, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 98, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 99, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 100, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 101, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 102, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 103, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 104, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 105, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 106, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 107, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 108, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 109, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 110, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 111, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 112, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 113, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 114, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 115, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 116, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 117, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 118, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 119, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 120, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 121, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 122, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 124, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 125, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 126, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 127, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 128, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 129, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 130, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 131, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 132, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 133, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 134, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 135, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 136, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 137, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 138, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 139, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 140, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 141, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 142, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 143, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 144, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 145, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 146, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 147, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 148, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 150, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 152, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 158, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 162, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 166, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 170, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 174, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 178, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 180, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 182, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 183, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 184, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 185, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 187, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 188, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 189, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 191, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 192, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 194, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 195, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 196, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 198, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 199, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 200, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 201, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 203, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 207, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 212, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 217, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 221, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 225, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 229, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 234, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 265, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 266, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 268, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 278, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 279, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 280, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 287, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 296, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 300, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 304, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 308, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 312, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 316, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 320, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 336, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 345, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 346, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 422, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 441, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 472, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 493, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 517, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 544, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 551, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 552, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 569, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 598, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 614, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 649, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 664, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.590 = private constant [22 x i8] c"../lib/test-kstrtox.c\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 703, i32 2 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__initcall__kmod_test_kstrtox__106_734_test_kstrtox_init6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_kstrtox_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @test_kstrtoull_ok() #5
  tail call fastcc void @test_kstrtoull_fail() #5
  tail call fastcc void @test_kstrtoll_ok() #5
  tail call fastcc void @test_kstrtoll_fail() #5
  tail call fastcc void @test_kstrtou64_ok() #5
  tail call fastcc void @test_kstrtou64_fail() #5
  tail call fastcc void @test_kstrtos64_ok() #5
  tail call fastcc void @test_kstrtos64_fail() #5
  tail call fastcc void @test_kstrtou32_ok() #5
  tail call fastcc void @test_kstrtou32_fail() #5
  tail call fastcc void @test_kstrtos32_ok() #5
  tail call fastcc void @test_kstrtos32_fail() #5
  tail call fastcc void @test_kstrtou16_ok() #5
  tail call fastcc void @test_kstrtou16_fail() #5
  tail call fastcc void @test_kstrtos16_ok() #5
  tail call fastcc void @test_kstrtos16_fail() #5
  tail call fastcc void @test_kstrtou8_ok() #5
  tail call fastcc void @test_kstrtou8_fail() #5
  tail call fastcc void @test_kstrtos8_ok() #5
  tail call fastcc void @test_kstrtos8_fail() #5
  ret i32 -22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtoull_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [76 x %struct.test_ull], ptr @test_kstrtoull_ok.test_ull_ok, i32 0, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %res, align 8, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 8
  %base = getelementptr [76 x %struct.test_ull], ptr @test_kstrtoull_ok.test_ull_ok, i32 0, i32 %i.069, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtoull(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [76 x %struct.test_ull], ptr @test_kstrtoull_ok.test_ull_ok, i32 0, i32 %i.069, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %expected_res, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %2, i32 noundef %4, i64 noundef %6, i32 noundef %call) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %res, align 8
  %expected_res20 = getelementptr [76 x %struct.test_ull], ptr @test_kstrtoull_ok.test_ull_ok, i32 0, i32 %i.069, i32 2
  %9 = ptrtoint ptr %expected_res20 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expected_res20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp21.not = icmp eq i64 %8, %10
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %do.end35

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %2, i32 noundef %4, i64 noundef %10, i64 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 76
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtoull_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [69 x %struct.test_fail], ptr @test_kstrtoull_fail.test_ull_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tmp, align 8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [69 x %struct.test_fail], ptr @test_kstrtoull_fail.test_ull_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtoull(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.109, ptr noundef %2, i32 noundef %4, i32 noundef %call, i64 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 69
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtoll_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [25 x %struct.test_ll], ptr @test_kstrtoll_ok.test_ll_ok, i32 0, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %res, align 8, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 8
  %base = getelementptr [25 x %struct.test_ll], ptr @test_kstrtoll_ok.test_ll_ok, i32 0, i32 %i.069, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtoll(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [25 x %struct.test_ll], ptr @test_kstrtoll_ok.test_ll_ok, i32 0, i32 %i.069, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %expected_res, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 268, i32 noundef 9, ptr noundef nonnull @.str.112, ptr noundef %2, i32 noundef %4, i64 noundef %6, i32 noundef %call) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %res, align 8
  %expected_res20 = getelementptr [25 x %struct.test_ll], ptr @test_kstrtoll_ok.test_ll_ok, i32 0, i32 %i.069, i32 2
  %9 = ptrtoint ptr %expected_res20 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expected_res20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp21.not = icmp eq i64 %8, %10
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %do.end35

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 268, i32 noundef 9, ptr noundef nonnull @.str.113, ptr noundef %2, i32 noundef %4, i64 noundef %10, i64 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtoll_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x %struct.test_fail], ptr @test_kstrtoll_fail.test_ll_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tmp, align 8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [11 x %struct.test_fail], ptr @test_kstrtoll_fail.test_ll_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtoll(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.117, ptr noundef %2, i32 noundef %4, i32 noundef %call, i64 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou64_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.test_u64], ptr @test_kstrtou64_ok.test_u64_ok, i32 0, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %res, align 8, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 8
  %base = getelementptr [32 x %struct.test_u64], ptr @test_kstrtou64_ok.test_u64_ok, i32 0, i32 %i.069, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtoull(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [32 x %struct.test_u64], ptr @test_kstrtou64_ok.test_u64_ok, i32 0, i32 %i.069, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %expected_res, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %2, i32 noundef %4, i64 noundef %6, i32 noundef %call.i) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %res, align 8
  %expected_res20 = getelementptr [32 x %struct.test_u64], ptr @test_kstrtou64_ok.test_u64_ok, i32 0, i32 %i.069, i32 2
  %9 = ptrtoint ptr %expected_res20 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expected_res20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp21.not = icmp eq i64 %8, %10
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %do.end35

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %2, i32 noundef %4, i64 noundef %10, i64 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou64_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.test_fail], ptr @test_kstrtou64_fail.test_u64_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tmp, align 8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [4 x %struct.test_fail], ptr @test_kstrtou64_fail.test_u64_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtoull(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 338, i32 noundef 9, ptr noundef nonnull @.str.109, ptr noundef %2, i32 noundef %4, i32 noundef %call.i, i64 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos64_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [31 x %struct.test_s64], ptr @test_kstrtos64_ok.test_s64_ok, i32 0, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %res, align 8, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 8
  %base = getelementptr [31 x %struct.test_s64], ptr @test_kstrtos64_ok.test_s64_ok, i32 0, i32 %i.069, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtoll(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [31 x %struct.test_s64], ptr @test_kstrtos64_ok.test_s64_ok, i32 0, i32 %i.069, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %expected_res, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 377, i32 noundef 9, ptr noundef nonnull @.str.112, ptr noundef %2, i32 noundef %4, i64 noundef %6, i32 noundef %call.i) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %res, align 8
  %expected_res20 = getelementptr [31 x %struct.test_s64], ptr @test_kstrtos64_ok.test_s64_ok, i32 0, i32 %i.069, i32 2
  %9 = ptrtoint ptr %expected_res20 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expected_res20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp21.not = icmp eq i64 %8, %10
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %do.end35

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 377, i32 noundef 9, ptr noundef nonnull @.str.113, ptr noundef %2, i32 noundef %4, i64 noundef %10, i64 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos64_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.test_fail], ptr @test_kstrtos64_fail.test_s64_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tmp, align 8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [6 x %struct.test_fail], ptr @test_kstrtos64_fail.test_s64_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtoll(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 390, i32 noundef 9, ptr noundef nonnull @.str.117, ptr noundef %2, i32 noundef %4, i32 noundef %call.i, i64 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou32_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [24 x %struct.test_u32], ptr @test_kstrtou32_ok.test_u32_ok, i32 0, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [24 x %struct.test_u32], ptr @test_kstrtou32_ok.test_u32_ok, i32 0, i32 %i.069, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtouint(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [24 x %struct.test_u32], ptr @test_kstrtou32_ok.test_u32_ok, i32 0, i32 %i.069, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %expected_res, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 422, i32 noundef 9, ptr noundef nonnull @.str.128, ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %call.i) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 4
  %expected_res20 = getelementptr [24 x %struct.test_u32], ptr @test_kstrtou32_ok.test_u32_ok, i32 0, i32 %i.069, i32 2
  %9 = ptrtoint ptr %expected_res20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expected_res20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp21.not = icmp eq i32 %8, %10
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %do.end35

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 422, i32 noundef 9, ptr noundef nonnull @.str.129, ptr noundef %2, i32 noundef %4, i32 noundef %10, i32 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou32_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.test_fail], ptr @test_kstrtou32_fail.test_u32_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [12 x %struct.test_fail], ptr @test_kstrtou32_fail.test_u32_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtouint(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 441, i32 noundef 9, ptr noundef nonnull @.str.130, ptr noundef %2, i32 noundef %4, i32 noundef %call.i, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos32_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [23 x %struct.test_s32], ptr @test_kstrtos32_ok.test_s32_ok, i32 0, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [23 x %struct.test_s32], ptr @test_kstrtos32_ok.test_s32_ok, i32 0, i32 %i.069, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtoint(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [23 x %struct.test_s32], ptr @test_kstrtos32_ok.test_s32_ok, i32 0, i32 %i.069, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %expected_res, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 472, i32 noundef 9, ptr noundef nonnull @.str.131, ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %call.i) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 4
  %expected_res20 = getelementptr [23 x %struct.test_s32], ptr @test_kstrtos32_ok.test_s32_ok, i32 0, i32 %i.069, i32 2
  %9 = ptrtoint ptr %expected_res20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expected_res20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp21.not = icmp eq i32 %8, %10
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %do.end35

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 472, i32 noundef 9, ptr noundef nonnull @.str.132, ptr noundef %2, i32 noundef %4, i32 noundef %10, i32 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos32_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.test_fail], ptr @test_kstrtos32_fail.test_s32_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [14 x %struct.test_fail], ptr @test_kstrtos32_fail.test_s32_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call.i = call i32 @kstrtoint(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 493, i32 noundef 9, ptr noundef nonnull @.str.133, ptr noundef %2, i32 noundef %4, i32 noundef %call.i, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou16_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.test_u16], ptr @test_kstrtou16_ok.test_u16_ok, i32 0, i32 %i.073
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %res, align 2, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [16 x %struct.test_u16], ptr @test_kstrtou16_ok.test_u16_ok, i32 0, i32 %i.073, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtou16(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [16 x %struct.test_u16], ptr @test_kstrtou16_ok.test_u16_ok, i32 0, i32 %i.073, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %expected_res, align 4
  %conv = zext i16 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 517, i32 noundef 9, ptr noundef nonnull @.str.134, ptr noundef %2, i32 noundef %4, i32 noundef %conv, i32 noundef %call) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %res, align 2
  %expected_res21 = getelementptr [16 x %struct.test_u16], ptr @test_kstrtou16_ok.test_u16_ok, i32 0, i32 %i.073, i32 2
  %9 = ptrtoint ptr %expected_res21 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %expected_res21, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp23.not = icmp eq i16 %8, %10
  br i1 %cmp23.not, label %if.end19.cleanup_crit_edge, label %do.end38

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end38:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  %conv22 = zext i16 %10 to i32
  %conv20 = zext i16 %8 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 517, i32 noundef 9, ptr noundef nonnull @.str.135, ptr noundef %2, i32 noundef %4, i32 noundef %conv22, i32 noundef %conv20) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou16_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [20 x %struct.test_fail], ptr @test_kstrtou16_fail.test_u16_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tmp, align 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [20 x %struct.test_fail], ptr @test_kstrtou16_fail.test_u16_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtou16(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tmp, align 2
  %conv = zext i16 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 544, i32 noundef 9, ptr noundef nonnull @.str.136, ptr noundef %2, i32 noundef %4, i32 noundef %call, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos16_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.test_s16], ptr @test_kstrtos16_ok.test_s16_ok, i32 0, i32 %i.073
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %res, align 2, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [17 x %struct.test_s16], ptr @test_kstrtos16_ok.test_s16_ok, i32 0, i32 %i.073, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtos16(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [17 x %struct.test_s16], ptr @test_kstrtos16_ok.test_s16_ok, i32 0, i32 %i.073, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %expected_res, align 4
  %conv = sext i16 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 569, i32 noundef 9, ptr noundef nonnull @.str.139, ptr noundef %2, i32 noundef %4, i32 noundef %conv, i32 noundef %call) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %res, align 2
  %expected_res21 = getelementptr [17 x %struct.test_s16], ptr @test_kstrtos16_ok.test_s16_ok, i32 0, i32 %i.073, i32 2
  %9 = ptrtoint ptr %expected_res21 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %expected_res21, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp23.not = icmp eq i16 %8, %10
  br i1 %cmp23.not, label %if.end19.cleanup_crit_edge, label %do.end38

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end38:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  %conv22 = sext i16 %10 to i32
  %conv20 = sext i16 %8 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 569, i32 noundef 9, ptr noundef nonnull @.str.140, ptr noundef %2, i32 noundef %4, i32 noundef %conv22, i32 noundef %conv20) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos16_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.test_fail], ptr @test_kstrtos16_fail.test_s16_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tmp, align 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [22 x %struct.test_fail], ptr @test_kstrtos16_fail.test_s16_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtos16(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tmp, align 2
  %conv = sext i16 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 598, i32 noundef 9, ptr noundef nonnull @.str.141, ptr noundef %2, i32 noundef %4, i32 noundef %call, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou8_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.test_u8], ptr @test_kstrtou8_ok.test_u8_ok, i32 0, i32 %i.073
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %res, align 1, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [8 x %struct.test_u8], ptr @test_kstrtou8_ok.test_u8_ok, i32 0, i32 %i.073, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtou8(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [8 x %struct.test_u8], ptr @test_kstrtou8_ok.test_u8_ok, i32 0, i32 %i.073, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %expected_res, align 4
  %conv = zext i8 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 614, i32 noundef 9, ptr noundef nonnull @.str.142, ptr noundef %2, i32 noundef %4, i32 noundef %conv, i32 noundef %call) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %res, align 1
  %expected_res21 = getelementptr [8 x %struct.test_u8], ptr @test_kstrtou8_ok.test_u8_ok, i32 0, i32 %i.073, i32 2
  %9 = ptrtoint ptr %expected_res21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %expected_res21, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp23.not = icmp eq i8 %8, %10
  br i1 %cmp23.not, label %if.end19.cleanup_crit_edge, label %do.end38

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end38:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  %conv22 = zext i8 %10 to i32
  %conv20 = zext i8 %8 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 614, i32 noundef 9, ptr noundef nonnull @.str.143, ptr noundef %2, i32 noundef %4, i32 noundef %conv22, i32 noundef %conv20) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtou8_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [28 x %struct.test_fail], ptr @test_kstrtou8_fail.test_u8_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmp, align 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [28 x %struct.test_fail], ptr @test_kstrtou8_fail.test_u8_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtou8(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp, align 1
  %conv = zext i8 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 649, i32 noundef 9, ptr noundef nonnull @.str.144, ptr noundef %2, i32 noundef %4, i32 noundef %call, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos8_ok() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.test_s8], ptr @test_kstrtos8_ok.test_s8_ok, i32 0, i32 %i.073
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %res, align 1, !annotation !340
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [7 x %struct.test_s8], ptr @test_kstrtos8_ok.test_s8_ok, i32 0, i32 %i.073, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtos8(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %expected_res = getelementptr [7 x %struct.test_s8], ptr @test_kstrtos8_ok.test_s8_ok, i32 0, i32 %i.073, i32 2
  %5 = ptrtoint ptr %expected_res to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %expected_res, align 4
  %conv = sext i8 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 664, i32 noundef 9, ptr noundef nonnull @.str.145, ptr noundef %2, i32 noundef %4, i32 noundef %conv, i32 noundef %call) #6
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %res, align 1
  %expected_res21 = getelementptr [7 x %struct.test_s8], ptr @test_kstrtos8_ok.test_s8_ok, i32 0, i32 %i.073, i32 2
  %9 = ptrtoint ptr %expected_res21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %expected_res21, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp23.not = icmp eq i8 %8, %10
  br i1 %cmp23.not, label %if.end19.cleanup_crit_edge, label %do.end38

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end38:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  %conv22 = sext i8 %10 to i32
  %conv20 = sext i8 %8 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 664, i32 noundef 9, ptr noundef nonnull @.str.146, ptr noundef %2, i32 noundef %4, i32 noundef %conv22, i32 noundef %conv20) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end19.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res) #6
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_kstrtos8_fail() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.test_fail], ptr @test_kstrtos8_fail.test_s8_fail, i32 0, i32 %i.030
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmp, align 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr [32 x %struct.test_fail], ptr @test_kstrtos8_fail.test_s8_fail, i32 0, i32 %i.030, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %call = call i32 @kstrtos8(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %do.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp, align 1
  %conv = sext i8 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 703, i32 noundef 9, ptr noundef nonnull @.str.147, ptr noundef %2, i32 noundef %4, i32 noundef %call, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { cold }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !279, !281, !283, !285, !287, !288, !290, !292, !294, !296, !297, !299, !301, !303, !305, !307, !309, !310, !312, !314, !316, !318, !319, !321, !323, !325, !327, !328, !330}
!llvm.module.flags = !{!332, !333, !334, !335, !336, !337, !338}
!llvm.ident = !{!339}

!0 = !{ptr @__initcall__kmod_test_kstrtox__106_734_test_kstrtox_init6, !1, !"__initcall__kmod_test_kstrtox__106_734_test_kstrtox_init6", i1 false, i1 false}
!1 = !{!"../lib/test-kstrtox.c", i32 734, i32 1}
!2 = !{ptr @__UNIQUE_ID_file107, !3, !"__UNIQUE_ID_file107", i1 false, i1 false}
!3 = !{!"../lib/test-kstrtox.c", i32 735, i32 1}
!4 = !{ptr @__UNIQUE_ID_license108, !3, !"__UNIQUE_ID_license108", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../lib/test-kstrtox.c", i32 72, i32 4}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/test-kstrtox.c", i32 73, i32 4}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/test-kstrtox.c", i32 74, i32 4}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/test-kstrtox.c", i32 75, i32 4}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test-kstrtox.c", i32 76, i32 4}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test-kstrtox.c", i32 77, i32 4}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test-kstrtox.c", i32 78, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test-kstrtox.c", i32 79, i32 4}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/test-kstrtox.c", i32 80, i32 4}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/test-kstrtox.c", i32 81, i32 4}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/test-kstrtox.c", i32 82, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test-kstrtox.c", i32 83, i32 4}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/test-kstrtox.c", i32 84, i32 4}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test-kstrtox.c", i32 85, i32 4}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/test-kstrtox.c", i32 86, i32 4}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/test-kstrtox.c", i32 87, i32 4}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/test-kstrtox.c", i32 88, i32 4}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/test-kstrtox.c", i32 89, i32 4}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../lib/test-kstrtox.c", i32 90, i32 4}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/test-kstrtox.c", i32 91, i32 4}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/test-kstrtox.c", i32 92, i32 4}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/test-kstrtox.c", i32 93, i32 4}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../lib/test-kstrtox.c", i32 94, i32 4}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test-kstrtox.c", i32 95, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/test-kstrtox.c", i32 96, i32 4}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/test-kstrtox.c", i32 98, i32 4}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test-kstrtox.c", i32 99, i32 4}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test-kstrtox.c", i32 100, i32 4}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/test-kstrtox.c", i32 101, i32 4}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test-kstrtox.c", i32 102, i32 4}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/test-kstrtox.c", i32 103, i32 4}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../lib/test-kstrtox.c", i32 104, i32 4}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../lib/test-kstrtox.c", i32 105, i32 4}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test-kstrtox.c", i32 106, i32 4}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/test-kstrtox.c", i32 107, i32 4}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/test-kstrtox.c", i32 108, i32 4}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test-kstrtox.c", i32 109, i32 4}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../lib/test-kstrtox.c", i32 110, i32 4}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../lib/test-kstrtox.c", i32 111, i32 4}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/test-kstrtox.c", i32 112, i32 4}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/test-kstrtox.c", i32 113, i32 4}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/test-kstrtox.c", i32 114, i32 4}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/test-kstrtox.c", i32 115, i32 4}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/test-kstrtox.c", i32 116, i32 4}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/test-kstrtox.c", i32 117, i32 4}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/test-kstrtox.c", i32 118, i32 4}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../lib/test-kstrtox.c", i32 119, i32 4}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../lib/test-kstrtox.c", i32 120, i32 4}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../lib/test-kstrtox.c", i32 121, i32 4}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/test-kstrtox.c", i32 122, i32 4}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../lib/test-kstrtox.c", i32 124, i32 4}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../lib/test-kstrtox.c", i32 125, i32 4}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/test-kstrtox.c", i32 126, i32 4}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../lib/test-kstrtox.c", i32 127, i32 4}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/test-kstrtox.c", i32 128, i32 4}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../lib/test-kstrtox.c", i32 129, i32 4}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../lib/test-kstrtox.c", i32 130, i32 4}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../lib/test-kstrtox.c", i32 131, i32 4}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/test-kstrtox.c", i32 132, i32 4}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/test-kstrtox.c", i32 133, i32 4}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/test-kstrtox.c", i32 134, i32 4}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../lib/test-kstrtox.c", i32 135, i32 4}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/test-kstrtox.c", i32 136, i32 4}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../lib/test-kstrtox.c", i32 137, i32 4}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/test-kstrtox.c", i32 138, i32 4}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/test-kstrtox.c", i32 139, i32 4}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../lib/test-kstrtox.c", i32 140, i32 4}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../lib/test-kstrtox.c", i32 141, i32 4}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../lib/test-kstrtox.c", i32 142, i32 4}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../lib/test-kstrtox.c", i32 143, i32 4}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../lib/test-kstrtox.c", i32 144, i32 4}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../lib/test-kstrtox.c", i32 145, i32 4}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../lib/test-kstrtox.c", i32 146, i32 4}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../lib/test-kstrtox.c", i32 147, i32 4}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../lib/test-kstrtox.c", i32 148, i32 4}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../lib/test-kstrtox.c", i32 150, i32 4}
!157 = !{ptr @test_kstrtoull_ok.test_ull_ok, !158, !"test_ull_ok", i1 false, i1 false}
!158 = !{!"../lib/test-kstrtox.c", i32 71, i32 9}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../lib/test-kstrtox.c", i32 152, i32 2}
!161 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../lib/test-kstrtox.c", i32 158, i32 4}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../lib/test-kstrtox.c", i32 162, i32 4}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../lib/test-kstrtox.c", i32 166, i32 4}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../lib/test-kstrtox.c", i32 170, i32 4}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../lib/test-kstrtox.c", i32 174, i32 4}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../lib/test-kstrtox.c", i32 178, i32 4}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../lib/test-kstrtox.c", i32 180, i32 4}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../lib/test-kstrtox.c", i32 182, i32 4}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../lib/test-kstrtox.c", i32 183, i32 4}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../lib/test-kstrtox.c", i32 184, i32 4}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../lib/test-kstrtox.c", i32 185, i32 4}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../lib/test-kstrtox.c", i32 187, i32 4}
!187 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../lib/test-kstrtox.c", i32 188, i32 4}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../lib/test-kstrtox.c", i32 189, i32 4}
!191 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../lib/test-kstrtox.c", i32 191, i32 4}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../lib/test-kstrtox.c", i32 192, i32 4}
!195 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../lib/test-kstrtox.c", i32 194, i32 4}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../lib/test-kstrtox.c", i32 195, i32 4}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../lib/test-kstrtox.c", i32 196, i32 4}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../lib/test-kstrtox.c", i32 198, i32 4}
!203 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../lib/test-kstrtox.c", i32 199, i32 4}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../lib/test-kstrtox.c", i32 200, i32 4}
!207 = !{ptr @.str.101, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../lib/test-kstrtox.c", i32 201, i32 4}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../lib/test-kstrtox.c", i32 203, i32 4}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../lib/test-kstrtox.c", i32 207, i32 4}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../lib/test-kstrtox.c", i32 212, i32 4}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../lib/test-kstrtox.c", i32 217, i32 4}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../lib/test-kstrtox.c", i32 221, i32 4}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../lib/test-kstrtox.c", i32 225, i32 4}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../lib/test-kstrtox.c", i32 229, i32 4}
!223 = !{ptr @test_kstrtoull_fail.test_ull_fail, !224, !"test_ull_fail", i1 false, i1 false}
!224 = !{!"../lib/test-kstrtox.c", i32 157, i32 9}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../lib/test-kstrtox.c", i32 234, i32 2}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../lib/test-kstrtox.c", i32 265, i32 4}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../lib/test-kstrtox.c", i32 266, i32 4}
!231 = !{ptr @test_kstrtoll_ok.test_ll_ok, !232, !"test_ll_ok", i1 false, i1 false}
!232 = !{!"../lib/test-kstrtox.c", i32 240, i32 9}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../lib/test-kstrtox.c", i32 268, i32 2}
!235 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../lib/test-kstrtox.c", i32 278, i32 4}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../lib/test-kstrtox.c", i32 279, i32 4}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../lib/test-kstrtox.c", i32 280, i32 4}
!242 = !{ptr @test_kstrtoll_fail.test_ll_fail, !243, !"test_ll_fail", i1 false, i1 false}
!243 = !{!"../lib/test-kstrtox.c", i32 273, i32 9}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../lib/test-kstrtox.c", i32 287, i32 2}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../lib/test-kstrtox.c", i32 296, i32 4}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../lib/test-kstrtox.c", i32 300, i32 4}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../lib/test-kstrtox.c", i32 304, i32 4}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../lib/test-kstrtox.c", i32 308, i32 4}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../lib/test-kstrtox.c", i32 312, i32 4}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../lib/test-kstrtox.c", i32 316, i32 4}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../lib/test-kstrtox.c", i32 320, i32 4}
!260 = !{ptr @test_kstrtou64_ok.test_u64_ok, !261, !"test_u64_ok", i1 false, i1 false}
!261 = !{!"../lib/test-kstrtox.c", i32 293, i32 9}
!262 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../lib/test-kstrtox.c", i32 336, i32 4}
!264 = !{ptr @test_kstrtou64_fail.test_u64_fail, !265, !"test_u64_fail", i1 false, i1 false}
!265 = !{!"../lib/test-kstrtox.c", i32 332, i32 9}
!266 = !{ptr @.str.126, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../lib/test-kstrtox.c", i32 345, i32 4}
!268 = !{ptr @.str.127, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../lib/test-kstrtox.c", i32 346, i32 4}
!270 = !{ptr @test_kstrtos64_ok.test_s64_ok, !271, !"test_s64_ok", i1 false, i1 false}
!271 = !{!"../lib/test-kstrtox.c", i32 344, i32 9}
!272 = !{ptr @test_kstrtos64_fail.test_s64_fail, !273, !"test_s64_fail", i1 false, i1 false}
!273 = !{!"../lib/test-kstrtox.c", i32 382, i32 9}
!274 = !{ptr @test_kstrtou32_ok.test_u32_ok, !275, !"test_u32_ok", i1 false, i1 false}
!275 = !{!"../lib/test-kstrtox.c", i32 396, i32 9}
!276 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../lib/test-kstrtox.c", i32 422, i32 2}
!278 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @test_kstrtou32_fail.test_u32_fail, !280, !"test_u32_fail", i1 false, i1 false}
!280 = !{!"../lib/test-kstrtox.c", i32 427, i32 9}
!281 = !{ptr @.str.130, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../lib/test-kstrtox.c", i32 441, i32 2}
!283 = !{ptr @test_kstrtos32_ok.test_s32_ok, !284, !"test_s32_ok", i1 false, i1 false}
!284 = !{!"../lib/test-kstrtox.c", i32 447, i32 9}
!285 = !{ptr @.str.131, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../lib/test-kstrtox.c", i32 472, i32 2}
!287 = !{ptr @.str.132, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @test_kstrtos32_fail.test_s32_fail, !289, !"test_s32_fail", i1 false, i1 false}
!289 = !{!"../lib/test-kstrtox.c", i32 477, i32 9}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../lib/test-kstrtox.c", i32 493, i32 2}
!292 = !{ptr @test_kstrtou16_ok.test_u16_ok, !293, !"test_u16_ok", i1 false, i1 false}
!293 = !{!"../lib/test-kstrtox.c", i32 499, i32 9}
!294 = !{ptr @.str.134, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../lib/test-kstrtox.c", i32 517, i32 2}
!296 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @test_kstrtou16_fail.test_u16_fail, !298, !"test_u16_fail", i1 false, i1 false}
!298 = !{!"../lib/test-kstrtox.c", i32 522, i32 9}
!299 = !{ptr @.str.136, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../lib/test-kstrtox.c", i32 544, i32 2}
!301 = !{ptr @.str.137, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../lib/test-kstrtox.c", i32 551, i32 4}
!303 = !{ptr @.str.138, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../lib/test-kstrtox.c", i32 552, i32 4}
!305 = !{ptr @test_kstrtos16_ok.test_s16_ok, !306, !"test_s16_ok", i1 false, i1 false}
!306 = !{!"../lib/test-kstrtox.c", i32 550, i32 9}
!307 = !{ptr @.str.139, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../lib/test-kstrtox.c", i32 569, i32 2}
!309 = !{ptr @.str.140, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @test_kstrtos16_fail.test_s16_fail, !311, !"test_s16_fail", i1 false, i1 false}
!311 = !{!"../lib/test-kstrtox.c", i32 574, i32 9}
!312 = !{ptr @.str.141, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../lib/test-kstrtox.c", i32 598, i32 2}
!314 = !{ptr @test_kstrtou8_ok.test_u8_ok, !315, !"test_u8_ok", i1 false, i1 false}
!315 = !{!"../lib/test-kstrtox.c", i32 604, i32 9}
!316 = !{ptr @.str.142, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../lib/test-kstrtox.c", i32 614, i32 2}
!318 = !{ptr @.str.143, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @test_kstrtou8_fail.test_u8_fail, !320, !"test_u8_fail", i1 false, i1 false}
!320 = !{!"../lib/test-kstrtox.c", i32 619, i32 9}
!321 = !{ptr @.str.144, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../lib/test-kstrtox.c", i32 649, i32 2}
!323 = !{ptr @test_kstrtos8_ok.test_s8_ok, !324, !"test_s8_ok", i1 false, i1 false}
!324 = !{!"../lib/test-kstrtox.c", i32 655, i32 9}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../lib/test-kstrtox.c", i32 664, i32 2}
!327 = !{ptr @.str.146, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @test_kstrtos8_fail.test_s8_fail, !329, !"test_s8_fail", i1 false, i1 false}
!329 = !{!"../lib/test-kstrtox.c", i32 669, i32 9}
!330 = !{ptr @.str.147, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../lib/test-kstrtox.c", i32 703, i32 2}
!332 = !{i32 1, !"wchar_size", i32 2}
!333 = !{i32 1, !"min_enum_size", i32 4}
!334 = !{i32 8, !"branch-target-enforcement", i32 0}
!335 = !{i32 8, !"sign-return-address", i32 0}
!336 = !{i32 8, !"sign-return-address-all", i32 0}
!337 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!338 = !{i32 7, !"uwtable", i32 1}
!339 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!340 = !{!"auto-init"}
