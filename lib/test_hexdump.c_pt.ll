; ModuleID = '/llk/IR_all_yes/lib/test_hexdump.c_pt.bc'
source_filename = "../lib/test_hexdump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_test_hexdump__110_247_test_hexdump_init6 = internal global ptr @test_hexdump_init, section ".initcall6.init", align 4
@__exitcall_test_hexdump_exit = internal global ptr @test_hexdump_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author111 = internal constant [72 x i8] c"test_hexdump.author=Andy Shevchenko <andriy.shevchenko@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file112 = internal constant [35 x i8] c"test_hexdump.file=lib/test_hexdump\00", section ".modinfo", align 1
@__UNIQUE_ID_license113 = internal constant [34 x i8] c"test_hexdump.license=Dual BSD/GPL\00", section ".modinfo", align 1
@failed_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@test_hexdump_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016test_hexdump: all %u tests passed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_hexdump_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/test_hexdump.c\00", [45 x i8] zeroinitializer }, align 32
@test_hexdump_init._entry_ptr = internal global ptr @test_hexdump_init._entry, section ".printk_index", align 4
@total_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@test_hexdump_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013test_hexdump: failed %u out of %u tests\0A\00", [53 x i8] zeroinitializer }, align 32
@test_hexdump_init._entry_ptr.5 = internal global ptr @test_hexdump_init._entry.3, section ".printk_index", align 4
@data_b = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\BE2\DB{\0A\18\93\B2p\BA\C4$}\834\9B\A6\9C1\AD\9C\0F\AC\E9L\D1\19\99C\B1\AF\0C", [32 x i8] zeroinitializer }, align 32
@test_hexdump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013test_hexdump: Len: %zu row: %d group: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_hexdump\00", [19 x i8] zeroinitializer }, align 32
@test_hexdump._entry_ptr = internal global ptr @test_hexdump._entry, section ".printk_index", align 4
@test_hexdump._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013test_hexdump: Result: '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@test_hexdump._entry_ptr.10 = internal global ptr @test_hexdump._entry.8, section ".printk_index", align 4
@test_hexdump._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013test_hexdump: Expect: '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@test_hexdump._entry_ptr.13 = internal global ptr @test_hexdump._entry.11, section ".printk_index", align 4
@test_data_8_be = internal unnamed_addr constant [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section ".init.rodata", align 4
@test_data_4_be = internal unnamed_addr constant [8 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section ".init.rodata", align 4
@test_data_2_be = internal unnamed_addr constant [16 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section ".init.rodata", align 4
@test_data_1 = internal unnamed_addr constant [32 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section ".init.rodata", align 4
@data_a = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c".2.{....p..$}.4...1.....L...C...\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"be32db7b0a1893b2\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"70bac4247d83349b\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"a69c31ad9c0face9\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"4cd1199943b1af0c\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"be32db7b\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0a1893b2\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"70bac424\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"7d83349b\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a69c31ad\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"9c0face9\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"4cd11999\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"43b1af0c\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"be32\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"db7b\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0a18\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"93b2\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"70ba\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"c424\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7d83\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"349b\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"a69c\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"31ad\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9c0f\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ace9\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4cd1\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1999\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"43b1\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"af0c\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"be\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"db\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7b\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0a\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"18\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"93\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"b2\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"70\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ba\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"c4\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"24\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7d\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"83\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"34\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9b\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"a6\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9c\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"31\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ad\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0f\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ac\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"e9\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4c\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"d1\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"19\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"99\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"43\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"b1\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"af\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0c\00", [29 x i8] zeroinitializer }, align 32
@test_hexdump_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013test_hexdump: Len: %zu buflen: %zu strlen: %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_hexdump_overflow\00", [42 x i8] zeroinitializer }, align 32
@test_hexdump_overflow._entry_ptr = internal global ptr @test_hexdump_overflow._entry, section ".printk_index", align 4
@test_hexdump_overflow._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013test_hexdump: Result: %d '%s'\0A\00", [63 x i8] zeroinitializer }, align 32
@test_hexdump_overflow._entry_ptr.77 = internal global ptr @test_hexdump_overflow._entry.75, section ".printk_index", align 4
@test_hexdump_overflow._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013test_hexdump: Expect: %d '%s'\0A\00", [63 x i8] zeroinitializer }, align 32
@test_hexdump_overflow._entry_ptr.80 = internal global ptr @test_hexdump_overflow._entry.78, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 241, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 243, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"data_b\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 12, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 142, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 143, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 144, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"data_a\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 19, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 58, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 58, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 59, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 59, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 48, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 48, i32 14 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 48, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 48, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 49, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 49, i32 14 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 49, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 49, i32 38 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 36, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 36, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 36, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 36, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 37, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 37, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 37, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 37, i32 26 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 38, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 38, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 38, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 38, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 39, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 39, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 39, i32 18 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 39, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 14 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 26 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 32 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 38 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 22, i32 44 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 14 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 26 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 32 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 38 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 23, i32 44 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 24, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 24, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 24, i32 14 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 24, i32 20 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 24, i32 32 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 24, i32 38 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 24, i32 44 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 14 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 20 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 26 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 38 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 25, i32 44 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 200, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 202, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [22 x i8] c"../lib/test_hexdump.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 203, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author111, ptr @__UNIQUE_ID_file112, ptr @__UNIQUE_ID_license113, ptr @__exitcall_test_hexdump_exit, ptr @__initcall__kmod_test_hexdump__110_247_test_hexdump_init6, ptr @test_hexdump._entry, ptr @test_hexdump._entry.11, ptr @test_hexdump._entry.8, ptr @test_hexdump._entry_ptr, ptr @test_hexdump._entry_ptr.10, ptr @test_hexdump._entry_ptr.13, ptr @test_hexdump_exit, ptr @test_hexdump_init._entry, ptr @test_hexdump_init._entry.3, ptr @test_hexdump_init._entry_ptr, ptr @test_hexdump_init._entry_ptr.5, ptr @test_hexdump_overflow._entry, ptr @test_hexdump_overflow._entry.75, ptr @test_hexdump_overflow._entry.78, ptr @test_hexdump_overflow._entry_ptr, ptr @test_hexdump_overflow._entry_ptr.77, ptr @test_hexdump_overflow._entry_ptr.80, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @data_b, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @data_a, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_a to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump_overflow._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hexdump_overflow._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_hexdump_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @get_random_u32() #12
  %rem = shl i32 %call.i, 4
  %add = and i32 %rem, 16
  %mul = add nuw nsw i32 %add, 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call fastcc void @test_hexdump_set(i32 noundef %mul, i1 noundef zeroext false) #13
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i40 = tail call i32 @get_random_u32() #12
  %rem2 = shl i32 %call.i40, 4
  %add3 = and i32 %rem2, 16
  %mul4 = add nuw nsw i32 %add3, 16
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end
  %i.142 = phi i32 [ 0, %for.end ], [ %inc9, %for.body7.for.body7_crit_edge ]
  tail call fastcc void @test_hexdump_set(i32 noundef %mul4, i1 noundef zeroext true) #13
  %inc9 = add nuw nsw i32 %i.142, 1
  %exitcond45.not = icmp eq i32 %inc9, 16
  br i1 %exitcond45.not, label %for.body7.for.body13_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.body7.for.body13_crit_edge:                   ; preds = %for.body7
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body7.for.body13_crit_edge
  %i.243 = phi i32 [ %inc15, %for.body13.for.body13_crit_edge ], [ 0, %for.body7.for.body13_crit_edge ]
  tail call fastcc void @test_hexdump_overflow_set(i32 noundef %i.243, i1 noundef zeroext false) #13
  %inc15 = add nuw nsw i32 %i.243, 1
  %exitcond46.not = icmp eq i32 %inc15, 132
  br i1 %exitcond46.not, label %for.body13.for.body19_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

for.body13.for.body19_crit_edge:                  ; preds = %for.body13
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body13.for.body19_crit_edge
  %i.344 = phi i32 [ %inc21, %for.body19.for.body19_crit_edge ], [ 0, %for.body13.for.body19_crit_edge ]
  tail call fastcc void @test_hexdump_overflow_set(i32 noundef %i.344, i1 noundef zeroext true) #13
  %inc21 = add nuw nsw i32 %i.344, 1
  %exitcond47.not = icmp eq i32 %inc21, 132
  br i1 %exitcond47.not, label %for.end22, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19

for.end22:                                        ; preds = %for.body19
  %0 = load i32, ptr @failed_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp23 = icmp eq i32 %0, 0
  %1 = load i32, ptr @total_tests, align 4
  br i1 %cmp23, label %do.end, label %do.end27

do.end:                                           ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #14
  br label %if.end

do.end27:                                         ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %0, i32 noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %do.end27, %do.end
  %2 = load i32, ptr @failed_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_hexdump_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_hexdump_set(i32 noundef %rowsize, i1 noundef zeroext %ascii) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @get_random_u32() #12
  %rem = urem i32 %call.i, %rowsize
  %add = add nuw i32 %rem, 1
  tail call fastcc void @test_hexdump(i32 noundef %add, i32 noundef %rowsize, i32 noundef 4, i1 noundef zeroext %ascii) #13
  tail call fastcc void @test_hexdump(i32 noundef %add, i32 noundef %rowsize, i32 noundef 2, i1 noundef zeroext %ascii) #13
  tail call fastcc void @test_hexdump(i32 noundef %add, i32 noundef %rowsize, i32 noundef 8, i1 noundef zeroext %ascii) #13
  tail call fastcc void @test_hexdump(i32 noundef %add, i32 noundef %rowsize, i32 noundef 1, i1 noundef zeroext %ascii) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_hexdump_overflow_set(i32 noundef %buflen, i1 noundef zeroext %ascii) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @get_random_u32() #12
  %rem = shl i32 %call.i, 4
  %add = and i32 %rem, 16
  %mul = add nuw nsw i32 %add, 16
  %0 = or i32 %add, 15
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0
  %call.i10 = tail call i32 @get_random_u32() #12
  %rem2 = and i32 %call.i10, %0
  %add3 = add nuw i32 %rem2, %shl
  %.not = sub nsw i32 0, %shl
  %sub = and i32 %add3, %.not
  tail call fastcc void @test_hexdump_overflow(i32 noundef %buflen, i32 noundef %sub, i32 noundef %mul, i32 noundef %shl, i1 noundef zeroext %ascii) #13
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_hexdump(i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, i1 noundef zeroext %ascii) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %test = alloca [131 x i8], align 1
  %real = alloca [131 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %test) #12
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %real) #12
  %0 = load i32, ptr @total_tests, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @total_tests, align 4
  %1 = call ptr @memset(ptr %real, i32 35, i32 131)
  %call = call i32 @hex_dump_to_buffer(ptr noundef nonnull @data_b, i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef nonnull %real, i32 noundef 131, i1 noundef zeroext %ascii) #12
  %2 = call ptr @memset(ptr %test, i32 35, i32 131)
  call fastcc void @test_hexdump_prepare_test(i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef nonnull %test, i1 noundef zeroext %ascii) #13
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(131) %test, ptr noundef nonnull dereferenceable(131) %real, i32 131) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize) #14
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %real) #14
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %test) #14
  %3 = load i32, ptr @failed_tests, align 4
  %inc22 = add i32 %3, 1
  store i32 %inc22, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %real) #12
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %test) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_hexdump_prepare_test(i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %test, i1 noundef zeroext %ascii) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %test12 = ptrtoint ptr %test to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rowsize)
  %cmp.not = icmp eq i32 %rowsize, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rowsize)
  %cmp1.not = icmp eq i32 %rowsize, 32
  %spec.store.select = select i1 %cmp1.not, i32 32, i32 16
  %rs.0 = select i1 %cmp.not, i32 16, i32 %spec.store.select
  %0 = tail call i32 @llvm.umin.i32(i32 %rs.0, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %groupsize)
  %cmp.not.i = icmp eq i32 %groupsize, 0
  br i1 %cmp.not.i, label %entry.if.else17_crit_edge, label %is_power_of_2.exit

entry.if.else17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

is_power_of_2.exit:                               ; preds = %entry
  %1 = tail call i32 @llvm.ctpop.i32(i32 %groupsize) #12, !range !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %groupsize)
  %cmp5 = icmp sgt i32 %groupsize, 8
  %or.cond = or i1 %cmp5, %cmp1.i
  br i1 %or.cond, label %is_power_of_2.exit.if.else17_crit_edge, label %lor.lhs.false6

is_power_of_2.exit.if.else17_crit_edge:           ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

lor.lhs.false6:                                   ; preds = %is_power_of_2.exit
  %rem = urem i32 %len, %groupsize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp7.not = icmp eq i32 %rem, 0
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false6.if.else17_crit_edge

lor.lhs.false6.if.else17_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

if.end9:                                          ; preds = %lor.lhs.false6
  %2 = zext i32 %groupsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %groupsize, label %if.end9.if.else17_crit_edge [
    i32 8, label %if.end9.if.end20_crit_edge
    i32 4, label %if.then13
    i32 2, label %if.then16
  ]

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end9.if.else17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.else17:                                        ; preds = %if.end9.if.else17_crit_edge, %lor.lhs.false6.if.else17_crit_edge, %is_power_of_2.exit.if.else17_crit_edge, %entry.if.else17_crit_edge
  %gs.06 = phi i32 [ %groupsize, %if.end9.if.else17_crit_edge ], [ 1, %is_power_of_2.exit.if.else17_crit_edge ], [ 1, %lor.lhs.false6.if.else17_crit_edge ], [ 1, %entry.if.else17_crit_edge ]
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then16, %if.then13, %if.end9.if.end20_crit_edge
  %gs.05 = phi i32 [ %groupsize, %if.then13 ], [ %groupsize, %if.then16 ], [ %gs.06, %if.else17 ], [ %groupsize, %if.end9.if.end20_crit_edge ]
  %result.0 = phi ptr [ @test_data_4_be, %if.then13 ], [ @test_data_2_be, %if.then16 ], [ @test_data_1, %if.else17 ], [ @test_data_8_be, %if.end9.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %gs.05, i32 %0)
  %cmp217.not = icmp ugt i32 %gs.05, %0
  br i1 %cmp217.not, label %if.end20.for.end_crit_edge, label %for.body.preheader

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end20
  %div = udiv i32 %0, %gs.05
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %p.010 = phi ptr [ %incdec.ptr23, %for.body.for.body_crit_edge ], [ %test, %for.body.preheader ]
  %result.19 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %result.0, %for.body.preheader ]
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr ptr, ptr %result.19, i32 1
  %3 = ptrtoint ptr %result.19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %result.19, align 4
  %call22 = tail call i32 @strlen(ptr noundef %4) #15
  %5 = call ptr @memcpy(ptr %p.010, ptr %4, i32 %call22)
  %add.ptr = getelementptr i8, ptr %p.010, i32 %call22
  %incdec.ptr23 = getelementptr i8, ptr %add.ptr, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %add.ptr, align 1
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = ptrtoint ptr %incdec.ptr23 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end20.for.end_crit_edge
  %p.0.lcssa13.pre-phi = phi i32 [ %.pre, %for.end.loopexit ], [ %test12, %if.end20.for.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %incdec.ptr23, %for.end.loopexit ], [ %test, %if.end20.for.end_crit_edge ]
  %7 = xor i1 %cmp217.not, true
  %spec.select.idx = sext i1 %7 to i32
  %spec.select = getelementptr i8, ptr %p.0.lcssa, i32 %spec.select.idx
  br i1 %ascii, label %do.body.preheader, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.body.preheader:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl nuw nsw i32 %rs.0, 1
  %div31 = sdiv i32 %rs.0, %gs.05
  %8 = add i32 %div31, %test12
  %9 = add i32 %8, %mul
  %10 = add i32 %p.0.lcssa13.pre-phi, %spec.select.idx
  %umax14 = call i32 @llvm.umax.i32(i32 %9, i32 %10)
  %11 = add i32 %umax14, 1
  %12 = sub i32 %11, %10
  %13 = call ptr @memset(ptr %spec.select, i32 32, i32 %12)
  %14 = sub i32 %11, %p.0.lcssa13.pre-phi
  %uglygep = getelementptr i8, ptr %p.0.lcssa, i32 %14
  %call35 = tail call ptr @strncpy(ptr noundef %uglygep, ptr noundef nonnull @data_a, i32 noundef %0)
  %add.ptr36 = getelementptr i8, ptr %uglygep, i32 %0
  br label %if.end37

if.end37:                                         ; preds = %do.body.preheader, %for.end.if.end37_crit_edge
  %p.3 = phi ptr [ %add.ptr36, %do.body.preheader ], [ %spec.select, %for.end.if.end37_crit_edge ]
  %15 = ptrtoint ptr %p.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %p.3, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_hexdump_overflow(i32 noundef %buflen, i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, i1 noundef zeroext %ascii) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %test = alloca [131 x i8], align 1
  %buf = alloca [131 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %test) #12
  %0 = call ptr @memset(ptr %test, i32 255, i32 131)
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %buf) #12
  %1 = load i32, ptr @total_tests, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @total_tests, align 4
  %2 = call ptr @memset(ptr %buf, i32 35, i32 131)
  %call = call i32 @hex_dump_to_buffer(ptr noundef nonnull @data_b, i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef nonnull %buf, i32 noundef %buflen, i1 noundef zeroext %ascii) #12
  br i1 %ascii, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %rowsize, 1
  %div = sdiv i32 %rowsize, %groupsize
  %add = add i32 %len, 1
  %add2 = add i32 %add, %mul
  %add3 = add i32 %add2, %div
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul4 = shl i32 %groupsize, 1
  %add5 = or i32 %mul4, 1
  %mul6 = mul i32 %add5, %len
  %div7 = udiv i32 %mul6, %groupsize
  %sub = add i32 %div7, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %e.0 = phi i32 [ %add3, %if.then ], [ %sub, %if.else ]
  %add9 = add i32 %e.0, 1
  %3 = call i32 @llvm.smin.i32(i32 %add9, i32 %buflen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool10.not = icmp eq i32 %buflen, 0
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @test_hexdump_prepare_test(i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef nonnull %test, i1 noundef zeroext %ascii) #13
  %sub14 = add i32 %3, -1
  %arrayidx = getelementptr [131 x i8], ptr %test, i32 0, i32 %sub14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %add.ptr = getelementptr i8, ptr %test, i32 %3
  %sub17 = sub i32 131, %3
  %5 = call ptr @memset(ptr %add.ptr, i32 35, i32 %sub17)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %e.0)
  %cmp18 = icmp eq i32 %call, %e.0
  br i1 %cmp18, label %land.rhs, label %do.end.critedge

land.rhs:                                         ; preds = %if.end15
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(131) %test, ptr noundef nonnull dereferenceable(131) %buf, i32 131) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool22.not = icmp eq i32 %bcmp, 0
  %arrayidx24 = getelementptr inbounds [131 x i8], ptr %buf, i32 0, i32 130
  %6 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx24, align 1
  br i1 %tobool22.not, label %land.rhs.if.end44_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end.critedge:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24.c = getelementptr inbounds [131 x i8], ptr %buf, i32 0, i32 130
  %7 = ptrtoint ptr %arrayidx24.c to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx24.c, align 1
  br label %do.end

do.end:                                           ; preds = %do.end.critedge, %land.rhs.do.end_crit_edge
  %call29 = call i32 @strnlen(ptr noundef nonnull %buf, i32 noundef 131) #15
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %len, i32 noundef %buflen, i32 noundef %call29) #14
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %call, ptr noundef nonnull %buf) #14
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %e.0, ptr noundef nonnull %test) #14
  %8 = load i32, ptr @failed_tests, align 4
  %inc43 = add i32 %8, 1
  store i32 %inc43, ptr @failed_tests, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.end, %land.rhs.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %test) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_test_hexdump__110_247_test_hexdump_init6, !1, !"__initcall__kmod_test_hexdump__110_247_test_hexdump_init6", i1 false, i1 false}
!1 = !{!"../lib/test_hexdump.c", i32 247, i32 1}
!2 = !{ptr @__exitcall_test_hexdump_exit, !3, !"__exitcall_test_hexdump_exit", i1 false, i1 false}
!3 = !{!"../lib/test_hexdump.c", i32 253, i32 1}
!4 = !{ptr @__UNIQUE_ID_author111, !5, !"__UNIQUE_ID_author111", i1 false, i1 false}
!5 = !{!"../lib/test_hexdump.c", i32 255, i32 1}
!6 = !{ptr @__UNIQUE_ID_file112, !7, !"__UNIQUE_ID_file112", i1 false, i1 false}
!7 = !{!"../lib/test_hexdump.c", i32 256, i32 1}
!8 = !{ptr @__UNIQUE_ID_license113, !7, !"__UNIQUE_ID_license113", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/test_hexdump.c", i32 241, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @test_hexdump_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @test_hexdump_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test_hexdump.c", i32 243, i32 3}
!17 = !{ptr @test_hexdump_init._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @test_hexdump_init._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test_hexdump.c", i32 142, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @test_hexdump._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @test_hexdump._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/test_hexdump.c", i32 143, i32 3}
!26 = !{ptr @test_hexdump._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @test_hexdump._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/test_hexdump.c", i32 144, i32 3}
!30 = !{ptr @test_hexdump._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @test_hexdump._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @data_b, !33, !"data_b", i1 false, i1 false}
!33 = !{!"../lib/test_hexdump.c", i32 12, i32 28}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/test_hexdump.c", i32 58, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/test_hexdump.c", i32 58, i32 22}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/test_hexdump.c", i32 59, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_hexdump.c", i32 59, i32 22}
!42 = !{ptr @test_data_8_be, !43, !"test_data_8_be", i1 false, i1 false}
!43 = !{!"../lib/test_hexdump.c", i32 57, i32 27}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test_hexdump.c", i32 48, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/test_hexdump.c", i32 48, i32 14}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_hexdump.c", i32 48, i32 26}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/test_hexdump.c", i32 48, i32 38}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/test_hexdump.c", i32 49, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/test_hexdump.c", i32 49, i32 14}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/test_hexdump.c", i32 49, i32 26}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../lib/test_hexdump.c", i32 49, i32 38}
!60 = !{ptr @test_data_4_be, !61, !"test_data_4_be", i1 false, i1 false}
!61 = !{!"../lib/test_hexdump.c", i32 47, i32 27}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/test_hexdump.c", i32 36, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/test_hexdump.c", i32 36, i32 10}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/test_hexdump.c", i32 36, i32 18}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/test_hexdump.c", i32 36, i32 26}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/test_hexdump.c", i32 37, i32 2}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/test_hexdump.c", i32 37, i32 10}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/test_hexdump.c", i32 37, i32 18}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/test_hexdump.c", i32 37, i32 26}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/test_hexdump.c", i32 38, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/test_hexdump.c", i32 38, i32 10}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/test_hexdump.c", i32 38, i32 18}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../lib/test_hexdump.c", i32 38, i32 26}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../lib/test_hexdump.c", i32 39, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../lib/test_hexdump.c", i32 39, i32 10}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../lib/test_hexdump.c", i32 39, i32 18}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../lib/test_hexdump.c", i32 39, i32 26}
!94 = !{ptr @test_data_2_be, !95, !"test_data_2_be", i1 false, i1 false}
!95 = !{!"../lib/test_hexdump.c", i32 35, i32 27}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../lib/test_hexdump.c", i32 22, i32 2}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../lib/test_hexdump.c", i32 22, i32 8}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../lib/test_hexdump.c", i32 22, i32 14}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../lib/test_hexdump.c", i32 22, i32 20}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/test_hexdump.c", i32 22, i32 26}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/test_hexdump.c", i32 22, i32 32}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../lib/test_hexdump.c", i32 22, i32 38}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../lib/test_hexdump.c", i32 22, i32 44}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/test_hexdump.c", i32 23, i32 2}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../lib/test_hexdump.c", i32 23, i32 8}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../lib/test_hexdump.c", i32 23, i32 14}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../lib/test_hexdump.c", i32 23, i32 20}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../lib/test_hexdump.c", i32 23, i32 26}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../lib/test_hexdump.c", i32 23, i32 32}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../lib/test_hexdump.c", i32 23, i32 38}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../lib/test_hexdump.c", i32 23, i32 44}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../lib/test_hexdump.c", i32 24, i32 2}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../lib/test_hexdump.c", i32 24, i32 8}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../lib/test_hexdump.c", i32 24, i32 14}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../lib/test_hexdump.c", i32 24, i32 20}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../lib/test_hexdump.c", i32 24, i32 32}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../lib/test_hexdump.c", i32 24, i32 38}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../lib/test_hexdump.c", i32 24, i32 44}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../lib/test_hexdump.c", i32 25, i32 2}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../lib/test_hexdump.c", i32 25, i32 8}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../lib/test_hexdump.c", i32 25, i32 14}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../lib/test_hexdump.c", i32 25, i32 20}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../lib/test_hexdump.c", i32 25, i32 26}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../lib/test_hexdump.c", i32 25, i32 32}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../lib/test_hexdump.c", i32 25, i32 38}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/test_hexdump.c", i32 25, i32 44}
!158 = !{ptr @test_data_1, !159, !"test_data_1", i1 false, i1 false}
!159 = !{!"../lib/test_hexdump.c", i32 21, i32 27}
!160 = !{ptr @data_a, !161, !"data_a", i1 false, i1 false}
!161 = !{!"../lib/test_hexdump.c", i32 19, i32 28}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../lib/test_hexdump.c", i32 200, i32 3}
!164 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @test_hexdump_overflow._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @test_hexdump_overflow._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../lib/test_hexdump.c", i32 202, i32 3}
!169 = !{ptr @test_hexdump_overflow._entry.75, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @test_hexdump_overflow._entry_ptr.77, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../lib/test_hexdump.c", i32 203, i32 3}
!173 = !{ptr @test_hexdump_overflow._entry.78, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @test_hexdump_overflow._entry_ptr.80, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @failed_tests, !176, !"failed_tests", i1 false, i1 false}
!176 = !{!"../lib/test_hexdump.c", i32 65, i32 17}
!177 = !{ptr @total_tests, !178, !"total_tests", i1 false, i1 false}
!178 = !{!"../lib/test_hexdump.c", i32 64, i32 17}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i32 0, i32 33}
