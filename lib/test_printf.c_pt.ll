; ModuleID = '/llk/IR_all_yes/lib/test_printf.c_pt.bc'
source_filename = "../lib/test_printf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.anon.3 = type { i32, i32 }
%struct.lockref = type { %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.72 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.73 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.page_flags_test = type { i32, i32, i32, ptr, ptr }
%struct.anon.76 = type { i32, ptr }
%struct.__va_list = type { ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.software_node = type { ptr, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@test_printf_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016test_printf: unloaded.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_printf_exit\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_printf.c\00", [46 x i8] zeroinitializer }, align 32
@test_printf_exit._entry_ptr = internal global ptr @test_printf_exit._entry, section ".printk_index", align 4
@__initcall__kmod_test_printf__238_801_test_printf_init6 = internal global ptr @test_printf_init, section ".initcall6.init", align 4
@__exitcall_test_printf_exit = internal global ptr @test_printf_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [63 x i8] c"test_printf.author=Rasmus Villemoes <linux@rasmusvillemoes.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [33 x i8] c"test_printf.file=lib/test_printf\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"test_printf.license=GPL\00", section ".modinfo", align 1
@test_printf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016test_printf: loaded.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_printf_init\00", [47 x i8] zeroinitializer }, align 32
@test_printf_init._entry_ptr = internal global ptr @test_printf_init._entry, section ".printk_index", align 4
@total_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@failed_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@skipped_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@alloced_buffer = internal unnamed_addr global ptr null, section ".init.data", align 4
@test_buffer = internal unnamed_addr global ptr null, section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100%\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100%%\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xxx%yyy\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xxx%cyyy\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xxx\00yyy\00", [24 x i8] zeroinitializer }, align 32
@__test._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 104, ptr null, ptr null }, align 1
@.str.11 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013test_printf: error in test suite: expected output length %d too long. Format was '%s'.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"__test\00", [25 x i8] zeroinitializer }, align 32
@__test._entry_ptr = internal global ptr @__test._entry, section ".printk_index", align 4
@__test._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 128, ptr null, ptr null }, align 1
@.str.14 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014test_printf: kvasprintf(..., \22%s\22, ...) returned '%s', expected '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@__test._entry_ptr.15 = internal global ptr @__test._entry.13, section ".printk_index", align 4
@do_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014test_printf: vsnprintf(buf, %d, \22%s\22, ...) returned %d, expected %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"do_test\00", [24 x i8] zeroinitializer }, align 32
@do_test._entry_ptr = internal global ptr @do_test._entry, section ".printk_index", align 4
@do_test._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_printf: vsnprintf(buf, %d, \22%s\22, ...) wrote before buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@do_test._entry_ptr.20 = internal global ptr @do_test._entry.18, section ".printk_index", align 4
@do_test._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014test_printf: vsnprintf(buf, 0, \22%s\22, ...) wrote to buffer\0A\00", [35 x i8] zeroinitializer }, align 32
@do_test._entry_ptr.23 = internal global ptr @do_test._entry.21, section ".printk_index", align 4
@do_test._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014test_printf: vsnprintf(buf, %d, \22%s\22, ...) did not nul-terminate buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@do_test._entry_ptr.26 = internal global ptr @do_test._entry.24, section ".printk_index", align 4
@do_test._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014test_printf: vsnprintf(buf, %d, \22%s\22, ...) wrote beyond the nul-terminator\0A\00", [50 x i8] zeroinitializer }, align 32
@do_test._entry_ptr.29 = internal global ptr @do_test._entry.27, section ".printk_index", align 4
@do_test._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014test_printf: vsnprintf(buf, %d, \22%s\22, ...) wrote '%s', expected '%.*s'\0A\00", [54 x i8] zeroinitializer }, align 32
@do_test._entry_ptr.32 = internal global ptr @do_test._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0x1234abcd  \00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#-12x\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  0x1234abcd\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#12x\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"0|001| 12|+123| 1234|-123|-1234\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d|%03d|%3d|%+d|% d|%+d|% d\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0|1|1|128|255\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%hhu|%hhu|%hhu|%hhu|%hhu\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0|1|1|-128|-1\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%hhd|%hhd|%hhd|%hhd|%hhd\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"2015122420151225\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%ho%ho%#ho\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"00|0|0|0|0\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%.2d|%.1d|%.0d|%.*d|%1.0d\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%.0s\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"123\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ABCD|abc|123\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s|%.3s|%.*s\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ABCD\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"abcdef\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"123456\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"1  |  2|3  |  4|5  \00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%-3s|%3s|%-*s|%*s|%*s\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1234      \00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%-10.4s\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"      1234\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%10.4s\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%4.*s\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%.s\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"a||\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%.s|%.0s|%.*s\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a  |   |   \00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%-3.s|%-3.0s|%-3.*s\00", [44 x i8] zeroinitializer }, align 32
@no_hash_pointers = external dso_local local_unnamed_addr global i8, align 1
@plain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014test_printf: skipping plain 'p' tests\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"plain\00", [26 x i8] zeroinitializer }, align 32
@plain._entry_ptr = internal global ptr @plain._entry, section ".printk_index", align 4
@plain._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014test_printf: plain 'p' does not appear to be hashed\0A\00", [41 x i8] zeroinitializer }, align 32
@plain._entry_ptr.79 = internal global ptr @plain._entry.77, section ".printk_index", align 4
@plain._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014test_printf: hashing plain 'p' has unexpected format\0A\00", [40 x i8] zeroinitializer }, align 32
@plain._entry_ptr.82 = internal global ptr @plain._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"456789ab\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%p\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(ptrval)\00", [23 x i8] zeroinitializer }, align 32
@plain_hash_to_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014test_printf: crng possibly not yet initialized. plain 'p' buffer contains \22%s\22\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"plain_hash_to_buffer\00", [43 x i8] zeroinitializer }, align 32
@plain_hash_to_buffer._entry_ptr = internal global ptr @plain_hash_to_buffer._entry, section ".printk_index", align 4
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"00000000\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%px\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pE\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fffffff5\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(efault)\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"000000ab\00", [23 x i8] zeroinitializer }, align 32
@__const.hex_string.buf = private unnamed_addr constant [3 x i8] c"\C0\FF\EE", align 1
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"c0 ff ee|c0:ff:ee|c0-ff-ee|c0ffee\00", [62 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%3ph|%3phC|%3phD|%3phN\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%*ph|%*phC|%*phD|%*phN\00", [41 x i8] zeroinitializer }, align 32
@__const.mac.addr = private unnamed_addr constant [6 x i8] c"-H\D6\FCz\05", align 1
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"2d:48:d6:fc:7a:05\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"05:7a:fc:d6:48:2d\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pMR\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"2d-48-d6-fc-7a-05\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pMF\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2d48d6fc7a05\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pm\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"057afcd6482d\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pmR\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"127.000.000.001|127.0.0.1\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pi4|%pI4\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%piS|%pIS\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"001.002.003.004:12345|1.2.3.4:12345\00", [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%piSp|%pISp\00", [20 x i8] zeroinitializer }, align 32
@__const.uuid.uuid = private unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 1
@.str.113 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"00010203-0405-0607-0809-0a0b0c0d0e0f\00", [59 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUb\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"00010203-0405-0607-0809-0A0B0C0D0E0F\00", [59 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUB\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"03020100-0504-0706-0809-0a0b0c0d0e0f\00", [59 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUl\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"03020100-0504-0706-0809-0A0B0C0D0E0F\00", [59 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUL\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"foo\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pd\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pd2\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pD\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"romeo\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alfa/romeo\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bravo/alfa/romeo\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pd3\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"/bravo/alfa/romeo\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pd4\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"/bravo/alfa\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bravo/alfa  |bravo/alfa  \00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-12pd2|%*pd2\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  bravo/alfa|  bravo/alfa\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%12pd2|%*pd2\00", [19 x i8] zeroinitializer }, align 32
@test_dentry = internal global [4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }] [{ i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 } { i32 0, %struct.seqcount_spinlock zeroinitializer, %struct.hlist_bl_node zeroinitializer, ptr @test_dentry, [4 x i8] undef, { { %struct.anon.3 }, ptr, [4 x i8] } { { %struct.anon.3 } { %struct.anon.3 { i32 3, i32 0 } }, ptr getelementptr (i8, ptr @test_dentry, i64 76), [4 x i8] undef }, ptr null, [36 x i8] c"foo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.lockref zeroinitializer, ptr null, ptr null, i32 0, ptr null, %union.anon.72 zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %union.anon.73 zeroinitializer }, { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 } { i32 0, %struct.seqcount_spinlock zeroinitializer, %struct.hlist_bl_node zeroinitializer, ptr @test_dentry, [4 x i8] undef, { { %struct.anon.3 }, ptr, [4 x i8] } { { %struct.anon.3 } { %struct.anon.3 { i32 5, i32 0 } }, ptr getelementptr (i8, ptr @test_dentry, i64 284), [4 x i8] undef }, ptr null, [36 x i8] c"bravo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.lockref zeroinitializer, ptr null, ptr null, i32 0, ptr null, %union.anon.72 zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %union.anon.73 zeroinitializer }, { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 } { i32 0, %struct.seqcount_spinlock zeroinitializer, %struct.hlist_bl_node zeroinitializer, ptr getelementptr (i8, ptr @test_dentry, i64 208), [4 x i8] undef, { { %struct.anon.3 }, ptr, [4 x i8] } { { %struct.anon.3 } { %struct.anon.3 { i32 4, i32 0 } }, ptr getelementptr (i8, ptr @test_dentry, i64 492), [4 x i8] undef }, ptr null, [36 x i8] c"alfa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.lockref zeroinitializer, ptr null, ptr null, i32 0, ptr null, %union.anon.72 zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %union.anon.73 zeroinitializer }, { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 } { i32 0, %struct.seqcount_spinlock zeroinitializer, %struct.hlist_bl_node zeroinitializer, ptr getelementptr (i8, ptr @test_dentry, i64 416), [4 x i8] undef, { { %struct.anon.3 }, ptr, [4 x i8] } { { %struct.anon.3 } { %struct.anon.3 { i32 5, i32 0 } }, ptr getelementptr (i8, ptr @test_dentry, i64 700), [4 x i8] undef }, ptr null, [36 x i8] c"romeo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.lockref zeroinitializer, ptr null, ptr null, i32 0, ptr null, %union.anon.72 zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %union.anon.73 zeroinitializer }], section ".init.data", align 8
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%pt?)\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pt\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"2018-11-26T05:35:43\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ptR\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0118-10-26T05:35:43\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%ptRr\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"05:35:43|2018-11-26\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%ptRt|%ptRd\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"05:35:43|0118-10-26\00", [44 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%ptRtr|%ptRdr\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%ptRttr|%ptRdtr\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"05:35:43 tr|2018-11-26 tr\00", [38 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%ptRt tr|%ptRd tr\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"2019-01-04T15:32:23\00", [44 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ptT\00", [27 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0119-00-04T15:32:23\00", [44 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%ptTr\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"15:32:23|2019-01-04\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%ptTt|%ptTd\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"15:32:23|0119-00-04\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%ptTtr|%ptTdr\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"2019-01-04 15:32:23\00", [44 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%ptTs\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0119-00-04 15:32:23\00", [44 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%ptTsr\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%ptTts|%ptTds\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%ptTtrs|%ptTdrs\00", [16 x i8] zeroinitializer }, align 32
@__const.bitmap.primes = private unnamed_addr constant [8 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 13, i32 17, i32 19], align 4
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"00000|00000\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%20pb|%*pb\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%20pbl|%*pbl\00", [19 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a28ac|a28ac\00", [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"2-3,5,7,11,13,17,19|2-3,5,7,11,13,17,19\00", [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fffff|fffff\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0-19|0-19\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1-20,60000-60014\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pbl\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"uptodate|dirty|lru|active|swapbacked\00", [59 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read|exec|mayread|maywrite|mayexec\00", [61 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pGv\00", [27 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GFP_TRANSHUGE\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pGg\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GFP_ATOMIC|GFP_DMA\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__GFP_ATOMIC\00", [19 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#lx\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__GFP_ATOMIC|%#lx\00", [46 x i8] zeroinitializer }, align 32
@pft = internal constant { [5 x %struct.page_flags_test], [60 x i8] } { [5 x %struct.page_flags_test] [%struct.page_flags_test { i32 0, i32 0, i32 0, ptr @.str.188, ptr @.str.189 }, %struct.page_flags_test { i32 0, i32 0, i32 0, ptr @.str.188, ptr @.str.190 }, %struct.page_flags_test { i32 2, i32 30, i32 3, ptr @.str.188, ptr @.str.191 }, %struct.page_flags_test { i32 0, i32 0, i32 0, ptr @.str.192, ptr @.str.193 }, %struct.page_flags_test { i32 0, i32 0, i32 0, ptr @.str.192, ptr @.str.194 }], [60 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx(\00", [26 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s=\00", [28 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pGp\00", [27 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"section\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zone\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%#x\00", [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lastcpupid\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kasantag\00", [23 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-1234\00", [26 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pe\00", [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(-ENOTSOCK)\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(%pe)\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(-EAGAIN)\00", [22 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[-EIO    ]\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%-8pe]\00", [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[    -EIO]\00", [21 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[%8pe]\00", [25 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-EPROBE_DEFER\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"first\00", [26 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"second\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"third\00", [26 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"first/second/third\00", [45 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"first/second\00", [19 x i8] zeroinitializer }, align 32
@fwnode_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014test_printf: cannot register softnodes; rval %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fwnode_pointer\00", [17 x i8] zeroinitializer }, align 32
@fwnode_pointer._entry_ptr = internal global ptr @fwnode_pointer._entry, section ".printk_index", align 4
@.str.212 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pfw\00", [27 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pfwf\00", [26 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pfwP\00", [26 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NV12 little-endian (0x3231564e)\00", [32 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NV12 big-endian (0xb231564e)\00", [35 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c".... little-endian (0x10111213)\00", [32 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Y10  little-endian (0x20303159)\00", [32 x i8] zeroinitializer }, align 32
@__const.fourcc_pointer.try = private unnamed_addr constant [4 x %struct.anon.76] [%struct.anon.76 { i32 842094158, ptr @.str.215 }, %struct.anon.76 { i32 -1305389490, ptr @.str.216 }, %struct.anon.76 { i32 269554195, ptr @.str.217 }, %struct.anon.76 { i32 540029273, ptr @.str.218 }], align 4
@.str.219 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%p4cc\00", [26 x i8] zeroinitializer }, align 32
@kstm_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.222, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016test_printf: skipped %u tests\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kstm_report\00", [20 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lib/../tools/testing/selftests/kselftest_module.h\00", [46 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr = internal global ptr @kstm_report._entry, section ".printk_index", align 4
@kstm_report._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.221, ptr @.str.222, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016test_printf: remaining %u tests passed\0A\00", [54 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.225 = internal global ptr @kstm_report._entry.223, section ".printk_index", align 4
@kstm_report._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.221, ptr @.str.222, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016test_printf: all %u tests passed\0A\00", [60 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.228 = internal global ptr @kstm_report._entry.226, section ".printk_index", align 4
@kstm_report._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.221, ptr @.str.222, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014test_printf: failed %u out of %u tests\0A\00", [54 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.231 = internal global ptr @kstm_report._entry.229, section ".printk_index", align 4
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 801, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 145, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 146, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 147, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 148, i32 9 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 103, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 127, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 55, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 61, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 67, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 76, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 82, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 88, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 154, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 155, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 156, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 157, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 158, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 159, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 168, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 186, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 187, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 188, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 189, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 190, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 204, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 205, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 206, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 207, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 307, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 314, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 321, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 291, i32 19 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 267, i32 30 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 272, i32 19 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 273, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 349, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 350, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 351, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 360, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 362, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 371, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 406, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 408, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 417, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 418, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 419, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 420, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 421, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 433, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 434, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 436, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 457, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 458, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 459, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 460, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 481, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 482, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 486, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 489, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 490, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 491, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 492, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 493, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 495, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 496, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 519, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 520, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 521, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 522, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 523, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 524, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 525, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 527, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 528, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 529, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 530, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 532, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 533, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 534, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 535, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 565, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 566, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 570, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 571, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 574, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 575, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 553, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 664, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 668, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 671, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 674, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 677, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 681, i32 33 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 684, i32 33 }
@___asan_gen_.766 = private unnamed_addr constant [4 x i8] c"pft\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 593, i32 37 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 619, i32 38 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 621, i32 54 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 632, i32 54 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 639, i32 44 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 641, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 595, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 595, i32 9 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 597, i32 9 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 599, i32 9 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 601, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 601, i32 10 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 603, i32 10 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 741, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 748, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 749, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 752, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 753, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 754, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 695, i32 13 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 696, i32 13 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 697, i32 13 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 700, i32 33 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 701, i32 40 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 708, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 712, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 714, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 715, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 727, i32 17 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 728, i32 17 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 729, i32 17 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 730, i32 17 }
@___asan_gen_.881 = private constant [21 x i8] c"../lib/test_printf.c\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.881, i32 735, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.911, i32 30, i32 4 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.911, i32 31, i32 4 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.911, i32 33, i32 4 }
@___asan_gen_.907 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.910 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [53 x i8] c"../lib/../tools/testing/selftests/kselftest_module.h\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.911, i32 35, i32 3 }
@llvm.compiler.used = appending global [254 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_test_printf_exit, ptr @__initcall__kmod_test_printf__238_801_test_printf_init6, ptr @__test._entry, ptr @__test._entry.13, ptr @__test._entry_ptr, ptr @__test._entry_ptr.15, ptr @do_test._entry, ptr @do_test._entry.18, ptr @do_test._entry.21, ptr @do_test._entry.24, ptr @do_test._entry.27, ptr @do_test._entry.30, ptr @do_test._entry_ptr, ptr @do_test._entry_ptr.20, ptr @do_test._entry_ptr.23, ptr @do_test._entry_ptr.26, ptr @do_test._entry_ptr.29, ptr @do_test._entry_ptr.32, ptr @fwnode_pointer._entry, ptr @fwnode_pointer._entry_ptr, ptr @kstm_report._entry, ptr @kstm_report._entry.223, ptr @kstm_report._entry.226, ptr @kstm_report._entry.229, ptr @kstm_report._entry_ptr, ptr @kstm_report._entry_ptr.225, ptr @kstm_report._entry_ptr.228, ptr @kstm_report._entry_ptr.231, ptr @plain._entry, ptr @plain._entry.77, ptr @plain._entry.80, ptr @plain._entry_ptr, ptr @plain._entry_ptr.79, ptr @plain._entry_ptr.82, ptr @plain_hash_to_buffer._entry, ptr @plain_hash_to_buffer._entry_ptr, ptr @test_printf_exit, ptr @test_printf_exit._entry, ptr @test_printf_exit._entry_ptr, ptr @test_printf_init._entry, ptr @test_printf_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @pft, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.224, ptr @.str.227, ptr @.str.230], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_printf_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_printf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plain._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plain._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plain_hash_to_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pft to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnode_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_printf_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_printf_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  tail call fastcc void @selftest() #13
  %0 = load i32, ptr @total_tests, align 4
  %1 = load i32, ptr @failed_tests, align 4
  %2 = load i32, ptr @skipped_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %do.end12.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %2) #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, i32 noundef %0) #12
  br label %kstm_report.exit

do.end7.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, i32 noundef %0) #12
  br label %kstm_report.exit

do.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %1, i32 noundef %0) #12
  br label %kstm_report.exit

kstm_report.exit:                                 ; preds = %do.end12.i, %do.end7.i, %do.end.i
  %cond.i = phi i32 [ 0, %do.end.i ], [ 0, %do.end7.i ], [ -22, %do.end12.i ]
  ret i32 %cond.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @selftest() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 288) #14
  store ptr %call7.i, ptr @alloced_buffer, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call7.i, i32 16
  store ptr %add.ptr, ptr @test_buffer, align 4
  tail call fastcc void @test_basic() #13
  tail call fastcc void @test_number() #13
  tail call fastcc void @test_string() #13
  tail call fastcc void @test_pointer() #13
  %1 = load ptr, ptr @alloced_buffer, align 4
  tail call void @kfree(ptr noundef %1) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_basic() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %nul = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nul) #15
  %0 = ptrtoint ptr %nul to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %nul, align 1
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull %nul) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.6, i32 noundef 4, ptr noundef nonnull @.str.7) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.8, i32 noundef 7, ptr noundef nonnull @.str.9, i32 noundef 37) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.10, i32 noundef 7, ptr noundef nonnull @.str.9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nul) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_number() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.33, i32 noundef 12, ptr noundef nonnull @.str.34, i32 noundef 305441741) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.35, i32 noundef 12, ptr noundef nonnull @.str.36, i32 noundef 305441741) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.37, i32 noundef 31, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 1, i32 noundef 12, i32 noundef 123, i32 noundef 1234, i32 noundef -123, i32 noundef -1234) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.39, i32 noundef 13, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 1, i32 noundef 257, i32 noundef 128, i32 noundef -1) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.41, i32 noundef 13, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 1, i32 noundef 257, i32 noundef 128, i32 noundef -1) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.43, i32 noundef 16, ptr noundef nonnull @.str.44, i32 noundef 1037, i32 noundef 5282, i32 noundef -11627) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.45, i32 noundef 10, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.49, i32 noundef 12, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 3, ptr noundef nonnull @.str.53) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.54, i32 noundef 19, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 3, ptr noundef nonnull @.str.58, i32 noundef 3, ptr noundef nonnull @.str.59, i32 noundef -3, ptr noundef nonnull @.str.60) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.61, i32 noundef 10, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.53) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.63, i32 noundef 10, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.53) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.65, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef -5, ptr noundef nonnull @.str.53) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.53, i32 noundef 6, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.53) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.68, i32 noundef 3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef nonnull @.str.72) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.73, i32 noundef 11, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef nonnull @.str.72) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_pointer() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @plain() #13
  tail call fastcc void @null_pointer() #13
  tail call fastcc void @error_pointer() #13
  tail call fastcc void @invalid_pointer() #13
  tail call fastcc void @hex_string() #13
  tail call fastcc void @mac() #13
  tail call fastcc void @ip4() #12
  tail call fastcc void @uuid() #13
  tail call fastcc void @dentry() #13
  tail call fastcc void @time_and_date() #13
  tail call fastcc void @bitmap() #13
  tail call fastcc void @flags() #13
  tail call fastcc void @errptr() #13
  tail call fastcc void @fwnode_pointer() #13
  tail call fastcc void @fourcc_pointer() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @__test(ptr noundef %expect, i32 noundef %elen, ptr noundef %fmt, ...) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #15
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !405
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %elen)
  %cmp = icmp sgt i32 %elen, 255
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %elen, ptr noundef %fmt) #12
  %1 = load i32, ptr @failed_tests, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @failed_tests, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %ap)
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call1 = call fastcc i32 @do_test(i32 noundef 256, ptr noundef %expect, i32 noundef %elen, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #13
  %3 = load i32, ptr @failed_tests, align 4
  %add = add i32 %3, %call1
  store i32 %add, ptr @failed_tests, align 4
  %add2 = add nsw i32 %elen, 1
  %call.i = call i32 @prandom_u32() #15
  %conv.i = zext i32 %call.i to i64
  %conv1.i = zext i32 %add2 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add4 = add nuw i32 %conv2.i, 1
  %4 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %4)
  %.fca.0.load33 = load i32, ptr %ap, align 4
  %.fca.0.insert34 = insertvalue [1 x i32] poison, i32 %.fca.0.load33, 0
  %call6 = call fastcc i32 @do_test(i32 noundef %add4, ptr noundef %expect, i32 noundef %elen, ptr noundef %fmt, [1 x i32] %.fca.0.insert34) #13
  %5 = load i32, ptr @failed_tests, align 4
  %add7 = add i32 %5, %call6
  store i32 %add7, ptr @failed_tests, align 4
  %6 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.0.load36 = load i32, ptr %ap, align 4
  %.fca.0.insert37 = insertvalue [1 x i32] poison, i32 %.fca.0.load36, 0
  %call9 = call fastcc i32 @do_test(i32 noundef 0, ptr noundef %expect, i32 noundef %elen, ptr noundef %fmt, [1 x i32] %.fca.0.insert37) #13
  %7 = load i32, ptr @failed_tests, align 4
  %add10 = add i32 %7, %call9
  store i32 %add10, ptr @failed_tests, align 4
  %8 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.0.load39 = load i32, ptr %ap, align 4
  %.fca.0.insert40 = insertvalue [1 x i32] poison, i32 %.fca.0.load39, 0
  %call12 = call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef %fmt, [1 x i32] %.fca.0.insert40) #15
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %if.then13

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then13:                                        ; preds = %if.end
  %9 = load i32, ptr @total_tests, align 4
  %inc14 = add i32 %9, 1
  store i32 %inc14, ptr @total_tests, align 4
  %bcmp = call i32 @bcmp(ptr nonnull %call12, ptr %expect, i32 %add2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool17.not = icmp eq i32 %bcmp, 0
  br i1 %tobool17.not, label %if.then13.if.end25_crit_edge, label %do.end21

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %fmt, ptr noundef nonnull %call12, ptr noundef %expect) #12
  %10 = load i32, ptr @failed_tests, align 4
  %inc24 = add i32 %10, 1
  store i32 %inc24, ptr @failed_tests, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %if.then13.if.end25_crit_edge
  call void @kfree(ptr noundef nonnull %call12) #15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end.if.end26_crit_edge
  call void @llvm.va_end(ptr nonnull %ap)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test(i32 noundef %bufsize, ptr noundef %expect, i32 noundef %elen, ptr noundef %fmt, [1 x i32] %ap.coerce) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  %aq = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %ap.coerce.fca.0.extract = extractvalue [1 x i32] %ap.coerce, 0
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ap.coerce.fca.0.extract, ptr %ap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aq) #15
  %1 = ptrtoint ptr %aq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %aq, align 4, !annotation !405
  %2 = load i32, ptr @total_tests, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @total_tests, align 4
  %3 = load ptr, ptr @alloced_buffer, align 4
  %4 = call ptr @memset(ptr %3, i32 36, i32 288)
  call void @llvm.va_copy(ptr nonnull %aq, ptr nonnull %ap)
  %5 = load ptr, ptr @test_buffer, align 4
  %6 = ptrtoint ptr %aq to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.0.load = load i32, ptr %aq, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %5, i32 noundef %bufsize, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %aq)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %elen)
  %cmp.not = icmp eq i32 %call, %elen
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %bufsize, ptr noundef %fmt, i32 noundef %call, i32 noundef %elen) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr @alloced_buffer, align 4
  %call3 = call ptr @memchr_inv(ptr noundef %7, i32 noundef 36, i32 noundef 16) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %bufsize, ptr noundef %fmt) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool11.not = icmp eq i32 %bufsize, 0
  br i1 %tobool11.not, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.end10
  %8 = load ptr, ptr @test_buffer, align 4
  %call13 = call ptr @memchr_inv(ptr noundef %8, i32 noundef 36, i32 noundef 272) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %fmt) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %sub = add i32 %bufsize, -1
  %9 = call i32 @llvm.smin.i32(i32 %sub, i32 %elen)
  %10 = load ptr, ptr @test_buffer, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25.not = icmp eq i8 %12, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %bufsize, ptr noundef %fmt) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %add.ptr33 = getelementptr i8, ptr %arrayidx, i32 1
  %sub34 = sub i32 271, %9
  %call35 = call ptr @memchr_inv(ptr noundef %add.ptr33, i32 noundef 36, i32 noundef %sub34) #15
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %bufsize, ptr noundef %fmt) #12
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %13 = load ptr, ptr @test_buffer, align 4
  %bcmp = call i32 @bcmp(ptr %13, ptr %expect, i32 %9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %do.end49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %bufsize, ptr noundef %fmt, ptr noundef %13, i32 noundef %9, ptr noundef %expect) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end43.cleanup_crit_edge, %do.end40, %do.end29, %do.end18, %if.then12.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end7 ], [ 1, %do.end29 ], [ 1, %do.end40 ], [ 1, %do.end49 ], [ 1, %do.end18 ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aq) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plain() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @no_hash_pointers to i32))
  %0 = load i8, ptr @no_hash_pointers, align 1, !range !406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @plain_hash() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.78.sink = phi ptr [ @.str.75, %entry.cleanup.sink.split_crit_edge ], [ @.str.78, %if.end.cleanup.sink.split_crit_edge ]
  %failed_tests.sink22 = phi ptr [ @skipped_tests, %entry.cleanup.sink.split_crit_edge ], [ @failed_tests, %if.end.cleanup.sink.split_crit_edge ]
  %.sink21 = phi i32 [ 2, %entry.cleanup.sink.split_crit_edge ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.78.sink) #12
  %1 = ptrtoint ptr %failed_tests.sink22 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %failed_tests.sink22, align 4
  %inc = add i32 %2, %.sink21
  store i32 %inc, ptr %failed_tests.sink22, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @null_pointer() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.88, i32 noundef 8, ptr noundef nonnull @.str.84, ptr noundef null) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.88, i32 noundef 8, ptr noundef nonnull @.str.89, ptr noundef null) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.90, i32 noundef 6, ptr noundef nonnull @.str.91, ptr noundef null) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @error_pointer() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.92, i32 noundef 8, ptr noundef nonnull @.str.84, ptr noundef nonnull inttoptr (i32 -11 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.92, i32 noundef 8, ptr noundef nonnull @.str.89, ptr noundef nonnull inttoptr (i32 -11 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.93, i32 noundef 8, ptr noundef nonnull @.str.91, ptr noundef nonnull inttoptr (i32 -11 to ptr)) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @invalid_pointer() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @test_hashed(ptr noundef nonnull @.str.84, ptr noundef nonnull inttoptr (i32 171 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.94, i32 noundef 8, ptr noundef nonnull @.str.89, ptr noundef nonnull inttoptr (i32 171 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.93, i32 noundef 8, ptr noundef nonnull @.str.91, ptr noundef nonnull inttoptr (i32 171 to ptr)) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hex_string() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #15
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.hex_string.buf, i32 3)
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.95, i32 noundef 33, ptr noundef nonnull @.str.96, ptr noundef nonnull %buf, ptr noundef nonnull %buf, ptr noundef nonnull %buf, ptr noundef nonnull %buf) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.95, i32 noundef 33, ptr noundef nonnull @.str.97, i32 noundef 3, ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mac() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = call ptr @memcpy(ptr %addr, ptr @__const.mac.addr, i32 6)
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.98, i32 noundef 17, ptr noundef nonnull @.str.99, ptr noundef nonnull %addr) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.100, i32 noundef 17, ptr noundef nonnull @.str.101, ptr noundef nonnull %addr) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.102, i32 noundef 17, ptr noundef nonnull @.str.103, ptr noundef nonnull %addr) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.104, i32 noundef 12, ptr noundef nonnull @.str.105, ptr noundef nonnull %addr) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.106, i32 noundef 12, ptr noundef nonnull @.str.107, ptr noundef nonnull %addr) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uuid() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %uuid = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid) #15
  %0 = call ptr @memcpy(ptr %uuid, ptr @__const.uuid.uuid, i32 16)
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.113, i32 noundef 36, ptr noundef nonnull @.str.114, ptr noundef nonnull %uuid) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.115, i32 noundef 36, ptr noundef nonnull @.str.116, ptr noundef nonnull %uuid) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.117, i32 noundef 36, ptr noundef nonnull @.str.118, ptr noundef nonnull %uuid) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.119, i32 noundef 36, ptr noundef nonnull @.str.120, ptr noundef nonnull %uuid) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dentry() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.121, i32 noundef 3, ptr noundef nonnull @.str.122, ptr noundef nonnull @test_dentry) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.121, i32 noundef 3, ptr noundef nonnull @.str.123, ptr noundef nonnull @test_dentry) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.90, i32 noundef 6, ptr noundef nonnull @.str.122, ptr noundef null) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.93, i32 noundef 8, ptr noundef nonnull @.str.122, ptr noundef nonnull inttoptr (i32 171 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.90, i32 noundef 6, ptr noundef nonnull @.str.124, ptr noundef null) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.93, i32 noundef 8, ptr noundef nonnull @.str.124, ptr noundef nonnull inttoptr (i32 171 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.125, i32 noundef 5, ptr noundef nonnull @.str.122, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 3, i32 0)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.126, i32 noundef 10, ptr noundef nonnull @.str.123, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 3, i32 0)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.127, i32 noundef 16, ptr noundef nonnull @.str.128, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 3, i32 0)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.129, i32 noundef 17, ptr noundef nonnull @.str.130, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 3, i32 0)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.131, i32 noundef 11, ptr noundef nonnull @.str.130, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 2, i32 0)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.132, i32 noundef 25, ptr noundef nonnull @.str.133, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 2, i32 0), i32 noundef -12, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 2, i32 0)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.134, i32 noundef 25, ptr noundef nonnull @.str.135, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 2, i32 0), i32 noundef 12, ptr noundef getelementptr inbounds ([4 x { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, [4 x i8], { { %struct.anon.3 }, ptr, [4 x i8] }, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }], ptr @test_dentry, i32 0, i32 2, i32 0)) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @time_and_date() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %t = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #15
  %0 = getelementptr inbounds i8, ptr %tm, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 43, ptr %tm, align 4
  %3 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 35, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 26, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 118, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t) #15
  %13 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1546615943, ptr %t, align 8
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.137, i32 noundef 6, ptr noundef nonnull @.str.138, ptr noundef nonnull %tm) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.139, i32 noundef 19, ptr noundef nonnull @.str.140, ptr noundef nonnull %tm) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.141, i32 noundef 19, ptr noundef nonnull @.str.142, ptr noundef nonnull %tm) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.143, i32 noundef 19, ptr noundef nonnull @.str.144, ptr noundef nonnull %tm, ptr noundef nonnull %tm) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.145, i32 noundef 19, ptr noundef nonnull @.str.146, ptr noundef nonnull %tm, ptr noundef nonnull %tm) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.143, i32 noundef 19, ptr noundef nonnull @.str.147, ptr noundef nonnull %tm, ptr noundef nonnull %tm) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.148, i32 noundef 25, ptr noundef nonnull @.str.149, ptr noundef nonnull %tm, ptr noundef nonnull %tm) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.150, i32 noundef 19, ptr noundef nonnull @.str.151, ptr noundef nonnull %t) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.152, i32 noundef 19, ptr noundef nonnull @.str.153, ptr noundef nonnull %t) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.154, i32 noundef 19, ptr noundef nonnull @.str.155, ptr noundef nonnull %t, ptr noundef nonnull %t) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.156, i32 noundef 19, ptr noundef nonnull @.str.157, ptr noundef nonnull %t, ptr noundef nonnull %t) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.158, i32 noundef 19, ptr noundef nonnull @.str.159, ptr noundef nonnull %t) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.160, i32 noundef 19, ptr noundef nonnull @.str.161, ptr noundef nonnull %t) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.154, i32 noundef 19, ptr noundef nonnull @.str.162, ptr noundef nonnull %t, ptr noundef nonnull %t) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.156, i32 noundef 19, ptr noundef nonnull @.str.163, ptr noundef nonnull %t, ptr noundef nonnull %t) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bitmap() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bits = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #15
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bits, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.164, i32 noundef 11, ptr noundef nonnull @.str.165, ptr noundef nonnull %bits, i32 noundef 20, ptr noundef nonnull %bits) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.166, i32 noundef 1, ptr noundef nonnull @.str.167, ptr noundef nonnull %bits, i32 noundef 20, ptr noundef nonnull %bits) #13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr @__const.bitmap.primes, i32 0, i32 %i.017
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @_set_bit(i32 noundef %2, ptr noundef nonnull %bits) #15
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.168, i32 noundef 11, ptr noundef nonnull @.str.165, ptr noundef nonnull %bits, i32 noundef 20, ptr noundef nonnull %bits) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.169, i32 noundef 39, ptr noundef nonnull @.str.167, ptr noundef nonnull %bits, i32 noundef 20, ptr noundef nonnull %bits) #13
  %3 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bits, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.170, i32 noundef 11, ptr noundef nonnull @.str.165, ptr noundef nonnull %bits, i32 noundef 20, ptr noundef nonnull %bits) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.171, i32 noundef 9, ptr noundef nonnull @.str.167, ptr noundef nonnull %bits, i32 noundef 20, ptr noundef nonnull %bits) #13
  call fastcc void @large_bitmap() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flags() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %flags = alloca i32, align 4
  %gfp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gfp) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 256) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @page_flags_test(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %call7.i) #13
  tail call fastcc void @page_flags_test(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4194304, ptr noundef nonnull @.str.5, ptr noundef nonnull %call7.i) #13
  tail call fastcc void @page_flags_test(i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2097151, i32 noundef 1, i32 noundef 4718652, ptr noundef nonnull @.str.174, ptr noundef nonnull %call7.i) #13
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 117, ptr %flags, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.175, i32 noundef 34, ptr noundef nonnull @.str.176, ptr noundef nonnull %flags) #13
  %2 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 18621642, ptr %gfp, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.177, i32 noundef 13, ptr noundef nonnull @.str.178, ptr noundef nonnull %gfp) #13
  %3 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2593, ptr %gfp, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.179, i32 noundef 18, ptr noundef nonnull @.str.178, ptr noundef nonnull %gfp) #13
  %4 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %gfp, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.180, i32 noundef 12, ptr noundef nonnull @.str.178, ptr noundef nonnull %gfp) #13
  %5 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -67108864, ptr %gfp, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.181, i32 noundef -67108864)
  %call2 = call i32 @strlen(ptr noundef nonnull %call7.i) #16
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull %call7.i, i32 noundef %call2, ptr noundef nonnull @.str.178, ptr noundef nonnull %gfp) #13
  %6 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gfp, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.182, i32 noundef %7)
  %8 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gfp, align 4
  %or4 = or i32 %9, 512
  store i32 %or4, ptr %gfp, align 4
  %call5 = call i32 @strlen(ptr noundef nonnull %call7.i) #16
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull %call7.i, i32 noundef %call5, ptr noundef nonnull @.str.178, ptr noundef nonnull %gfp) #13
  call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gfp) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @errptr() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.195, i32 noundef 5, ptr noundef nonnull @.str.196, ptr noundef nonnull inttoptr (i32 -1234 to ptr)) #13
  tail call fastcc void @test_hashed(ptr noundef nonnull @.str.196, ptr noundef nonnull inttoptr (i32 1164413355 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.197, i32 noundef 11, ptr noundef nonnull @.str.198, ptr noundef nonnull inttoptr (i32 -88 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.199, i32 noundef 9, ptr noundef nonnull @.str.198, ptr noundef nonnull inttoptr (i32 -11 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.199, i32 noundef 9, ptr noundef nonnull @.str.198, ptr noundef nonnull inttoptr (i32 -11 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.200, i32 noundef 10, ptr noundef nonnull @.str.201, ptr noundef nonnull inttoptr (i32 -5 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.202, i32 noundef 10, ptr noundef nonnull @.str.203, ptr noundef nonnull inttoptr (i32 -5 to ptr)) #13
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.204, i32 noundef 13, ptr noundef nonnull @.str.196, ptr noundef nonnull inttoptr (i32 -517 to ptr)) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwnode_pointer() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %softnodes = alloca [4 x %struct.software_node], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %softnodes) #15
  %0 = ptrtoint ptr %softnodes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.205, ptr %softnodes, align 4
  %parent = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %parent, align 4
  %properties = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 0, i32 2
  %2 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %properties, align 4
  %arrayinit.element = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 1
  %3 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.206, ptr %arrayinit.element, align 4
  %parent2 = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 1, i32 1
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %softnodes, ptr %parent2, align 4
  %properties3 = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 1, i32 2
  %5 = ptrtoint ptr %properties3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %properties3, align 4
  %arrayinit.element4 = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 2
  %6 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.207, ptr %arrayinit.element4, align 4
  %parent6 = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 2, i32 1
  %7 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayinit.element, ptr %parent6, align 4
  %properties8 = getelementptr inbounds %struct.software_node, ptr %softnodes, i32 2, i32 2
  %8 = call ptr @memset(ptr %properties8, i32 0, i32 16)
  %call = call i32 @software_node_register_nodes(ptr noundef nonnull %softnodes) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call ptr @software_node_fwnode(ptr noundef %arrayinit.element) #15
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.209, i32 noundef 12, ptr noundef nonnull @.str.212, ptr noundef %call15) #13
  %call17 = call ptr @software_node_fwnode(ptr noundef %arrayinit.element4) #15
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.208, i32 noundef 18, ptr noundef nonnull @.str.212, ptr noundef %call17) #13
  %call19 = call ptr @software_node_fwnode(ptr noundef %arrayinit.element4) #15
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.208, i32 noundef 18, ptr noundef nonnull @.str.213, ptr noundef %call19) #13
  %call21 = call ptr @software_node_fwnode(ptr noundef %arrayinit.element) #15
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.206, i32 noundef 6, ptr noundef nonnull @.str.214, ptr noundef %call21) #13
  %call23 = call ptr @software_node_fwnode(ptr noundef %arrayinit.element4) #15
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.207, i32 noundef 5, ptr noundef nonnull @.str.214, ptr noundef %call23) #13
  call void @software_node_unregister_nodes(ptr noundef nonnull %softnodes) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %softnodes) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fourcc_pointer() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %try = alloca [4 x %struct.anon.76], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %try) #15
  %0 = call ptr @memcpy(ptr %try, ptr @__const.fourcc_pointer.try, i32 32)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.anon.76], ptr %try, i32 0, i32 %i.08
  %str = getelementptr [4 x %struct.anon.76], ptr %try, i32 0, i32 %i.08, i32 1
  %1 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %str, align 4
  %call = call i32 @strlen(ptr noundef %2) #16
  call void (ptr, i32, ptr, ...) @__test(ptr noundef %2, i32 noundef %call, ptr noundef nonnull @.str.219, ptr noundef %arrayidx) #13
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %try) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @plain_hash() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %call = call fastcc i32 @plain_hash_to_buffer(ptr noundef nonnull inttoptr (i32 1164413355 to ptr), ptr noundef nonnull %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.83, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  %. = sext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @plain_hash_to_buffer(ptr noundef %p, ptr nocapture noundef %buf) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 64, ptr noundef nonnull @.str.84, ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp.not = icmp eq i32 %call, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.85, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_hashed(ptr noundef %fmt, ptr noundef %p) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %call = call fastcc i32 @plain_hash_to_buffer(ptr noundef %p, ptr noundef nonnull %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call i32 @strlen(ptr noundef nonnull %buf) #16
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull %buf, i32 noundef %call3, ptr noundef %fmt, ptr noundef %p) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip4() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %sa = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #15
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %sa, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sockaddr_in, ptr %sa, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %sa, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %sa to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %sa, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 12345, ptr %0, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2130706433, ptr %1, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.108, i32 noundef 25, ptr noundef nonnull @.str.109, ptr noundef %1, ptr noundef %1) #13
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.108, i32 noundef 25, ptr noundef nonnull @.str.110, ptr noundef nonnull %sa, ptr noundef nonnull %sa) #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16909060, ptr %1, align 4
  call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.111, i32 noundef 35, ptr noundef nonnull @.str.112, ptr noundef nonnull %sa, ptr noundef nonnull %sa) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @large_bitmap() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @bitmap_zalloc(i32 noundef 65536, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__bitmap_set(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 20) #15
  tail call void @__bitmap_set(ptr noundef nonnull %call, i32 noundef 60000, i32 noundef 15) #15
  tail call void (ptr, i32, ptr, ...) @__test(ptr noundef nonnull @.str.172, i32 noundef 16, ptr noundef nonnull @.str.173, i32 noundef 65536, ptr noundef nonnull %call) #13
  tail call void @bitmap_free(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_flags_test(i32 noundef %section, i32 noundef %node, i32 noundef %zone, i32 noundef %last_cpupid, i32 noundef %kasan_tag, i32 noundef %flags, ptr noundef %name, ptr noundef %cmp_buf) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %flags.addr = alloca i32, align 4
  %values = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %values) #15
  %0 = getelementptr inbounds [5 x i32], ptr %values, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %values, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %values, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %values, i32 0, i32 4
  %4 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %section, ptr %values, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %node, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %zone, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %last_cpupid, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %kasan_tag, ptr %3, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %or7778 = phi i32 [ %flags, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr %values, i32 0, i32 %i.079
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %mask = getelementptr [5 x %struct.page_flags_test], ptr @pft, i32 0, i32 %i.079, i32 2
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, %10
  %shift = getelementptr [5 x %struct.page_flags_test], ptr @pft, i32 0, i32 %i.079, i32 1
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  %shl = shl i32 %and, %14
  %or = or i32 %or7778, %shl
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %15 = ptrtoint ptr %flags.addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %flags.addr, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %cmp_buf, i32 noundef 256, ptr noundef nonnull @.str.183, i32 noundef %or) #15
  %and6 = and i32 %or, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %cmp_buf, i32 %call
  %sub = sub i32 256, %call
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.184, ptr noundef %name) #15
  %add = add i32 %call7, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %size.0 = phi i32 [ %add, %if.then ], [ %call, %for.end.if.end_crit_edge ]
  %16 = xor i1 %tobool.not, true
  br label %for.body10

for.body10:                                       ; preds = %for.inc37.for.body10_crit_edge, %if.end
  %i.182 = phi i32 [ 0, %if.end ], [ %inc38, %for.inc37.for.body10_crit_edge ]
  %append.1.off081 = phi i1 [ %16, %if.end ], [ %append.2.off0, %for.inc37.for.body10_crit_edge ]
  %size.180 = phi i32 [ %size.0, %if.end ], [ %size.3, %for.inc37.for.body10_crit_edge ]
  %arrayidx11 = getelementptr [5 x %struct.page_flags_test], ptr @pft, i32 0, i32 %i.182
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %for.body10.for.inc37_crit_edge, label %if.end14

for.body10.for.inc37_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37

if.end14:                                         ; preds = %for.body10
  br i1 %append.1.off081, label %if.then16, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr17 = getelementptr i8, ptr %cmp_buf, i32 %size.180
  %sub18 = sub i32 256, %size.180
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.166) #15
  %add20 = add i32 %call19, %size.180
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14.if.end21_crit_edge
  %size.2 = phi i32 [ %add20, %if.then16 ], [ %size.180, %if.end14.if.end21_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %cmp_buf, i32 %size.2
  %sub23 = sub i32 256, %size.2
  %name25 = getelementptr [5 x %struct.page_flags_test], ptr @pft, i32 0, i32 %i.182, i32 4
  %19 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name25, align 4
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.185, ptr noundef %20) #15
  %add27 = add i32 %call26, %size.2
  %add.ptr28 = getelementptr i8, ptr %cmp_buf, i32 %add27
  %sub29 = sub i32 256, %add27
  %fmt = getelementptr [5 x %struct.page_flags_test], ptr @pft, i32 0, i32 %i.182, i32 3
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt, align 4
  %arrayidx31 = getelementptr [5 x i32], ptr %values, i32 0, i32 %i.182
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx31, align 4
  %mask33 = getelementptr [5 x %struct.page_flags_test], ptr @pft, i32 0, i32 %i.182, i32 2
  %25 = ptrtoint ptr %mask33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask33, align 4
  %and34 = and i32 %26, %24
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef %22, i32 noundef %and34) #15
  %add36 = add i32 %call35, %add27
  br label %for.inc37

for.inc37:                                        ; preds = %if.end21, %for.body10.for.inc37_crit_edge
  %size.3 = phi i32 [ %add36, %if.end21 ], [ %size.180, %for.body10.for.inc37_crit_edge ]
  %append.2.off0 = phi i1 [ true, %if.end21 ], [ %append.1.off081, %for.body10.for.inc37_crit_edge ]
  %inc38 = add nuw nsw i32 %i.182, 1
  %exitcond84.not = icmp eq i32 %inc38, 5
  br i1 %exitcond84.not, label %for.end39, label %for.inc37.for.body10_crit_edge

for.inc37.for.body10_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.end39:                                        ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr40 = getelementptr i8, ptr %cmp_buf, i32 %size.3
  %sub41 = sub i32 256, %size.3
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.186)
  %call43 = tail call i32 @strlen(ptr noundef %cmp_buf) #16
  call void (ptr, i32, ptr, ...) @__test(ptr noundef %cmp_buf, i32 noundef %call43, ptr noundef nonnull @.str.187, ptr noundef nonnull %flags.addr) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %values) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @software_node_register_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @software_node_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @software_node_unregister_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !101, !102, !103, !105, !106, !108, !109, !111, !112, !114, !116, !117, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !145, !146, !147, !149, !151, !153, !154, !156, !158, !160, !162, !163, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !207, !209, !211, !213, !214, !216, !217, !219, !221, !222, !224, !225, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !269, !271, !272, !274, !275, !277, !279, !281, !283, !285, !286, !288, !290, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !331, !333, !334, !336, !338, !339, !341, !342, !344, !346, !348, !350, !352, !354, !356, !357, !358, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !378, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396}
!llvm.module.flags = !{!397, !398, !399, !400, !401, !402, !403}
!llvm.ident = !{!404}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/test_printf.c", i32 801, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @test_printf_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @test_printf_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_test_printf__238_801_test_printf_init6, !1, !"__initcall__kmod_test_printf__238_801_test_printf_init6", i1 false, i1 false}
!7 = !{ptr @__exitcall_test_printf_exit, !1, !"__exitcall_test_printf_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author239, !9, !"__UNIQUE_ID_author239", i1 false, i1 false}
!9 = !{!"../lib/test_printf.c", i32 802, i32 1}
!10 = !{ptr @__UNIQUE_ID_file240, !11, !"__UNIQUE_ID_file240", i1 false, i1 false}
!11 = !{!"../lib/test_printf.c", i32 803, i32 1}
!12 = !{ptr @__UNIQUE_ID_license241, !11, !"__UNIQUE_ID_license241", i1 false, i1 false}
!13 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @test_printf_init._entry, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_printf_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @alloced_buffer, !18, !"alloced_buffer", i1 false, i1 false}
!18 = !{!"../lib/test_printf.c", i32 36, i32 14}
!19 = !{ptr @test_buffer, !20, !"test_buffer", i1 false, i1 false}
!20 = !{!"../lib/test_printf.c", i32 35, i32 14}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/test_printf.c", i32 145, i32 2}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/test_printf.c", i32 146, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/test_printf.c", i32 147, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/test_printf.c", i32 148, i32 9}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_printf.c", i32 103, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__test._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @__test._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/test_printf.c", i32 127, i32 4}
!38 = !{ptr @__test._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @__test._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_printf.c", i32 55, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @do_test._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @do_test._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/test_printf.c", i32 61, i32 3}
!47 = !{ptr @do_test._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @do_test._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../lib/test_printf.c", i32 67, i32 4}
!51 = !{ptr @do_test._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @do_test._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/test_printf.c", i32 76, i32 3}
!55 = !{ptr @do_test._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @do_test._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test_printf.c", i32 82, i32 3}
!59 = !{ptr @do_test._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @do_test._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/test_printf.c", i32 88, i32 3}
!63 = !{ptr @do_test._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @do_test._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/test_printf.c", i32 154, i32 2}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/test_printf.c", i32 155, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test_printf.c", i32 156, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/test_printf.c", i32 157, i32 2}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test_printf.c", i32 158, i32 2}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/test_printf.c", i32 159, i32 2}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/test_printf.c", i32 168, i32 2}
!85 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../lib/test_printf.c", i32 186, i32 2}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/test_printf.c", i32 187, i32 2}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/test_printf.c", i32 188, i32 2}
!97 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.60, !96, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/test_printf.c", i32 189, i32 2}
!105 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.63, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/test_printf.c", i32 190, i32 2}
!108 = !{ptr @.str.64, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/test_printf.c", i32 204, i32 2}
!111 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/test_printf.c", i32 205, i32 2}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../lib/test_printf.c", i32 206, i32 2}
!116 = !{ptr @.str.69, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.73, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../lib/test_printf.c", i32 207, i32 2}
!122 = !{ptr @.str.74, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/test_printf.c", i32 307, i32 3}
!125 = !{ptr @.str.76, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @plain._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @plain._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../lib/test_printf.c", i32 314, i32 3}
!130 = !{ptr @plain._entry.77, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @plain._entry_ptr.79, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.81, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../lib/test_printf.c", i32 321, i32 3}
!134 = !{ptr @plain._entry.80, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @plain._entry_ptr.82, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.83, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../lib/test_printf.c", i32 291, i32 19}
!138 = !{ptr @.str.84, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../lib/test_printf.c", i32 267, i32 30}
!140 = !{ptr @.str.85, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../lib/test_printf.c", i32 272, i32 19}
!142 = !{ptr @.str.86, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../lib/test_printf.c", i32 273, i32 3}
!144 = !{ptr @.str.87, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @plain_hash_to_buffer._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @plain_hash_to_buffer._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../lib/test_printf.c", i32 349, i32 2}
!149 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../lib/test_printf.c", i32 350, i32 2}
!151 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../lib/test_printf.c", i32 351, i32 2}
!153 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../lib/test_printf.c", i32 360, i32 2}
!156 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/test_printf.c", i32 362, i32 2}
!158 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../lib/test_printf.c", i32 371, i32 2}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../lib/test_printf.c", i32 406, i32 2}
!162 = !{ptr @.str.96, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.97, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../lib/test_printf.c", i32 408, i32 2}
!165 = !{ptr @.str.98, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../lib/test_printf.c", i32 417, i32 2}
!167 = !{ptr @.str.99, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.100, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../lib/test_printf.c", i32 418, i32 2}
!170 = !{ptr @.str.101, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.102, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../lib/test_printf.c", i32 419, i32 2}
!173 = !{ptr @.str.103, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.104, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../lib/test_printf.c", i32 420, i32 2}
!176 = !{ptr @.str.105, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.106, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../lib/test_printf.c", i32 421, i32 2}
!179 = !{ptr @.str.107, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.108, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../lib/test_printf.c", i32 433, i32 2}
!182 = !{ptr @.str.109, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.110, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../lib/test_printf.c", i32 434, i32 2}
!185 = !{ptr @.str.111, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../lib/test_printf.c", i32 436, i32 2}
!187 = !{ptr @.str.112, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../lib/test_printf.c", i32 457, i32 2}
!190 = !{ptr @.str.114, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.115, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../lib/test_printf.c", i32 458, i32 2}
!193 = !{ptr @.str.116, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.117, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../lib/test_printf.c", i32 459, i32 2}
!196 = !{ptr @.str.118, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.119, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../lib/test_printf.c", i32 460, i32 2}
!199 = !{ptr @.str.120, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.121, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../lib/test_printf.c", i32 481, i32 2}
!202 = !{ptr @.str.122, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.123, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../lib/test_printf.c", i32 482, i32 2}
!205 = !{ptr @.str.124, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../lib/test_printf.c", i32 486, i32 2}
!207 = !{ptr @.str.125, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../lib/test_printf.c", i32 489, i32 2}
!209 = !{ptr @.str.126, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../lib/test_printf.c", i32 490, i32 2}
!211 = !{ptr @.str.127, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../lib/test_printf.c", i32 491, i32 2}
!213 = !{ptr @.str.128, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.129, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../lib/test_printf.c", i32 492, i32 2}
!216 = !{ptr @.str.130, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.131, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../lib/test_printf.c", i32 493, i32 2}
!219 = !{ptr @.str.132, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../lib/test_printf.c", i32 495, i32 2}
!221 = !{ptr @.str.133, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.134, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../lib/test_printf.c", i32 496, i32 2}
!224 = !{ptr @.str.135, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @test_dentry, !226, !"test_dentry", i1 false, i1 false}
!226 = !{!"../lib/test_printf.c", i32 463, i32 22}
!227 = !{ptr @.str.137, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../lib/test_printf.c", i32 519, i32 2}
!229 = !{ptr @.str.138, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.139, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../lib/test_printf.c", i32 520, i32 2}
!232 = !{ptr @.str.140, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.141, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../lib/test_printf.c", i32 521, i32 2}
!235 = !{ptr @.str.142, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.143, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../lib/test_printf.c", i32 522, i32 2}
!238 = !{ptr @.str.144, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.145, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../lib/test_printf.c", i32 523, i32 2}
!241 = !{ptr @.str.146, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.147, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../lib/test_printf.c", i32 524, i32 2}
!244 = !{ptr @.str.148, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../lib/test_printf.c", i32 525, i32 2}
!246 = !{ptr @.str.149, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.150, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../lib/test_printf.c", i32 527, i32 2}
!249 = !{ptr @.str.151, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.152, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../lib/test_printf.c", i32 528, i32 2}
!252 = !{ptr @.str.153, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.154, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../lib/test_printf.c", i32 529, i32 2}
!255 = !{ptr @.str.155, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.156, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../lib/test_printf.c", i32 530, i32 2}
!258 = !{ptr @.str.157, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.158, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../lib/test_printf.c", i32 532, i32 2}
!261 = !{ptr @.str.159, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.160, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../lib/test_printf.c", i32 533, i32 2}
!264 = !{ptr @.str.161, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.162, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../lib/test_printf.c", i32 534, i32 2}
!267 = !{ptr @.str.163, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../lib/test_printf.c", i32 535, i32 2}
!269 = !{ptr @.str.164, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../lib/test_printf.c", i32 565, i32 2}
!271 = !{ptr @.str.165, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.166, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../lib/test_printf.c", i32 566, i32 2}
!274 = !{ptr @.str.167, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.168, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../lib/test_printf.c", i32 570, i32 2}
!277 = !{ptr @.str.169, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../lib/test_printf.c", i32 571, i32 2}
!279 = !{ptr @.str.170, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../lib/test_printf.c", i32 574, i32 2}
!281 = !{ptr @.str.171, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../lib/test_printf.c", i32 575, i32 2}
!283 = !{ptr @.str.172, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../lib/test_printf.c", i32 553, i32 2}
!285 = !{ptr @.str.173, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.174, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../lib/test_printf.c", i32 664, i32 4}
!288 = !{ptr @.str.175, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../lib/test_printf.c", i32 668, i32 2}
!290 = !{ptr @.str.176, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.177, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../lib/test_printf.c", i32 671, i32 2}
!293 = !{ptr @.str.178, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.179, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../lib/test_printf.c", i32 674, i32 2}
!296 = !{ptr @.str.180, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../lib/test_printf.c", i32 677, i32 2}
!298 = !{ptr @.str.181, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../lib/test_printf.c", i32 681, i32 33}
!300 = !{ptr @.str.182, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../lib/test_printf.c", i32 684, i32 33}
!302 = !{ptr @.str.183, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../lib/test_printf.c", i32 619, i32 38}
!304 = !{ptr @.str.184, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../lib/test_printf.c", i32 621, i32 54}
!306 = !{ptr @.str.185, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../lib/test_printf.c", i32 632, i32 54}
!308 = !{ptr @.str.186, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../lib/test_printf.c", i32 639, i32 44}
!310 = !{ptr @.str.187, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../lib/test_printf.c", i32 641, i32 2}
!312 = !{ptr @.str.188, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../lib/test_printf.c", i32 595, i32 3}
!314 = !{ptr @.str.189, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../lib/test_printf.c", i32 595, i32 9}
!316 = !{ptr @.str.190, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../lib/test_printf.c", i32 597, i32 9}
!318 = !{ptr @.str.191, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../lib/test_printf.c", i32 599, i32 9}
!320 = !{ptr @.str.192, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../lib/test_printf.c", i32 601, i32 3}
!322 = !{ptr @.str.193, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../lib/test_printf.c", i32 601, i32 10}
!324 = !{ptr @.str.194, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../lib/test_printf.c", i32 603, i32 10}
!326 = !{ptr @pft, !327, !"pft", i1 false, i1 false}
!327 = !{!"../lib/test_printf.c", i32 593, i32 37}
!328 = !{ptr @.str.195, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../lib/test_printf.c", i32 741, i32 2}
!330 = !{ptr @.str.196, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.197, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../lib/test_printf.c", i32 748, i32 2}
!333 = !{ptr @.str.198, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.199, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../lib/test_printf.c", i32 749, i32 2}
!336 = !{ptr @.str.200, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../lib/test_printf.c", i32 752, i32 2}
!338 = !{ptr @.str.201, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.202, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../lib/test_printf.c", i32 753, i32 2}
!341 = !{ptr @.str.203, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.204, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../lib/test_printf.c", i32 754, i32 2}
!344 = !{ptr @.str.205, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../lib/test_printf.c", i32 695, i32 13}
!346 = !{ptr @.str.206, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../lib/test_printf.c", i32 696, i32 13}
!348 = !{ptr @.str.207, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../lib/test_printf.c", i32 697, i32 13}
!350 = !{ptr @.str.208, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../lib/test_printf.c", i32 700, i32 33}
!352 = !{ptr @.str.209, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../lib/test_printf.c", i32 701, i32 40}
!354 = !{ptr @.str.210, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../lib/test_printf.c", i32 708, i32 3}
!356 = !{ptr @.str.211, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @fwnode_pointer._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @fwnode_pointer._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.212, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../lib/test_printf.c", i32 712, i32 2}
!361 = !{ptr @.str.213, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../lib/test_printf.c", i32 714, i32 2}
!363 = !{ptr @.str.214, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../lib/test_printf.c", i32 715, i32 2}
!365 = !{ptr @.str.215, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../lib/test_printf.c", i32 727, i32 17}
!367 = !{ptr @.str.216, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../lib/test_printf.c", i32 728, i32 17}
!369 = !{ptr @.str.217, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../lib/test_printf.c", i32 729, i32 17}
!371 = !{ptr @.str.218, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../lib/test_printf.c", i32 730, i32 17}
!373 = !{ptr @.str.219, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../lib/test_printf.c", i32 735, i32 3}
!375 = !{ptr @.str.220, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 30, i32 4}
!377 = !{ptr @.str.221, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.222, !376, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @kstm_report._entry, !376, !"_entry", i1 false, i1 false}
!380 = !{ptr @kstm_report._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.224, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 31, i32 4}
!383 = !{ptr @kstm_report._entry.223, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @kstm_report._entry_ptr.225, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.227, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 33, i32 4}
!387 = !{ptr @kstm_report._entry.226, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @kstm_report._entry_ptr.228, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.230, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 35, i32 3}
!391 = !{ptr @kstm_report._entry.229, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @kstm_report._entry_ptr.231, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @total_tests, !394, !"total_tests", i1 false, i1 false}
!394 = !{!"../lib/test_printf.c", i32 33, i32 1}
!395 = !{ptr @failed_tests, !394, !"failed_tests", i1 false, i1 false}
!396 = !{ptr @skipped_tests, !394, !"skipped_tests", i1 false, i1 false}
!397 = !{i32 1, !"wchar_size", i32 2}
!398 = !{i32 1, !"min_enum_size", i32 4}
!399 = !{i32 8, !"branch-target-enforcement", i32 0}
!400 = !{i32 8, !"sign-return-address", i32 0}
!401 = !{i32 8, !"sign-return-address-all", i32 0}
!402 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!403 = !{i32 7, !"uwtable", i32 1}
!404 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!405 = !{!"auto-init"}
!406 = !{i8 0, i8 2}
