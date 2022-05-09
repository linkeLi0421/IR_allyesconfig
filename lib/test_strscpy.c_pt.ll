; ModuleID = '/llk/IR_all_yes/lib/test_strscpy.c_pt.bc'
source_filename = "../lib/test_strscpy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@test_strscpy_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016test_strscpy: unloaded.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_strscpy_exit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/test_strscpy.c\00", [45 x i8] zeroinitializer }, align 32
@test_strscpy_exit._entry_ptr = internal global ptr @test_strscpy_exit._entry, section ".printk_index", align 4
@__initcall__kmod_test_strscpy__106_148_test_strscpy_init6 = internal global ptr @test_strscpy_init, section ".initcall6.init", align 4
@__exitcall_test_strscpy_exit = internal global ptr @test_strscpy_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author107 = internal constant [56 x i8] c"test_strscpy.author=Tobin C. Harding <tobin@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [35 x i8] c"test_strscpy.file=lib/test_strscpy\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [25 x i8] c"test_strscpy.license=GPL\00", section ".modinfo", align 1
@test_strscpy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016test_strscpy: loaded.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_strscpy_init\00", [46 x i8] zeroinitializer }, align 32
@test_strscpy_init._entry_ptr = internal global ptr @test_strscpy_init._entry, section ".printk_index", align 4
@total_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@failed_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014test_strscpy: TC failed at %s:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selftest\00", [23 x i8] zeroinitializer }, align 32
@selftest._entry_ptr = internal global ptr @selftest._entry, section ".printk_index", align 4
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@selftest._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.10 = internal global ptr @selftest._entry.9, section ".printk_index", align 4
@selftest._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.12 = internal global ptr @selftest._entry.11, section ".printk_index", align 4
@selftest._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.14 = internal global ptr @selftest._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ab\00", [29 x i8] zeroinitializer }, align 32
@selftest._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.17 = internal global ptr @selftest._entry.16, section ".printk_index", align 4
@selftest._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.19 = internal global ptr @selftest._entry.18, section ".printk_index", align 4
@selftest._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.21 = internal global ptr @selftest._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"abc\00", [28 x i8] zeroinitializer }, align 32
@selftest._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.24 = internal global ptr @selftest._entry.23, section ".printk_index", align 4
@selftest._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.26 = internal global ptr @selftest._entry.25, section ".printk_index", align 4
@selftest._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.28 = internal global ptr @selftest._entry.27, section ".printk_index", align 4
@selftest._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.30 = internal global ptr @selftest._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"abcd\00", [27 x i8] zeroinitializer }, align 32
@selftest._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.33 = internal global ptr @selftest._entry.32, section ".printk_index", align 4
@selftest._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.35 = internal global ptr @selftest._entry.34, section ".printk_index", align 4
@selftest._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.37 = internal global ptr @selftest._entry.36, section ".printk_index", align 4
@selftest._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.39 = internal global ptr @selftest._entry.38, section ".printk_index", align 4
@selftest._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.41 = internal global ptr @selftest._entry.40, section ".printk_index", align 4
@tc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013test_strscpy: null source string not supported\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tc\00", [29 x i8] zeroinitializer }, align 32
@tc._entry_ptr = internal global ptr @tc._entry, section ".printk_index", align 4
@tc._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013test_strscpy: count (%d) is too big (%d) ... aborting\00", [40 x i8] zeroinitializer }, align 32
@tc._entry_ptr.46 = internal global ptr @tc._entry.44, section ".printk_index", align 4
@tc._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014test_strscpy: expected (%d) is bigger than can possibly be returned (%d)\00", [53 x i8] zeroinitializer }, align 32
@tc._entry_ptr.49 = internal global ptr @tc._entry.47, section ".printk_index", align 4
@tc._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013test_strscpy: %d != %d (written, expected)\0A\00", [50 x i8] zeroinitializer }, align 32
@tc._entry_ptr.52 = internal global ptr @tc._entry.50, section ".printk_index", align 4
@tc._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013test_strscpy: buffer state invalid for -E2BIG\0A\00", [47 x i8] zeroinitializer }, align 32
@tc._entry_ptr.55 = internal global ptr @tc._entry.53, section ".printk_index", align 4
@tc._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.43, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013test_strscpy: too big string is not null terminated correctly\0A\00", [63 x i8] zeroinitializer }, align 32
@tc._entry_ptr.58 = internal global ptr @tc._entry.56, section ".printk_index", align 4
@tc._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.43, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013test_strscpy: buf[i]==%c != src[i]==%c\0A\00", [54 x i8] zeroinitializer }, align 32
@tc._entry_ptr.61 = internal global ptr @tc._entry.59, section ".printk_index", align 4
@tc._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.43, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013test_strscpy: string is not null terminated correctly\0A\00", [39 x i8] zeroinitializer }, align 32
@tc._entry_ptr.64 = internal global ptr @tc._entry.62, section ".printk_index", align 4
@tc._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.43, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013test_strscpy: padding missing at index: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@tc._entry_ptr.67 = internal global ptr @tc._entry.65, section ".printk_index", align 4
@tc._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.43, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013test_strscpy: poison value missing at index: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@tc._entry_ptr.70 = internal global ptr @tc._entry.68, section ".printk_index", align 4
@kstm_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.73, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016test_strscpy: skipped %u tests\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kstm_report\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lib/../tools/testing/selftests/kselftest_module.h\00", [46 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr = internal global ptr @kstm_report._entry, section ".printk_index", align 4
@kstm_report._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.73, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016test_strscpy: remaining %u tests passed\0A\00", [53 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.76 = internal global ptr @kstm_report._entry.74, section ".printk_index", align 4
@kstm_report._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.72, ptr @.str.73, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016test_strscpy: all %u tests passed\0A\00", [59 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.79 = internal global ptr @kstm_report._entry.77, section ".printk_index", align 4
@kstm_report._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.72, ptr @.str.73, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014test_strscpy: failed %u out of %u tests\0A\00", [53 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.82 = internal global ptr @kstm_report._entry.80, section ".printk_index", align 4
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 148, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 126, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 127, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 129, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 130, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 132, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 133, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 134, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 136, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 137, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 138, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 139, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 141, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 142, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 143, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 144, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 145, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 43, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 52, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 56, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 62, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 68, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 72, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 79, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 86, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 94, i32 4 }
@___asan_gen_.234 = private constant [22 x i8] c"../lib/test_strscpy.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 103, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 30, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 31, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 33, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [53 x i8] c"../lib/../tools/testing/selftests/kselftest_module.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 35, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__exitcall_test_strscpy_exit, ptr @__initcall__kmod_test_strscpy__106_148_test_strscpy_init6, ptr @kstm_report._entry, ptr @kstm_report._entry.74, ptr @kstm_report._entry.77, ptr @kstm_report._entry.80, ptr @kstm_report._entry_ptr, ptr @kstm_report._entry_ptr.76, ptr @kstm_report._entry_ptr.79, ptr @kstm_report._entry_ptr.82, ptr @selftest._entry, ptr @selftest._entry.11, ptr @selftest._entry.13, ptr @selftest._entry.16, ptr @selftest._entry.18, ptr @selftest._entry.20, ptr @selftest._entry.23, ptr @selftest._entry.25, ptr @selftest._entry.27, ptr @selftest._entry.29, ptr @selftest._entry.32, ptr @selftest._entry.34, ptr @selftest._entry.36, ptr @selftest._entry.38, ptr @selftest._entry.40, ptr @selftest._entry.9, ptr @selftest._entry_ptr, ptr @selftest._entry_ptr.10, ptr @selftest._entry_ptr.12, ptr @selftest._entry_ptr.14, ptr @selftest._entry_ptr.17, ptr @selftest._entry_ptr.19, ptr @selftest._entry_ptr.21, ptr @selftest._entry_ptr.24, ptr @selftest._entry_ptr.26, ptr @selftest._entry_ptr.28, ptr @selftest._entry_ptr.30, ptr @selftest._entry_ptr.33, ptr @selftest._entry_ptr.35, ptr @selftest._entry_ptr.37, ptr @selftest._entry_ptr.39, ptr @selftest._entry_ptr.41, ptr @tc._entry, ptr @tc._entry.44, ptr @tc._entry.47, ptr @tc._entry.50, ptr @tc._entry.53, ptr @tc._entry.56, ptr @tc._entry.59, ptr @tc._entry.62, ptr @tc._entry.65, ptr @tc._entry.68, ptr @tc._entry_ptr, ptr @tc._entry_ptr.46, ptr @tc._entry_ptr.49, ptr @tc._entry_ptr.52, ptr @tc._entry_ptr.55, ptr @tc._entry_ptr.58, ptr @tc._entry_ptr.61, ptr @tc._entry_ptr.64, ptr @tc._entry_ptr.67, ptr @tc._entry_ptr.70, ptr @test_strscpy_exit, ptr @test_strscpy_exit._entry, ptr @test_strscpy_exit._entry_ptr, ptr @test_strscpy_init._entry, ptr @test_strscpy_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.15, ptr @.str.22, ptr @.str.31, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_strscpy_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_strscpy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_strscpy_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_strscpy_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  tail call fastcc void @selftest() #8
  %0 = load i32, ptr @total_tests, align 4
  %1 = load i32, ptr @failed_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %do.end7.i, label %do.end12.i

do.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %0) #7
  br label %kstm_report.exit

do.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %1, i32 noundef %0) #7
  br label %kstm_report.exit

kstm_report.exit:                                 ; preds = %do.end12.i, %do.end7.i
  %cond.i = phi i32 [ 0, %do.end7.i ], [ -22, %do.end12.i ]
  ret i32 %cond.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @selftest() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load i32, ptr @total_tests, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @total_tests, align 4
  %call = tail call fastcc i32 @tc(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef -7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 126) #7
  %1 = load i32, ptr @failed_tests, align 4
  %inc3 = add i32 %1, 1
  store i32 %inc3, ptr @failed_tests, align 4
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %2 = load i32, ptr @total_tests, align 4
  %inc6 = add i32 %2, 1
  store i32 %inc6, ptr @total_tests, align 4
  %call7 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef -7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body5.do.body17_crit_edge, label %do.end11

do.body5.do.body17_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 127) #7
  %3 = load i32, ptr @failed_tests, align 4
  %inc14 = add i32 %3, 1
  store i32 %inc14, ptr @failed_tests, align 4
  br label %do.body17

do.body17:                                        ; preds = %do.end11, %do.body5.do.body17_crit_edge
  %4 = load i32, ptr @total_tests, align 4
  %inc18 = add i32 %4, 1
  store i32 %inc18, ptr @total_tests, align 4
  %call19 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef -7, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body17.do.body29_crit_edge, label %do.end23

do.body17.do.body29_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body29

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 129) #7
  %5 = load i32, ptr @failed_tests, align 4
  %inc26 = add i32 %5, 1
  store i32 %inc26, ptr @failed_tests, align 4
  br label %do.body29

do.body29:                                        ; preds = %do.end23, %do.body17.do.body29_crit_edge
  %6 = load i32, ptr @total_tests, align 4
  %inc30 = add i32 %6, 1
  store i32 %inc30, ptr @total_tests, align 4
  %call31 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body29.do.body41_crit_edge, label %do.end35

do.body29.do.body41_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 130) #7
  %7 = load i32, ptr @failed_tests, align 4
  %inc38 = add i32 %7, 1
  store i32 %inc38, ptr @failed_tests, align 4
  br label %do.body41

do.body41:                                        ; preds = %do.end35, %do.body29.do.body41_crit_edge
  %8 = load i32, ptr @total_tests, align 4
  %inc42 = add i32 %8, 1
  store i32 %inc42, ptr @total_tests, align 4
  %call43 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef -7, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body41.do.body53_crit_edge, label %do.end47

do.body41.do.body53_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body53

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 132) #7
  %9 = load i32, ptr @failed_tests, align 4
  %inc50 = add i32 %9, 1
  store i32 %inc50, ptr @failed_tests, align 4
  br label %do.body53

do.body53:                                        ; preds = %do.end47, %do.body41.do.body53_crit_edge
  %10 = load i32, ptr @total_tests, align 4
  %inc54 = add i32 %10, 1
  store i32 %inc54, ptr @total_tests, align 4
  %call55 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body53.do.body65_crit_edge, label %do.end59

do.body53.do.body65_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body65

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 133) #7
  %11 = load i32, ptr @failed_tests, align 4
  %inc62 = add i32 %11, 1
  store i32 %inc62, ptr @failed_tests, align 4
  br label %do.body65

do.body65:                                        ; preds = %do.end59, %do.body53.do.body65_crit_edge
  %12 = load i32, ptr @total_tests, align 4
  %inc66 = add i32 %12, 1
  store i32 %inc66, ptr @total_tests, align 4
  %call67 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body65.do.body77_crit_edge, label %do.end71

do.body65.do.body77_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body77

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 134) #7
  %13 = load i32, ptr @failed_tests, align 4
  %inc74 = add i32 %13, 1
  store i32 %inc74, ptr @failed_tests, align 4
  br label %do.body77

do.body77:                                        ; preds = %do.end71, %do.body65.do.body77_crit_edge
  %14 = load i32, ptr @total_tests, align 4
  %inc78 = add i32 %14, 1
  store i32 %inc78, ptr @total_tests, align 4
  %call79 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.22, i32 noundef 3, i32 noundef -7, i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body77.do.body89_crit_edge, label %do.end83

do.body77.do.body89_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body89

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 136) #7
  %15 = load i32, ptr @failed_tests, align 4
  %inc86 = add i32 %15, 1
  store i32 %inc86, ptr @failed_tests, align 4
  br label %do.body89

do.body89:                                        ; preds = %do.end83, %do.body77.do.body89_crit_edge
  %16 = load i32, ptr @total_tests, align 4
  %inc90 = add i32 %16, 1
  store i32 %inc90, ptr @total_tests, align 4
  %call91 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.15, i32 noundef 3, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.body89.do.body101_crit_edge, label %do.end95

do.body89.do.body101_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body101

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 137) #7
  %17 = load i32, ptr @failed_tests, align 4
  %inc98 = add i32 %17, 1
  store i32 %inc98, ptr @failed_tests, align 4
  br label %do.body101

do.body101:                                       ; preds = %do.end95, %do.body89.do.body101_crit_edge
  %18 = load i32, ptr @total_tests, align 4
  %inc102 = add i32 %18, 1
  store i32 %inc102, ptr @total_tests, align 4
  %call103 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %do.body101.do.body113_crit_edge, label %do.end107

do.body101.do.body113_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body113

do.end107:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #6
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 138) #7
  %19 = load i32, ptr @failed_tests, align 4
  %inc110 = add i32 %19, 1
  store i32 %inc110, ptr @failed_tests, align 4
  br label %do.body113

do.body113:                                       ; preds = %do.end107, %do.body101.do.body113_crit_edge
  %20 = load i32, ptr @total_tests, align 4
  %inc114 = add i32 %20, 1
  store i32 %inc114, ptr @total_tests, align 4
  %call115 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.body113.do.body125_crit_edge, label %do.end119

do.body113.do.body125_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body125

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 139) #7
  %21 = load i32, ptr @failed_tests, align 4
  %inc122 = add i32 %21, 1
  store i32 %inc122, ptr @failed_tests, align 4
  br label %do.body125

do.body125:                                       ; preds = %do.end119, %do.body113.do.body125_crit_edge
  %22 = load i32, ptr @total_tests, align 4
  %inc126 = add i32 %22, 1
  store i32 %inc126, ptr @total_tests, align 4
  %call127 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef -7, i32 noundef 3, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %do.body125.do.body137_crit_edge, label %do.end131

do.body125.do.body137_crit_edge:                  ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body137

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 141) #7
  %23 = load i32, ptr @failed_tests, align 4
  %inc134 = add i32 %23, 1
  store i32 %inc134, ptr @failed_tests, align 4
  br label %do.body137

do.body137:                                       ; preds = %do.end131, %do.body125.do.body137_crit_edge
  %24 = load i32, ptr @total_tests, align 4
  %inc138 = add i32 %24, 1
  store i32 %inc138, ptr @total_tests, align 4
  %call139 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.22, i32 noundef 4, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %do.body137.do.body149_crit_edge, label %do.end143

do.body137.do.body149_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body149

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 142) #7
  %25 = load i32, ptr @failed_tests, align 4
  %inc146 = add i32 %25, 1
  store i32 %inc146, ptr @failed_tests, align 4
  br label %do.body149

do.body149:                                       ; preds = %do.end143, %do.body137.do.body149_crit_edge
  %26 = load i32, ptr @total_tests, align 4
  %inc150 = add i32 %26, 1
  store i32 %inc150, ptr @total_tests, align 4
  %call151 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %do.body149.do.body161_crit_edge, label %do.end155

do.body149.do.body161_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body161

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #6
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 143) #7
  %27 = load i32, ptr @failed_tests, align 4
  %inc158 = add i32 %27, 1
  store i32 %inc158, ptr @failed_tests, align 4
  br label %do.body161

do.body161:                                       ; preds = %do.end155, %do.body149.do.body161_crit_edge
  %28 = load i32, ptr @total_tests, align 4
  %inc162 = add i32 %28, 1
  store i32 %inc162, ptr @total_tests, align 4
  %call163 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %do.body161.do.body173_crit_edge, label %do.end167

do.body161.do.body173_crit_edge:                  ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.end167:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #6
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 144) #7
  %29 = load i32, ptr @failed_tests, align 4
  %inc170 = add i32 %29, 1
  store i32 %inc170, ptr @failed_tests, align 4
  br label %do.body173

do.body173:                                       ; preds = %do.end167, %do.body161.do.body173_crit_edge
  %30 = load i32, ptr @total_tests, align 4
  %inc174 = add i32 %30, 1
  store i32 %inc174, ptr @total_tests, align 4
  %call175 = tail call fastcc i32 @tc(ptr noundef nonnull @.str.8, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %do.body173.do.end184_crit_edge, label %do.end179

do.body173.do.end184_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end184

do.end179:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 145) #7
  %31 = load i32, ptr @failed_tests, align 4
  %inc182 = add i32 %31, 1
  store i32 %inc182, ptr @failed_tests, align 4
  br label %do.end184

do.end184:                                        ; preds = %do.end179, %do.body173.do.end184_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc(ptr noundef %src, i32 noundef %count, i32 noundef %expected, i32 noundef %chars, i32 noundef %terminator, i32 noundef %pad) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #9
  %0 = load i32, ptr @total_tests, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @total_tests, align 4
  %tobool.not = icmp eq ptr %src, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %buf, i32 122, i32 6)
  %sub = add i32 %count, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %expected)
  %cmp8 = icmp slt i32 %sub, %expected
  br i1 %cmp8, label %do.end12, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %expected, i32 noundef %sub) #7
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.end.if.end15_crit_edge
  %call17 = call i32 @strscpy_pad(ptr noundef nonnull %buf, ptr noundef nonnull %src, i32 noundef %count) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %expected)
  %cmp18.not = icmp eq i32 %call17, %expected
  br i1 %cmp18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call17, i32 noundef %expected) #7
  br label %fail

if.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool26.not = icmp ne i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %expected)
  %cmp27 = icmp eq i32 %expected, -7
  %or.cond = and i1 %tobool26.not, %cmp27
  br i1 %or.cond, label %if.then28, label %if.end25.if.end50_crit_edge

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then28:                                        ; preds = %if.end25
  %call31 = call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef nonnull %src, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #7
  br label %fail

if.end39:                                         ; preds = %if.then28
  %arrayidx = getelementptr [6 x i8], ptr %buf, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp41.not = icmp eq i8 %3, 0
  br i1 %cmp41.not, label %if.end39.if.end50_crit_edge, label %do.end46

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #7
  br label %fail

if.end50:                                         ; preds = %if.end39.if.end50_crit_edge, %if.end25.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chars)
  %cmp51176 = icmp sgt i32 %chars, 0
  br i1 %cmp51176, label %if.end50.for.body_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc70 = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc70, %chars
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end50.for.body_crit_edge
  %i.0177 = phi i32 [ %inc70, %for.cond.for.body_crit_edge ], [ 0, %if.end50.for.body_crit_edge ]
  %arrayidx53 = getelementptr [6 x i8], ptr %buf, i32 0, i32 %i.0177
  %4 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx53, align 1
  %arrayidx55 = getelementptr i8, ptr %src, i32 %i.0177
  %6 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp57.not = icmp eq i8 %5, %7
  br i1 %cmp57.not, label %for.cond, label %do.end62

do.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv56 = zext i8 %7 to i32
  %conv54 = zext i8 %5 to i32
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv54, i32 noundef %conv56) #7
  br label %fail

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end50.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %terminator)
  %tobool71.not = icmp eq i32 %terminator, 0
  br i1 %tobool71.not, label %for.end.if.end85_crit_edge, label %if.then72

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then72:                                        ; preds = %for.end
  %arrayidx74 = getelementptr [6 x i8], ptr %buf, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp76.not = icmp eq i8 %9, 0
  br i1 %cmp76.not, label %if.then72.if.end85_crit_edge, label %do.end81

if.then72.if.end85_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

do.end81:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #6
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %fail

if.end85:                                         ; preds = %if.then72.if.end85_crit_edge, %for.end.if.end85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %cmp87178 = icmp sgt i32 %pad, 0
  br i1 %cmp87178, label %for.body89.lr.ph, label %if.end85.for.end104_crit_edge

if.end85.for.end104_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = add i32 %chars, %terminator
  br label %for.end104

for.body89.lr.ph:                                 ; preds = %if.end85
  %add = add i32 %terminator, %chars
  br label %for.body89

for.body89:                                       ; preds = %for.inc102.for.body89_crit_edge, %for.body89.lr.ph
  %i.1179 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc103, %for.inc102.for.body89_crit_edge ]
  %add90 = add i32 %add, %i.1179
  %arrayidx91 = getelementptr [6 x i8], ptr %buf, i32 0, i32 %add90
  %10 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp93.not = icmp eq i8 %11, 0
  br i1 %cmp93.not, label %for.inc102, label %do.end98

do.end98:                                         ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #6
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %i.1179) #7
  br label %fail

for.inc102:                                       ; preds = %for.body89
  %inc103 = add nuw nsw i32 %i.1179, 1
  %exitcond187.not = icmp eq i32 %inc103, %pad
  br i1 %exitcond187.not, label %for.inc102.for.end104_crit_edge, label %for.inc102.for.body89_crit_edge

for.inc102.for.body89_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body89

for.inc102.for.end104_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end104

for.end104:                                       ; preds = %for.inc102.for.end104_crit_edge, %if.end85.for.end104_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.end85.for.end104_crit_edge ], [ %add, %for.inc102.for.end104_crit_edge ]
  %12 = add i32 %.pre-phi, %pad
  %sub107 = sub i32 6, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub107)
  %cmp109180 = icmp sgt i32 %sub107, 0
  br i1 %cmp109180, label %for.end104.for.body111_crit_edge, label %for.end104.cleanup_crit_edge

for.end104.cleanup_crit_edge:                     ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end104.for.body111_crit_edge:                 ; preds = %for.end104
  br label %for.body111

for.body111:                                      ; preds = %for.inc124.for.body111_crit_edge, %for.end104.for.body111_crit_edge
  %i.2181 = phi i32 [ %inc125, %for.inc124.for.body111_crit_edge ], [ 0, %for.end104.for.body111_crit_edge ]
  %sub112 = sub nsw i32 5, %i.2181
  %arrayidx113 = getelementptr [6 x i8], ptr %buf, i32 0, i32 %sub112
  %13 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 122, i8 %14)
  %cmp115.not = icmp eq i8 %14, 122
  br i1 %cmp115.not, label %for.inc124, label %do.end120

do.end120:                                        ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #6
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %i.2181) #7
  br label %fail

for.inc124:                                       ; preds = %for.body111
  %inc125 = add nuw nsw i32 %i.2181, 1
  %exitcond188.not = icmp eq i32 %inc125, %sub107
  br i1 %exitcond188.not, label %for.inc124.cleanup_crit_edge, label %for.inc124.for.body111_crit_edge

for.inc124.for.body111_crit_edge:                 ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body111

for.inc124.cleanup_crit_edge:                     ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

fail:                                             ; preds = %do.end120, %do.end98, %do.end81, %do.end62, %do.end46, %do.end36, %do.end22
  %15 = load i32, ptr @failed_tests, align 4
  %inc127 = add i32 %15, 1
  store i32 %inc127, ptr @failed_tests, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.inc124.cleanup_crit_edge, %for.end104.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %fail ], [ -1, %do.end ], [ 0, %for.end104.cleanup_crit_edge ], [ 0, %for.inc124.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/test_strscpy.c", i32 148, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @test_strscpy_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @test_strscpy_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_test_strscpy__106_148_test_strscpy_init6, !1, !"__initcall__kmod_test_strscpy__106_148_test_strscpy_init6", i1 false, i1 false}
!7 = !{ptr @__exitcall_test_strscpy_exit, !1, !"__exitcall_test_strscpy_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author107, !9, !"__UNIQUE_ID_author107", i1 false, i1 false}
!9 = !{!"../lib/test_strscpy.c", i32 149, i32 1}
!10 = !{ptr @__UNIQUE_ID_file108, !11, !"__UNIQUE_ID_file108", i1 false, i1 false}
!11 = !{!"../lib/test_strscpy.c", i32 150, i32 1}
!12 = !{ptr @__UNIQUE_ID_license109, !11, !"__UNIQUE_ID_license109", i1 false, i1 false}
!13 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @test_strscpy_init._entry, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_strscpy_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test_strscpy.c", i32 126, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @selftest._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @selftest._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/test_strscpy.c", i32 127, i32 2}
!25 = !{ptr @selftest._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @selftest._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @selftest._entry.11, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../lib/test_strscpy.c", i32 129, i32 2}
!29 = !{ptr @selftest._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @selftest._entry.13, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../lib/test_strscpy.c", i32 130, i32 2}
!32 = !{ptr @selftest._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/test_strscpy.c", i32 132, i32 2}
!35 = !{ptr @selftest._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @selftest._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @selftest._entry.18, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../lib/test_strscpy.c", i32 133, i32 2}
!39 = !{ptr @selftest._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @selftest._entry.20, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../lib/test_strscpy.c", i32 134, i32 2}
!42 = !{ptr @selftest._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/test_strscpy.c", i32 136, i32 2}
!45 = !{ptr @selftest._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @selftest._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @selftest._entry.25, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../lib/test_strscpy.c", i32 137, i32 2}
!49 = !{ptr @selftest._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @selftest._entry.27, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../lib/test_strscpy.c", i32 138, i32 2}
!52 = !{ptr @selftest._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @selftest._entry.29, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../lib/test_strscpy.c", i32 139, i32 2}
!55 = !{ptr @selftest._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/test_strscpy.c", i32 141, i32 2}
!58 = !{ptr @selftest._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @selftest._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @selftest._entry.34, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../lib/test_strscpy.c", i32 142, i32 2}
!62 = !{ptr @selftest._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @selftest._entry.36, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../lib/test_strscpy.c", i32 143, i32 2}
!65 = !{ptr @selftest._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @selftest._entry.38, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../lib/test_strscpy.c", i32 144, i32 2}
!68 = !{ptr @selftest._entry_ptr.39, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @selftest._entry.40, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../lib/test_strscpy.c", i32 145, i32 2}
!71 = !{ptr @selftest._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/test_strscpy.c", i32 43, i32 3}
!74 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tc._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @tc._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test_strscpy.c", i32 52, i32 3}
!79 = !{ptr @tc._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tc._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../lib/test_strscpy.c", i32 56, i32 3}
!83 = !{ptr @tc._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @tc._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/test_strscpy.c", i32 62, i32 3}
!87 = !{ptr @tc._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @tc._entry_ptr.52, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/test_strscpy.c", i32 68, i32 4}
!91 = !{ptr @tc._entry.53, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @tc._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/test_strscpy.c", i32 72, i32 4}
!95 = !{ptr @tc._entry.56, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @tc._entry_ptr.58, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../lib/test_strscpy.c", i32 79, i32 4}
!99 = !{ptr @tc._entry.59, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @tc._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../lib/test_strscpy.c", i32 86, i32 4}
!103 = !{ptr @tc._entry.62, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @tc._entry_ptr.64, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../lib/test_strscpy.c", i32 94, i32 4}
!107 = !{ptr @tc._entry.65, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @tc._entry_ptr.67, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.69, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/test_strscpy.c", i32 103, i32 4}
!111 = !{ptr @tc._entry.68, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @tc._entry_ptr.70, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.71, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 30, i32 4}
!115 = !{ptr @.str.72, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.73, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @kstm_report._entry, !114, !"_entry", i1 false, i1 false}
!118 = !{ptr @kstm_report._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.75, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 31, i32 4}
!121 = !{ptr @kstm_report._entry.74, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @kstm_report._entry_ptr.76, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.78, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 33, i32 4}
!125 = !{ptr @kstm_report._entry.77, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @kstm_report._entry_ptr.79, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.81, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 35, i32 3}
!129 = !{ptr @kstm_report._entry.80, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @kstm_report._entry_ptr.82, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @total_tests, !132, !"total_tests", i1 false, i1 false}
!132 = !{!"../lib/test_strscpy.c", i32 13, i32 1}
!133 = !{ptr @failed_tests, !132, !"failed_tests", i1 false, i1 false}
!134 = distinct !{null, !132, !"skipped_tests", i1 false, i1 false}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
