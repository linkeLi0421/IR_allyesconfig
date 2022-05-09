; ModuleID = '/llk/IR_all_yes/fs/fat/fat_test.c_pt.bc'
source_filename = "../fs/fat/fat_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.fat_timestamp_testcase = type { ptr, %struct.timespec64, i16, i16, i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }

@__UNIQUE_ID_array241 = internal global [2 x ptr] [ptr @fat_test_suite, ptr null], align 4
@__UNIQUE_ID_suites242 = internal global ptr @__UNIQUE_ID_array241, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file243 = internal constant [30 x i8] c"fat_test.file=fs/fat/fat_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"fat_test.license=GPL v2\00", section ".modinfo", align 1
@fat_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"fat_test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @fat_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@fat_test_cases = internal global { [4 x %struct.kunit_case], [48 x i8] } { [4 x %struct.kunit_case] [%struct.kunit_case { ptr @fat_checksum_test, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @fat_time_fat2unix_test, ptr @.str.1, ptr @fat_time_gen_params, i32 0, ptr null }, %struct.kunit_case { ptr @fat_time_unix2fat_test, ptr @.str.2, ptr @fat_time_gen_params, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fat_checksum_test\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fat_time_fat2unix_test\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fat_time_unix2fat_test\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/fat/fat_test.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fat_checksum(\22VMLINUX    \22)\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(u8)44\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fat_checksum(\22README  TXT\22)\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(u8)115\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fat_checksum(\22ABCDEFGHA  \22)\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(u8)98\00", [25 x i8] zeroinitializer }, align 32
@fat_time_fat2unix_test.fake_sb = internal global { %struct.msdos_sb_info, [644 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"testcase->ts.tv_sec\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ts.tv_sec\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timestamp mismatch (seconds)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"testcase->ts.tv_nsec\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ts.tv_nsec\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timestamp mismatch (nanoseconds)\0A\00", [62 x i8] zeroinitializer }, align 32
@time_test_cases = internal global { [11 x %struct.fat_timestamp_testcase], [104 x i8] } { [11 x %struct.fat_timestamp_testcase] [%struct.fat_timestamp_testcase { ptr @.str.20, %struct.timespec64 { i64 315532800, i32 0 }, i16 0, i16 8448, i8 0, i32 0 }, %struct.fat_timestamp_testcase { ptr @.str.21, %struct.timespec64 { i64 4354819198, i32 0 }, i16 32191, i16 -24577, i8 0, i32 0 }, %struct.fat_timestamp_testcase { ptr @.str.22, %struct.timespec64 { i64 315493200, i32 0 }, i16 0, i16 8448, i8 0, i32 660 }, %struct.fat_timestamp_testcase { ptr @.str.23, %struct.timespec64 { i64 4354858798, i32 0 }, i16 32191, i16 -24577, i8 0, i32 -660 }, %struct.fat_timestamp_testcase { ptr @.str.24, %struct.timespec64 { i64 825552000, i32 0 }, i16 0, i16 23840, i8 0, i32 0 }, %struct.fat_timestamp_testcase { ptr @.str.25, %struct.timespec64 { i64 951782400, i32 0 }, i16 0, i16 23848, i8 0, i32 0 }, %struct.fat_timestamp_testcase { ptr @.str.26, %struct.timespec64 { i64 4107542400, i32 0 }, i16 0, i16 25072, i8 0, i32 0 }, %struct.fat_timestamp_testcase { ptr @.str.27, %struct.timespec64 { i64 1078014600, i32 0 }, i16 -16197, i16 23600, i8 0, i32 -60 }, %struct.fat_timestamp_testcase { ptr @.str.28, %struct.timespec64 { i64 1078097400, i32 0 }, i16 -16381, i16 24880, i8 0, i32 60 }, %struct.fat_timestamp_testcase { ptr @.str.29, %struct.timespec64 { i64 946684799, i32 0 }, i16 32191, i16 -24793, i8 100, i32 0 }, %struct.fat_timestamp_testcase { ptr @.str.30, %struct.timespec64 { i64 315532800, i32 10000000 }, i16 0, i16 8448, i8 1, i32 0 }], [104 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Earliest possible UTC (1980-01-01 00:00:00)\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Latest possible UTC (2107-12-31 23:59:58)\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Earliest possible (UTC-11) (== 1979-12-31 13:00:00 UTC)\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Latest possible (UTC+11) (== 2108-01-01 10:59:58 UTC)\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Leap Day / Year (1996-02-29 00:00:00)\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Year 2000 is leap year (2000-02-29 00:00:00)\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Year 2100 not leap year (2100-03-01 00:00:00)\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Leap year + timezone UTC+1 (== 2004-02-29 00:30:00 UTC)\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Leap year + timezone UTC-1 (== 2004-02-29 23:30:00 UTC)\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"VFAT odd-second resolution (1999-12-31 23:59:59)\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VFAT 10ms resolution (1980-01-01 00:00:00:0010)\00", [48 x i8] zeroinitializer }, align 32
@fat_time_unix2fat_test.fake_sb = internal global { %struct.msdos_sb_info, [644 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(testcase->time)))\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(time)))\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Time mismatch\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(testcase->date)))\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(date)))\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Date mismatch\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"testcase->cs\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Centisecond mismatch\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"fat_test_suite\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 189, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"fat_test_cases\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 182, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 183, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 184, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 185, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 16, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 18, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 20, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 133, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 145, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 149, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"time_test_cases\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 32, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 34, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 42, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 50, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 58, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 66, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 74, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 82, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 90, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 98, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 106, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 114, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [8 x i8] c"fake_sb\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 157, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 168, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 172, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [21 x i8] c"../fs/fat/fat_test.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 176, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_suites242, ptr @fat_test_suite, ptr @fat_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @fat_time_fat2unix_test.fake_sb, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @time_test_cases, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @fat_time_unix2fat_test.fake_sb, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_test_cases to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_time_fat2unix_test.fake_sb to i32), i32 2620, i32 3264, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_test_cases to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_time_unix2fat_test.fake_sb to i32), i32 2620, i32 3264, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_checksum_test(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion46 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.4, ptr %file, align 4
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
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 44, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.7, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 44, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #4
  %14 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %17 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %18 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 18, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %19 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.4, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %20 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %22 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %23 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.5, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %24 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.9, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %25 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 115, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %26 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.10, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %27 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 115, ptr %right_value30, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion46) #4
  %28 = getelementptr inbounds i8, ptr %__assertion46, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion46, align 8
  %type49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 1
  %31 = ptrtoint ptr %type49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type49, align 4
  %line50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 2
  %32 = ptrtoint ptr %line50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %line50, align 8
  %file51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 3
  %33 = ptrtoint ptr %file51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.4, ptr %file51, align 4
  %message52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4
  %34 = ptrtoint ptr %message52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message52, align 8
  %va54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va54, align 4
  %format55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 5
  %36 = ptrtoint ptr %format55 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format55, align 8
  %operation56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 1
  %37 = ptrtoint ptr %operation56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.5, ptr %operation56, align 4
  %left_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 2
  %38 = ptrtoint ptr %left_text57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.12, ptr %left_text57, align 8
  %left_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 3
  %39 = ptrtoint ptr %left_value58 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 98, ptr %left_value58, align 8
  %right_text60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 4
  %40 = ptrtoint ptr %right_text60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.13, ptr %right_text60, align 8
  %right_value61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 5
  %41 = ptrtoint ptr %right_value61 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 98, ptr %right_value61, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion46, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion46) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_time_fat2unix_test(ptr noundef %test) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #4
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %1 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param_value, align 4
  %bf.load = load i16, ptr getelementptr inbounds (%struct.msdos_sb_info, ptr @fat_time_fat2unix_test.fake_sb, i32 0, i32 19, i32 12), align 4
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, ptr getelementptr inbounds (%struct.msdos_sb_info, ptr @fat_time_fat2unix_test.fake_sb, i32 0, i32 19, i32 12), align 4
  %time_offset = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %time_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %time_offset, align 8
  store i32 %4, ptr getelementptr inbounds (%struct.msdos_sb_info, ptr @fat_time_fat2unix_test.fake_sb, i32 0, i32 19, i32 5), align 4
  %time = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %time, align 8
  %date = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %date to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %date, align 2
  %cs = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %cs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cs, align 4
  call void @fat_time_fat2unix(ptr noundef nonnull @fat_time_fat2unix_test.fake_sb, ptr noundef nonnull %ts, i16 noundef zeroext %6, i16 noundef zeroext %8, i8 noundef zeroext %10) #4
  %ts1 = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %ts1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts1, align 8
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ts, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
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
  store i32 148, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.4, ptr %file, align 4
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
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %25 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.14, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %26 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %12, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %27 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.15, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %28 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %14, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp = icmp eq i64 %12, %14
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.16) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %tv_nsec = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %2, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tv_nsec, align 8
  %tv_nsec12 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %31 = ptrtoint ptr %tv_nsec12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tv_nsec12, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #4
  %33 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %36 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %37 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 152, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %38 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.4, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %39 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %41 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %42 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.5, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %43 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.17, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %conv = sext i32 %30 to i64
  %44 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv, ptr %left_value26, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %45 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.18, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %conv29 = sext i32 %32 to i64
  %46 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp31 = icmp eq i32 %30, %32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp31, ptr noundef nonnull @.str.19) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_time_gen_params(ptr noundef %prev, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev, null
  %add.ptr = getelementptr %struct.fat_timestamp_testcase, ptr %prev, i32 1
  %spec.select = select i1 %tobool.not, ptr @time_test_cases, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @time_test_cases to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.div)
  %cmp = icmp ult i32 %sub.ptr.div, 11
  br i1 %cmp, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec.select, align 8
  %call.i = tail call i32 @strscpy(ptr noundef %desc, ptr noundef %1, i32 noundef 128) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.then2 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_time_unix2fat_test(ptr noundef %test) #0 align 64 {
entry:
  %date = alloca i16, align 2
  %time = alloca i16, align 2
  %cs = alloca i8, align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion16 = alloca %struct.kunit_binary_assert, align 8
  %__assertion47 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %date) #4
  %0 = ptrtoint ptr %date to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %date, align 2, !annotation !87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %time) #4
  %1 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %time, align 2, !annotation !87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cs) #4
  %2 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cs, align 1, !annotation !87
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %3 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param_value, align 4
  %bf.load = load i16, ptr getelementptr inbounds (%struct.msdos_sb_info, ptr @fat_time_unix2fat_test.fake_sb, i32 0, i32 19, i32 12), align 4
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, ptr getelementptr inbounds (%struct.msdos_sb_info, ptr @fat_time_unix2fat_test.fake_sb, i32 0, i32 19, i32 12), align 4
  %time_offset = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %time_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %time_offset, align 8
  store i32 %6, ptr getelementptr inbounds (%struct.msdos_sb_info, ptr @fat_time_unix2fat_test.fake_sb, i32 0, i32 19, i32 5), align 4
  %ts = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %4, i32 0, i32 1
  call void @fat_time_unix2fat(ptr noundef nonnull @fat_time_unix2fat_test.fake_sb, ptr noundef %ts, ptr noundef nonnull %time, ptr noundef nonnull %date, ptr noundef nonnull %cs) #4
  %time1 = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %time1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %time1, align 8
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %time, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %13 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %14 = call ptr @memset(ptr %13, i32 255, i32 24)
  %15 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %17 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 171, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %18 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %19 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %22 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %23 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.31, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i16 %9 to i64
  %24 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %25 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.32, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv4 = zext i16 %12 to i64
  %26 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv4, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %11)
  %cmp = icmp eq i16 %8, %11
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.33) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %date13 = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %4, i32 0, i32 3
  %27 = ptrtoint ptr %date13 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %date13, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %date to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %date, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion16) #4
  %33 = getelementptr inbounds i8, ptr %__assertion16, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion16, align 8
  %type19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %36 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type19, align 4
  %line20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %37 = ptrtoint ptr %line20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 175, ptr %line20, align 8
  %file21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %38 = ptrtoint ptr %file21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.4, ptr %file21, align 4
  %message22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %39 = ptrtoint ptr %message22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message22, align 8
  %va24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va24, align 4
  %format25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %41 = ptrtoint ptr %format25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format25, align 8
  %operation26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 1
  %42 = ptrtoint ptr %operation26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.5, ptr %operation26, align 4
  %left_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 2
  %43 = ptrtoint ptr %left_text27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.34, ptr %left_text27, align 8
  %left_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 3
  %conv29 = zext i16 %29 to i64
  %44 = ptrtoint ptr %left_value28 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv29, ptr %left_value28, align 8
  %right_text30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 4
  %45 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.35, ptr %right_text30, align 8
  %right_value31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 5
  %conv32 = zext i16 %32 to i64
  %46 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv32, ptr %right_value31, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %31)
  %cmp36 = icmp eq i16 %28, %31
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext %cmp36, ptr noundef nonnull @.str.36) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion16) #4
  %cs44 = getelementptr inbounds %struct.fat_timestamp_testcase, ptr %4, i32 0, i32 4
  %47 = ptrtoint ptr %cs44 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cs44, align 4
  %49 = ptrtoint ptr %cs to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cs, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion47) #4
  %51 = getelementptr inbounds i8, ptr %__assertion47, i32 32
  %52 = call ptr @memset(ptr %51, i32 255, i32 24)
  %53 = ptrtoint ptr %__assertion47 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %test, ptr %__assertion47, align 8
  %type50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 1
  %54 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %type50, align 4
  %line51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 2
  %55 = ptrtoint ptr %line51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 179, ptr %line51, align 8
  %file52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 3
  %56 = ptrtoint ptr %file52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.4, ptr %file52, align 4
  %message53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 4
  %57 = ptrtoint ptr %message53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %message53, align 8
  %va55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %va55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %va55, align 4
  %format56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 5
  %59 = ptrtoint ptr %format56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @kunit_binary_assert_format, ptr %format56, align 8
  %operation57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 1
  %60 = ptrtoint ptr %operation57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.5, ptr %operation57, align 4
  %left_text58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 2
  %61 = ptrtoint ptr %left_text58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.37, ptr %left_text58, align 8
  %left_value59 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 3
  %conv60 = zext i8 %48 to i64
  %62 = ptrtoint ptr %left_value59 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv60, ptr %left_value59, align 8
  %right_text61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 4
  %63 = ptrtoint ptr %right_text61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.38, ptr %right_text61, align 8
  %right_value62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 5
  %conv63 = zext i8 %50 to i64
  %64 = ptrtoint ptr %right_value62 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv63, ptr %right_value62, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp67 = icmp eq i8 %48, %50
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion47, i1 noundef zeroext %cmp67, ptr noundef nonnull @.str.39) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion47) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cs) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %time) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %date) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_fat2unix(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_suites242, !1, !"__UNIQUE_ID_suites242", i1 false, i1 false}
!1 = !{!"../fs/fat/fat_test.c", i32 194, i32 1}
!2 = !{ptr @__UNIQUE_ID_file243, !3, !"__UNIQUE_ID_file243", i1 false, i1 false}
!3 = !{!"../fs/fat/fat_test.c", i32 196, i32 1}
!4 = !{ptr @__UNIQUE_ID_license244, !3, !"__UNIQUE_ID_license244", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array241, !1, !"__UNIQUE_ID_array241", i1 false, i1 false}
!6 = !{ptr @fat_test_suite, !7, !"fat_test_suite", i1 false, i1 false}
!7 = !{!"../fs/fat/fat_test.c", i32 189, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fat/fat_test.c", i32 183, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/fat/fat_test.c", i32 184, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/fat/fat_test.c", i32 185, i32 2}
!14 = !{ptr @fat_test_cases, !15, !"fat_test_cases", i1 false, i1 false}
!15 = !{!"../fs/fat/fat_test.c", i32 182, i32 26}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/fat/fat_test.c", i32 16, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/fat/fat_test.c", i32 18, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/fat/fat_test.c", i32 20, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fat_time_fat2unix_test.fake_sb, !31, !"fake_sb", i1 false, i1 false}
!31 = !{!"../fs/fat/fat_test.c", i32 133, i32 30}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/fat/fat_test.c", i32 145, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/fat/fat_test.c", i32 149, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/fat/fat_test.c", i32 34, i32 11}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/fat/fat_test.c", i32 42, i32 11}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/fat/fat_test.c", i32 50, i32 11}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/fat/fat_test.c", i32 58, i32 11}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/fat/fat_test.c", i32 66, i32 11}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/fat/fat_test.c", i32 74, i32 11}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/fat/fat_test.c", i32 82, i32 11}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/fat/fat_test.c", i32 90, i32 11}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/fat/fat_test.c", i32 98, i32 11}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/fat/fat_test.c", i32 106, i32 11}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/fat/fat_test.c", i32 114, i32 11}
!62 = !{ptr @time_test_cases, !63, !"time_test_cases", i1 false, i1 false}
!63 = !{!"../fs/fat/fat_test.c", i32 32, i32 38}
!64 = !{ptr @fat_time_unix2fat_test.fake_sb, !65, !"fake_sb", i1 false, i1 false}
!65 = !{!"../fs/fat/fat_test.c", i32 157, i32 30}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/fat/fat_test.c", i32 168, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/fat/fat_test.c", i32 172, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/fat/fat_test.c", i32 176, i32 2}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
