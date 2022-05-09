; ModuleID = '/llk/IR_all_yes/fs/ext4/inode-test.c_pt.bc'
source_filename = "../fs/ext4/inode-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.timestamp_expectation = type { ptr, %struct.timespec64, i32, i8, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@__UNIQUE_ID_array305 = internal global [2 x ptr] [ptr @ext4_inode_test_suite, ptr null], align 4
@__UNIQUE_ID_suites306 = internal global ptr @__UNIQUE_ID_array305, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file307 = internal constant [45 x i8] c"ext4_inode_test.file=fs/ext4/ext4-inode-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [31 x i8] c"ext4_inode_test.license=GPL v2\00", section ".modinfo", align 1
@ext4_inode_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"ext4_inode_test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @ext4_inode_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@ext4_inode_test_cases = internal global { [2 x %struct.kunit_case], [56 x i8] } { [2 x %struct.kunit_case] [%struct.kunit_case { ptr @inode_test_xtimestamp_decoding, ptr @.str, ptr @ext4_inode_gen_params, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"inode_test_xtimestamp_decoding\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/ext4/inode-test.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"test_param->expected.tv_sec\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timestamp.tv_sec\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: msb:%x lower_bound:%x extra_bits: %x\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test_param->expected.tv_nsec\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timestamp.tv_nsec\00", [46 x i8] zeroinitializer }, align 32
@test_data = internal constant { [16 x %struct.timestamp_expectation], [128 x i8] } { [16 x %struct.timestamp_expectation] [%struct.timestamp_expectation { ptr @.str.8, %struct.timespec64 { i64 -2147483648, i32 0 }, i32 0, i8 1, i8 1 }, %struct.timestamp_expectation { ptr @.str.9, %struct.timespec64 { i64 -1, i32 0 }, i32 0, i8 1, i8 0 }, %struct.timestamp_expectation { ptr @.str.10, %struct.timespec64 zeroinitializer, i32 0, i8 0, i8 1 }, %struct.timestamp_expectation { ptr @.str.11, %struct.timespec64 { i64 2147483647, i32 0 }, i32 0, i8 0, i8 0 }, %struct.timestamp_expectation { ptr @.str.12, %struct.timespec64 { i64 2147483648, i32 0 }, i32 1, i8 1, i8 1 }, %struct.timestamp_expectation { ptr @.str.13, %struct.timespec64 { i64 4294967295, i32 0 }, i32 1, i8 1, i8 0 }, %struct.timestamp_expectation { ptr @.str.14, %struct.timespec64 { i64 4294967296, i32 0 }, i32 1, i8 0, i8 1 }, %struct.timestamp_expectation { ptr @.str.15, %struct.timespec64 { i64 6442450943, i32 0 }, i32 1, i8 0, i8 0 }, %struct.timestamp_expectation { ptr @.str.16, %struct.timespec64 { i64 6442450944, i32 0 }, i32 2, i8 1, i8 1 }, %struct.timestamp_expectation { ptr @.str.17, %struct.timespec64 { i64 8589934591, i32 0 }, i32 2, i8 1, i8 0 }, %struct.timestamp_expectation { ptr @.str.18, %struct.timespec64 { i64 8589934592, i32 0 }, i32 2, i8 0, i8 1 }, %struct.timestamp_expectation { ptr @.str.19, %struct.timespec64 { i64 10737418239, i32 0 }, i32 2, i8 0, i8 0 }, %struct.timestamp_expectation { ptr @.str.20, %struct.timespec64 { i64 10737418239, i32 1 }, i32 6, i8 0, i8 0 }, %struct.timestamp_expectation { ptr @.str.21, %struct.timespec64 { i64 12884901888, i32 1073741823 }, i32 -1, i8 0, i8 1 }, %struct.timestamp_expectation { ptr @.str.22, %struct.timespec64 { i64 12884901888, i32 0 }, i32 3, i8 0, i8 1 }, %struct.timestamp_expectation { ptr @.str.23, %struct.timespec64 { i64 15032385535, i32 0 }, i32 3, i8 0, i8 0 }], [128 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"1901-12-13 Lower bound of 32bit < 0 timestamp, no extra bits\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"1969-12-31 Upper bound of 32bit < 0 timestamp, no extra bits\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"1970-01-01 Lower bound of 32bit >=0 timestamp, no extra bits\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"2038-01-19 Upper bound of 32bit >=0 timestamp, no extra bits\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"2038-01-19 Lower bound of 32bit <0 timestamp, lo extra sec bit on\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"2106-02-07 Upper bound of 32bit <0 timestamp, lo extra sec bit on\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"2106-02-07 Lower bound of 32bit >=0 timestamp, lo extra sec bit on\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"2174-02-25 Upper bound of 32bit >=0 timestamp, lo extra sec bit on\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"2174-02-25 Lower bound of 32bit <0 timestamp, hi extra sec bit on\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"2242-03-16 Upper bound of 32bit <0 timestamp, hi extra sec bit on\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"2242-03-16 Lower bound of 32bit >=0 timestamp, hi extra sec bit on\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"2310-04-04 Upper bound of 32bit >=0 timestamp, hi extra sec bit on\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"2310-04-04 Upper bound of 32bit>=0 timestamp, hi extra sec bit 1. 1 ns\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"2378-04-22 Lower bound of 32bit>= timestamp. Extra sec bits 1. Max ns\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"2378-04-22 Lower bound of 32bit >=0 timestamp. All extra sec bits on\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"2446-05-10 Upper bound of 32bit >=0 timestamp. All extra sec bits on\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"ext4_inode_test_suite\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 275, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"ext4_inode_test_cases\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 270, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 271, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 252, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 260, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"test_data\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 83, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 85, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 93, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 101, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 109, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 117, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 125, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 133, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 141, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 149, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 157, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 165, i32 21 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 173, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 181, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 189, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 198, i32 21 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [24 x i8] c"../fs/ext4/inode-test.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 206, i32 21 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__UNIQUE_ID_suites306, ptr @ext4_inode_test_suite, ptr @ext4_inode_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @test_data, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_inode_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_inode_test_cases to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_data to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_test_xtimestamp_decoding(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion17 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %0 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_value, align 4
  %msb_set.i = getelementptr inbounds %struct.timestamp_expectation, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %msb_set.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msb_set.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %lower_bound4.i = getelementptr inbounds %struct.timestamp_expectation, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %lower_bound4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lower_bound4.i, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not.i = icmp eq i8 %5, 0
  %..i = select i1 %tobool5.not.i, i64 -1, i64 -2147483648
  %.10.i = select i1 %tobool5.not.i, i64 2147483647, i64 0
  %retval.0.i = select i1 %tobool.not.i, i64 %.10.i, i64 %..i
  %extra_bits = getelementptr inbounds %struct.timestamp_expectation, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %extra_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra_bits, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and.i = and i32 %8, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i68 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i68, label %entry.ext4_decode_extra_time.exit_crit_edge, label %if.then.i, !prof !65

entry.ext4_decode_extra_time.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ext4_decode_extra_time.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = lshr i32 %8, 24
  %and3.i = and i32 %9, 3
  %conv.i = zext i32 %and3.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %add.i = add nsw i64 %shl.i, %retval.0.i
  br label %ext4_decode_extra_time.exit

ext4_decode_extra_time.exit:                      ; preds = %if.then.i, %entry.ext4_decode_extra_time.exit_crit_edge
  %timestamp.sroa.0.0 = phi i64 [ %retval.0.i, %entry.ext4_decode_extra_time.exit_crit_edge ], [ %add.i, %if.then.i ]
  %10 = and i32 %8, -50331649
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %shr.i = lshr exact i32 %11, 2
  %expected = getelementptr inbounds %struct.timestamp_expectation, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %expected to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %expected, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
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
  store i32 259, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.1, ptr %file, align 4
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
  store ptr @.str.2, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.3, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %13, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.4, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %timestamp.sroa.0.0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %timestamp.sroa.0.0)
  %cmp = icmp eq i64 %13, %timestamp.sroa.0.0
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = ptrtoint ptr %msb_set.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msb_set.i, align 4, !range !64
  %32 = zext i8 %31 to i32
  %33 = ptrtoint ptr %lower_bound4.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lower_bound4.i, align 1, !range !64
  %35 = zext i8 %34 to i32
  %36 = ptrtoint ptr %extra_bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %extra_bits, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.5, ptr noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %37) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %tv_nsec = getelementptr inbounds %struct.timestamp_expectation, ptr %1, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion17) #4
  %40 = getelementptr inbounds i8, ptr %__assertion17, i32 32
  %41 = call ptr @memset(ptr %40, i32 255, i32 24)
  %42 = ptrtoint ptr %__assertion17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %test, ptr %__assertion17, align 8
  %type20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 1
  %43 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %type20, align 4
  %line21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 2
  %44 = ptrtoint ptr %line21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 267, ptr %line21, align 8
  %file22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 3
  %45 = ptrtoint ptr %file22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.1, ptr %file22, align 4
  %message23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4
  %46 = ptrtoint ptr %message23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %message23, align 8
  %va25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %va25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %va25, align 4
  %format26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 5
  %48 = ptrtoint ptr %format26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kunit_binary_assert_format, ptr %format26, align 8
  %operation27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 1
  %49 = ptrtoint ptr %operation27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.2, ptr %operation27, align 4
  %left_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 2
  %50 = ptrtoint ptr %left_text28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.6, ptr %left_text28, align 8
  %left_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 3
  %conv30 = sext i32 %39 to i64
  %51 = ptrtoint ptr %left_value29 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv30, ptr %left_value29, align 8
  %right_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 4
  %52 = ptrtoint ptr %right_text31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.7, ptr %right_text31, align 8
  %right_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 5
  %conv3370 = zext i32 %shr.i to i64
  %53 = ptrtoint ptr %right_value32 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv3370, ptr %right_value32, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %shr.i)
  %cmp35 = icmp eq i32 %39, %shr.i
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %56 = ptrtoint ptr %msb_set.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %msb_set.i, align 4, !range !64
  %58 = zext i8 %57 to i32
  %59 = ptrtoint ptr %lower_bound4.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %lower_bound4.i, align 1, !range !64
  %61 = zext i8 %60 to i32
  %62 = ptrtoint ptr %extra_bits to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %extra_bits, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17, i1 noundef zeroext %cmp35, ptr noundef nonnull @.str.5, ptr noundef %55, i32 noundef %58, i32 noundef %61, i32 noundef %63) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion17) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext4_inode_gen_params(ptr noundef %prev, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prev, null
  %add.ptr = getelementptr %struct.timestamp_expectation, ptr %prev, i32 1
  %spec.select = select i1 %tobool.not, ptr @test_data, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @test_data to i32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.ptr.sub)
  %cmp = icmp ult i32 %sub.ptr.sub, 512
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_suites306, !1, !"__UNIQUE_ID_suites306", i1 false, i1 false}
!1 = !{!"../fs/ext4/inode-test.c", i32 280, i32 1}
!2 = !{ptr @__UNIQUE_ID_file307, !3, !"__UNIQUE_ID_file307", i1 false, i1 false}
!3 = !{!"../fs/ext4/inode-test.c", i32 282, i32 1}
!4 = !{ptr @__UNIQUE_ID_license308, !3, !"__UNIQUE_ID_license308", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array305, !1, !"__UNIQUE_ID_array305", i1 false, i1 false}
!6 = !{ptr @ext4_inode_test_suite, !7, !"ext4_inode_test_suite", i1 false, i1 false}
!7 = !{!"../fs/ext4/inode-test.c", i32 275, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext4/inode-test.c", i32 271, i32 2}
!10 = !{ptr @ext4_inode_test_cases, !11, !"ext4_inode_test_cases", i1 false, i1 false}
!11 = !{!"../fs/ext4/inode-test.c", i32 270, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext4/inode-test.c", i32 252, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/inode-test.c", i32 260, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext4/inode-test.c", i32 85, i32 21}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ext4/inode-test.c", i32 93, i32 21}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ext4/inode-test.c", i32 101, i32 21}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ext4/inode-test.c", i32 109, i32 21}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ext4/inode-test.c", i32 117, i32 21}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/inode-test.c", i32 125, i32 21}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext4/inode-test.c", i32 133, i32 21}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/inode-test.c", i32 141, i32 21}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ext4/inode-test.c", i32 149, i32 21}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ext4/inode-test.c", i32 157, i32 21}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ext4/inode-test.c", i32 165, i32 21}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ext4/inode-test.c", i32 173, i32 21}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ext4/inode-test.c", i32 181, i32 21}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ext4/inode-test.c", i32 189, i32 21}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext4/inode-test.c", i32 198, i32 21}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ext4/inode-test.c", i32 206, i32 21}
!53 = !{ptr @test_data, !54, !"test_data", i1 false, i1 false}
!54 = !{!"../fs/ext4/inode-test.c", i32 83, i32 43}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
!65 = !{!"branch_weights", i32 2000, i32 1}
