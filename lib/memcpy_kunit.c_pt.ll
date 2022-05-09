; ModuleID = '/llk/IR_all_yes/lib/memcpy_kunit.c_pt.bc'
source_filename = "../lib/memcpy_kunit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.some_bytes = type { %union.anon.71 }
%union.anon.71 = type { %struct.anon.72, [8 x i8] }
%struct.anon.72 = type { i32, i16, i8, [4 x i32] }
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

@__UNIQUE_ID_array252 = internal global [2 x ptr] [ptr @memcpy_test_suite, ptr null], align 4
@__UNIQUE_ID_suites253 = internal global ptr @__UNIQUE_ID_array252, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file254 = internal constant [35 x i8] c"memcpy_kunit.file=lib/memcpy_kunit\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [25 x i8] c"memcpy_kunit.license=GPL\00", section ".modinfo", align 1
@memcpy_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"memcpy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @memcpy_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@memcpy_test_cases = internal global { [4 x %struct.kunit_case], [48 x i8] } { [4 x %struct.kunit_case] [%struct.kunit_case { ptr @memset_test, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @memcpy_test, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @memmove_test, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"memset_test\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"memcpy_test\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memmove_test\00", [19 x i8] zeroinitializer }, align 32
@__const.memset_test.control = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"00000000000000000000000000000000" } }, align 4
@__const.memset_test.complete = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" } }, align 4
@__const.memset_test.middle = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"00001111111111111111000000000000" } }, align 4
@__const.memset_test.three = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"`00000000aa000000000000000000000" } }, align 4
@__const.memset_test.after = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"0000000rrrrrrrrrrrrrrrrrrrrrrrrr" } }, align 4
@__const.memset_test.startat = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"00000000yyyyyyyyyyyyyyyyyyyyyyyy" } }, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/memcpy_kunit.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"control.data[i]\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x30\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"line %d: '%s' not initialized to 0x%02x @ %d (saw 0x%02x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dest.data[i]\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dest\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"line %d: %s.data[%d] (0x%02x) != %s.data[%d] (0x%02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@memset_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str, ptr @.str.3, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016    # %s: ok: memset() direct assignment\0A\00", [52 x i8] zeroinitializer }, align 32
@memset_test._entry_ptr = internal global ptr @memset_test._entry, section ".printk_index", align 4
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"    # %s: ok: memset() direct assignment\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"complete.data[i]\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@memset_test._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016    # %s: ok: memset() complete overwrite\0A\00", [51 x i8] zeroinitializer }, align 32
@memset_test._entry_ptr.19 = internal global ptr @memset_test._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    # %s: ok: memset() complete overwrite\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"middle.data[i]\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"middle\00", [25 x i8] zeroinitializer }, align 32
@memset_test._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str, ptr @.str.3, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016    # %s: ok: memset() middle overwrite\0A\00", [53 x i8] zeroinitializer }, align 32
@memset_test._entry_ptr.25 = internal global ptr @memset_test._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"    # %s: ok: memset() middle overwrite\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"three.data[i]\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"three\00", [26 x i8] zeroinitializer }, align 32
@memset_test._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016    # %s: ok: memset() argument side-effects\0A\00", [48 x i8] zeroinitializer }, align 32
@memset_test._entry_ptr.31 = internal global ptr @memset_test._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"    # %s: ok: memset() argument side-effects\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"after.data[i]\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"after\00", [26 x i8] zeroinitializer }, align 32
@memset_test._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str, ptr @.str.3, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016    # %s: ok: memset() memset_after()\0A\00", [55 x i8] zeroinitializer }, align 32
@memset_test._entry_ptr.37 = internal global ptr @memset_test._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"    # %s: ok: memset() memset_after()\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"startat.data[i]\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"startat\00", [24 x i8] zeroinitializer }, align 32
@memset_test._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016    # %s: ok: memset() memset_startat()\0A\00", [53 x i8] zeroinitializer }, align 32
@memset_test._entry_ptr.43 = internal global ptr @memset_test._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"    # %s: ok: memset() memset_startat()\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@__const.memcpy_test.control = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"                                " } }, align 4
@__const.memcpy_test.middle = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"            \00\00\00\00\00\00\00             " } }, align 4
@__const.memcpy_test.three = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"\00        \00\00                     " } }, align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x20\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zero.data[i]\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@memcpy_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016    # %s: ok: memcpy() static initializers\0A\00", [50 x i8] zeroinitializer }, align 32
@memcpy_test._entry_ptr = internal global ptr @memcpy_test._entry, section ".printk_index", align 4
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"    # %s: ok: memcpy() static initializers\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@memcpy_test._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016    # %s: ok: memcpy() direct assignment\0A\00", [52 x i8] zeroinitializer }, align 32
@memcpy_test._entry_ptr.52 = internal global ptr @memcpy_test._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"    # %s: ok: memcpy() direct assignment\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@memcpy_test._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.3, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016    # %s: ok: memcpy() complete overwrite\0A\00", [51 x i8] zeroinitializer }, align 32
@memcpy_test._entry_ptr.56 = internal global ptr @memcpy_test._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    # %s: ok: memcpy() complete overwrite\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@memcpy_test._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.1, ptr @.str.3, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016    # %s: ok: memcpy() middle overwrite\0A\00", [53 x i8] zeroinitializer }, align 32
@memcpy_test._entry_ptr.60 = internal global ptr @memcpy_test._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"    # %s: ok: memcpy() middle overwrite\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@memcpy_test._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.1, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016    # %s: ok: memcpy() argument side-effects\0A\00", [48 x i8] zeroinitializer }, align 32
@memcpy_test._entry_ptr.64 = internal global ptr @memcpy_test._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"    # %s: ok: memcpy() argument side-effects\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@__const.memmove_test.control = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99" } }, align 4
@__const.memmove_test.middle = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"\99\99\99\99\99\99\99\99\99\99\99\99\00\00\00\00\00\00\00\99\99\99\99\99\99\99\99\99\99\99\99\99" } }, align 4
@__const.memmove_test.five = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"\00\00\99\99\99\99\99\99\99\99\00\00\00\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99" } }, align 4
@__const.memmove_test.overlap = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99" } }, align 4
@__const.memmove_test.overlap_expected = private unnamed_addr constant { { [32 x i8] } } { { [32 x i8] } { [32 x i8] c"\00\01\00\01\02\03\04\07\08\09\0A\0B\0C\0D\0E\0F\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99" } }, align 4
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x99\00", [27 x i8] zeroinitializer }, align 32
@memmove_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.2, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016    # %s: ok: memmove() static initializers\0A\00", [49 x i8] zeroinitializer }, align 32
@memmove_test._entry_ptr = internal global ptr @memmove_test._entry, section ".printk_index", align 4
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"    # %s: ok: memmove() static initializers\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@memmove_test._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.2, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016    # %s: ok: memmove() direct assignment\0A\00", [51 x i8] zeroinitializer }, align 32
@memmove_test._entry_ptr.71 = internal global ptr @memmove_test._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    # %s: ok: memmove() direct assignment\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@memmove_test._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.2, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016    # %s: ok: memmove() complete overwrite\0A\00", [50 x i8] zeroinitializer }, align 32
@memmove_test._entry_ptr.75 = internal global ptr @memmove_test._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"    # %s: ok: memmove() complete overwrite\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@memmove_test._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.2, ptr @.str.3, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016    # %s: ok: memmove() middle overwrite\0A\00", [52 x i8] zeroinitializer }, align 32
@memmove_test._entry_ptr.79 = internal global ptr @memmove_test._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"    # %s: ok: memmove() middle overwrite\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"five.data[i]\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"five\00", [27 x i8] zeroinitializer }, align 32
@memmove_test._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.2, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016    # %s: ok: memmove() argument side-effects\0A\00", [47 x i8] zeroinitializer }, align 32
@memmove_test._entry_ptr.85 = internal global ptr @memmove_test._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"    # %s: ok: memmove() argument side-effects\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"overlap.data[i]\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"overlap_expected.data[i]\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlap\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"overlap_expected\00", [47 x i8] zeroinitializer }, align 32
@memmove_test._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.2, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016    # %s: ok: memmove() overlapping write\0A\00", [51 x i8] zeroinitializer }, align 32
@memmove_test._entry_ptr.93 = internal global ptr @memmove_test._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    # %s: ok: memmove() overlapping write\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"memcpy_test_suite\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 282, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"memcpy_test_cases\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 275, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 276, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 277, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 278, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 237, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 238, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 242, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 246, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 251, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 261, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 266, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 271, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 82, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 83, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 84, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 88, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 92, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 97, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 106, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 154, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 156, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 160, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 164, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 169, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 178, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [22 x i8] c"../lib/memcpy_kunit.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 183, i32 2 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__UNIQUE_ID_suites253, ptr @memcpy_test._entry, ptr @memcpy_test._entry.50, ptr @memcpy_test._entry.54, ptr @memcpy_test._entry.58, ptr @memcpy_test._entry.62, ptr @memcpy_test._entry_ptr, ptr @memcpy_test._entry_ptr.52, ptr @memcpy_test._entry_ptr.56, ptr @memcpy_test._entry_ptr.60, ptr @memcpy_test._entry_ptr.64, ptr @memmove_test._entry, ptr @memmove_test._entry.69, ptr @memmove_test._entry.73, ptr @memmove_test._entry.77, ptr @memmove_test._entry.83, ptr @memmove_test._entry.91, ptr @memmove_test._entry_ptr, ptr @memmove_test._entry_ptr.71, ptr @memmove_test._entry_ptr.75, ptr @memmove_test._entry_ptr.79, ptr @memmove_test._entry_ptr.85, ptr @memmove_test._entry_ptr.93, ptr @memset_test._entry, ptr @memset_test._entry.17, ptr @memset_test._entry.23, ptr @memset_test._entry.29, ptr @memset_test._entry.35, ptr @memset_test._entry.41, ptr @memset_test._entry_ptr, ptr @memset_test._entry_ptr.19, ptr @memset_test._entry_ptr.25, ptr @memset_test._entry_ptr.31, ptr @memset_test._entry_ptr.37, ptr @memset_test._entry_ptr.43, ptr @memcpy_test_suite, ptr @memcpy_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_test_cases to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memset_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memset_test._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memset_test._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memset_test._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memset_test._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memset_test._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_test._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_test._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_test._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_test._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmove_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmove_test._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmove_test._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmove_test._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmove_test._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmove_test._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memset_test(ptr noundef %test) #0 align 64 {
entry:
  %dest = alloca %struct.some_bytes, align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion32 = alloca %struct.kunit_binary_assert, align 8
  %__assertion79 = alloca %struct.kunit_binary_assert, align 8
  %__assertion136 = alloca %struct.kunit_binary_assert, align 8
  %__assertion198 = alloca %struct.kunit_binary_assert, align 8
  %__assertion266 = alloca %struct.kunit_binary_assert, align 8
  %__assertion329 = alloca %struct.kunit_binary_assert, align 8
  %__assertion394 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dest) #6
  %0 = call ptr @memset(ptr %dest, i32 0, i32 32)
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
  %1 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %do.body2

for.cond23.preheader:                             ; preds = %do.body2
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %operation42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 1
  %left_text43 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 2
  %left_value44 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 3
  %right_text46 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 4
  %right_value47 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 5
  %2 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  br label %do.body27

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry
  %i.0543 = phi i32 [ 0, %entry ], [ %inc, %do.body2.do.body2_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @__const.memset_test.control, i32 0, i32 %i.0543
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
  %5 = call ptr @memset(ptr %1, i32 255, i32 24)
  %6 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %test, ptr %__assertion, align 8
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %type, align 4
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 237, ptr %line, align 8
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.3, ptr %file, align 4
  %10 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %message, align 8
  %11 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %va, align 4
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %13 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.4, ptr %operation, align 4
  %14 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.5, ptr %left_text, align 8
  %conv = zext i8 %4 to i64
  %15 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %left_value, align 8
  %16 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.6, ptr %right_text, align 8
  %17 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 48, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %cmp8 = icmp eq i8 %4, 48
  %conv11 = zext i8 %4 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp8, ptr noundef nonnull @.str.7, i32 noundef 237, ptr noundef nonnull @.str.8, i32 noundef 48, i32 noundef %i.0543, i32 noundef %conv11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  %inc = add nuw nsw i32 %i.0543, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond23.preheader, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body2

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %for.cond23.preheader
  %i19.0544 = phi i32 [ 0, %for.cond23.preheader ], [ %inc60, %do.body27.do.body27_crit_edge ]
  %arrayidx29 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i19.0544
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion32) #6
  %20 = call ptr @memset(ptr %2, i32 255, i32 24)
  %21 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion32, align 8
  %22 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %type35, align 4
  %23 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 238, ptr %line36, align 8
  %24 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.3, ptr %file37, align 4
  %25 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message38, align 8
  %26 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va40, align 4
  %27 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_assert_format, ptr %format41, align 8
  %28 = ptrtoint ptr %operation42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.4, ptr %operation42, align 4
  %29 = ptrtoint ptr %left_text43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.9, ptr %left_text43, align 8
  %conv45 = zext i8 %19 to i64
  %30 = ptrtoint ptr %left_value44 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv45, ptr %left_value44, align 8
  %31 = ptrtoint ptr %right_text46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.10, ptr %right_text46, align 8
  %32 = ptrtoint ptr %right_value47 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %right_value47, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp51 = icmp eq i8 %19, 0
  %conv54 = zext i8 %19 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp51, ptr noundef nonnull @.str.7, i32 noundef 238, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %i19.0544, i32 noundef %conv54) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion32) #6
  %inc60 = add nuw nsw i32 %i19.0544, 1
  %exitcond551.not = icmp eq i32 %inc60, 32
  br i1 %exitcond551.not, label %for.end61, label %do.body27.do.body27_crit_edge

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body27

for.end61:                                        ; preds = %do.body27
  %33 = call ptr @memset(ptr %dest, i32 48, i32 32)
  %type82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 1
  %line83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 2
  %file84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 3
  %message85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 4
  %va87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 4, i32 1
  %format88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 5
  %operation89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 1
  %left_text90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 2
  %left_value91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 3
  %right_text93 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 4
  %right_value94 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 5
  %34 = getelementptr inbounds i8, ptr %__assertion79, i32 32
  br label %do.body73

do.body73:                                        ; preds = %do.body73.do.body73_crit_edge, %for.end61
  %i65.0545 = phi i32 [ 0, %for.end61 ], [ %inc110, %do.body73.do.body73_crit_edge ]
  %arrayidx75 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i65.0545
  %35 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr [32 x i8], ptr @__const.memset_test.control, i32 0, i32 %i65.0545
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx77, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion79) #6
  %39 = call ptr @memset(ptr %34, i32 255, i32 24)
  %40 = ptrtoint ptr %__assertion79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion79, align 8
  %41 = ptrtoint ptr %type82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type82, align 4
  %42 = ptrtoint ptr %line83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 242, ptr %line83, align 8
  %43 = ptrtoint ptr %file84 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.3, ptr %file84, align 4
  %44 = ptrtoint ptr %message85 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message85, align 8
  %45 = ptrtoint ptr %va87 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va87, align 4
  %46 = ptrtoint ptr %format88 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_assert_format, ptr %format88, align 8
  %47 = ptrtoint ptr %operation89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.4, ptr %operation89, align 4
  %48 = ptrtoint ptr %left_text90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.9, ptr %left_text90, align 8
  %conv92 = zext i8 %36 to i64
  %49 = ptrtoint ptr %left_value91 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv92, ptr %left_value91, align 8
  %50 = ptrtoint ptr %right_text93 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.5, ptr %right_text93, align 8
  %conv95 = zext i8 %38 to i64
  %51 = ptrtoint ptr %right_value94 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv95, ptr %right_value94, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp99 = icmp eq i8 %36, %38
  %conv102 = zext i8 %36 to i32
  %conv104 = zext i8 %38 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion79, i1 noundef zeroext %cmp99, ptr noundef nonnull @.str.12, i32 noundef 242, ptr noundef nonnull @.str.11, i32 noundef %i65.0545, i32 noundef %conv102, ptr noundef nonnull @.str.8, i32 noundef %i65.0545, i32 noundef %conv104) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion79) #6
  %inc110 = add nuw nsw i32 %i65.0545, 1
  %exitcond552.not = icmp eq i32 %inc110, 32
  br i1 %exitcond552.not, label %do.end115, label %do.body73.do.body73_crit_edge

do.body73.do.body73_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body73

do.end115:                                        ; preds = %do.body73
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %53) #7
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %54 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %log, align 4
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %55, ptr noundef nonnull @.str.14, ptr noundef %57) #6
  %58 = call ptr @memset(ptr %dest, i32 255, i32 32)
  %type139 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 1
  %line140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 2
  %file141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 3
  %message142 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4
  %va144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4, i32 1
  %format145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 5
  %operation146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 1
  %left_text147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 2
  %left_value148 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 3
  %right_text150 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 4
  %right_value151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 5
  %59 = getelementptr inbounds i8, ptr %__assertion136, i32 32
  br label %do.body130

do.body130:                                       ; preds = %do.body130.do.body130_crit_edge, %do.end115
  %i122.0546 = phi i32 [ 0, %do.end115 ], [ %inc167, %do.body130.do.body130_crit_edge ]
  %arrayidx132 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i122.0546
  %60 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx132, align 1
  %arrayidx134 = getelementptr [32 x i8], ptr @__const.memset_test.complete, i32 0, i32 %i122.0546
  %62 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx134, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion136) #6
  %64 = call ptr @memset(ptr %59, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion136 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion136, align 8
  %66 = ptrtoint ptr %type139 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type139, align 4
  %67 = ptrtoint ptr %line140 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 246, ptr %line140, align 8
  %68 = ptrtoint ptr %file141 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.3, ptr %file141, align 4
  %69 = ptrtoint ptr %message142 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message142, align 8
  %70 = ptrtoint ptr %va144 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va144, align 4
  %71 = ptrtoint ptr %format145 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format145, align 8
  %72 = ptrtoint ptr %operation146 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.4, ptr %operation146, align 4
  %73 = ptrtoint ptr %left_text147 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.9, ptr %left_text147, align 8
  %conv149 = zext i8 %61 to i64
  %74 = ptrtoint ptr %left_value148 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv149, ptr %left_value148, align 8
  %75 = ptrtoint ptr %right_text150 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.15, ptr %right_text150, align 8
  %conv152 = zext i8 %63 to i64
  %76 = ptrtoint ptr %right_value151 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv152, ptr %right_value151, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp156 = icmp eq i8 %61, %63
  %conv159 = zext i8 %61 to i32
  %conv161 = zext i8 %63 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion136, i1 noundef zeroext %cmp156, ptr noundef nonnull @.str.12, i32 noundef 246, ptr noundef nonnull @.str.11, i32 noundef %i122.0546, i32 noundef %conv159, ptr noundef nonnull @.str.16, i32 noundef %i122.0546, i32 noundef %conv161) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion136) #6
  %inc167 = add nuw nsw i32 %i122.0546, 1
  %exitcond553.not = icmp eq i32 %inc167, 32
  br i1 %exitcond553.not, label %do.end172, label %do.body130.do.body130_crit_edge

do.body130.do.body130_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body130

do.end172:                                        ; preds = %do.body130
  %77 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name, align 4
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %78) #7
  %79 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %log, align 4
  %81 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %80, ptr noundef nonnull @.str.20, ptr noundef %82) #6
  %83 = call ptr @memset(ptr %dest, i32 48, i32 32)
  %add.ptr = getelementptr inbounds i8, ptr %dest, i32 4
  %84 = call ptr @memset(ptr %add.ptr, i32 49, i32 16)
  %type201 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 1
  %line202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 2
  %file203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 3
  %message204 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 4
  %va206 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 4, i32 1
  %format207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 5
  %operation208 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 1
  %left_text209 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 2
  %left_value210 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 3
  %right_text212 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 4
  %right_value213 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 5
  %85 = getelementptr inbounds i8, ptr %__assertion198, i32 32
  br label %do.body192

do.body192:                                       ; preds = %do.body192.do.body192_crit_edge, %do.end172
  %i184.0547 = phi i32 [ 0, %do.end172 ], [ %inc229, %do.body192.do.body192_crit_edge ]
  %arrayidx194 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i184.0547
  %86 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx194, align 1
  %arrayidx196 = getelementptr [32 x i8], ptr @__const.memset_test.middle, i32 0, i32 %i184.0547
  %88 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx196, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion198) #6
  %90 = call ptr @memset(ptr %85, i32 255, i32 24)
  %91 = ptrtoint ptr %__assertion198 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %test, ptr %__assertion198, align 8
  %92 = ptrtoint ptr %type201 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %type201, align 4
  %93 = ptrtoint ptr %line202 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 251, ptr %line202, align 8
  %94 = ptrtoint ptr %file203 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.3, ptr %file203, align 4
  %95 = ptrtoint ptr %message204 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %message204, align 8
  %96 = ptrtoint ptr %va206 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %va206, align 4
  %97 = ptrtoint ptr %format207 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @kunit_binary_assert_format, ptr %format207, align 8
  %98 = ptrtoint ptr %operation208 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.4, ptr %operation208, align 4
  %99 = ptrtoint ptr %left_text209 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.9, ptr %left_text209, align 8
  %conv211 = zext i8 %87 to i64
  %100 = ptrtoint ptr %left_value210 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv211, ptr %left_value210, align 8
  %101 = ptrtoint ptr %right_text212 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.21, ptr %right_text212, align 8
  %conv214 = zext i8 %89 to i64
  %102 = ptrtoint ptr %right_value213 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv214, ptr %right_value213, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp218 = icmp eq i8 %87, %89
  %conv221 = zext i8 %87 to i32
  %conv223 = zext i8 %89 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion198, i1 noundef zeroext %cmp218, ptr noundef nonnull @.str.12, i32 noundef 251, ptr noundef nonnull @.str.11, i32 noundef %i184.0547, i32 noundef %conv221, ptr noundef nonnull @.str.22, i32 noundef %i184.0547, i32 noundef %conv223) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion198) #6
  %inc229 = add nuw nsw i32 %i184.0547, 1
  %exitcond554.not = icmp eq i32 %inc229, 32
  br i1 %exitcond554.not, label %do.end234, label %do.body192.do.body192_crit_edge

do.body192.do.body192_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body192

do.end234:                                        ; preds = %do.body192
  %103 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name, align 4
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %104) #7
  %105 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %log, align 4
  %107 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %106, ptr noundef nonnull @.str.26, ptr noundef %108) #6
  %109 = call ptr @memset(ptr %dest, i32 48, i32 32)
  %110 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 96, ptr %dest, align 8
  %add.ptr247 = getelementptr inbounds i8, ptr %dest, i32 9
  %111 = ptrtoint ptr %add.ptr247 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 24929, ptr %add.ptr247, align 1
  %type269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion266, i32 0, i32 1
  %line270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion266, i32 0, i32 2
  %file271 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion266, i32 0, i32 3
  %message272 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion266, i32 0, i32 4
  %va274 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion266, i32 0, i32 4, i32 1
  %format275 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion266, i32 0, i32 5
  %operation276 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion266, i32 0, i32 1
  %left_text277 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion266, i32 0, i32 2
  %left_value278 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion266, i32 0, i32 3
  %right_text280 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion266, i32 0, i32 4
  %right_value281 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion266, i32 0, i32 5
  %112 = getelementptr inbounds i8, ptr %__assertion266, i32 32
  br label %do.body260

do.body260:                                       ; preds = %do.body260.do.body260_crit_edge, %do.end234
  %i252.0548 = phi i32 [ 0, %do.end234 ], [ %inc297, %do.body260.do.body260_crit_edge ]
  %arrayidx262 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i252.0548
  %113 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx262, align 1
  %arrayidx264 = getelementptr [32 x i8], ptr @__const.memset_test.three, i32 0, i32 %i252.0548
  %115 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx264, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion266) #6
  %117 = call ptr @memset(ptr %112, i32 255, i32 24)
  %118 = ptrtoint ptr %__assertion266 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %test, ptr %__assertion266, align 8
  %119 = ptrtoint ptr %type269 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %type269, align 4
  %120 = ptrtoint ptr %line270 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 261, ptr %line270, align 8
  %121 = ptrtoint ptr %file271 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.3, ptr %file271, align 4
  %122 = ptrtoint ptr %message272 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %message272, align 8
  %123 = ptrtoint ptr %va274 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %va274, align 4
  %124 = ptrtoint ptr %format275 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @kunit_binary_assert_format, ptr %format275, align 8
  %125 = ptrtoint ptr %operation276 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.4, ptr %operation276, align 4
  %126 = ptrtoint ptr %left_text277 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.9, ptr %left_text277, align 8
  %conv279 = zext i8 %114 to i64
  %127 = ptrtoint ptr %left_value278 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv279, ptr %left_value278, align 8
  %128 = ptrtoint ptr %right_text280 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.27, ptr %right_text280, align 8
  %conv282 = zext i8 %116 to i64
  %129 = ptrtoint ptr %right_value281 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv282, ptr %right_value281, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %116)
  %cmp286 = icmp eq i8 %114, %116
  %conv289 = zext i8 %114 to i32
  %conv291 = zext i8 %116 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion266, i1 noundef zeroext %cmp286, ptr noundef nonnull @.str.12, i32 noundef 261, ptr noundef nonnull @.str.11, i32 noundef %i252.0548, i32 noundef %conv289, ptr noundef nonnull @.str.28, i32 noundef %i252.0548, i32 noundef %conv291) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion266) #6
  %inc297 = add nuw nsw i32 %i252.0548, 1
  %exitcond555.not = icmp eq i32 %inc297, 32
  br i1 %exitcond555.not, label %do.end302, label %do.body260.do.body260_crit_edge

do.body260.do.body260_crit_edge:                  ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body260

do.end302:                                        ; preds = %do.body260
  %130 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %name, align 4
  %call305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %131) #7
  %132 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %log, align 4
  %134 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %133, ptr noundef nonnull @.str.32, ptr noundef %135) #6
  %136 = ptrtoint ptr %dest to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 3472328296227680304, ptr %dest, align 8
  %add.ptr313 = getelementptr inbounds i8, ptr %dest, i32 7
  %137 = call ptr @memset(ptr %add.ptr313, i32 114, i32 25)
  %type332 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 1
  %line333 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 2
  %file334 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 3
  %message335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 4
  %va337 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 4, i32 1
  %format338 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 5
  %operation339 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 1
  %left_text340 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 2
  %left_value341 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 3
  %right_text343 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 4
  %right_value344 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 5
  %138 = getelementptr inbounds i8, ptr %__assertion329, i32 32
  br label %do.body323

do.body323:                                       ; preds = %do.body323.do.body323_crit_edge, %do.end302
  %i315.0549 = phi i32 [ 0, %do.end302 ], [ %inc360, %do.body323.do.body323_crit_edge ]
  %arrayidx325 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i315.0549
  %139 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx325, align 1
  %arrayidx327 = getelementptr [32 x i8], ptr @__const.memset_test.after, i32 0, i32 %i315.0549
  %141 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx327, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion329) #6
  %143 = call ptr @memset(ptr %138, i32 255, i32 24)
  %144 = ptrtoint ptr %__assertion329 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %test, ptr %__assertion329, align 8
  %145 = ptrtoint ptr %type332 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %type332, align 4
  %146 = ptrtoint ptr %line333 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 266, ptr %line333, align 8
  %147 = ptrtoint ptr %file334 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.3, ptr %file334, align 4
  %148 = ptrtoint ptr %message335 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %message335, align 8
  %149 = ptrtoint ptr %va337 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %va337, align 4
  %150 = ptrtoint ptr %format338 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @kunit_binary_assert_format, ptr %format338, align 8
  %151 = ptrtoint ptr %operation339 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.4, ptr %operation339, align 4
  %152 = ptrtoint ptr %left_text340 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @.str.9, ptr %left_text340, align 8
  %conv342 = zext i8 %140 to i64
  %153 = ptrtoint ptr %left_value341 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv342, ptr %left_value341, align 8
  %154 = ptrtoint ptr %right_text343 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.33, ptr %right_text343, align 8
  %conv345 = zext i8 %142 to i64
  %155 = ptrtoint ptr %right_value344 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv345, ptr %right_value344, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %142)
  %cmp349 = icmp eq i8 %140, %142
  %conv352 = zext i8 %140 to i32
  %conv354 = zext i8 %142 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion329, i1 noundef zeroext %cmp349, ptr noundef nonnull @.str.12, i32 noundef 266, ptr noundef nonnull @.str.11, i32 noundef %i315.0549, i32 noundef %conv352, ptr noundef nonnull @.str.34, i32 noundef %i315.0549, i32 noundef %conv354) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion329) #6
  %inc360 = add nuw nsw i32 %i315.0549, 1
  %exitcond556.not = icmp eq i32 %inc360, 32
  br i1 %exitcond556.not, label %do.end365, label %do.body323.do.body323_crit_edge

do.body323.do.body323_crit_edge:                  ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body323

do.end365:                                        ; preds = %do.body323
  %156 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %name, align 4
  %call368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %157) #7
  %158 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %log, align 4
  %160 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %159, ptr noundef nonnull @.str.38, ptr noundef %161) #6
  %162 = ptrtoint ptr %dest to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 3472328296227680304, ptr %dest, align 8
  %add.ptr378 = getelementptr inbounds i8, ptr %dest, i32 8
  %163 = call ptr @memset(ptr %add.ptr378, i32 121, i32 24)
  %type397 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394, i32 0, i32 1
  %line398 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394, i32 0, i32 2
  %file399 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394, i32 0, i32 3
  %message400 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394, i32 0, i32 4
  %va402 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394, i32 0, i32 4, i32 1
  %format403 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion394, i32 0, i32 5
  %operation404 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion394, i32 0, i32 1
  %left_text405 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion394, i32 0, i32 2
  %left_value406 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion394, i32 0, i32 3
  %right_text408 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion394, i32 0, i32 4
  %right_value409 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion394, i32 0, i32 5
  %164 = getelementptr inbounds i8, ptr %__assertion394, i32 32
  br label %do.body388

do.body388:                                       ; preds = %do.body388.do.body388_crit_edge, %do.end365
  %i380.0550 = phi i32 [ 0, %do.end365 ], [ %inc425, %do.body388.do.body388_crit_edge ]
  %arrayidx390 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i380.0550
  %165 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx390, align 1
  %arrayidx392 = getelementptr [32 x i8], ptr @__const.memset_test.startat, i32 0, i32 %i380.0550
  %167 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx392, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion394) #6
  %169 = call ptr @memset(ptr %164, i32 255, i32 24)
  %170 = ptrtoint ptr %__assertion394 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %test, ptr %__assertion394, align 8
  %171 = ptrtoint ptr %type397 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %type397, align 4
  %172 = ptrtoint ptr %line398 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 271, ptr %line398, align 8
  %173 = ptrtoint ptr %file399 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.3, ptr %file399, align 4
  %174 = ptrtoint ptr %message400 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %message400, align 8
  %175 = ptrtoint ptr %va402 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %va402, align 4
  %176 = ptrtoint ptr %format403 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @kunit_binary_assert_format, ptr %format403, align 8
  %177 = ptrtoint ptr %operation404 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.4, ptr %operation404, align 4
  %178 = ptrtoint ptr %left_text405 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.9, ptr %left_text405, align 8
  %conv407 = zext i8 %166 to i64
  %179 = ptrtoint ptr %left_value406 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %conv407, ptr %left_value406, align 8
  %180 = ptrtoint ptr %right_text408 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @.str.39, ptr %right_text408, align 8
  %conv410 = zext i8 %168 to i64
  %181 = ptrtoint ptr %right_value409 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %conv410, ptr %right_value409, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %166, i8 %168)
  %cmp414 = icmp eq i8 %166, %168
  %conv417 = zext i8 %166 to i32
  %conv419 = zext i8 %168 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion394, i1 noundef zeroext %cmp414, ptr noundef nonnull @.str.12, i32 noundef 271, ptr noundef nonnull @.str.11, i32 noundef %i380.0550, i32 noundef %conv417, ptr noundef nonnull @.str.40, i32 noundef %i380.0550, i32 noundef %conv419) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion394) #6
  %inc425 = add nuw nsw i32 %i380.0550, 1
  %exitcond557.not = icmp eq i32 %inc425, 32
  br i1 %exitcond557.not, label %do.end430, label %do.body388.do.body388_crit_edge

do.body388.do.body388_crit_edge:                  ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body388

do.end430:                                        ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #5
  %182 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %name, align 4
  %call433 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %183) #7
  %184 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %log, align 4
  %186 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %185, ptr noundef nonnull @.str.44, ptr noundef %187) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memcpy_test(ptr noundef %test) #0 align 64 {
entry:
  %zero = alloca %struct.some_bytes, align 4
  %dest = alloca %struct.some_bytes, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion32 = alloca %struct.kunit_binary_assert, align 8
  %__assertion79 = alloca %struct.kunit_binary_assert, align 8
  %__assertion136 = alloca %struct.kunit_binary_assert, align 8
  %__assertion198 = alloca %struct.kunit_binary_assert, align 8
  %__assertion261 = alloca %struct.kunit_binary_assert, align 8
  %__assertion329 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %zero) #6
  %0 = call ptr @memset(ptr %zero, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dest) #6
  %1 = call ptr @memset(ptr %dest, i32 0, i32 32)
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
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %do.body2

for.cond23.preheader:                             ; preds = %do.body2
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %operation42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 1
  %left_text43 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 2
  %left_value44 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 3
  %right_text46 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 4
  %right_value47 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 5
  %3 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  br label %do.body27

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry
  %i.0463 = phi i32 [ 0, %entry ], [ %inc, %do.body2.do.body2_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @__const.memcpy_test.control, i32 0, i32 %i.0463
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
  %6 = call ptr @memset(ptr %2, i32 255, i32 24)
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 8
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type, align 4
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 82, ptr %line, align 8
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.3, ptr %file, align 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 8
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.4, ptr %operation, align 4
  %15 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.5, ptr %left_text, align 8
  %conv = zext i8 %5 to i64
  %16 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %left_value, align 8
  %17 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.45, ptr %right_text, align 8
  %18 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 32, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp8 = icmp eq i8 %5, 32
  %conv11 = zext i8 %5 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp8, ptr noundef nonnull @.str.7, i32 noundef 82, ptr noundef nonnull @.str.8, i32 noundef 32, i32 noundef %i.0463, i32 noundef %conv11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  %inc = add nuw nsw i32 %i.0463, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond23.preheader, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body2

for.cond69.preheader:                             ; preds = %do.body27
  %type82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 1
  %line83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 2
  %file84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 3
  %message85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 4
  %va87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 4, i32 1
  %format88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 5
  %operation89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 1
  %left_text90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 2
  %left_value91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 3
  %right_text93 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 4
  %right_value94 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 5
  %19 = getelementptr inbounds i8, ptr %__assertion79, i32 32
  br label %do.body73

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %for.cond23.preheader
  %i19.0464 = phi i32 [ 0, %for.cond23.preheader ], [ %inc60, %do.body27.do.body27_crit_edge ]
  %arrayidx29 = getelementptr [32 x i8], ptr %zero, i32 0, i32 %i19.0464
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx29, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion32) #6
  %22 = call ptr @memset(ptr %3, i32 255, i32 24)
  %23 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %test, ptr %__assertion32, align 8
  %24 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type35, align 4
  %25 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 83, ptr %line36, align 8
  %26 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.3, ptr %file37, align 4
  %27 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %message38, align 8
  %28 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %va40, align 4
  %29 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @kunit_binary_assert_format, ptr %format41, align 8
  %30 = ptrtoint ptr %operation42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.4, ptr %operation42, align 4
  %31 = ptrtoint ptr %left_text43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.46, ptr %left_text43, align 8
  %conv45 = zext i8 %21 to i64
  %32 = ptrtoint ptr %left_value44 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv45, ptr %left_value44, align 8
  %33 = ptrtoint ptr %right_text46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.10, ptr %right_text46, align 8
  %34 = ptrtoint ptr %right_value47 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %right_value47, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp51 = icmp eq i8 %21, 0
  %conv54 = zext i8 %21 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp51, ptr noundef nonnull @.str.7, i32 noundef 83, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %i19.0464, i32 noundef %conv54) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion32) #6
  %inc60 = add nuw nsw i32 %i19.0464, 1
  %exitcond470.not = icmp eq i32 %inc60, 32
  br i1 %exitcond470.not, label %for.cond69.preheader, label %do.body27.do.body27_crit_edge

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body27

do.body73:                                        ; preds = %do.body73.do.body73_crit_edge, %for.cond69.preheader
  %i65.0465 = phi i32 [ 0, %for.cond69.preheader ], [ %inc110, %do.body73.do.body73_crit_edge ]
  %arrayidx75 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i65.0465
  %35 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr [32 x i8], ptr %zero, i32 0, i32 %i65.0465
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx77, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion79) #6
  %39 = call ptr @memset(ptr %19, i32 255, i32 24)
  %40 = ptrtoint ptr %__assertion79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion79, align 8
  %41 = ptrtoint ptr %type82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type82, align 4
  %42 = ptrtoint ptr %line83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 84, ptr %line83, align 8
  %43 = ptrtoint ptr %file84 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.3, ptr %file84, align 4
  %44 = ptrtoint ptr %message85 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message85, align 8
  %45 = ptrtoint ptr %va87 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va87, align 4
  %46 = ptrtoint ptr %format88 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_assert_format, ptr %format88, align 8
  %47 = ptrtoint ptr %operation89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.4, ptr %operation89, align 4
  %48 = ptrtoint ptr %left_text90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.9, ptr %left_text90, align 8
  %conv92 = zext i8 %36 to i64
  %49 = ptrtoint ptr %left_value91 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv92, ptr %left_value91, align 8
  %50 = ptrtoint ptr %right_text93 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.46, ptr %right_text93, align 8
  %conv95 = zext i8 %38 to i64
  %51 = ptrtoint ptr %right_value94 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv95, ptr %right_value94, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp99 = icmp eq i8 %36, %38
  %conv102 = zext i8 %36 to i32
  %conv104 = zext i8 %38 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion79, i1 noundef zeroext %cmp99, ptr noundef nonnull @.str.12, i32 noundef 84, ptr noundef nonnull @.str.11, i32 noundef %i65.0465, i32 noundef %conv102, ptr noundef nonnull @.str.47, i32 noundef %i65.0465, i32 noundef %conv104) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion79) #6
  %inc110 = add nuw nsw i32 %i65.0465, 1
  %exitcond471.not = icmp eq i32 %inc110, 32
  br i1 %exitcond471.not, label %do.end115, label %do.body73.do.body73_crit_edge

do.body73.do.body73_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body73

do.end115:                                        ; preds = %do.body73
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %53) #7
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %54 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %log, align 4
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %55, ptr noundef nonnull @.str.49, ptr noundef %57) #6
  %58 = call ptr @memset(ptr %dest, i32 32, i32 32)
  %type139 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 1
  %line140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 2
  %file141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 3
  %message142 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4
  %va144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4, i32 1
  %format145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 5
  %operation146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 1
  %left_text147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 2
  %left_value148 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 3
  %right_text150 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 4
  %right_value151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 5
  %59 = getelementptr inbounds i8, ptr %__assertion136, i32 32
  br label %do.body130

do.body130:                                       ; preds = %do.body130.do.body130_crit_edge, %do.end115
  %i122.0466 = phi i32 [ 0, %do.end115 ], [ %inc167, %do.body130.do.body130_crit_edge ]
  %arrayidx132 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i122.0466
  %60 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx132, align 1
  %arrayidx134 = getelementptr [32 x i8], ptr @__const.memcpy_test.control, i32 0, i32 %i122.0466
  %62 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx134, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion136) #6
  %64 = call ptr @memset(ptr %59, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion136 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion136, align 8
  %66 = ptrtoint ptr %type139 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type139, align 4
  %67 = ptrtoint ptr %line140 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 88, ptr %line140, align 8
  %68 = ptrtoint ptr %file141 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.3, ptr %file141, align 4
  %69 = ptrtoint ptr %message142 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message142, align 8
  %70 = ptrtoint ptr %va144 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va144, align 4
  %71 = ptrtoint ptr %format145 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format145, align 8
  %72 = ptrtoint ptr %operation146 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.4, ptr %operation146, align 4
  %73 = ptrtoint ptr %left_text147 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.9, ptr %left_text147, align 8
  %conv149 = zext i8 %61 to i64
  %74 = ptrtoint ptr %left_value148 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv149, ptr %left_value148, align 8
  %75 = ptrtoint ptr %right_text150 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.5, ptr %right_text150, align 8
  %conv152 = zext i8 %63 to i64
  %76 = ptrtoint ptr %right_value151 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv152, ptr %right_value151, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp156 = icmp eq i8 %61, %63
  %conv159 = zext i8 %61 to i32
  %conv161 = zext i8 %63 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion136, i1 noundef zeroext %cmp156, ptr noundef nonnull @.str.12, i32 noundef 88, ptr noundef nonnull @.str.11, i32 noundef %i122.0466, i32 noundef %conv159, ptr noundef nonnull @.str.8, i32 noundef %i122.0466, i32 noundef %conv161) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion136) #6
  %inc167 = add nuw nsw i32 %i122.0466, 1
  %exitcond472.not = icmp eq i32 %inc167, 32
  br i1 %exitcond472.not, label %do.end172, label %do.body130.do.body130_crit_edge

do.body130.do.body130_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body130

do.end172:                                        ; preds = %do.body130
  %77 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name, align 4
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %78) #7
  %79 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %log, align 4
  %81 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %80, ptr noundef nonnull @.str.53, ptr noundef %82) #6
  %83 = call ptr @memcpy(ptr %dest, ptr %zero, i32 32)
  %type201 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 1
  %line202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 2
  %file203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 3
  %message204 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 4
  %va206 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 4, i32 1
  %format207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 5
  %operation208 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 1
  %left_text209 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 2
  %left_value210 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 3
  %right_text212 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 4
  %right_value213 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 5
  %84 = getelementptr inbounds i8, ptr %__assertion198, i32 32
  br label %do.body192

do.body192:                                       ; preds = %do.body192.do.body192_crit_edge, %do.end172
  %i184.0467 = phi i32 [ 0, %do.end172 ], [ %inc229, %do.body192.do.body192_crit_edge ]
  %arrayidx194 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i184.0467
  %85 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx194, align 1
  %arrayidx196 = getelementptr [32 x i8], ptr %zero, i32 0, i32 %i184.0467
  %87 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx196, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion198) #6
  %89 = call ptr @memset(ptr %84, i32 255, i32 24)
  %90 = ptrtoint ptr %__assertion198 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %test, ptr %__assertion198, align 8
  %91 = ptrtoint ptr %type201 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %type201, align 4
  %92 = ptrtoint ptr %line202 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 92, ptr %line202, align 8
  %93 = ptrtoint ptr %file203 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.3, ptr %file203, align 4
  %94 = ptrtoint ptr %message204 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %message204, align 8
  %95 = ptrtoint ptr %va206 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %va206, align 4
  %96 = ptrtoint ptr %format207 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @kunit_binary_assert_format, ptr %format207, align 8
  %97 = ptrtoint ptr %operation208 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.4, ptr %operation208, align 4
  %98 = ptrtoint ptr %left_text209 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.9, ptr %left_text209, align 8
  %conv211 = zext i8 %86 to i64
  %99 = ptrtoint ptr %left_value210 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv211, ptr %left_value210, align 8
  %100 = ptrtoint ptr %right_text212 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.46, ptr %right_text212, align 8
  %conv214 = zext i8 %88 to i64
  %101 = ptrtoint ptr %right_value213 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv214, ptr %right_value213, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %88)
  %cmp218 = icmp eq i8 %86, %88
  %conv221 = zext i8 %86 to i32
  %conv223 = zext i8 %88 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion198, i1 noundef zeroext %cmp218, ptr noundef nonnull @.str.12, i32 noundef 92, ptr noundef nonnull @.str.11, i32 noundef %i184.0467, i32 noundef %conv221, ptr noundef nonnull @.str.47, i32 noundef %i184.0467, i32 noundef %conv223) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion198) #6
  %inc229 = add nuw nsw i32 %i184.0467, 1
  %exitcond473.not = icmp eq i32 %inc229, 32
  br i1 %exitcond473.not, label %do.end234, label %do.body192.do.body192_crit_edge

do.body192.do.body192_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body192

do.end234:                                        ; preds = %do.body192
  %102 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name, align 4
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %103) #7
  %104 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %log, align 4
  %106 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %105, ptr noundef nonnull @.str.57, ptr noundef %107) #6
  %108 = call ptr @memset(ptr %dest, i32 32, i32 32)
  %add.ptr = getelementptr inbounds i8, ptr %dest, i32 12
  %109 = call ptr @memcpy(ptr %add.ptr, ptr %zero, i32 7)
  %type264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 1
  %line265 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 2
  %file266 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 3
  %message267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4
  %va269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4, i32 1
  %format270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 5
  %operation271 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 1
  %left_text272 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 2
  %left_value273 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 3
  %right_text275 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 4
  %right_value276 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 5
  %110 = getelementptr inbounds i8, ptr %__assertion261, i32 32
  br label %do.body255

do.body255:                                       ; preds = %do.body255.do.body255_crit_edge, %do.end234
  %i247.0468 = phi i32 [ 0, %do.end234 ], [ %inc292, %do.body255.do.body255_crit_edge ]
  %arrayidx257 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i247.0468
  %111 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx257, align 1
  %arrayidx259 = getelementptr [32 x i8], ptr @__const.memcpy_test.middle, i32 0, i32 %i247.0468
  %113 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx259, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion261) #6
  %115 = call ptr @memset(ptr %110, i32 255, i32 24)
  %116 = ptrtoint ptr %__assertion261 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %test, ptr %__assertion261, align 8
  %117 = ptrtoint ptr %type264 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %type264, align 4
  %118 = ptrtoint ptr %line265 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 97, ptr %line265, align 8
  %119 = ptrtoint ptr %file266 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.3, ptr %file266, align 4
  %120 = ptrtoint ptr %message267 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %message267, align 8
  %121 = ptrtoint ptr %va269 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %va269, align 4
  %122 = ptrtoint ptr %format270 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @kunit_binary_assert_format, ptr %format270, align 8
  %123 = ptrtoint ptr %operation271 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @.str.4, ptr %operation271, align 4
  %124 = ptrtoint ptr %left_text272 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.9, ptr %left_text272, align 8
  %conv274 = zext i8 %112 to i64
  %125 = ptrtoint ptr %left_value273 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv274, ptr %left_value273, align 8
  %126 = ptrtoint ptr %right_text275 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.21, ptr %right_text275, align 8
  %conv277 = zext i8 %114 to i64
  %127 = ptrtoint ptr %right_value276 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv277, ptr %right_value276, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %114)
  %cmp281 = icmp eq i8 %112, %114
  %conv284 = zext i8 %112 to i32
  %conv286 = zext i8 %114 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion261, i1 noundef zeroext %cmp281, ptr noundef nonnull @.str.12, i32 noundef 97, ptr noundef nonnull @.str.11, i32 noundef %i247.0468, i32 noundef %conv284, ptr noundef nonnull @.str.22, i32 noundef %i247.0468, i32 noundef %conv286) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion261) #6
  %inc292 = add nuw nsw i32 %i247.0468, 1
  %exitcond474.not = icmp eq i32 %inc292, 32
  br i1 %exitcond474.not, label %do.end297, label %do.body255.do.body255_crit_edge

do.body255.do.body255_crit_edge:                  ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body255

do.end297:                                        ; preds = %do.body255
  %128 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %name, align 4
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %129) #7
  %130 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %log, align 4
  %132 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %131, ptr noundef nonnull @.str.61, ptr noundef %133) #6
  %134 = call ptr @memset(ptr %dest, i32 32, i32 32)
  %135 = ptrtoint ptr %zero to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %zero, align 4
  %137 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %dest, align 4
  %add.ptr310 = getelementptr inbounds i8, ptr %dest, i32 9
  %138 = load i16, ptr %zero, align 4
  %139 = ptrtoint ptr %add.ptr310 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %138, ptr %add.ptr310, align 1
  %type332 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 1
  %line333 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 2
  %file334 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 3
  %message335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 4
  %va337 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 4, i32 1
  %format338 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 5
  %operation339 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 1
  %left_text340 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 2
  %left_value341 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 3
  %right_text343 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 4
  %right_value344 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 5
  %140 = getelementptr inbounds i8, ptr %__assertion329, i32 32
  br label %do.body323

do.body323:                                       ; preds = %do.body323.do.body323_crit_edge, %do.end297
  %i315.0469 = phi i32 [ 0, %do.end297 ], [ %inc360, %do.body323.do.body323_crit_edge ]
  %arrayidx325 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i315.0469
  %141 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx325, align 1
  %arrayidx327 = getelementptr [32 x i8], ptr @__const.memcpy_test.three, i32 0, i32 %i315.0469
  %143 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx327, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion329) #6
  %145 = call ptr @memset(ptr %140, i32 255, i32 24)
  %146 = ptrtoint ptr %__assertion329 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %test, ptr %__assertion329, align 8
  %147 = ptrtoint ptr %type332 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %type332, align 4
  %148 = ptrtoint ptr %line333 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 106, ptr %line333, align 8
  %149 = ptrtoint ptr %file334 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.3, ptr %file334, align 4
  %150 = ptrtoint ptr %message335 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %message335, align 8
  %151 = ptrtoint ptr %va337 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %va337, align 4
  %152 = ptrtoint ptr %format338 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @kunit_binary_assert_format, ptr %format338, align 8
  %153 = ptrtoint ptr %operation339 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.4, ptr %operation339, align 4
  %154 = ptrtoint ptr %left_text340 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.9, ptr %left_text340, align 8
  %conv342 = zext i8 %142 to i64
  %155 = ptrtoint ptr %left_value341 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv342, ptr %left_value341, align 8
  %156 = ptrtoint ptr %right_text343 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @.str.27, ptr %right_text343, align 8
  %conv345 = zext i8 %144 to i64
  %157 = ptrtoint ptr %right_value344 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %conv345, ptr %right_value344, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp349 = icmp eq i8 %142, %144
  %conv352 = zext i8 %142 to i32
  %conv354 = zext i8 %144 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion329, i1 noundef zeroext %cmp349, ptr noundef nonnull @.str.12, i32 noundef 106, ptr noundef nonnull @.str.11, i32 noundef %i315.0469, i32 noundef %conv352, ptr noundef nonnull @.str.28, i32 noundef %i315.0469, i32 noundef %conv354) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion329) #6
  %inc360 = add nuw nsw i32 %i315.0469, 1
  %exitcond475.not = icmp eq i32 %inc360, 32
  br i1 %exitcond475.not, label %do.end365, label %do.body323.do.body323_crit_edge

do.body323.do.body323_crit_edge:                  ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body323

do.end365:                                        ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #5
  %158 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name, align 4
  %call368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %159) #7
  %160 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %log, align 4
  %162 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %161, ptr noundef nonnull @.str.65, ptr noundef %163) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %zero) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memmove_test(ptr noundef %test) #0 align 64 {
entry:
  %zero = alloca %struct.some_bytes, align 4
  %overlap = alloca %struct.some_bytes, align 4
  %dest = alloca %struct.some_bytes, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion32 = alloca %struct.kunit_binary_assert, align 8
  %__assertion79 = alloca %struct.kunit_binary_assert, align 8
  %__assertion136 = alloca %struct.kunit_binary_assert, align 8
  %__assertion198 = alloca %struct.kunit_binary_assert, align 8
  %__assertion261 = alloca %struct.kunit_binary_assert, align 8
  %__assertion329 = alloca %struct.kunit_binary_assert, align 8
  %__assertion392 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %zero) #6
  %0 = call ptr @memset(ptr %zero, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %overlap) #6
  %1 = call ptr @memcpy(ptr %overlap, ptr @__const.memmove_test.overlap, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dest) #6
  %2 = call ptr @memset(ptr %dest, i32 0, i32 32)
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
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %do.body2

for.cond23.preheader:                             ; preds = %do.body2
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %operation42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 1
  %left_text43 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 2
  %left_value44 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 3
  %right_text46 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 4
  %right_value47 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 5
  %4 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  br label %do.body27

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry
  %i.0541 = phi i32 [ 0, %entry ], [ %inc, %do.body2.do.body2_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @__const.memmove_test.control, i32 0, i32 %i.0541
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
  %7 = call ptr @memset(ptr %3, i32 255, i32 24)
  %8 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %test, ptr %__assertion, align 8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %type, align 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 154, ptr %line, align 8
  %11 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.3, ptr %file, align 4
  %12 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %message, align 8
  %13 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %va, align 4
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %15 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.4, ptr %operation, align 4
  %16 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %left_text, align 8
  %conv = zext i8 %6 to i64
  %17 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %left_value, align 8
  %18 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.66, ptr %right_text, align 8
  %19 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 153, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %6)
  %cmp8 = icmp eq i8 %6, -103
  %conv11 = zext i8 %6 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp8, ptr noundef nonnull @.str.7, i32 noundef 154, ptr noundef nonnull @.str.8, i32 noundef 153, i32 noundef %i.0541, i32 noundef %conv11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  %inc = add nuw nsw i32 %i.0541, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond23.preheader, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body2

for.cond69.preheader:                             ; preds = %do.body27
  %type82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 1
  %line83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 2
  %file84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 3
  %message85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 4
  %va87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 4, i32 1
  %format88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion79, i32 0, i32 5
  %operation89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 1
  %left_text90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 2
  %left_value91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 3
  %right_text93 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 4
  %right_value94 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion79, i32 0, i32 5
  %20 = getelementptr inbounds i8, ptr %__assertion79, i32 32
  br label %do.body73

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %for.cond23.preheader
  %i19.0542 = phi i32 [ 0, %for.cond23.preheader ], [ %inc60, %do.body27.do.body27_crit_edge ]
  %arrayidx29 = getelementptr [32 x i8], ptr %zero, i32 0, i32 %i19.0542
  %21 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx29, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion32) #6
  %23 = call ptr @memset(ptr %4, i32 255, i32 24)
  %24 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %test, ptr %__assertion32, align 8
  %25 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type35, align 4
  %26 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 155, ptr %line36, align 8
  %27 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.3, ptr %file37, align 4
  %28 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message38, align 8
  %29 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va40, align 4
  %30 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_assert_format, ptr %format41, align 8
  %31 = ptrtoint ptr %operation42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.4, ptr %operation42, align 4
  %32 = ptrtoint ptr %left_text43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.46, ptr %left_text43, align 8
  %conv45 = zext i8 %22 to i64
  %33 = ptrtoint ptr %left_value44 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv45, ptr %left_value44, align 8
  %34 = ptrtoint ptr %right_text46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.10, ptr %right_text46, align 8
  %35 = ptrtoint ptr %right_value47 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %right_value47, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp51 = icmp eq i8 %22, 0
  %conv54 = zext i8 %22 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp51, ptr noundef nonnull @.str.7, i32 noundef 155, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %i19.0542, i32 noundef %conv54) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion32) #6
  %inc60 = add nuw nsw i32 %i19.0542, 1
  %exitcond549.not = icmp eq i32 %inc60, 32
  br i1 %exitcond549.not, label %for.cond69.preheader, label %do.body27.do.body27_crit_edge

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body27

do.body73:                                        ; preds = %do.body73.do.body73_crit_edge, %for.cond69.preheader
  %i65.0543 = phi i32 [ 0, %for.cond69.preheader ], [ %inc110, %do.body73.do.body73_crit_edge ]
  %arrayidx75 = getelementptr [32 x i8], ptr %zero, i32 0, i32 %i65.0543
  %36 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i65.0543
  %38 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx77, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion79) #6
  %40 = call ptr @memset(ptr %20, i32 255, i32 24)
  %41 = ptrtoint ptr %__assertion79 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion79, align 8
  %42 = ptrtoint ptr %type82 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type82, align 4
  %43 = ptrtoint ptr %line83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 156, ptr %line83, align 8
  %44 = ptrtoint ptr %file84 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.3, ptr %file84, align 4
  %45 = ptrtoint ptr %message85 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message85, align 8
  %46 = ptrtoint ptr %va87 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va87, align 4
  %47 = ptrtoint ptr %format88 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_binary_assert_format, ptr %format88, align 8
  %48 = ptrtoint ptr %operation89 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.4, ptr %operation89, align 4
  %49 = ptrtoint ptr %left_text90 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.46, ptr %left_text90, align 8
  %conv92 = zext i8 %37 to i64
  %50 = ptrtoint ptr %left_value91 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv92, ptr %left_value91, align 8
  %51 = ptrtoint ptr %right_text93 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.9, ptr %right_text93, align 8
  %conv95 = zext i8 %39 to i64
  %52 = ptrtoint ptr %right_value94 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv95, ptr %right_value94, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp99 = icmp eq i8 %37, %39
  %conv102 = zext i8 %37 to i32
  %conv104 = zext i8 %39 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion79, i1 noundef zeroext %cmp99, ptr noundef nonnull @.str.12, i32 noundef 156, ptr noundef nonnull @.str.47, i32 noundef %i65.0543, i32 noundef %conv102, ptr noundef nonnull @.str.11, i32 noundef %i65.0543, i32 noundef %conv104) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion79) #6
  %inc110 = add nuw nsw i32 %i65.0543, 1
  %exitcond550.not = icmp eq i32 %inc110, 32
  br i1 %exitcond550.not, label %do.end115, label %do.body73.do.body73_crit_edge

do.body73.do.body73_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body73

do.end115:                                        ; preds = %do.body73
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %54) #7
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %55 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %log, align 4
  %57 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %56, ptr noundef nonnull @.str.68, ptr noundef %58) #6
  %59 = call ptr @memset(ptr %dest, i32 153, i32 32)
  %type139 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 1
  %line140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 2
  %file141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 3
  %message142 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4
  %va144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4, i32 1
  %format145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 5
  %operation146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 1
  %left_text147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 2
  %left_value148 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 3
  %right_text150 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 4
  %right_value151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 5
  %60 = getelementptr inbounds i8, ptr %__assertion136, i32 32
  br label %do.body130

do.body130:                                       ; preds = %do.body130.do.body130_crit_edge, %do.end115
  %i122.0544 = phi i32 [ 0, %do.end115 ], [ %inc167, %do.body130.do.body130_crit_edge ]
  %arrayidx132 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i122.0544
  %61 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx132, align 1
  %arrayidx134 = getelementptr [32 x i8], ptr @__const.memmove_test.control, i32 0, i32 %i122.0544
  %63 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx134, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion136) #6
  %65 = call ptr @memset(ptr %60, i32 255, i32 24)
  %66 = ptrtoint ptr %__assertion136 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %test, ptr %__assertion136, align 8
  %67 = ptrtoint ptr %type139 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type139, align 4
  %68 = ptrtoint ptr %line140 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 160, ptr %line140, align 8
  %69 = ptrtoint ptr %file141 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.3, ptr %file141, align 4
  %70 = ptrtoint ptr %message142 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %message142, align 8
  %71 = ptrtoint ptr %va144 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %va144, align 4
  %72 = ptrtoint ptr %format145 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @kunit_binary_assert_format, ptr %format145, align 8
  %73 = ptrtoint ptr %operation146 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.4, ptr %operation146, align 4
  %74 = ptrtoint ptr %left_text147 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.9, ptr %left_text147, align 8
  %conv149 = zext i8 %62 to i64
  %75 = ptrtoint ptr %left_value148 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv149, ptr %left_value148, align 8
  %76 = ptrtoint ptr %right_text150 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.5, ptr %right_text150, align 8
  %conv152 = zext i8 %64 to i64
  %77 = ptrtoint ptr %right_value151 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv152, ptr %right_value151, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp156 = icmp eq i8 %62, %64
  %conv159 = zext i8 %62 to i32
  %conv161 = zext i8 %64 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion136, i1 noundef zeroext %cmp156, ptr noundef nonnull @.str.12, i32 noundef 160, ptr noundef nonnull @.str.11, i32 noundef %i122.0544, i32 noundef %conv159, ptr noundef nonnull @.str.8, i32 noundef %i122.0544, i32 noundef %conv161) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion136) #6
  %inc167 = add nuw nsw i32 %i122.0544, 1
  %exitcond551.not = icmp eq i32 %inc167, 32
  br i1 %exitcond551.not, label %do.end172, label %do.body130.do.body130_crit_edge

do.body130.do.body130_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body130

do.end172:                                        ; preds = %do.body130
  %78 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name, align 4
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %79) #7
  %80 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %log, align 4
  %82 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %81, ptr noundef nonnull @.str.72, ptr noundef %83) #6
  %84 = call ptr @memcpy(ptr %dest, ptr %zero, i32 32)
  %type201 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 1
  %line202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 2
  %file203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 3
  %message204 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 4
  %va206 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 4, i32 1
  %format207 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion198, i32 0, i32 5
  %operation208 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 1
  %left_text209 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 2
  %left_value210 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 3
  %right_text212 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 4
  %right_value213 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion198, i32 0, i32 5
  %85 = getelementptr inbounds i8, ptr %__assertion198, i32 32
  br label %do.body192

do.body192:                                       ; preds = %do.body192.do.body192_crit_edge, %do.end172
  %i184.0545 = phi i32 [ 0, %do.end172 ], [ %inc229, %do.body192.do.body192_crit_edge ]
  %arrayidx194 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i184.0545
  %86 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx194, align 1
  %arrayidx196 = getelementptr [32 x i8], ptr %zero, i32 0, i32 %i184.0545
  %88 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx196, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion198) #6
  %90 = call ptr @memset(ptr %85, i32 255, i32 24)
  %91 = ptrtoint ptr %__assertion198 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %test, ptr %__assertion198, align 8
  %92 = ptrtoint ptr %type201 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %type201, align 4
  %93 = ptrtoint ptr %line202 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 164, ptr %line202, align 8
  %94 = ptrtoint ptr %file203 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.3, ptr %file203, align 4
  %95 = ptrtoint ptr %message204 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %message204, align 8
  %96 = ptrtoint ptr %va206 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %va206, align 4
  %97 = ptrtoint ptr %format207 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @kunit_binary_assert_format, ptr %format207, align 8
  %98 = ptrtoint ptr %operation208 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.4, ptr %operation208, align 4
  %99 = ptrtoint ptr %left_text209 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.9, ptr %left_text209, align 8
  %conv211 = zext i8 %87 to i64
  %100 = ptrtoint ptr %left_value210 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv211, ptr %left_value210, align 8
  %101 = ptrtoint ptr %right_text212 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.46, ptr %right_text212, align 8
  %conv214 = zext i8 %89 to i64
  %102 = ptrtoint ptr %right_value213 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv214, ptr %right_value213, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp218 = icmp eq i8 %87, %89
  %conv221 = zext i8 %87 to i32
  %conv223 = zext i8 %89 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion198, i1 noundef zeroext %cmp218, ptr noundef nonnull @.str.12, i32 noundef 164, ptr noundef nonnull @.str.11, i32 noundef %i184.0545, i32 noundef %conv221, ptr noundef nonnull @.str.47, i32 noundef %i184.0545, i32 noundef %conv223) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion198) #6
  %inc229 = add nuw nsw i32 %i184.0545, 1
  %exitcond552.not = icmp eq i32 %inc229, 32
  br i1 %exitcond552.not, label %do.end234, label %do.body192.do.body192_crit_edge

do.body192.do.body192_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body192

do.end234:                                        ; preds = %do.body192
  %103 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name, align 4
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %104) #7
  %105 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %log, align 4
  %107 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %106, ptr noundef nonnull @.str.76, ptr noundef %108) #6
  %109 = call ptr @memset(ptr %dest, i32 153, i32 32)
  %add.ptr = getelementptr inbounds i8, ptr %dest, i32 12
  %110 = call ptr @memcpy(ptr %add.ptr, ptr %zero, i32 7)
  %type264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 1
  %line265 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 2
  %file266 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 3
  %message267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4
  %va269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4, i32 1
  %format270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 5
  %operation271 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 1
  %left_text272 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 2
  %left_value273 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 3
  %right_text275 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 4
  %right_value276 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 5
  %111 = getelementptr inbounds i8, ptr %__assertion261, i32 32
  br label %do.body255

do.body255:                                       ; preds = %do.body255.do.body255_crit_edge, %do.end234
  %i247.0546 = phi i32 [ 0, %do.end234 ], [ %inc292, %do.body255.do.body255_crit_edge ]
  %arrayidx257 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i247.0546
  %112 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx257, align 1
  %arrayidx259 = getelementptr [32 x i8], ptr @__const.memmove_test.middle, i32 0, i32 %i247.0546
  %114 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx259, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion261) #6
  %116 = call ptr @memset(ptr %111, i32 255, i32 24)
  %117 = ptrtoint ptr %__assertion261 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %test, ptr %__assertion261, align 8
  %118 = ptrtoint ptr %type264 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %type264, align 4
  %119 = ptrtoint ptr %line265 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 169, ptr %line265, align 8
  %120 = ptrtoint ptr %file266 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.3, ptr %file266, align 4
  %121 = ptrtoint ptr %message267 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %message267, align 8
  %122 = ptrtoint ptr %va269 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %va269, align 4
  %123 = ptrtoint ptr %format270 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @kunit_binary_assert_format, ptr %format270, align 8
  %124 = ptrtoint ptr %operation271 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.4, ptr %operation271, align 4
  %125 = ptrtoint ptr %left_text272 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.9, ptr %left_text272, align 8
  %conv274 = zext i8 %113 to i64
  %126 = ptrtoint ptr %left_value273 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv274, ptr %left_value273, align 8
  %127 = ptrtoint ptr %right_text275 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.21, ptr %right_text275, align 8
  %conv277 = zext i8 %115 to i64
  %128 = ptrtoint ptr %right_value276 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv277, ptr %right_value276, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %115)
  %cmp281 = icmp eq i8 %113, %115
  %conv284 = zext i8 %113 to i32
  %conv286 = zext i8 %115 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion261, i1 noundef zeroext %cmp281, ptr noundef nonnull @.str.12, i32 noundef 169, ptr noundef nonnull @.str.11, i32 noundef %i247.0546, i32 noundef %conv284, ptr noundef nonnull @.str.22, i32 noundef %i247.0546, i32 noundef %conv286) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion261) #6
  %inc292 = add nuw nsw i32 %i247.0546, 1
  %exitcond553.not = icmp eq i32 %inc292, 32
  br i1 %exitcond553.not, label %do.end297, label %do.body255.do.body255_crit_edge

do.body255.do.body255_crit_edge:                  ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body255

do.end297:                                        ; preds = %do.body255
  %129 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %name, align 4
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %130) #7
  %131 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %log, align 4
  %133 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %132, ptr noundef nonnull @.str.80, ptr noundef %134) #6
  %135 = call ptr @memset(ptr %dest, i32 153, i32 32)
  %136 = ptrtoint ptr %zero to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %zero, align 4
  %138 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %dest, align 4
  %add.ptr310 = getelementptr inbounds i8, ptr %dest, i32 10
  %139 = call ptr @memcpy(ptr %add.ptr310, ptr %zero, i32 3)
  %type332 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 1
  %line333 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 2
  %file334 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 3
  %message335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 4
  %va337 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 4, i32 1
  %format338 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion329, i32 0, i32 5
  %operation339 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 1
  %left_text340 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 2
  %left_value341 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 3
  %right_text343 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 4
  %right_value344 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion329, i32 0, i32 5
  %140 = getelementptr inbounds i8, ptr %__assertion329, i32 32
  br label %do.body323

do.body323:                                       ; preds = %do.body323.do.body323_crit_edge, %do.end297
  %i315.0547 = phi i32 [ 0, %do.end297 ], [ %inc360, %do.body323.do.body323_crit_edge ]
  %arrayidx325 = getelementptr [32 x i8], ptr %dest, i32 0, i32 %i315.0547
  %141 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx325, align 1
  %arrayidx327 = getelementptr [32 x i8], ptr @__const.memmove_test.five, i32 0, i32 %i315.0547
  %143 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx327, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion329) #6
  %145 = call ptr @memset(ptr %140, i32 255, i32 24)
  %146 = ptrtoint ptr %__assertion329 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %test, ptr %__assertion329, align 8
  %147 = ptrtoint ptr %type332 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %type332, align 4
  %148 = ptrtoint ptr %line333 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 178, ptr %line333, align 8
  %149 = ptrtoint ptr %file334 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.3, ptr %file334, align 4
  %150 = ptrtoint ptr %message335 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %message335, align 8
  %151 = ptrtoint ptr %va337 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %va337, align 4
  %152 = ptrtoint ptr %format338 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @kunit_binary_assert_format, ptr %format338, align 8
  %153 = ptrtoint ptr %operation339 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.4, ptr %operation339, align 4
  %154 = ptrtoint ptr %left_text340 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.9, ptr %left_text340, align 8
  %conv342 = zext i8 %142 to i64
  %155 = ptrtoint ptr %left_value341 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv342, ptr %left_value341, align 8
  %156 = ptrtoint ptr %right_text343 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @.str.81, ptr %right_text343, align 8
  %conv345 = zext i8 %144 to i64
  %157 = ptrtoint ptr %right_value344 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %conv345, ptr %right_value344, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp349 = icmp eq i8 %142, %144
  %conv352 = zext i8 %142 to i32
  %conv354 = zext i8 %144 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion329, i1 noundef zeroext %cmp349, ptr noundef nonnull @.str.12, i32 noundef 178, ptr noundef nonnull @.str.11, i32 noundef %i315.0547, i32 noundef %conv352, ptr noundef nonnull @.str.82, i32 noundef %i315.0547, i32 noundef %conv354) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion329) #6
  %inc360 = add nuw nsw i32 %i315.0547, 1
  %exitcond554.not = icmp eq i32 %inc360, 32
  br i1 %exitcond554.not, label %do.end365, label %do.body323.do.body323_crit_edge

do.body323.do.body323_crit_edge:                  ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body323

do.end365:                                        ; preds = %do.body323
  %158 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name, align 4
  %call368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %159) #7
  %160 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %log, align 4
  %162 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %161, ptr noundef nonnull @.str.86, ptr noundef %163) #6
  %arrayidx375 = getelementptr inbounds [32 x i8], ptr %overlap, i32 0, i32 2
  %164 = call ptr @memmove(ptr %arrayidx375, ptr %overlap, i32 5)
  %type395 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion392, i32 0, i32 1
  %line396 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion392, i32 0, i32 2
  %file397 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion392, i32 0, i32 3
  %message398 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion392, i32 0, i32 4
  %va400 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion392, i32 0, i32 4, i32 1
  %format401 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion392, i32 0, i32 5
  %operation402 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion392, i32 0, i32 1
  %left_text403 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion392, i32 0, i32 2
  %left_value404 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion392, i32 0, i32 3
  %right_text406 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion392, i32 0, i32 4
  %right_value407 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion392, i32 0, i32 5
  %165 = getelementptr inbounds i8, ptr %__assertion392, i32 32
  br label %do.body386

do.body386:                                       ; preds = %do.body386.do.body386_crit_edge, %do.end365
  %i378.0548 = phi i32 [ 0, %do.end365 ], [ %inc423, %do.body386.do.body386_crit_edge ]
  %arrayidx388 = getelementptr [32 x i8], ptr %overlap, i32 0, i32 %i378.0548
  %166 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx388, align 1
  %arrayidx390 = getelementptr [32 x i8], ptr @__const.memmove_test.overlap_expected, i32 0, i32 %i378.0548
  %168 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx390, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion392) #6
  %170 = call ptr @memset(ptr %165, i32 255, i32 24)
  %171 = ptrtoint ptr %__assertion392 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %test, ptr %__assertion392, align 8
  %172 = ptrtoint ptr %type395 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %type395, align 4
  %173 = ptrtoint ptr %line396 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 183, ptr %line396, align 8
  %174 = ptrtoint ptr %file397 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.3, ptr %file397, align 4
  %175 = ptrtoint ptr %message398 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %message398, align 8
  %176 = ptrtoint ptr %va400 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %va400, align 4
  %177 = ptrtoint ptr %format401 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @kunit_binary_assert_format, ptr %format401, align 8
  %178 = ptrtoint ptr %operation402 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.4, ptr %operation402, align 4
  %179 = ptrtoint ptr %left_text403 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @.str.87, ptr %left_text403, align 8
  %conv405 = zext i8 %167 to i64
  %180 = ptrtoint ptr %left_value404 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %conv405, ptr %left_value404, align 8
  %181 = ptrtoint ptr %right_text406 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.88, ptr %right_text406, align 8
  %conv408 = zext i8 %169 to i64
  %182 = ptrtoint ptr %right_value407 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %conv408, ptr %right_value407, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %167, i8 %169)
  %cmp412 = icmp eq i8 %167, %169
  %conv415 = zext i8 %167 to i32
  %conv417 = zext i8 %169 to i32
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion392, i1 noundef zeroext %cmp412, ptr noundef nonnull @.str.12, i32 noundef 183, ptr noundef nonnull @.str.89, i32 noundef %i378.0548, i32 noundef %conv415, ptr noundef nonnull @.str.90, i32 noundef %i378.0548, i32 noundef %conv417) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion392) #6
  %inc423 = add nuw nsw i32 %i378.0548, 1
  %exitcond555.not = icmp eq i32 %inc423, 32
  br i1 %exitcond555.not, label %do.end428, label %do.body386.do.body386_crit_edge

do.body386.do.body386_crit_edge:                  ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body386

do.end428:                                        ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #5
  %183 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %name, align 4
  %call431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %184) #7
  %185 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %log, align 4
  %187 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %186, ptr noundef nonnull @.str.94, ptr noundef %188) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %overlap) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %zero) #6
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_log_append(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__UNIQUE_ID_suites253, !1, !"__UNIQUE_ID_suites253", i1 false, i1 false}
!1 = !{!"../lib/memcpy_kunit.c", i32 287, i32 1}
!2 = !{ptr @__UNIQUE_ID_file254, !3, !"__UNIQUE_ID_file254", i1 false, i1 false}
!3 = !{!"../lib/memcpy_kunit.c", i32 289, i32 1}
!4 = !{ptr @__UNIQUE_ID_license255, !3, !"__UNIQUE_ID_license255", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array252, !1, !"__UNIQUE_ID_array252", i1 false, i1 false}
!6 = !{ptr @memcpy_test_suite, !7, !"memcpy_test_suite", i1 false, i1 false}
!7 = !{!"../lib/memcpy_kunit.c", i32 282, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/memcpy_kunit.c", i32 276, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/memcpy_kunit.c", i32 277, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/memcpy_kunit.c", i32 278, i32 2}
!14 = !{ptr @memcpy_test_cases, !15, !"memcpy_test_cases", i1 false, i1 false}
!15 = !{!"../lib/memcpy_kunit.c", i32 275, i32 26}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/memcpy_kunit.c", i32 237, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/memcpy_kunit.c", i32 238, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/memcpy_kunit.c", i32 242, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @memset_test._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @memset_test._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/memcpy_kunit.c", i32 246, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @memset_test._entry.17, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @memset_test._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/memcpy_kunit.c", i32 251, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @memset_test._entry.23, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @memset_test._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/memcpy_kunit.c", i32 261, i32 2}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @memset_test._entry.29, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @memset_test._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/memcpy_kunit.c", i32 266, i32 2}
!56 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @memset_test._entry.35, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @memset_test._entry_ptr.37, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !55, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/memcpy_kunit.c", i32 271, i32 2}
!63 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.42, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @memset_test._entry.41, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @memset_test._entry_ptr.43, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.44, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/memcpy_kunit.c", i32 82, i32 2}
!70 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/memcpy_kunit.c", i32 83, i32 2}
!72 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.48, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/memcpy_kunit.c", i32 84, i32 2}
!75 = !{ptr @memcpy_test._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @memcpy_test._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.49, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.51, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/memcpy_kunit.c", i32 88, i32 2}
!80 = !{ptr @memcpy_test._entry.50, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @memcpy_test._entry_ptr.52, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.53, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.55, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/memcpy_kunit.c", i32 92, i32 2}
!85 = !{ptr @memcpy_test._entry.54, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @memcpy_test._entry_ptr.56, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.59, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../lib/memcpy_kunit.c", i32 97, i32 2}
!90 = !{ptr @memcpy_test._entry.58, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @memcpy_test._entry_ptr.60, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.61, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/memcpy_kunit.c", i32 106, i32 2}
!95 = !{ptr @memcpy_test._entry.62, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @memcpy_test._entry_ptr.64, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.65, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.66, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../lib/memcpy_kunit.c", i32 154, i32 2}
!100 = !{ptr @.str.67, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../lib/memcpy_kunit.c", i32 156, i32 2}
!102 = !{ptr @memmove_test._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @memmove_test._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.68, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.70, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../lib/memcpy_kunit.c", i32 160, i32 2}
!107 = !{ptr @memmove_test._entry.69, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @memmove_test._entry_ptr.71, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.72, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.74, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../lib/memcpy_kunit.c", i32 164, i32 2}
!112 = !{ptr @memmove_test._entry.73, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @memmove_test._entry_ptr.75, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.76, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.78, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../lib/memcpy_kunit.c", i32 169, i32 2}
!117 = !{ptr @memmove_test._entry.77, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @memmove_test._entry_ptr.79, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.80, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.81, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../lib/memcpy_kunit.c", i32 178, i32 2}
!122 = !{ptr @.str.82, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.84, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @memmove_test._entry.83, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @memmove_test._entry_ptr.85, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.86, !121, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.87, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../lib/memcpy_kunit.c", i32 183, i32 2}
!129 = !{ptr @.str.88, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.89, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.90, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.92, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @memmove_test._entry.91, !128, !"_entry", i1 false, i1 false}
!134 = !{ptr @memmove_test._entry_ptr.93, !128, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.94, !128, !"<string literal>", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
