; ModuleID = '/llk/IR_all_yes/lib/test_overflow.c_pt.bc'
source_filename = "../lib/test_overflow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.test_u8 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.test_s8 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.test_u16 = type { i16, i16, i16, i16, i16, i8, i8, i8 }
%struct.test_s16 = type { i16, i16, i16, i16, i16, i8, i8, i8 }
%struct.test_u32 = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.test_s32 = type { i32, i32, i32, i32, i32, i8, i8, i8 }

@__initcall__kmod_test_overflow__228_612_test_module_init6 = internal global ptr @test_module_init, section ".initcall6.init", align 4
@__exitcall_test_module_exit = internal global ptr @test_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [37 x i8] c"test_overflow.file=lib/test_overflow\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [35 x i8] c"test_overflow.license=Dual MIT/GPL\00", section ".modinfo", align 1
@test_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014test_overflow: FAIL!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_module_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/test_overflow.c\00", [44 x i8] zeroinitializer }, align 32
@test_module_init._entry_ptr = internal global ptr @test_module_init._entry, section ".printk_index", align 4
@test_module_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016test_overflow: all tests passed\0A\00", [61 x i8] zeroinitializer }, align 32
@test_module_init._entry_ptr.5 = internal global ptr @test_module_init._entry.3, section ".printk_index", align 4
@test_u8_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016test_overflow: %-3s: %zu arithmetic tests\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_u8_overflow\00", [47 x i8] zeroinitializer }, align 32
@test_u8_overflow._entry_ptr = internal global ptr @test_u8_overflow._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@u8_tests = internal constant [18 x %struct.test_u8] [%struct.test_u8 zeroinitializer, %struct.test_u8 { i8 1, i8 1, i8 2, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.test_u8 { i8 0, i8 1, i8 1, i8 -1, i8 0, i8 0, i8 1, i8 0 }, %struct.test_u8 { i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.test_u8 { i8 0, i8 -1, i8 -1, i8 1, i8 0, i8 0, i8 1, i8 0 }, %struct.test_u8 { i8 -1, i8 0, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 0 }, %struct.test_u8 { i8 1, i8 -1, i8 0, i8 2, i8 -1, i8 1, i8 1, i8 0 }, %struct.test_u8 { i8 -1, i8 1, i8 0, i8 -2, i8 -1, i8 1, i8 0, i8 0 }, %struct.test_u8 { i8 -1, i8 -1, i8 -2, i8 0, i8 1, i8 1, i8 0, i8 1 }, %struct.test_u8 { i8 -1, i8 -2, i8 -3, i8 1, i8 2, i8 1, i8 0, i8 1 }, %struct.test_u8 { i8 -2, i8 -1, i8 -3, i8 -1, i8 2, i8 1, i8 1, i8 1 }, %struct.test_u8 { i8 8, i8 8, i8 16, i8 0, i8 64, i8 0, i8 0, i8 0 }, %struct.test_u8 { i8 16, i8 16, i8 32, i8 0, i8 0, i8 0, i8 0, i8 1 }, %struct.test_u8 { i8 16, i8 8, i8 24, i8 8, i8 -128, i8 0, i8 0, i8 0 }, %struct.test_u8 { i8 -128, i8 -128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1 }, %struct.test_u8 { i8 48, i8 32, i8 80, i8 16, i8 0, i8 0, i8 0, i8 1 }, %struct.test_u8 { i8 -128, i8 -128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1 }, %struct.test_u8 { i8 123, i8 -22, i8 101, i8 -111, i8 110, i8 1, i8 1, i8 1 }], section ".init.rodata", align 1
@do_test_u8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %d + %d to%s overflow (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_test_u8\00", [21 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr = internal global ptr @do_test_u8._entry, section ".printk_index", align 4
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@do_test_u8._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %d + %d == %d, got %d (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.15 = internal global ptr @do_test_u8._entry.13, section ".printk_index", align 4
@do_test_u8._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.17 = internal global ptr @do_test_u8._entry.16, section ".printk_index", align 4
@do_test_u8._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.19 = internal global ptr @do_test_u8._entry.18, section ".printk_index", align 4
@do_test_u8._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %d - %d to%s overflow (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.22 = internal global ptr @do_test_u8._entry.20, section ".printk_index", align 4
@do_test_u8._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %d - %d == %d, got %d (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.25 = internal global ptr @do_test_u8._entry.23, section ".printk_index", align 4
@do_test_u8._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %d * %d to%s overflow (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.28 = internal global ptr @do_test_u8._entry.26, section ".printk_index", align 4
@do_test_u8._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %d * %d == %d, got %d (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.31 = internal global ptr @do_test_u8._entry.29, section ".printk_index", align 4
@do_test_u8._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.33 = internal global ptr @do_test_u8._entry.32, section ".printk_index", align 4
@do_test_u8._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u8._entry_ptr.35 = internal global ptr @do_test_u8._entry.34, section ".printk_index", align 4
@test_s8_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.36, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_s8_overflow\00", [47 x i8] zeroinitializer }, align 32
@test_s8_overflow._entry_ptr = internal global ptr @test_s8_overflow._entry, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@s8_tests = internal constant [19 x %struct.test_s8] [%struct.test_s8 zeroinitializer, %struct.test_s8 { i8 0, i8 127, i8 127, i8 -127, i8 0, i8 0, i8 0, i8 0 }, %struct.test_s8 { i8 127, i8 0, i8 127, i8 127, i8 0, i8 0, i8 0, i8 0 }, %struct.test_s8 { i8 0, i8 -128, i8 -128, i8 -128, i8 0, i8 0, i8 1, i8 0 }, %struct.test_s8 { i8 -128, i8 0, i8 -128, i8 -128, i8 0, i8 0, i8 0, i8 0 }, %struct.test_s8 { i8 -1, i8 -128, i8 127, i8 127, i8 -128, i8 1, i8 0, i8 1 }, %struct.test_s8 { i8 -128, i8 -1, i8 127, i8 -127, i8 -128, i8 1, i8 0, i8 1 }, %struct.test_s8 { i8 -1, i8 127, i8 126, i8 -128, i8 -127, i8 0, i8 0, i8 0 }, %struct.test_s8 { i8 127, i8 -1, i8 126, i8 -128, i8 -127, i8 0, i8 1, i8 0 }, %struct.test_s8 { i8 -1, i8 -127, i8 -128, i8 126, i8 127, i8 0, i8 0, i8 0 }, %struct.test_s8 { i8 -127, i8 -1, i8 -128, i8 -126, i8 127, i8 0, i8 0, i8 0 }, %struct.test_s8 { i8 1, i8 -128, i8 -127, i8 -127, i8 -128, i8 0, i8 1, i8 0 }, %struct.test_s8 { i8 -128, i8 1, i8 -127, i8 127, i8 -128, i8 0, i8 1, i8 0 }, %struct.test_s8 { i8 1, i8 127, i8 -128, i8 -126, i8 127, i8 1, i8 0, i8 0 }, %struct.test_s8 { i8 127, i8 1, i8 -128, i8 126, i8 127, i8 1, i8 0, i8 0 }, %struct.test_s8 { i8 -128, i8 -128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1 }, %struct.test_s8 { i8 127, i8 127, i8 -2, i8 0, i8 1, i8 1, i8 0, i8 1 }, %struct.test_s8 { i8 -4, i8 -32, i8 -36, i8 28, i8 -128, i8 0, i8 0, i8 1 }, %struct.test_s8 { i8 -4, i8 32, i8 28, i8 -36, i8 -128, i8 0, i8 0, i8 0 }], section ".init.rodata", align 1
@do_test_s8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_test_s8\00", [21 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr = internal global ptr @do_test_s8._entry, section ".printk_index", align 4
@do_test_s8._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.40 = internal global ptr @do_test_s8._entry.39, section ".printk_index", align 4
@do_test_s8._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.42 = internal global ptr @do_test_s8._entry.41, section ".printk_index", align 4
@do_test_s8._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.44 = internal global ptr @do_test_s8._entry.43, section ".printk_index", align 4
@do_test_s8._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.46 = internal global ptr @do_test_s8._entry.45, section ".printk_index", align 4
@do_test_s8._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.48 = internal global ptr @do_test_s8._entry.47, section ".printk_index", align 4
@do_test_s8._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.50 = internal global ptr @do_test_s8._entry.49, section ".printk_index", align 4
@do_test_s8._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.52 = internal global ptr @do_test_s8._entry.51, section ".printk_index", align 4
@do_test_s8._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.54 = internal global ptr @do_test_s8._entry.53, section ".printk_index", align 4
@do_test_s8._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.38, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s8._entry_ptr.56 = internal global ptr @do_test_s8._entry.55, section ".printk_index", align 4
@test_u16_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.57, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_u16_overflow\00", [46 x i8] zeroinitializer }, align 32
@test_u16_overflow._entry_ptr = internal global ptr @test_u16_overflow._entry, section ".printk_index", align 4
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@u16_tests = internal constant [17 x %struct.test_u16] [%struct.test_u16 zeroinitializer, %struct.test_u16 { i16 1, i16 1, i16 2, i16 0, i16 1, i8 0, i8 0, i8 0 }, %struct.test_u16 { i16 0, i16 1, i16 1, i16 -1, i16 0, i8 0, i8 1, i8 0 }, %struct.test_u16 { i16 1, i16 0, i16 1, i16 1, i16 0, i8 0, i8 0, i8 0 }, %struct.test_u16 { i16 0, i16 -1, i16 -1, i16 1, i16 0, i8 0, i8 1, i8 0 }, %struct.test_u16 { i16 -1, i16 0, i16 -1, i16 -1, i16 0, i8 0, i8 0, i8 0 }, %struct.test_u16 { i16 1, i16 -1, i16 0, i16 2, i16 -1, i8 1, i8 1, i8 0 }, %struct.test_u16 { i16 -1, i16 1, i16 0, i16 -2, i16 -1, i8 1, i8 0, i8 0 }, %struct.test_u16 { i16 -1, i16 -1, i16 -2, i16 0, i16 1, i8 1, i8 0, i8 1 }, %struct.test_u16 { i16 -1, i16 -2, i16 -3, i16 1, i16 2, i8 1, i8 0, i8 1 }, %struct.test_u16 { i16 -2, i16 -1, i16 -3, i16 -1, i16 2, i8 1, i8 1, i8 1 }, %struct.test_u16 { i16 128, i16 128, i16 256, i16 0, i16 16384, i8 0, i8 0, i8 0 }, %struct.test_u16 { i16 256, i16 256, i16 512, i16 0, i16 0, i8 0, i8 0, i8 1 }, %struct.test_u16 { i16 256, i16 128, i16 384, i16 128, i16 -32768, i8 0, i8 0, i8 0 }, %struct.test_u16 { i16 -32768, i16 -32768, i16 0, i16 0, i16 0, i8 1, i8 0, i8 1 }, %struct.test_u16 { i16 123, i16 234, i16 357, i16 -111, i16 28782, i8 0, i8 1, i8 0 }, %struct.test_u16 { i16 1234, i16 2345, i16 3579, i16 -1111, i16 10146, i8 0, i8 1, i8 1 }], section ".init.rodata", align 2
@do_test_u16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_test_u16\00", [20 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr = internal global ptr @do_test_u16._entry, section ".printk_index", align 4
@do_test_u16._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.61 = internal global ptr @do_test_u16._entry.60, section ".printk_index", align 4
@do_test_u16._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.63 = internal global ptr @do_test_u16._entry.62, section ".printk_index", align 4
@do_test_u16._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.65 = internal global ptr @do_test_u16._entry.64, section ".printk_index", align 4
@do_test_u16._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.67 = internal global ptr @do_test_u16._entry.66, section ".printk_index", align 4
@do_test_u16._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.69 = internal global ptr @do_test_u16._entry.68, section ".printk_index", align 4
@do_test_u16._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.71 = internal global ptr @do_test_u16._entry.70, section ".printk_index", align 4
@do_test_u16._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.73 = internal global ptr @do_test_u16._entry.72, section ".printk_index", align 4
@do_test_u16._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.75 = internal global ptr @do_test_u16._entry.74, section ".printk_index", align 4
@do_test_u16._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.59, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u16._entry_ptr.77 = internal global ptr @do_test_u16._entry.76, section ".printk_index", align 4
@test_s16_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.78, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_s16_overflow\00", [46 x i8] zeroinitializer }, align 32
@test_s16_overflow._entry_ptr = internal global ptr @test_s16_overflow._entry, section ".printk_index", align 4
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s16\00", [28 x i8] zeroinitializer }, align 32
@s16_tests = internal constant [17 x %struct.test_s16] [%struct.test_s16 zeroinitializer, %struct.test_s16 { i16 0, i16 32767, i16 32767, i16 -32767, i16 0, i8 0, i8 0, i8 0 }, %struct.test_s16 { i16 32767, i16 0, i16 32767, i16 32767, i16 0, i8 0, i8 0, i8 0 }, %struct.test_s16 { i16 0, i16 -32768, i16 -32768, i16 -32768, i16 0, i8 0, i8 1, i8 0 }, %struct.test_s16 { i16 -32768, i16 0, i16 -32768, i16 -32768, i16 0, i8 0, i8 0, i8 0 }, %struct.test_s16 { i16 -1, i16 -32768, i16 32767, i16 32767, i16 -32768, i8 1, i8 0, i8 1 }, %struct.test_s16 { i16 -32768, i16 -1, i16 32767, i16 -32767, i16 -32768, i8 1, i8 0, i8 1 }, %struct.test_s16 { i16 -1, i16 32767, i16 32766, i16 -32768, i16 -32767, i8 0, i8 0, i8 0 }, %struct.test_s16 { i16 32767, i16 -1, i16 32766, i16 -32768, i16 -32767, i8 0, i8 1, i8 0 }, %struct.test_s16 { i16 -1, i16 -32767, i16 -32768, i16 32766, i16 32767, i8 0, i8 0, i8 0 }, %struct.test_s16 { i16 -32767, i16 -1, i16 -32768, i16 -32766, i16 32767, i8 0, i8 0, i8 0 }, %struct.test_s16 { i16 1, i16 -32768, i16 -32767, i16 -32767, i16 -32768, i8 0, i8 1, i8 0 }, %struct.test_s16 { i16 -32768, i16 1, i16 -32767, i16 32767, i16 -32768, i8 0, i8 1, i8 0 }, %struct.test_s16 { i16 1, i16 32767, i16 -32768, i16 -32766, i16 32767, i8 1, i8 0, i8 0 }, %struct.test_s16 { i16 32767, i16 1, i16 -32768, i16 32766, i16 32767, i8 1, i8 0, i8 0 }, %struct.test_s16 { i16 -32768, i16 -32768, i16 0, i16 0, i16 0, i8 1, i8 0, i8 1 }, %struct.test_s16 { i16 32767, i16 32767, i16 -2, i16 0, i16 1, i8 1, i8 0, i8 1 }], section ".init.rodata", align 2
@do_test_s16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_test_s16\00", [20 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr = internal global ptr @do_test_s16._entry, section ".printk_index", align 4
@do_test_s16._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.82 = internal global ptr @do_test_s16._entry.81, section ".printk_index", align 4
@do_test_s16._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.84 = internal global ptr @do_test_s16._entry.83, section ".printk_index", align 4
@do_test_s16._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.86 = internal global ptr @do_test_s16._entry.85, section ".printk_index", align 4
@do_test_s16._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.88 = internal global ptr @do_test_s16._entry.87, section ".printk_index", align 4
@do_test_s16._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.90 = internal global ptr @do_test_s16._entry.89, section ".printk_index", align 4
@do_test_s16._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.92 = internal global ptr @do_test_s16._entry.91, section ".printk_index", align 4
@do_test_s16._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.94 = internal global ptr @do_test_s16._entry.93, section ".printk_index", align 4
@do_test_s16._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.96 = internal global ptr @do_test_s16._entry.95, section ".printk_index", align 4
@do_test_s16._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.80, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s16._entry_ptr.98 = internal global ptr @do_test_s16._entry.97, section ".printk_index", align 4
@test_u32_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.99, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_u32_overflow\00", [46 x i8] zeroinitializer }, align 32
@test_u32_overflow._entry_ptr = internal global ptr @test_u32_overflow._entry, section ".printk_index", align 4
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@u32_tests = internal constant [17 x %struct.test_u32] [%struct.test_u32 zeroinitializer, %struct.test_u32 { i32 1, i32 1, i32 2, i32 0, i32 1, i8 0, i8 0, i8 0 }, %struct.test_u32 { i32 0, i32 1, i32 1, i32 -1, i32 0, i8 0, i8 1, i8 0 }, %struct.test_u32 { i32 1, i32 0, i32 1, i32 1, i32 0, i8 0, i8 0, i8 0 }, %struct.test_u32 { i32 0, i32 -1, i32 -1, i32 1, i32 0, i8 0, i8 1, i8 0 }, %struct.test_u32 { i32 -1, i32 0, i32 -1, i32 -1, i32 0, i8 0, i8 0, i8 0 }, %struct.test_u32 { i32 1, i32 -1, i32 0, i32 2, i32 -1, i8 1, i8 1, i8 0 }, %struct.test_u32 { i32 -1, i32 1, i32 0, i32 -2, i32 -1, i8 1, i8 0, i8 0 }, %struct.test_u32 { i32 -1, i32 -1, i32 -2, i32 0, i32 1, i8 1, i8 0, i8 1 }, %struct.test_u32 { i32 -1, i32 -2, i32 -3, i32 1, i32 2, i8 1, i8 0, i8 1 }, %struct.test_u32 { i32 -2, i32 -1, i32 -3, i32 -1, i32 2, i8 1, i8 1, i8 1 }, %struct.test_u32 { i32 32768, i32 32768, i32 65536, i32 0, i32 1073741824, i8 0, i8 0, i8 0 }, %struct.test_u32 { i32 65536, i32 65536, i32 131072, i32 0, i32 0, i8 0, i8 0, i8 1 }, %struct.test_u32 { i32 65536, i32 32768, i32 98304, i32 32768, i32 -2147483648, i8 0, i8 0, i8 0 }, %struct.test_u32 { i32 -2147483648, i32 -2147483648, i32 0, i32 0, i32 0, i8 1, i8 0, i8 1 }, %struct.test_u32 { i32 -2, i32 1, i32 -1, i32 -3, i32 -2, i8 0, i8 0, i8 0 }, %struct.test_u32 { i32 -4, i32 5, i32 1, i32 -9, i32 -20, i8 1, i8 0, i8 1 }], section ".init.rodata", align 4
@do_test_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %u + %u to%s overflow (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_test_u32\00", [20 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr = internal global ptr @do_test_u32._entry, section ".printk_index", align 4
@do_test_u32._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %u + %u == %u, got %u (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.105 = internal global ptr @do_test_u32._entry.103, section ".printk_index", align 4
@do_test_u32._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.107 = internal global ptr @do_test_u32._entry.106, section ".printk_index", align 4
@do_test_u32._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.109 = internal global ptr @do_test_u32._entry.108, section ".printk_index", align 4
@do_test_u32._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %u - %u to%s overflow (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.112 = internal global ptr @do_test_u32._entry.110, section ".printk_index", align 4
@do_test_u32._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %u - %u == %u, got %u (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.115 = internal global ptr @do_test_u32._entry.113, section ".printk_index", align 4
@do_test_u32._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %u * %u to%s overflow (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.118 = internal global ptr @do_test_u32._entry.116, section ".printk_index", align 4
@do_test_u32._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: expected %u * %u == %u, got %u (type %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.121 = internal global ptr @do_test_u32._entry.119, section ".printk_index", align 4
@do_test_u32._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.123 = internal global ptr @do_test_u32._entry.122, section ".printk_index", align 4
@do_test_u32._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.102, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_u32._entry_ptr.125 = internal global ptr @do_test_u32._entry.124, section ".printk_index", align 4
@test_s32_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.126, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_s32_overflow\00", [46 x i8] zeroinitializer }, align 32
@test_s32_overflow._entry_ptr = internal global ptr @test_s32_overflow._entry, section ".printk_index", align 4
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@s32_tests = internal constant [17 x %struct.test_s32] [%struct.test_s32 zeroinitializer, %struct.test_s32 { i32 0, i32 2147483647, i32 2147483647, i32 -2147483647, i32 0, i8 0, i8 0, i8 0 }, %struct.test_s32 { i32 2147483647, i32 0, i32 2147483647, i32 2147483647, i32 0, i8 0, i8 0, i8 0 }, %struct.test_s32 { i32 0, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 0, i8 0, i8 1, i8 0 }, %struct.test_s32 { i32 -2147483648, i32 0, i32 -2147483648, i32 -2147483648, i32 0, i8 0, i8 0, i8 0 }, %struct.test_s32 { i32 -1, i32 -2147483648, i32 2147483647, i32 2147483647, i32 -2147483648, i8 1, i8 0, i8 1 }, %struct.test_s32 { i32 -2147483648, i32 -1, i32 2147483647, i32 -2147483647, i32 -2147483648, i8 1, i8 0, i8 1 }, %struct.test_s32 { i32 -1, i32 2147483647, i32 2147483646, i32 -2147483648, i32 -2147483647, i8 0, i8 0, i8 0 }, %struct.test_s32 { i32 2147483647, i32 -1, i32 2147483646, i32 -2147483648, i32 -2147483647, i8 0, i8 1, i8 0 }, %struct.test_s32 { i32 -1, i32 -2147483647, i32 -2147483648, i32 2147483646, i32 2147483647, i8 0, i8 0, i8 0 }, %struct.test_s32 { i32 -2147483647, i32 -1, i32 -2147483648, i32 -2147483646, i32 2147483647, i8 0, i8 0, i8 0 }, %struct.test_s32 { i32 1, i32 -2147483648, i32 -2147483647, i32 -2147483647, i32 -2147483648, i8 0, i8 1, i8 0 }, %struct.test_s32 { i32 -2147483648, i32 1, i32 -2147483647, i32 2147483647, i32 -2147483648, i8 0, i8 1, i8 0 }, %struct.test_s32 { i32 1, i32 2147483647, i32 -2147483648, i32 -2147483646, i32 2147483647, i8 1, i8 0, i8 0 }, %struct.test_s32 { i32 2147483647, i32 1, i32 -2147483648, i32 2147483646, i32 2147483647, i8 1, i8 0, i8 0 }, %struct.test_s32 { i32 -2147483648, i32 -2147483648, i32 0, i32 0, i32 0, i8 1, i8 0, i8 1 }, %struct.test_s32 { i32 2147483647, i32 2147483647, i32 -2, i32 0, i32 1, i8 1, i8 0, i8 1 }], section ".init.rodata", align 4
@do_test_s32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_test_s32\00", [20 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr = internal global ptr @do_test_s32._entry, section ".printk_index", align 4
@do_test_s32._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.130 = internal global ptr @do_test_s32._entry.129, section ".printk_index", align 4
@do_test_s32._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.132 = internal global ptr @do_test_s32._entry.131, section ".printk_index", align 4
@do_test_s32._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.134 = internal global ptr @do_test_s32._entry.133, section ".printk_index", align 4
@do_test_s32._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.136 = internal global ptr @do_test_s32._entry.135, section ".printk_index", align 4
@do_test_s32._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.138 = internal global ptr @do_test_s32._entry.137, section ".printk_index", align 4
@do_test_s32._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.140 = internal global ptr @do_test_s32._entry.139, section ".printk_index", align 4
@do_test_s32._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.142 = internal global ptr @do_test_s32._entry.141, section ".printk_index", align 4
@do_test_s32._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.144 = internal global ptr @do_test_s32._entry.143, section ".printk_index", align 4
@do_test_s32._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.128, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_test_s32._entry_ptr.146 = internal global ptr @do_test_s32._entry.145, section ".printk_index", align 4
@test_overflow_shift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014test_overflow: expected (%s)(%s << %s) to%s overflow\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_overflow_shift\00", [44 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr = internal global ptr @test_overflow_shift._entry, section ".printk_index", align 4
@.str.149 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014test_overflow: expected (%s)(%s << %s) == %s\0A\00", [48 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.153 = internal global ptr @test_overflow_shift._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 << 0\00", [25 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014test_overflow: got %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.157 = internal global ptr @test_overflow_shift._entry.155, section ".printk_index", align 4
@test_overflow_shift._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016test_overflow: ok: (%s)(%s << %s) == %s\0A\00", [53 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.160 = internal global ptr @test_overflow_shift._entry.158, section ".printk_index", align 4
@test_overflow_shift._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.162 = internal global ptr @test_overflow_shift._entry.161, section ".printk_index", align 4
@.str.163 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.165 = internal global ptr @test_overflow_shift._entry.164, section ".printk_index", align 4
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 << 4\00", [25 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.168 = internal global ptr @test_overflow_shift._entry.167, section ".printk_index", align 4
@test_overflow_shift._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.170 = internal global ptr @test_overflow_shift._entry.169, section ".printk_index", align 4
@test_overflow_shift._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.172 = internal global ptr @test_overflow_shift._entry.171, section ".printk_index", align 4
@.str.173 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.175 = internal global ptr @test_overflow_shift._entry.174, section ".printk_index", align 4
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 << 7\00", [25 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.178 = internal global ptr @test_overflow_shift._entry.177, section ".printk_index", align 4
@test_overflow_shift._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.180 = internal global ptr @test_overflow_shift._entry.179, section ".printk_index", align 4
@test_overflow_shift._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.182 = internal global ptr @test_overflow_shift._entry.181, section ".printk_index", align 4
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0xF\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.185 = internal global ptr @test_overflow_shift._entry.184, section ".printk_index", align 4
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0xF << 4\00", [23 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.188 = internal global ptr @test_overflow_shift._entry.187, section ".printk_index", align 4
@test_overflow_shift._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.190 = internal global ptr @test_overflow_shift._entry.189, section ".printk_index", align 4
@test_overflow_shift._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.192 = internal global ptr @test_overflow_shift._entry.191, section ".printk_index", align 4
@test_overflow_shift._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.194 = internal global ptr @test_overflow_shift._entry.193, section ".printk_index", align 4
@test_overflow_shift._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.196 = internal global ptr @test_overflow_shift._entry.195, section ".printk_index", align 4
@test_overflow_shift._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.198 = internal global ptr @test_overflow_shift._entry.197, section ".printk_index", align 4
@test_overflow_shift._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.200 = internal global ptr @test_overflow_shift._entry.199, section ".printk_index", align 4
@.str.201 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.203 = internal global ptr @test_overflow_shift._entry.202, section ".printk_index", align 4
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1 << 10\00", [24 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.206 = internal global ptr @test_overflow_shift._entry.205, section ".printk_index", align 4
@test_overflow_shift._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.208 = internal global ptr @test_overflow_shift._entry.207, section ".printk_index", align 4
@test_overflow_shift._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.210 = internal global ptr @test_overflow_shift._entry.209, section ".printk_index", align 4
@.str.211 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"15\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.213 = internal global ptr @test_overflow_shift._entry.212, section ".printk_index", align 4
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1 << 15\00", [24 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.216 = internal global ptr @test_overflow_shift._entry.215, section ".printk_index", align 4
@test_overflow_shift._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.218 = internal global ptr @test_overflow_shift._entry.217, section ".printk_index", align 4
@test_overflow_shift._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.220 = internal global ptr @test_overflow_shift._entry.219, section ".printk_index", align 4
@.str.221 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0xFF\00", [27 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.224 = internal global ptr @test_overflow_shift._entry.223, section ".printk_index", align 4
@.str.225 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0xFF << 8\00", [22 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.227 = internal global ptr @test_overflow_shift._entry.226, section ".printk_index", align 4
@test_overflow_shift._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.229 = internal global ptr @test_overflow_shift._entry.228, section ".printk_index", align 4
@test_overflow_shift._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.231 = internal global ptr @test_overflow_shift._entry.230, section ".printk_index", align 4
@.str.232 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.234 = internal global ptr @test_overflow_shift._entry.233, section ".printk_index", align 4
@test_overflow_shift._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014test_overflow: got %lld\0A\00", [37 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.237 = internal global ptr @test_overflow_shift._entry.235, section ".printk_index", align 4
@test_overflow_shift._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.239 = internal global ptr @test_overflow_shift._entry.238, section ".printk_index", align 4
@test_overflow_shift._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.241 = internal global ptr @test_overflow_shift._entry.240, section ".printk_index", align 4
@.str.242 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.244 = internal global ptr @test_overflow_shift._entry.243, section ".printk_index", align 4
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1 << 16\00", [24 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.247 = internal global ptr @test_overflow_shift._entry.246, section ".printk_index", align 4
@test_overflow_shift._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.249 = internal global ptr @test_overflow_shift._entry.248, section ".printk_index", align 4
@test_overflow_shift._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.251 = internal global ptr @test_overflow_shift._entry.250, section ".printk_index", align 4
@.str.252 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"30\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.254 = internal global ptr @test_overflow_shift._entry.253, section ".printk_index", align 4
@.str.255 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1 << 30\00", [24 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.257 = internal global ptr @test_overflow_shift._entry.256, section ".printk_index", align 4
@test_overflow_shift._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.259 = internal global ptr @test_overflow_shift._entry.258, section ".printk_index", align 4
@test_overflow_shift._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.261 = internal global ptr @test_overflow_shift._entry.260, section ".printk_index", align 4
@test_overflow_shift._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.263 = internal global ptr @test_overflow_shift._entry.262, section ".printk_index", align 4
@test_overflow_shift._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.265 = internal global ptr @test_overflow_shift._entry.264, section ".printk_index", align 4
@test_overflow_shift._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.267 = internal global ptr @test_overflow_shift._entry.266, section ".printk_index", align 4
@test_overflow_shift._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.269 = internal global ptr @test_overflow_shift._entry.268, section ".printk_index", align 4
@test_overflow_shift._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.271 = internal global ptr @test_overflow_shift._entry.270, section ".printk_index", align 4
@test_overflow_shift._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.273 = internal global ptr @test_overflow_shift._entry.272, section ".printk_index", align 4
@test_overflow_shift._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.275 = internal global ptr @test_overflow_shift._entry.274, section ".printk_index", align 4
@test_overflow_shift._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.277 = internal global ptr @test_overflow_shift._entry.276, section ".printk_index", align 4
@test_overflow_shift._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.279 = internal global ptr @test_overflow_shift._entry.278, section ".printk_index", align 4
@test_overflow_shift._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.281 = internal global ptr @test_overflow_shift._entry.280, section ".printk_index", align 4
@test_overflow_shift._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.283 = internal global ptr @test_overflow_shift._entry.282, section ".printk_index", align 4
@test_overflow_shift._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.285 = internal global ptr @test_overflow_shift._entry.284, section ".printk_index", align 4
@.str.286 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.288 = internal global ptr @test_overflow_shift._entry.287, section ".printk_index", align 4
@.str.289 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1U << 0\00", [24 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.291 = internal global ptr @test_overflow_shift._entry.290, section ".printk_index", align 4
@test_overflow_shift._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.293 = internal global ptr @test_overflow_shift._entry.292, section ".printk_index", align 4
@test_overflow_shift._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.295 = internal global ptr @test_overflow_shift._entry.294, section ".printk_index", align 4
@.str.296 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"20\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.298 = internal global ptr @test_overflow_shift._entry.297, section ".printk_index", align 4
@.str.299 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1U << 20\00", [23 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.301 = internal global ptr @test_overflow_shift._entry.300, section ".printk_index", align 4
@test_overflow_shift._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.303 = internal global ptr @test_overflow_shift._entry.302, section ".printk_index", align 4
@test_overflow_shift._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.305 = internal global ptr @test_overflow_shift._entry.304, section ".printk_index", align 4
@.str.306 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"31\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.308 = internal global ptr @test_overflow_shift._entry.307, section ".printk_index", align 4
@.str.309 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1U << 31\00", [23 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.311 = internal global ptr @test_overflow_shift._entry.310, section ".printk_index", align 4
@test_overflow_shift._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.313 = internal global ptr @test_overflow_shift._entry.312, section ".printk_index", align 4
@test_overflow_shift._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.315 = internal global ptr @test_overflow_shift._entry.314, section ".printk_index", align 4
@.str.316 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0xFFFFU\00", [24 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.318 = internal global ptr @test_overflow_shift._entry.317, section ".printk_index", align 4
@.str.319 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0xFFFFU << 16\00", [18 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.321 = internal global ptr @test_overflow_shift._entry.320, section ".printk_index", align 4
@test_overflow_shift._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.323 = internal global ptr @test_overflow_shift._entry.322, section ".printk_index", align 4
@test_overflow_shift._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.325 = internal global ptr @test_overflow_shift._entry.324, section ".printk_index", align 4
@test_overflow_shift._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.327 = internal global ptr @test_overflow_shift._entry.326, section ".printk_index", align 4
@test_overflow_shift._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.329 = internal global ptr @test_overflow_shift._entry.328, section ".printk_index", align 4
@test_overflow_shift._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.331 = internal global ptr @test_overflow_shift._entry.330, section ".printk_index", align 4
@test_overflow_shift._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.333 = internal global ptr @test_overflow_shift._entry.332, section ".printk_index", align 4
@test_overflow_shift._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.335 = internal global ptr @test_overflow_shift._entry.334, section ".printk_index", align 4
@test_overflow_shift._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.337 = internal global ptr @test_overflow_shift._entry.336, section ".printk_index", align 4
@test_overflow_shift._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.339 = internal global ptr @test_overflow_shift._entry.338, section ".printk_index", align 4
@test_overflow_shift._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.341 = internal global ptr @test_overflow_shift._entry.340, section ".printk_index", align 4
@test_overflow_shift._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.343 = internal global ptr @test_overflow_shift._entry.342, section ".printk_index", align 4
@test_overflow_shift._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.345 = internal global ptr @test_overflow_shift._entry.344, section ".printk_index", align 4
@test_overflow_shift._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.347 = internal global ptr @test_overflow_shift._entry.346, section ".printk_index", align 4
@test_overflow_shift._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.349 = internal global ptr @test_overflow_shift._entry.348, section ".printk_index", align 4
@test_overflow_shift._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.351 = internal global ptr @test_overflow_shift._entry.350, section ".printk_index", align 4
@test_overflow_shift._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.353 = internal global ptr @test_overflow_shift._entry.352, section ".printk_index", align 4
@test_overflow_shift._entry.354 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.355 = internal global ptr @test_overflow_shift._entry.354, section ".printk_index", align 4
@test_overflow_shift._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.357 = internal global ptr @test_overflow_shift._entry.356, section ".printk_index", align 4
@.str.358 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.360 = internal global ptr @test_overflow_shift._entry.359, section ".printk_index", align 4
@.str.361 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1ULL << 0\00", [22 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.363 = internal global ptr @test_overflow_shift._entry.362, section ".printk_index", align 4
@test_overflow_shift._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.365 = internal global ptr @test_overflow_shift._entry.364, section ".printk_index", align 4
@test_overflow_shift._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.367 = internal global ptr @test_overflow_shift._entry.366, section ".printk_index", align 4
@.str.368 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"40\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.369 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.370 = internal global ptr @test_overflow_shift._entry.369, section ".printk_index", align 4
@.str.371 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1ULL << 40\00", [21 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.373 = internal global ptr @test_overflow_shift._entry.372, section ".printk_index", align 4
@test_overflow_shift._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.375 = internal global ptr @test_overflow_shift._entry.374, section ".printk_index", align 4
@test_overflow_shift._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.377 = internal global ptr @test_overflow_shift._entry.376, section ".printk_index", align 4
@.str.378 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"63\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.380 = internal global ptr @test_overflow_shift._entry.379, section ".printk_index", align 4
@.str.381 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1ULL << 63\00", [21 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.383 = internal global ptr @test_overflow_shift._entry.382, section ".printk_index", align 4
@test_overflow_shift._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.385 = internal global ptr @test_overflow_shift._entry.384, section ".printk_index", align 4
@test_overflow_shift._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.387 = internal global ptr @test_overflow_shift._entry.386, section ".printk_index", align 4
@.str.388 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0xFFFFFFFFULL\00", [18 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.390 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.391 = internal global ptr @test_overflow_shift._entry.390, section ".printk_index", align 4
@.str.392 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0xFFFFFFFFULL << 32\00", [44 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.394 = internal global ptr @test_overflow_shift._entry.393, section ".printk_index", align 4
@test_overflow_shift._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.396 = internal global ptr @test_overflow_shift._entry.395, section ".printk_index", align 4
@test_overflow_shift._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.398 = internal global ptr @test_overflow_shift._entry.397, section ".printk_index", align 4
@test_overflow_shift._entry.399 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.400 = internal global ptr @test_overflow_shift._entry.399, section ".printk_index", align 4
@test_overflow_shift._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.402 = internal global ptr @test_overflow_shift._entry.401, section ".printk_index", align 4
@test_overflow_shift._entry.403 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.404 = internal global ptr @test_overflow_shift._entry.403, section ".printk_index", align 4
@test_overflow_shift._entry.405 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.406 = internal global ptr @test_overflow_shift._entry.405, section ".printk_index", align 4
@test_overflow_shift._entry.407 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.408 = internal global ptr @test_overflow_shift._entry.407, section ".printk_index", align 4
@test_overflow_shift._entry.409 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.410 = internal global ptr @test_overflow_shift._entry.409, section ".printk_index", align 4
@test_overflow_shift._entry.411 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.412 = internal global ptr @test_overflow_shift._entry.411, section ".printk_index", align 4
@test_overflow_shift._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.414 = internal global ptr @test_overflow_shift._entry.413, section ".printk_index", align 4
@test_overflow_shift._entry.415 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.416 = internal global ptr @test_overflow_shift._entry.415, section ".printk_index", align 4
@test_overflow_shift._entry.417 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.418 = internal global ptr @test_overflow_shift._entry.417, section ".printk_index", align 4
@test_overflow_shift._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.420 = internal global ptr @test_overflow_shift._entry.419, section ".printk_index", align 4
@test_overflow_shift._entry.421 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.422 = internal global ptr @test_overflow_shift._entry.421, section ".printk_index", align 4
@test_overflow_shift._entry.423 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.424 = internal global ptr @test_overflow_shift._entry.423, section ".printk_index", align 4
@test_overflow_shift._entry.425 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.426 = internal global ptr @test_overflow_shift._entry.425, section ".printk_index", align 4
@test_overflow_shift._entry.427 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.428 = internal global ptr @test_overflow_shift._entry.427, section ".printk_index", align 4
@test_overflow_shift._entry.429 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.430 = internal global ptr @test_overflow_shift._entry.429, section ".printk_index", align 4
@test_overflow_shift._entry.431 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.432 = internal global ptr @test_overflow_shift._entry.431, section ".printk_index", align 4
@test_overflow_shift._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.434 = internal global ptr @test_overflow_shift._entry.433, section ".printk_index", align 4
@test_overflow_shift._entry.435 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.436 = internal global ptr @test_overflow_shift._entry.435, section ".printk_index", align 4
@test_overflow_shift._entry.437 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.438 = internal global ptr @test_overflow_shift._entry.437, section ".printk_index", align 4
@.str.439 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.440 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.441 = internal global ptr @test_overflow_shift._entry.440, section ".printk_index", align 4
@test_overflow_shift._entry.442 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.443 = internal global ptr @test_overflow_shift._entry.442, section ".printk_index", align 4
@test_overflow_shift._entry.444 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.445 = internal global ptr @test_overflow_shift._entry.444, section ".printk_index", align 4
@test_overflow_shift._entry.446 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.447 = internal global ptr @test_overflow_shift._entry.446, section ".printk_index", align 4
@.str.448 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"14\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.449 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.450 = internal global ptr @test_overflow_shift._entry.449, section ".printk_index", align 4
@test_overflow_shift._entry.451 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.452 = internal global ptr @test_overflow_shift._entry.451, section ".printk_index", align 4
@test_overflow_shift._entry.453 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.454 = internal global ptr @test_overflow_shift._entry.453, section ".printk_index", align 4
@test_overflow_shift._entry.455 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.456 = internal global ptr @test_overflow_shift._entry.455, section ".printk_index", align 4
@test_overflow_shift._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.458 = internal global ptr @test_overflow_shift._entry.457, section ".printk_index", align 4
@test_overflow_shift._entry.459 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.460 = internal global ptr @test_overflow_shift._entry.459, section ".printk_index", align 4
@test_overflow_shift._entry.461 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.462 = internal global ptr @test_overflow_shift._entry.461, section ".printk_index", align 4
@test_overflow_shift._entry.463 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.464 = internal global ptr @test_overflow_shift._entry.463, section ".printk_index", align 4
@test_overflow_shift._entry.465 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.466 = internal global ptr @test_overflow_shift._entry.465, section ".printk_index", align 4
@test_overflow_shift._entry.467 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.468 = internal global ptr @test_overflow_shift._entry.467, section ".printk_index", align 4
@test_overflow_shift._entry.469 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.470 = internal global ptr @test_overflow_shift._entry.469, section ".printk_index", align 4
@test_overflow_shift._entry.471 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.472 = internal global ptr @test_overflow_shift._entry.471, section ".printk_index", align 4
@.str.473 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"62\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.475 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.476 = internal global ptr @test_overflow_shift._entry.475, section ".printk_index", align 4
@test_overflow_shift._entry.477 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.478 = internal global ptr @test_overflow_shift._entry.477, section ".printk_index", align 4
@test_overflow_shift._entry.479 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.480 = internal global ptr @test_overflow_shift._entry.479, section ".printk_index", align 4
@test_overflow_shift._entry.481 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.482 = internal global ptr @test_overflow_shift._entry.481, section ".printk_index", align 4
@test_overflow_shift._entry.483 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.484 = internal global ptr @test_overflow_shift._entry.483, section ".printk_index", align 4
@test_overflow_shift._entry.485 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.486 = internal global ptr @test_overflow_shift._entry.485, section ".printk_index", align 4
@test_overflow_shift._entry.487 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.488 = internal global ptr @test_overflow_shift._entry.487, section ".printk_index", align 4
@.str.489 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overflow\00", [23 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.490 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.491 = internal global ptr @test_overflow_shift._entry.490, section ".printk_index", align 4
@test_overflow_shift._entry.492 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.493 = internal global ptr @test_overflow_shift._entry.492, section ".printk_index", align 4
@test_overflow_shift._entry.494 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.495 = internal global ptr @test_overflow_shift._entry.494, section ".printk_index", align 4
@test_overflow_shift._entry.496 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.497 = internal global ptr @test_overflow_shift._entry.496, section ".printk_index", align 4
@test_overflow_shift._entry.498 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.499 = internal global ptr @test_overflow_shift._entry.498, section ".printk_index", align 4
@test_overflow_shift._entry.500 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.501 = internal global ptr @test_overflow_shift._entry.500, section ".printk_index", align 4
@test_overflow_shift._entry.502 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.503 = internal global ptr @test_overflow_shift._entry.502, section ".printk_index", align 4
@test_overflow_shift._entry.504 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.505 = internal global ptr @test_overflow_shift._entry.504, section ".printk_index", align 4
@test_overflow_shift._entry.506 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.507 = internal global ptr @test_overflow_shift._entry.506, section ".printk_index", align 4
@test_overflow_shift._entry.508 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.509 = internal global ptr @test_overflow_shift._entry.508, section ".printk_index", align 4
@test_overflow_shift._entry.510 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.511 = internal global ptr @test_overflow_shift._entry.510, section ".printk_index", align 4
@test_overflow_shift._entry.512 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.513 = internal global ptr @test_overflow_shift._entry.512, section ".printk_index", align 4
@test_overflow_shift._entry.514 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.515 = internal global ptr @test_overflow_shift._entry.514, section ".printk_index", align 4
@.str.516 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.517 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.518 = internal global ptr @test_overflow_shift._entry.517, section ".printk_index", align 4
@test_overflow_shift._entry.519 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.520 = internal global ptr @test_overflow_shift._entry.519, section ".printk_index", align 4
@test_overflow_shift._entry.521 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.522 = internal global ptr @test_overflow_shift._entry.521, section ".printk_index", align 4
@test_overflow_shift._entry.523 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.524 = internal global ptr @test_overflow_shift._entry.523, section ".printk_index", align 4
@test_overflow_shift._entry.525 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.526 = internal global ptr @test_overflow_shift._entry.525, section ".printk_index", align 4
@test_overflow_shift._entry.527 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.528 = internal global ptr @test_overflow_shift._entry.527, section ".printk_index", align 4
@test_overflow_shift._entry.529 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.530 = internal global ptr @test_overflow_shift._entry.529, section ".printk_index", align 4
@test_overflow_shift._entry.531 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.532 = internal global ptr @test_overflow_shift._entry.531, section ".printk_index", align 4
@test_overflow_shift._entry.533 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.534 = internal global ptr @test_overflow_shift._entry.533, section ".printk_index", align 4
@test_overflow_shift._entry.535 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.536 = internal global ptr @test_overflow_shift._entry.535, section ".printk_index", align 4
@test_overflow_shift._entry.537 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.538 = internal global ptr @test_overflow_shift._entry.537, section ".printk_index", align 4
@test_overflow_shift._entry.539 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.540 = internal global ptr @test_overflow_shift._entry.539, section ".printk_index", align 4
@test_overflow_shift._entry.541 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.542 = internal global ptr @test_overflow_shift._entry.541, section ".printk_index", align 4
@test_overflow_shift._entry.543 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.544 = internal global ptr @test_overflow_shift._entry.543, section ".printk_index", align 4
@test_overflow_shift._entry.545 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.546 = internal global ptr @test_overflow_shift._entry.545, section ".printk_index", align 4
@test_overflow_shift._entry.547 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.548 = internal global ptr @test_overflow_shift._entry.547, section ".printk_index", align 4
@test_overflow_shift._entry.549 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.550 = internal global ptr @test_overflow_shift._entry.549, section ".printk_index", align 4
@test_overflow_shift._entry.551 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.552 = internal global ptr @test_overflow_shift._entry.551, section ".printk_index", align 4
@test_overflow_shift._entry.553 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.554 = internal global ptr @test_overflow_shift._entry.553, section ".printk_index", align 4
@test_overflow_shift._entry.555 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.556 = internal global ptr @test_overflow_shift._entry.555, section ".printk_index", align 4
@test_overflow_shift._entry.557 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.558 = internal global ptr @test_overflow_shift._entry.557, section ".printk_index", align 4
@test_overflow_shift._entry.559 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.560 = internal global ptr @test_overflow_shift._entry.559, section ".printk_index", align 4
@test_overflow_shift._entry.561 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.562 = internal global ptr @test_overflow_shift._entry.561, section ".printk_index", align 4
@test_overflow_shift._entry.563 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.564 = internal global ptr @test_overflow_shift._entry.563, section ".printk_index", align 4
@.str.565 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"150\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.566 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.567 = internal global ptr @test_overflow_shift._entry.566, section ".printk_index", align 4
@test_overflow_shift._entry.568 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.569 = internal global ptr @test_overflow_shift._entry.568, section ".printk_index", align 4
@test_overflow_shift._entry.570 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.571 = internal global ptr @test_overflow_shift._entry.570, section ".printk_index", align 4
@test_overflow_shift._entry.572 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.573 = internal global ptr @test_overflow_shift._entry.572, section ".printk_index", align 4
@.str.574 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"34966\00", [26 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.575 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.576 = internal global ptr @test_overflow_shift._entry.575, section ".printk_index", align 4
@test_overflow_shift._entry.577 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.578 = internal global ptr @test_overflow_shift._entry.577, section ".printk_index", align 4
@test_overflow_shift._entry.579 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.580 = internal global ptr @test_overflow_shift._entry.579, section ".printk_index", align 4
@test_overflow_shift._entry.581 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.582 = internal global ptr @test_overflow_shift._entry.581, section ".printk_index", align 4
@.str.583 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2215151766U\00", [20 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.584 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.585 = internal global ptr @test_overflow_shift._entry.584, section ".printk_index", align 4
@test_overflow_shift._entry.586 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.587 = internal global ptr @test_overflow_shift._entry.586, section ".printk_index", align 4
@test_overflow_shift._entry.588 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.589 = internal global ptr @test_overflow_shift._entry.588, section ".printk_index", align 4
@test_overflow_shift._entry.590 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.591 = internal global ptr @test_overflow_shift._entry.590, section ".printk_index", align 4
@test_overflow_shift._entry.592 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.593 = internal global ptr @test_overflow_shift._entry.592, section ".printk_index", align 4
@test_overflow_shift._entry.594 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.595 = internal global ptr @test_overflow_shift._entry.594, section ".printk_index", align 4
@test_overflow_shift._entry.596 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.597 = internal global ptr @test_overflow_shift._entry.596, section ".printk_index", align 4
@test_overflow_shift._entry.598 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.599 = internal global ptr @test_overflow_shift._entry.598, section ".printk_index", align 4
@.str.600 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"9372061470395238550ULL\00", [41 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.601 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.602 = internal global ptr @test_overflow_shift._entry.601, section ".printk_index", align 4
@test_overflow_shift._entry.603 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.604 = internal global ptr @test_overflow_shift._entry.603, section ".printk_index", align 4
@test_overflow_shift._entry.605 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.606 = internal global ptr @test_overflow_shift._entry.605, section ".printk_index", align 4
@test_overflow_shift._entry.607 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.608 = internal global ptr @test_overflow_shift._entry.607, section ".printk_index", align 4
@.str.609 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"75\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.610 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.611 = internal global ptr @test_overflow_shift._entry.610, section ".printk_index", align 4
@test_overflow_shift._entry.612 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.613 = internal global ptr @test_overflow_shift._entry.612, section ".printk_index", align 4
@test_overflow_shift._entry.614 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.615 = internal global ptr @test_overflow_shift._entry.614, section ".printk_index", align 4
@test_overflow_shift._entry.616 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.617 = internal global ptr @test_overflow_shift._entry.616, section ".printk_index", align 4
@.str.618 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"17483\00", [26 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.619 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.620 = internal global ptr @test_overflow_shift._entry.619, section ".printk_index", align 4
@test_overflow_shift._entry.621 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.622 = internal global ptr @test_overflow_shift._entry.621, section ".printk_index", align 4
@test_overflow_shift._entry.623 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.624 = internal global ptr @test_overflow_shift._entry.623, section ".printk_index", align 4
@test_overflow_shift._entry.625 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.626 = internal global ptr @test_overflow_shift._entry.625, section ".printk_index", align 4
@.str.627 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1107575883\00", [21 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.628 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.629 = internal global ptr @test_overflow_shift._entry.628, section ".printk_index", align 4
@test_overflow_shift._entry.630 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.631 = internal global ptr @test_overflow_shift._entry.630, section ".printk_index", align 4
@test_overflow_shift._entry.632 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.633 = internal global ptr @test_overflow_shift._entry.632, section ".printk_index", align 4
@test_overflow_shift._entry.634 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.635 = internal global ptr @test_overflow_shift._entry.634, section ".printk_index", align 4
@test_overflow_shift._entry.636 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.637 = internal global ptr @test_overflow_shift._entry.636, section ".printk_index", align 4
@test_overflow_shift._entry.638 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.639 = internal global ptr @test_overflow_shift._entry.638, section ".printk_index", align 4
@test_overflow_shift._entry.640 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.641 = internal global ptr @test_overflow_shift._entry.640, section ".printk_index", align 4
@test_overflow_shift._entry.642 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.643 = internal global ptr @test_overflow_shift._entry.642, section ".printk_index", align 4
@.str.644 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"4686030735197619275LL\00", [42 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.645 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.646 = internal global ptr @test_overflow_shift._entry.645, section ".printk_index", align 4
@test_overflow_shift._entry.647 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.648 = internal global ptr @test_overflow_shift._entry.647, section ".printk_index", align 4
@test_overflow_shift._entry.649 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.650 = internal global ptr @test_overflow_shift._entry.649, section ".printk_index", align 4
@test_overflow_shift._entry.651 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.652 = internal global ptr @test_overflow_shift._entry.651, section ".printk_index", align 4
@.str.653 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.654 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.655 = internal global ptr @test_overflow_shift._entry.654, section ".printk_index", align 4
@test_overflow_shift._entry.656 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.657 = internal global ptr @test_overflow_shift._entry.656, section ".printk_index", align 4
@test_overflow_shift._entry.658 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.659 = internal global ptr @test_overflow_shift._entry.658, section ".printk_index", align 4
@test_overflow_shift._entry.660 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.661 = internal global ptr @test_overflow_shift._entry.660, section ".printk_index", align 4
@test_overflow_shift._entry.662 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.663 = internal global ptr @test_overflow_shift._entry.662, section ".printk_index", align 4
@test_overflow_shift._entry.664 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.665 = internal global ptr @test_overflow_shift._entry.664, section ".printk_index", align 4
@test_overflow_shift._entry.666 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.667 = internal global ptr @test_overflow_shift._entry.666, section ".printk_index", align 4
@test_overflow_shift._entry.668 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.669 = internal global ptr @test_overflow_shift._entry.668, section ".printk_index", align 4
@test_overflow_shift._entry.670 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.671 = internal global ptr @test_overflow_shift._entry.670, section ".printk_index", align 4
@test_overflow_shift._entry.672 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.673 = internal global ptr @test_overflow_shift._entry.672, section ".printk_index", align 4
@test_overflow_shift._entry.674 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.675 = internal global ptr @test_overflow_shift._entry.674, section ".printk_index", align 4
@test_overflow_shift._entry.676 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.677 = internal global ptr @test_overflow_shift._entry.676, section ".printk_index", align 4
@test_overflow_shift._entry.678 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.679 = internal global ptr @test_overflow_shift._entry.678, section ".printk_index", align 4
@test_overflow_shift._entry.680 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.681 = internal global ptr @test_overflow_shift._entry.680, section ".printk_index", align 4
@test_overflow_shift._entry.682 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.683 = internal global ptr @test_overflow_shift._entry.682, section ".printk_index", align 4
@test_overflow_shift._entry.684 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.685 = internal global ptr @test_overflow_shift._entry.684, section ".printk_index", align 4
@test_overflow_shift._entry.686 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.687 = internal global ptr @test_overflow_shift._entry.686, section ".printk_index", align 4
@test_overflow_shift._entry.688 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.689 = internal global ptr @test_overflow_shift._entry.688, section ".printk_index", align 4
@test_overflow_shift._entry.690 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.691 = internal global ptr @test_overflow_shift._entry.690, section ".printk_index", align 4
@test_overflow_shift._entry.692 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.693 = internal global ptr @test_overflow_shift._entry.692, section ".printk_index", align 4
@.str.694 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x100\00", [26 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.695 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.696 = internal global ptr @test_overflow_shift._entry.695, section ".printk_index", align 4
@test_overflow_shift._entry.697 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.698 = internal global ptr @test_overflow_shift._entry.697, section ".printk_index", align 4
@test_overflow_shift._entry.699 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.700 = internal global ptr @test_overflow_shift._entry.699, section ".printk_index", align 4
@test_overflow_shift._entry.701 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.702 = internal global ptr @test_overflow_shift._entry.701, section ".printk_index", align 4
@test_overflow_shift._entry.703 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.704 = internal global ptr @test_overflow_shift._entry.703, section ".printk_index", align 4
@test_overflow_shift._entry.705 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.706 = internal global ptr @test_overflow_shift._entry.705, section ".printk_index", align 4
@test_overflow_shift._entry.707 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.708 = internal global ptr @test_overflow_shift._entry.707, section ".printk_index", align 4
@test_overflow_shift._entry.709 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.710 = internal global ptr @test_overflow_shift._entry.709, section ".printk_index", align 4
@.str.711 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x10000U\00", [23 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.712 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.713 = internal global ptr @test_overflow_shift._entry.712, section ".printk_index", align 4
@test_overflow_shift._entry.714 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.715 = internal global ptr @test_overflow_shift._entry.714, section ".printk_index", align 4
@test_overflow_shift._entry.716 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.717 = internal global ptr @test_overflow_shift._entry.716, section ".printk_index", align 4
@test_overflow_shift._entry.718 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.719 = internal global ptr @test_overflow_shift._entry.718, section ".printk_index", align 4
@test_overflow_shift._entry.720 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.721 = internal global ptr @test_overflow_shift._entry.720, section ".printk_index", align 4
@test_overflow_shift._entry.722 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.723 = internal global ptr @test_overflow_shift._entry.722, section ".printk_index", align 4
@test_overflow_shift._entry.724 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.725 = internal global ptr @test_overflow_shift._entry.724, section ".printk_index", align 4
@test_overflow_shift._entry.726 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.727 = internal global ptr @test_overflow_shift._entry.726, section ".printk_index", align 4
@.str.728 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x100000000ULL\00", [17 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.729 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.730 = internal global ptr @test_overflow_shift._entry.729, section ".printk_index", align 4
@test_overflow_shift._entry.731 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.732 = internal global ptr @test_overflow_shift._entry.731, section ".printk_index", align 4
@test_overflow_shift._entry.733 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.734 = internal global ptr @test_overflow_shift._entry.733, section ".printk_index", align 4
@test_overflow_shift._entry.735 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.736 = internal global ptr @test_overflow_shift._entry.735, section ".printk_index", align 4
@test_overflow_shift._entry.737 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.738 = internal global ptr @test_overflow_shift._entry.737, section ".printk_index", align 4
@test_overflow_shift._entry.739 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.740 = internal global ptr @test_overflow_shift._entry.739, section ".printk_index", align 4
@test_overflow_shift._entry.741 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.742 = internal global ptr @test_overflow_shift._entry.741, section ".printk_index", align 4
@test_overflow_shift._entry.743 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.744 = internal global ptr @test_overflow_shift._entry.743, section ".printk_index", align 4
@.str.745 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0xFFFFFFFFUL\00", [19 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.746 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.747 = internal global ptr @test_overflow_shift._entry.746, section ".printk_index", align 4
@test_overflow_shift._entry.748 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.749 = internal global ptr @test_overflow_shift._entry.748, section ".printk_index", align 4
@test_overflow_shift._entry.750 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.751 = internal global ptr @test_overflow_shift._entry.750, section ".printk_index", align 4
@test_overflow_shift._entry.752 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.753 = internal global ptr @test_overflow_shift._entry.752, section ".printk_index", align 4
@test_overflow_shift._entry.754 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.755 = internal global ptr @test_overflow_shift._entry.754, section ".printk_index", align 4
@test_overflow_shift._entry.756 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.757 = internal global ptr @test_overflow_shift._entry.756, section ".printk_index", align 4
@test_overflow_shift._entry.758 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.759 = internal global ptr @test_overflow_shift._entry.758, section ".printk_index", align 4
@test_overflow_shift._entry.760 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.761 = internal global ptr @test_overflow_shift._entry.760, section ".printk_index", align 4
@.str.762 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0xFFFFFFFFFFFFFFFFULL\00", [42 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.763 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.764 = internal global ptr @test_overflow_shift._entry.763, section ".printk_index", align 4
@test_overflow_shift._entry.765 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.766 = internal global ptr @test_overflow_shift._entry.765, section ".printk_index", align 4
@test_overflow_shift._entry.767 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.768 = internal global ptr @test_overflow_shift._entry.767, section ".printk_index", align 4
@test_overflow_shift._entry.769 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.770 = internal global ptr @test_overflow_shift._entry.769, section ".printk_index", align 4
@.str.771 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-1\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.772 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.773 = internal global ptr @test_overflow_shift._entry.772, section ".printk_index", align 4
@test_overflow_shift._entry.774 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.775 = internal global ptr @test_overflow_shift._entry.774, section ".printk_index", align 4
@test_overflow_shift._entry.776 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.777 = internal global ptr @test_overflow_shift._entry.776, section ".printk_index", align 4
@test_overflow_shift._entry.778 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.779 = internal global ptr @test_overflow_shift._entry.778, section ".printk_index", align 4
@test_overflow_shift._entry.780 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.781 = internal global ptr @test_overflow_shift._entry.780, section ".printk_index", align 4
@test_overflow_shift._entry.782 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.783 = internal global ptr @test_overflow_shift._entry.782, section ".printk_index", align 4
@test_overflow_shift._entry.784 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.785 = internal global ptr @test_overflow_shift._entry.784, section ".printk_index", align 4
@test_overflow_shift._entry.786 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.787 = internal global ptr @test_overflow_shift._entry.786, section ".printk_index", align 4
@.str.788 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-5\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.789 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.790 = internal global ptr @test_overflow_shift._entry.789, section ".printk_index", align 4
@test_overflow_shift._entry.791 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.792 = internal global ptr @test_overflow_shift._entry.791, section ".printk_index", align 4
@test_overflow_shift._entry.793 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.794 = internal global ptr @test_overflow_shift._entry.793, section ".printk_index", align 4
@test_overflow_shift._entry.795 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.796 = internal global ptr @test_overflow_shift._entry.795, section ".printk_index", align 4
@test_overflow_shift._entry.797 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.798 = internal global ptr @test_overflow_shift._entry.797, section ".printk_index", align 4
@test_overflow_shift._entry.799 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.800 = internal global ptr @test_overflow_shift._entry.799, section ".printk_index", align 4
@test_overflow_shift._entry.801 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.802 = internal global ptr @test_overflow_shift._entry.801, section ".printk_index", align 4
@test_overflow_shift._entry.803 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.804 = internal global ptr @test_overflow_shift._entry.803, section ".printk_index", align 4
@.str.805 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-10\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.806 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.807 = internal global ptr @test_overflow_shift._entry.806, section ".printk_index", align 4
@test_overflow_shift._entry.808 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.809 = internal global ptr @test_overflow_shift._entry.808, section ".printk_index", align 4
@test_overflow_shift._entry.810 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.811 = internal global ptr @test_overflow_shift._entry.810, section ".printk_index", align 4
@test_overflow_shift._entry.812 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.813 = internal global ptr @test_overflow_shift._entry.812, section ".printk_index", align 4
@test_overflow_shift._entry.814 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.815 = internal global ptr @test_overflow_shift._entry.814, section ".printk_index", align 4
@test_overflow_shift._entry.816 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.817 = internal global ptr @test_overflow_shift._entry.816, section ".printk_index", align 4
@test_overflow_shift._entry.818 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.819 = internal global ptr @test_overflow_shift._entry.818, section ".printk_index", align 4
@test_overflow_shift._entry.820 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.821 = internal global ptr @test_overflow_shift._entry.820, section ".printk_index", align 4
@.str.822 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-100\00", [27 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.823 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.824 = internal global ptr @test_overflow_shift._entry.823, section ".printk_index", align 4
@test_overflow_shift._entry.825 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.826 = internal global ptr @test_overflow_shift._entry.825, section ".printk_index", align 4
@test_overflow_shift._entry.827 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.828 = internal global ptr @test_overflow_shift._entry.827, section ".printk_index", align 4
@test_overflow_shift._entry.829 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.830 = internal global ptr @test_overflow_shift._entry.829, section ".printk_index", align 4
@test_overflow_shift._entry.831 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.832 = internal global ptr @test_overflow_shift._entry.831, section ".printk_index", align 4
@test_overflow_shift._entry.833 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.834 = internal global ptr @test_overflow_shift._entry.833, section ".printk_index", align 4
@test_overflow_shift._entry.835 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.836 = internal global ptr @test_overflow_shift._entry.835, section ".printk_index", align 4
@test_overflow_shift._entry.837 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.838 = internal global ptr @test_overflow_shift._entry.837, section ".printk_index", align 4
@.str.839 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-10000\00", [25 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.840 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.841 = internal global ptr @test_overflow_shift._entry.840, section ".printk_index", align 4
@test_overflow_shift._entry.842 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.843 = internal global ptr @test_overflow_shift._entry.842, section ".printk_index", align 4
@test_overflow_shift._entry.844 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.845 = internal global ptr @test_overflow_shift._entry.844, section ".printk_index", align 4
@test_overflow_shift._entry.846 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.847 = internal global ptr @test_overflow_shift._entry.846, section ".printk_index", align 4
@test_overflow_shift._entry.848 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.849 = internal global ptr @test_overflow_shift._entry.848, section ".printk_index", align 4
@test_overflow_shift._entry.850 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.851 = internal global ptr @test_overflow_shift._entry.850, section ".printk_index", align 4
@test_overflow_shift._entry.852 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.853 = internal global ptr @test_overflow_shift._entry.852, section ".printk_index", align 4
@test_overflow_shift._entry.854 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.855 = internal global ptr @test_overflow_shift._entry.854, section ".printk_index", align 4
@test_overflow_shift._entry.856 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.857 = internal global ptr @test_overflow_shift._entry.856, section ".printk_index", align 4
@test_overflow_shift._entry.858 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.859 = internal global ptr @test_overflow_shift._entry.858, section ".printk_index", align 4
@test_overflow_shift._entry.860 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.861 = internal global ptr @test_overflow_shift._entry.860, section ".printk_index", align 4
@test_overflow_shift._entry.862 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.863 = internal global ptr @test_overflow_shift._entry.862, section ".printk_index", align 4
@test_overflow_shift._entry.864 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.865 = internal global ptr @test_overflow_shift._entry.864, section ".printk_index", align 4
@test_overflow_shift._entry.866 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.867 = internal global ptr @test_overflow_shift._entry.866, section ".printk_index", align 4
@test_overflow_shift._entry.868 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.869 = internal global ptr @test_overflow_shift._entry.868, section ".printk_index", align 4
@test_overflow_shift._entry.870 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.871 = internal global ptr @test_overflow_shift._entry.870, section ".printk_index", align 4
@test_overflow_shift._entry.872 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.873 = internal global ptr @test_overflow_shift._entry.872, section ".printk_index", align 4
@test_overflow_shift._entry.874 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.875 = internal global ptr @test_overflow_shift._entry.874, section ".printk_index", align 4
@test_overflow_shift._entry.876 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.877 = internal global ptr @test_overflow_shift._entry.876, section ".printk_index", align 4
@test_overflow_shift._entry.878 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.879 = internal global ptr @test_overflow_shift._entry.878, section ".printk_index", align 4
@test_overflow_shift._entry.880 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.881 = internal global ptr @test_overflow_shift._entry.880, section ".printk_index", align 4
@test_overflow_shift._entry.882 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.883 = internal global ptr @test_overflow_shift._entry.882, section ".printk_index", align 4
@test_overflow_shift._entry.884 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.885 = internal global ptr @test_overflow_shift._entry.884, section ".printk_index", align 4
@test_overflow_shift._entry.886 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.887 = internal global ptr @test_overflow_shift._entry.886, section ".printk_index", align 4
@.str.888 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-15\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.889 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.890 = internal global ptr @test_overflow_shift._entry.889, section ".printk_index", align 4
@test_overflow_shift._entry.891 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.892 = internal global ptr @test_overflow_shift._entry.891, section ".printk_index", align 4
@test_overflow_shift._entry.893 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.894 = internal global ptr @test_overflow_shift._entry.893, section ".printk_index", align 4
@test_overflow_shift._entry.895 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.896 = internal global ptr @test_overflow_shift._entry.895, section ".printk_index", align 4
@test_overflow_shift._entry.897 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.898 = internal global ptr @test_overflow_shift._entry.897, section ".printk_index", align 4
@test_overflow_shift._entry.899 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.900 = internal global ptr @test_overflow_shift._entry.899, section ".printk_index", align 4
@test_overflow_shift._entry.901 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.902 = internal global ptr @test_overflow_shift._entry.901, section ".printk_index", align 4
@test_overflow_shift._entry.903 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.904 = internal global ptr @test_overflow_shift._entry.903, section ".printk_index", align 4
@.str.905 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-20\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.906 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.907 = internal global ptr @test_overflow_shift._entry.906, section ".printk_index", align 4
@test_overflow_shift._entry.908 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.909 = internal global ptr @test_overflow_shift._entry.908, section ".printk_index", align 4
@test_overflow_shift._entry.910 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.911 = internal global ptr @test_overflow_shift._entry.910, section ".printk_index", align 4
@test_overflow_shift._entry.912 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.913 = internal global ptr @test_overflow_shift._entry.912, section ".printk_index", align 4
@test_overflow_shift._entry.914 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.915 = internal global ptr @test_overflow_shift._entry.914, section ".printk_index", align 4
@test_overflow_shift._entry.916 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.917 = internal global ptr @test_overflow_shift._entry.916, section ".printk_index", align 4
@test_overflow_shift._entry.918 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.919 = internal global ptr @test_overflow_shift._entry.918, section ".printk_index", align 4
@test_overflow_shift._entry.920 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.921 = internal global ptr @test_overflow_shift._entry.920, section ".printk_index", align 4
@.str.922 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-30\00", [28 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.923 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.924 = internal global ptr @test_overflow_shift._entry.923, section ".printk_index", align 4
@test_overflow_shift._entry.925 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.926 = internal global ptr @test_overflow_shift._entry.925, section ".printk_index", align 4
@test_overflow_shift._entry.927 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.928 = internal global ptr @test_overflow_shift._entry.927, section ".printk_index", align 4
@test_overflow_shift._entry.929 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.930 = internal global ptr @test_overflow_shift._entry.929, section ".printk_index", align 4
@test_overflow_shift._entry.931 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.932 = internal global ptr @test_overflow_shift._entry.931, section ".printk_index", align 4
@test_overflow_shift._entry.933 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.934 = internal global ptr @test_overflow_shift._entry.933, section ".printk_index", align 4
@test_overflow_shift._entry.935 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.936 = internal global ptr @test_overflow_shift._entry.935, section ".printk_index", align 4
@test_overflow_shift._entry.937 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.938 = internal global ptr @test_overflow_shift._entry.937, section ".printk_index", align 4
@test_overflow_shift._entry.939 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.940 = internal global ptr @test_overflow_shift._entry.939, section ".printk_index", align 4
@test_overflow_shift._entry.941 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.942 = internal global ptr @test_overflow_shift._entry.941, section ".printk_index", align 4
@test_overflow_shift._entry.943 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.944 = internal global ptr @test_overflow_shift._entry.943, section ".printk_index", align 4
@test_overflow_shift._entry.945 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.946 = internal global ptr @test_overflow_shift._entry.945, section ".printk_index", align 4
@.str.947 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.948 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.949 = internal global ptr @test_overflow_shift._entry.948, section ".printk_index", align 4
@test_overflow_shift._entry.950 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.951 = internal global ptr @test_overflow_shift._entry.950, section ".printk_index", align 4
@test_overflow_shift._entry.952 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.953 = internal global ptr @test_overflow_shift._entry.952, section ".printk_index", align 4
@test_overflow_shift._entry.954 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.955 = internal global ptr @test_overflow_shift._entry.954, section ".printk_index", align 4
@test_overflow_shift._entry.956 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.957 = internal global ptr @test_overflow_shift._entry.956, section ".printk_index", align 4
@test_overflow_shift._entry.958 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.959 = internal global ptr @test_overflow_shift._entry.958, section ".printk_index", align 4
@test_overflow_shift._entry.960 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.961 = internal global ptr @test_overflow_shift._entry.960, section ".printk_index", align 4
@test_overflow_shift._entry.962 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.963 = internal global ptr @test_overflow_shift._entry.962, section ".printk_index", align 4
@test_overflow_shift._entry.964 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.965 = internal global ptr @test_overflow_shift._entry.964, section ".printk_index", align 4
@test_overflow_shift._entry.966 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.967 = internal global ptr @test_overflow_shift._entry.966, section ".printk_index", align 4
@test_overflow_shift._entry.968 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.969 = internal global ptr @test_overflow_shift._entry.968, section ".printk_index", align 4
@test_overflow_shift._entry.970 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.971 = internal global ptr @test_overflow_shift._entry.970, section ".printk_index", align 4
@test_overflow_shift._entry.972 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.973 = internal global ptr @test_overflow_shift._entry.972, section ".printk_index", align 4
@test_overflow_shift._entry.974 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.975 = internal global ptr @test_overflow_shift._entry.974, section ".printk_index", align 4
@test_overflow_shift._entry.976 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.977 = internal global ptr @test_overflow_shift._entry.976, section ".printk_index", align 4
@test_overflow_shift._entry.978 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.979 = internal global ptr @test_overflow_shift._entry.978, section ".printk_index", align 4
@.str.980 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"17\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.981 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.982 = internal global ptr @test_overflow_shift._entry.981, section ".printk_index", align 4
@test_overflow_shift._entry.983 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.984 = internal global ptr @test_overflow_shift._entry.983, section ".printk_index", align 4
@test_overflow_shift._entry.985 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.986 = internal global ptr @test_overflow_shift._entry.985, section ".printk_index", align 4
@test_overflow_shift._entry.987 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.988 = internal global ptr @test_overflow_shift._entry.987, section ".printk_index", align 4
@test_overflow_shift._entry.989 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.990 = internal global ptr @test_overflow_shift._entry.989, section ".printk_index", align 4
@test_overflow_shift._entry.991 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.992 = internal global ptr @test_overflow_shift._entry.991, section ".printk_index", align 4
@test_overflow_shift._entry.993 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.994 = internal global ptr @test_overflow_shift._entry.993, section ".printk_index", align 4
@test_overflow_shift._entry.995 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.996 = internal global ptr @test_overflow_shift._entry.995, section ".printk_index", align 4
@test_overflow_shift._entry.997 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.998 = internal global ptr @test_overflow_shift._entry.997, section ".printk_index", align 4
@test_overflow_shift._entry.999 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1000 = internal global ptr @test_overflow_shift._entry.999, section ".printk_index", align 4
@test_overflow_shift._entry.1001 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1002 = internal global ptr @test_overflow_shift._entry.1001, section ".printk_index", align 4
@test_overflow_shift._entry.1003 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1004 = internal global ptr @test_overflow_shift._entry.1003, section ".printk_index", align 4
@test_overflow_shift._entry.1005 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1006 = internal global ptr @test_overflow_shift._entry.1005, section ".printk_index", align 4
@test_overflow_shift._entry.1007 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1008 = internal global ptr @test_overflow_shift._entry.1007, section ".printk_index", align 4
@test_overflow_shift._entry.1009 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1010 = internal global ptr @test_overflow_shift._entry.1009, section ".printk_index", align 4
@test_overflow_shift._entry.1011 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1012 = internal global ptr @test_overflow_shift._entry.1011, section ".printk_index", align 4
@.str.1013 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"33\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.1014 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1015 = internal global ptr @test_overflow_shift._entry.1014, section ".printk_index", align 4
@test_overflow_shift._entry.1016 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1017 = internal global ptr @test_overflow_shift._entry.1016, section ".printk_index", align 4
@test_overflow_shift._entry.1018 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1019 = internal global ptr @test_overflow_shift._entry.1018, section ".printk_index", align 4
@test_overflow_shift._entry.1020 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1021 = internal global ptr @test_overflow_shift._entry.1020, section ".printk_index", align 4
@test_overflow_shift._entry.1022 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1023 = internal global ptr @test_overflow_shift._entry.1022, section ".printk_index", align 4
@test_overflow_shift._entry.1024 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1025 = internal global ptr @test_overflow_shift._entry.1024, section ".printk_index", align 4
@test_overflow_shift._entry.1026 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1027 = internal global ptr @test_overflow_shift._entry.1026, section ".printk_index", align 4
@test_overflow_shift._entry.1028 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1029 = internal global ptr @test_overflow_shift._entry.1028, section ".printk_index", align 4
@test_overflow_shift._entry.1030 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1031 = internal global ptr @test_overflow_shift._entry.1030, section ".printk_index", align 4
@test_overflow_shift._entry.1032 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1033 = internal global ptr @test_overflow_shift._entry.1032, section ".printk_index", align 4
@test_overflow_shift._entry.1034 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1035 = internal global ptr @test_overflow_shift._entry.1034, section ".printk_index", align 4
@test_overflow_shift._entry.1036 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1037 = internal global ptr @test_overflow_shift._entry.1036, section ".printk_index", align 4
@test_overflow_shift._entry.1038 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1039 = internal global ptr @test_overflow_shift._entry.1038, section ".printk_index", align 4
@test_overflow_shift._entry.1040 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1041 = internal global ptr @test_overflow_shift._entry.1040, section ".printk_index", align 4
@test_overflow_shift._entry.1042 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1043 = internal global ptr @test_overflow_shift._entry.1042, section ".printk_index", align 4
@test_overflow_shift._entry.1044 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1045 = internal global ptr @test_overflow_shift._entry.1044, section ".printk_index", align 4
@test_overflow_shift._entry.1046 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1047 = internal global ptr @test_overflow_shift._entry.1046, section ".printk_index", align 4
@test_overflow_shift._entry.1048 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1049 = internal global ptr @test_overflow_shift._entry.1048, section ".printk_index", align 4
@test_overflow_shift._entry.1050 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1051 = internal global ptr @test_overflow_shift._entry.1050, section ".printk_index", align 4
@test_overflow_shift._entry.1052 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1053 = internal global ptr @test_overflow_shift._entry.1052, section ".printk_index", align 4
@test_overflow_shift._entry.1054 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1055 = internal global ptr @test_overflow_shift._entry.1054, section ".printk_index", align 4
@test_overflow_shift._entry.1056 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1057 = internal global ptr @test_overflow_shift._entry.1056, section ".printk_index", align 4
@test_overflow_shift._entry.1058 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1059 = internal global ptr @test_overflow_shift._entry.1058, section ".printk_index", align 4
@test_overflow_shift._entry.1060 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1061 = internal global ptr @test_overflow_shift._entry.1060, section ".printk_index", align 4
@.str.1062 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"65\00", [29 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry.1063 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1064 = internal global ptr @test_overflow_shift._entry.1063, section ".printk_index", align 4
@test_overflow_shift._entry.1065 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1066 = internal global ptr @test_overflow_shift._entry.1065, section ".printk_index", align 4
@test_overflow_shift._entry.1067 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1068 = internal global ptr @test_overflow_shift._entry.1067, section ".printk_index", align 4
@test_overflow_shift._entry.1069 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1070 = internal global ptr @test_overflow_shift._entry.1069, section ".printk_index", align 4
@test_overflow_shift._entry.1071 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1072 = internal global ptr @test_overflow_shift._entry.1071, section ".printk_index", align 4
@test_overflow_shift._entry.1073 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1074 = internal global ptr @test_overflow_shift._entry.1073, section ".printk_index", align 4
@test_overflow_shift._entry.1075 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1076 = internal global ptr @test_overflow_shift._entry.1075, section ".printk_index", align 4
@test_overflow_shift._entry.1077 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1078 = internal global ptr @test_overflow_shift._entry.1077, section ".printk_index", align 4
@test_overflow_shift._entry.1079 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1080 = internal global ptr @test_overflow_shift._entry.1079, section ".printk_index", align 4
@test_overflow_shift._entry.1081 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1082 = internal global ptr @test_overflow_shift._entry.1081, section ".printk_index", align 4
@test_overflow_shift._entry.1083 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1084 = internal global ptr @test_overflow_shift._entry.1083, section ".printk_index", align 4
@test_overflow_shift._entry.1085 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1086 = internal global ptr @test_overflow_shift._entry.1085, section ".printk_index", align 4
@test_overflow_shift._entry.1087 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1088 = internal global ptr @test_overflow_shift._entry.1087, section ".printk_index", align 4
@test_overflow_shift._entry.1089 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1090 = internal global ptr @test_overflow_shift._entry.1089, section ".printk_index", align 4
@test_overflow_shift._entry.1091 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1092 = internal global ptr @test_overflow_shift._entry.1091, section ".printk_index", align 4
@test_overflow_shift._entry.1093 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1094 = internal global ptr @test_overflow_shift._entry.1093, section ".printk_index", align 4
@test_overflow_shift._entry.1095 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1096 = internal global ptr @test_overflow_shift._entry.1095, section ".printk_index", align 4
@test_overflow_shift._entry.1097 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1098 = internal global ptr @test_overflow_shift._entry.1097, section ".printk_index", align 4
@test_overflow_shift._entry.1099 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1100 = internal global ptr @test_overflow_shift._entry.1099, section ".printk_index", align 4
@test_overflow_shift._entry.1101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1102 = internal global ptr @test_overflow_shift._entry.1101, section ".printk_index", align 4
@test_overflow_shift._entry.1103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1104 = internal global ptr @test_overflow_shift._entry.1103, section ".printk_index", align 4
@test_overflow_shift._entry.1105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1106 = internal global ptr @test_overflow_shift._entry.1105, section ".printk_index", align 4
@test_overflow_shift._entry.1107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1108 = internal global ptr @test_overflow_shift._entry.1107, section ".printk_index", align 4
@test_overflow_shift._entry.1109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1110 = internal global ptr @test_overflow_shift._entry.1109, section ".printk_index", align 4
@test_overflow_shift._entry.1111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1112 = internal global ptr @test_overflow_shift._entry.1111, section ".printk_index", align 4
@test_overflow_shift._entry.1113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1114 = internal global ptr @test_overflow_shift._entry.1113, section ".printk_index", align 4
@test_overflow_shift._entry.1115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1116 = internal global ptr @test_overflow_shift._entry.1115, section ".printk_index", align 4
@test_overflow_shift._entry.1117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1118 = internal global ptr @test_overflow_shift._entry.1117, section ".printk_index", align 4
@test_overflow_shift._entry.1119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.148, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1120 = internal global ptr @test_overflow_shift._entry.1119, section ".printk_index", align 4
@test_overflow_shift._entry.1121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.148, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1122 = internal global ptr @test_overflow_shift._entry.1121, section ".printk_index", align 4
@test_overflow_shift._entry.1123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_overflow_shift._entry_ptr.1124 = internal global ptr @test_overflow_shift._entry.1123, section ".printk_index", align 4
@__const.test_overflow_allocation.device_name = private unnamed_addr constant [14 x i8] c"overflow-test\00", align 1
@test_overflow_allocation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1125, ptr @.str.1126, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014test_overflow: Cannot register test device\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_overflow_allocation\00", [39 x i8] zeroinitializer }, align 32
@test_overflow_allocation._entry_ptr = internal global ptr @test_overflow_allocation._entry, section ".printk_index", align 4
@test_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1127, ptr @.str.1128, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1127 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_overflow: kmalloc failed regular allocation?!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_kmalloc\00", [19 x i8] zeroinitializer }, align 32
@test_kmalloc._entry_ptr = internal global ptr @test_kmalloc._entry, section ".printk_index", align 4
@test_kmalloc._entry.1129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1130, ptr @.str.1128, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1130 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014test_overflow: kmalloc unexpectedly failed bad wrapping?!\0A\00", [35 x i8] zeroinitializer }, align 32
@test_kmalloc._entry_ptr.1131 = internal global ptr @test_kmalloc._entry.1129, section ".printk_index", align 4
@test_kmalloc._entry.1132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1133, ptr @.str.1128, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014test_overflow: kmalloc missed saturation!\0A\00", [51 x i8] zeroinitializer }, align 32
@test_kmalloc._entry_ptr.1134 = internal global ptr @test_kmalloc._entry.1132, section ".printk_index", align 4
@test_kmalloc._entry.1135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1136, ptr @.str.1128, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1136 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_overflow: kmalloc detected saturation\0A\00", [50 x i8] zeroinitializer }, align 32
@test_kmalloc._entry_ptr.1137 = internal global ptr @test_kmalloc._entry.1135, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@test_kmalloc_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1138, ptr @.str.1139, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1138 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: kmalloc_node failed regular allocation?!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_kmalloc_node\00", [46 x i8] zeroinitializer }, align 32
@test_kmalloc_node._entry_ptr = internal global ptr @test_kmalloc_node._entry, section ".printk_index", align 4
@test_kmalloc_node._entry.1140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1141, ptr @.str.1139, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1141 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_overflow: kmalloc_node unexpectedly failed bad wrapping?!\0A\00", [62 x i8] zeroinitializer }, align 32
@test_kmalloc_node._entry_ptr.1142 = internal global ptr @test_kmalloc_node._entry.1140, section ".printk_index", align 4
@test_kmalloc_node._entry.1143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1144, ptr @.str.1139, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1144 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_overflow: kmalloc_node missed saturation!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_kmalloc_node._entry_ptr.1145 = internal global ptr @test_kmalloc_node._entry.1143, section ".printk_index", align 4
@test_kmalloc_node._entry.1146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1147, ptr @.str.1139, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1147 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016test_overflow: kmalloc_node detected saturation\0A\00", [45 x i8] zeroinitializer }, align 32
@test_kmalloc_node._entry_ptr.1148 = internal global ptr @test_kmalloc_node._entry.1146, section ".printk_index", align 4
@test_kzalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1149, ptr @.str.1150, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1149 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_overflow: kzalloc failed regular allocation?!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_kzalloc\00", [19 x i8] zeroinitializer }, align 32
@test_kzalloc._entry_ptr = internal global ptr @test_kzalloc._entry, section ".printk_index", align 4
@test_kzalloc._entry.1151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1152, ptr @.str.1150, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1152 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014test_overflow: kzalloc unexpectedly failed bad wrapping?!\0A\00", [35 x i8] zeroinitializer }, align 32
@test_kzalloc._entry_ptr.1153 = internal global ptr @test_kzalloc._entry.1151, section ".printk_index", align 4
@test_kzalloc._entry.1154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1155, ptr @.str.1150, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1155 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014test_overflow: kzalloc missed saturation!\0A\00", [51 x i8] zeroinitializer }, align 32
@test_kzalloc._entry_ptr.1156 = internal global ptr @test_kzalloc._entry.1154, section ".printk_index", align 4
@test_kzalloc._entry.1157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1158, ptr @.str.1150, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1158 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_overflow: kzalloc detected saturation\0A\00", [50 x i8] zeroinitializer }, align 32
@test_kzalloc._entry_ptr.1159 = internal global ptr @test_kzalloc._entry.1157, section ".printk_index", align 4
@test_kzalloc_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1160, ptr @.str.1161, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1160 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: kzalloc_node failed regular allocation?!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_kzalloc_node\00", [46 x i8] zeroinitializer }, align 32
@test_kzalloc_node._entry_ptr = internal global ptr @test_kzalloc_node._entry, section ".printk_index", align 4
@test_kzalloc_node._entry.1162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1163, ptr @.str.1161, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1163 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_overflow: kzalloc_node unexpectedly failed bad wrapping?!\0A\00", [62 x i8] zeroinitializer }, align 32
@test_kzalloc_node._entry_ptr.1164 = internal global ptr @test_kzalloc_node._entry.1162, section ".printk_index", align 4
@test_kzalloc_node._entry.1165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1166, ptr @.str.1161, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1166 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_overflow: kzalloc_node missed saturation!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_kzalloc_node._entry_ptr.1167 = internal global ptr @test_kzalloc_node._entry.1165, section ".printk_index", align 4
@test_kzalloc_node._entry.1168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1169, ptr @.str.1161, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1169 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016test_overflow: kzalloc_node detected saturation\0A\00", [45 x i8] zeroinitializer }, align 32
@test_kzalloc_node._entry_ptr.1170 = internal global ptr @test_kzalloc_node._entry.1168, section ".printk_index", align 4
@test_kvmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1171, ptr @.str.1172, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1171 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014test_overflow: kvmalloc failed regular allocation?!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_kvmalloc\00", [18 x i8] zeroinitializer }, align 32
@test_kvmalloc._entry_ptr = internal global ptr @test_kvmalloc._entry, section ".printk_index", align 4
@test_kvmalloc._entry.1173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1174, ptr @.str.1172, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1174 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014test_overflow: kvmalloc unexpectedly failed bad wrapping?!\0A\00", [34 x i8] zeroinitializer }, align 32
@test_kvmalloc._entry_ptr.1175 = internal global ptr @test_kvmalloc._entry.1173, section ".printk_index", align 4
@test_kvmalloc._entry.1176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1177, ptr @.str.1172, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1177 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014test_overflow: kvmalloc missed saturation!\0A\00", [50 x i8] zeroinitializer }, align 32
@test_kvmalloc._entry_ptr.1178 = internal global ptr @test_kvmalloc._entry.1176, section ".printk_index", align 4
@test_kvmalloc._entry.1179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1180, ptr @.str.1172, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1180 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test_overflow: kvmalloc detected saturation\0A\00", [49 x i8] zeroinitializer }, align 32
@test_kvmalloc._entry_ptr.1181 = internal global ptr @test_kvmalloc._entry.1179, section ".printk_index", align 4
@test_kvmalloc_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1182, ptr @.str.1183, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1182 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014test_overflow: kvmalloc_node failed regular allocation?!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_kvmalloc_node\00", [45 x i8] zeroinitializer }, align 32
@test_kvmalloc_node._entry_ptr = internal global ptr @test_kvmalloc_node._entry, section ".printk_index", align 4
@test_kvmalloc_node._entry.1184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1185, ptr @.str.1183, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1185 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014test_overflow: kvmalloc_node unexpectedly failed bad wrapping?!\0A\00", [61 x i8] zeroinitializer }, align 32
@test_kvmalloc_node._entry_ptr.1186 = internal global ptr @test_kvmalloc_node._entry.1184, section ".printk_index", align 4
@test_kvmalloc_node._entry.1187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1188, ptr @.str.1183, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1188 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014test_overflow: kvmalloc_node missed saturation!\0A\00", [45 x i8] zeroinitializer }, align 32
@test_kvmalloc_node._entry_ptr.1189 = internal global ptr @test_kvmalloc_node._entry.1187, section ".printk_index", align 4
@test_kvmalloc_node._entry.1190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1191, ptr @.str.1183, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1191 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016test_overflow: kvmalloc_node detected saturation\0A\00", [44 x i8] zeroinitializer }, align 32
@test_kvmalloc_node._entry_ptr.1192 = internal global ptr @test_kvmalloc_node._entry.1190, section ".printk_index", align 4
@test_kvzalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1193, ptr @.str.1194, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1193 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014test_overflow: kvzalloc failed regular allocation?!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1194 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_kvzalloc\00", [18 x i8] zeroinitializer }, align 32
@test_kvzalloc._entry_ptr = internal global ptr @test_kvzalloc._entry, section ".printk_index", align 4
@test_kvzalloc._entry.1195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1196, ptr @.str.1194, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1196 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014test_overflow: kvzalloc unexpectedly failed bad wrapping?!\0A\00", [34 x i8] zeroinitializer }, align 32
@test_kvzalloc._entry_ptr.1197 = internal global ptr @test_kvzalloc._entry.1195, section ".printk_index", align 4
@test_kvzalloc._entry.1198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1199, ptr @.str.1194, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1199 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014test_overflow: kvzalloc missed saturation!\0A\00", [50 x i8] zeroinitializer }, align 32
@test_kvzalloc._entry_ptr.1200 = internal global ptr @test_kvzalloc._entry.1198, section ".printk_index", align 4
@test_kvzalloc._entry.1201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1202, ptr @.str.1194, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1202 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test_overflow: kvzalloc detected saturation\0A\00", [49 x i8] zeroinitializer }, align 32
@test_kvzalloc._entry_ptr.1203 = internal global ptr @test_kvzalloc._entry.1201, section ".printk_index", align 4
@test_kvzalloc_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1204, ptr @.str.1205, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1204 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014test_overflow: kvzalloc_node failed regular allocation?!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_kvzalloc_node\00", [45 x i8] zeroinitializer }, align 32
@test_kvzalloc_node._entry_ptr = internal global ptr @test_kvzalloc_node._entry, section ".printk_index", align 4
@test_kvzalloc_node._entry.1206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1207, ptr @.str.1205, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1207 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014test_overflow: kvzalloc_node unexpectedly failed bad wrapping?!\0A\00", [61 x i8] zeroinitializer }, align 32
@test_kvzalloc_node._entry_ptr.1208 = internal global ptr @test_kvzalloc_node._entry.1206, section ".printk_index", align 4
@test_kvzalloc_node._entry.1209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1210, ptr @.str.1205, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1210 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014test_overflow: kvzalloc_node missed saturation!\0A\00", [45 x i8] zeroinitializer }, align 32
@test_kvzalloc_node._entry_ptr.1211 = internal global ptr @test_kvzalloc_node._entry.1209, section ".printk_index", align 4
@test_kvzalloc_node._entry.1212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1213, ptr @.str.1205, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1213 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016test_overflow: kvzalloc_node detected saturation\0A\00", [44 x i8] zeroinitializer }, align 32
@test_kvzalloc_node._entry_ptr.1214 = internal global ptr @test_kvzalloc_node._entry.1212, section ".printk_index", align 4
@test_vmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1215, ptr @.str.1216, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1215 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_overflow: vmalloc failed regular allocation?!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1216 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_vmalloc\00", [19 x i8] zeroinitializer }, align 32
@test_vmalloc._entry_ptr = internal global ptr @test_vmalloc._entry, section ".printk_index", align 4
@test_vmalloc._entry.1217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1218, ptr @.str.1216, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1218 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014test_overflow: vmalloc unexpectedly failed bad wrapping?!\0A\00", [35 x i8] zeroinitializer }, align 32
@test_vmalloc._entry_ptr.1219 = internal global ptr @test_vmalloc._entry.1217, section ".printk_index", align 4
@test_vmalloc._entry.1220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1221, ptr @.str.1216, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1221 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014test_overflow: vmalloc missed saturation!\0A\00", [51 x i8] zeroinitializer }, align 32
@test_vmalloc._entry_ptr.1222 = internal global ptr @test_vmalloc._entry.1220, section ".printk_index", align 4
@test_vmalloc._entry.1223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1224, ptr @.str.1216, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1224 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_overflow: vmalloc detected saturation\0A\00", [50 x i8] zeroinitializer }, align 32
@test_vmalloc._entry_ptr.1225 = internal global ptr @test_vmalloc._entry.1223, section ".printk_index", align 4
@test_vmalloc_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1226, ptr @.str.1227, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1226 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: vmalloc_node failed regular allocation?!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1227 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_vmalloc_node\00", [46 x i8] zeroinitializer }, align 32
@test_vmalloc_node._entry_ptr = internal global ptr @test_vmalloc_node._entry, section ".printk_index", align 4
@test_vmalloc_node._entry.1228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1229, ptr @.str.1227, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1229 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_overflow: vmalloc_node unexpectedly failed bad wrapping?!\0A\00", [62 x i8] zeroinitializer }, align 32
@test_vmalloc_node._entry_ptr.1230 = internal global ptr @test_vmalloc_node._entry.1228, section ".printk_index", align 4
@test_vmalloc_node._entry.1231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1232, ptr @.str.1227, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1232 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_overflow: vmalloc_node missed saturation!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_vmalloc_node._entry_ptr.1233 = internal global ptr @test_vmalloc_node._entry.1231, section ".printk_index", align 4
@test_vmalloc_node._entry.1234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1235, ptr @.str.1227, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1235 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016test_overflow: vmalloc_node detected saturation\0A\00", [45 x i8] zeroinitializer }, align 32
@test_vmalloc_node._entry_ptr.1236 = internal global ptr @test_vmalloc_node._entry.1234, section ".printk_index", align 4
@test_vzalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1237, ptr @.str.1238, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1237 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_overflow: vzalloc failed regular allocation?!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1238 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_vzalloc\00", [19 x i8] zeroinitializer }, align 32
@test_vzalloc._entry_ptr = internal global ptr @test_vzalloc._entry, section ".printk_index", align 4
@test_vzalloc._entry.1239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1240, ptr @.str.1238, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1240 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014test_overflow: vzalloc unexpectedly failed bad wrapping?!\0A\00", [35 x i8] zeroinitializer }, align 32
@test_vzalloc._entry_ptr.1241 = internal global ptr @test_vzalloc._entry.1239, section ".printk_index", align 4
@test_vzalloc._entry.1242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1243, ptr @.str.1238, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1243 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014test_overflow: vzalloc missed saturation!\0A\00", [51 x i8] zeroinitializer }, align 32
@test_vzalloc._entry_ptr.1244 = internal global ptr @test_vzalloc._entry.1242, section ".printk_index", align 4
@test_vzalloc._entry.1245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1246, ptr @.str.1238, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1246 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_overflow: vzalloc detected saturation\0A\00", [50 x i8] zeroinitializer }, align 32
@test_vzalloc._entry_ptr.1247 = internal global ptr @test_vzalloc._entry.1245, section ".printk_index", align 4
@test_vzalloc_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1248, ptr @.str.1249, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1248 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: vzalloc_node failed regular allocation?!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1249 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_vzalloc_node\00", [46 x i8] zeroinitializer }, align 32
@test_vzalloc_node._entry_ptr = internal global ptr @test_vzalloc_node._entry, section ".printk_index", align 4
@test_vzalloc_node._entry.1250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1251, ptr @.str.1249, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1251 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_overflow: vzalloc_node unexpectedly failed bad wrapping?!\0A\00", [62 x i8] zeroinitializer }, align 32
@test_vzalloc_node._entry_ptr.1252 = internal global ptr @test_vzalloc_node._entry.1250, section ".printk_index", align 4
@test_vzalloc_node._entry.1253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1254, ptr @.str.1249, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1254 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_overflow: vzalloc_node missed saturation!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_vzalloc_node._entry_ptr.1255 = internal global ptr @test_vzalloc_node._entry.1253, section ".printk_index", align 4
@test_vzalloc_node._entry.1256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1257, ptr @.str.1249, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1257 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016test_overflow: vzalloc_node detected saturation\0A\00", [45 x i8] zeroinitializer }, align 32
@test_vzalloc_node._entry_ptr.1258 = internal global ptr @test_vzalloc_node._entry.1256, section ".printk_index", align 4
@test_devm_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1259, ptr @.str.1260, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1259 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: devm_kmalloc failed regular allocation?!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1260 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_devm_kmalloc\00", [46 x i8] zeroinitializer }, align 32
@test_devm_kmalloc._entry_ptr = internal global ptr @test_devm_kmalloc._entry, section ".printk_index", align 4
@test_devm_kmalloc._entry.1261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1262, ptr @.str.1260, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1262 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_overflow: devm_kmalloc unexpectedly failed bad wrapping?!\0A\00", [62 x i8] zeroinitializer }, align 32
@test_devm_kmalloc._entry_ptr.1263 = internal global ptr @test_devm_kmalloc._entry.1261, section ".printk_index", align 4
@test_devm_kmalloc._entry.1264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1265, ptr @.str.1260, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1265 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_overflow: devm_kmalloc missed saturation!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_devm_kmalloc._entry_ptr.1266 = internal global ptr @test_devm_kmalloc._entry.1264, section ".printk_index", align 4
@test_devm_kmalloc._entry.1267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1268, ptr @.str.1260, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1268 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016test_overflow: devm_kmalloc detected saturation\0A\00", [45 x i8] zeroinitializer }, align 32
@test_devm_kmalloc._entry_ptr.1269 = internal global ptr @test_devm_kmalloc._entry.1267, section ".printk_index", align 4
@test_devm_kzalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1270, ptr @.str.1271, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1270 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014test_overflow: devm_kzalloc failed regular allocation?!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1271 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_devm_kzalloc\00", [46 x i8] zeroinitializer }, align 32
@test_devm_kzalloc._entry_ptr = internal global ptr @test_devm_kzalloc._entry, section ".printk_index", align 4
@test_devm_kzalloc._entry.1272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1273, ptr @.str.1271, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1273 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_overflow: devm_kzalloc unexpectedly failed bad wrapping?!\0A\00", [62 x i8] zeroinitializer }, align 32
@test_devm_kzalloc._entry_ptr.1274 = internal global ptr @test_devm_kzalloc._entry.1272, section ".printk_index", align 4
@test_devm_kzalloc._entry.1275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1276, ptr @.str.1271, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1276 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_overflow: devm_kzalloc missed saturation!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_devm_kzalloc._entry_ptr.1277 = internal global ptr @test_devm_kzalloc._entry.1275, section ".printk_index", align 4
@test_devm_kzalloc._entry.1278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1279, ptr @.str.1271, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1279 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016test_overflow: devm_kzalloc detected saturation\0A\00", [45 x i8] zeroinitializer }, align 32
@test_devm_kzalloc._entry_ptr.1280 = internal global ptr @test_devm_kzalloc._entry.1278, section ".printk_index", align 4
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 600, i32 3 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 603, i32 3 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 262, i32 1 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 263, i32 1 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 264, i32 1 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 265, i32 1 }
@___asan_gen_.1553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 266, i32 1 }
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 267, i32 1 }
@___asan_gen_.1631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 323, i32 9 }
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 324, i32 9 }
@___asan_gen_.1667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 325, i32 9 }
@___asan_gen_.1685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 326, i32 9 }
@___asan_gen_.1697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 327, i32 9 }
@___asan_gen_.1715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 328, i32 9 }
@___asan_gen_.1733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 329, i32 9 }
@___asan_gen_.1754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 330, i32 9 }
@___asan_gen_.1772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 331, i32 9 }
@___asan_gen_.1790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 332, i32 9 }
@___asan_gen_.1808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 333, i32 9 }
@___asan_gen_.1820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 334, i32 9 }
@___asan_gen_.1832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 335, i32 9 }
@___asan_gen_.1844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 336, i32 9 }
@___asan_gen_.1862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 337, i32 9 }
@___asan_gen_.1880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 338, i32 9 }
@___asan_gen_.1898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 339, i32 9 }
@___asan_gen_.1916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 340, i32 9 }
@___asan_gen_.1928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 341, i32 9 }
@___asan_gen_.1940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 342, i32 9 }
@___asan_gen_.1952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 343, i32 9 }
@___asan_gen_.1964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 344, i32 9 }
@___asan_gen_.1982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 345, i32 9 }
@___asan_gen_.2000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 346, i32 9 }
@___asan_gen_.2018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 347, i32 9 }
@___asan_gen_.2039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 348, i32 9 }
@___asan_gen_.2051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 352, i32 9 }
@___asan_gen_.2063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 353, i32 9 }
@___asan_gen_.2075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 354, i32 9 }
@___asan_gen_.2087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 355, i32 9 }
@___asan_gen_.2099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 356, i32 9 }
@___asan_gen_.2114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 359, i32 9 }
@___asan_gen_.2129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 360, i32 9 }
@___asan_gen_.2141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 361, i32 9 }
@___asan_gen_.2153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 362, i32 9 }
@___asan_gen_.2171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 363, i32 9 }
@___asan_gen_.2186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 366, i32 9 }
@___asan_gen_.2198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 367, i32 9 }
@___asan_gen_.2210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 368, i32 9 }
@___asan_gen_.2222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 369, i32 9 }
@___asan_gen_.2237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 370, i32 9 }
@___asan_gen_.2249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 373, i32 9 }
@___asan_gen_.2261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 374, i32 9 }
@___asan_gen_.2273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 375, i32 9 }
@___asan_gen_.2285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 376, i32 9 }
@___asan_gen_.2297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 377, i32 9 }
@___asan_gen_.2312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 381, i32 9 }
@___asan_gen_.2327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 383, i32 9 }
@___asan_gen_.2342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 385, i32 9 }
@___asan_gen_.2354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 386, i32 9 }
@___asan_gen_.2369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 388, i32 9 }
@___asan_gen_.2384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 392, i32 9 }
@___asan_gen_.2399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 394, i32 9 }
@___asan_gen_.2414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 396, i32 9 }
@___asan_gen_.2426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 397, i32 9 }
@___asan_gen_.2441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 399, i32 9 }
@___asan_gen_.2456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 403, i32 9 }
@___asan_gen_.2468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 405, i32 9 }
@___asan_gen_.2480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 407, i32 9 }
@___asan_gen_.2492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 408, i32 9 }
@___asan_gen_.2504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 410, i32 9 }
@___asan_gen_.2519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 413, i32 9 }
@___asan_gen_.2531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 414, i32 9 }
@___asan_gen_.2546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 415, i32 9 }
@___asan_gen_.2558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 416, i32 9 }
@___asan_gen_.2573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 417, i32 9 }
@___asan_gen_.2585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 418, i32 9 }
@___asan_gen_.2600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 419, i32 9 }
@___asan_gen_.2612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 420, i32 9 }
@___asan_gen_.2627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 421, i32 9 }
@___asan_gen_.2642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 424, i32 9 }
@___asan_gen_.2654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 425, i32 9 }
@___asan_gen_.2669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 426, i32 9 }
@___asan_gen_.2681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 427, i32 9 }
@___asan_gen_.2696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 428, i32 9 }
@___asan_gen_.2708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 429, i32 9 }
@___asan_gen_.2723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 430, i32 9 }
@___asan_gen_.2735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 431, i32 9 }
@___asan_gen_.2750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 432, i32 9 }
@___asan_gen_.2762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 433, i32 9 }
@___asan_gen_.2774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 436, i32 9 }
@___asan_gen_.2786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 437, i32 9 }
@___asan_gen_.2798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 438, i32 9 }
@___asan_gen_.2810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 439, i32 9 }
@___asan_gen_.2825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 440, i32 9 }
@___asan_gen_.2837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 441, i32 9 }
@___asan_gen_.2852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 442, i32 9 }
@___asan_gen_.2864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 443, i32 9 }
@___asan_gen_.2879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 444, i32 9 }
@___asan_gen_.2891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 445, i32 9 }
@___asan_gen_.2903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 448, i32 9 }
@___asan_gen_.2918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 449, i32 9 }
@___asan_gen_.2930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 450, i32 9 }
@___asan_gen_.2942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 451, i32 9 }
@___asan_gen_.2954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 452, i32 9 }
@___asan_gen_.2969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 453, i32 9 }
@___asan_gen_.2981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 454, i32 9 }
@___asan_gen_.2993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 455, i32 9 }
@___asan_gen_.3005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 456, i32 9 }
@___asan_gen_.3020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 457, i32 9 }
@___asan_gen_.3032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 458, i32 9 }
@___asan_gen_.3044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 459, i32 9 }
@___asan_gen_.3056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 460, i32 9 }
@___asan_gen_.3068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 461, i32 9 }
@___asan_gen_.3080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 462, i32 9 }
@___asan_gen_.3095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 463, i32 9 }
@___asan_gen_.3107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 464, i32 9 }
@___asan_gen_.3119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 465, i32 9 }
@___asan_gen_.3131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 476, i32 9 }
@___asan_gen_.3143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 477, i32 9 }
@___asan_gen_.3155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 478, i32 9 }
@___asan_gen_.3167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 479, i32 9 }
@___asan_gen_.3179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 480, i32 9 }
@___asan_gen_.3188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 567, i32 3 }
@___asan_gen_.3215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 543, i32 1 }
@___asan_gen_.3242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 544, i32 1 }
@___asan_gen_.3269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 545, i32 1 }
@___asan_gen_.3296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 546, i32 1 }
@___asan_gen_.3323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 551, i32 1 }
@___asan_gen_.3350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 552, i32 1 }
@___asan_gen_.3377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 553, i32 1 }
@___asan_gen_.3404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 554, i32 1 }
@___asan_gen_.3431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 547, i32 1 }
@___asan_gen_.3458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 548, i32 1 }
@___asan_gen_.3485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 549, i32 1 }
@___asan_gen_.3512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 550, i32 1 }
@___asan_gen_.3539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 555, i32 1 }
@___asan_gen_.3561 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.3564 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3565 = private constant [23 x i8] c"../lib/test_overflow.c\00", align 1
@___asan_gen_.3566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3565, i32 556, i32 1 }
@llvm.compiler.used = appending global [1344 x ptr] [ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_test_module_exit, ptr @__initcall__kmod_test_overflow__228_612_test_module_init6, ptr @do_test_s16._entry, ptr @do_test_s16._entry.81, ptr @do_test_s16._entry.83, ptr @do_test_s16._entry.85, ptr @do_test_s16._entry.87, ptr @do_test_s16._entry.89, ptr @do_test_s16._entry.91, ptr @do_test_s16._entry.93, ptr @do_test_s16._entry.95, ptr @do_test_s16._entry.97, ptr @do_test_s16._entry_ptr, ptr @do_test_s16._entry_ptr.82, ptr @do_test_s16._entry_ptr.84, ptr @do_test_s16._entry_ptr.86, ptr @do_test_s16._entry_ptr.88, ptr @do_test_s16._entry_ptr.90, ptr @do_test_s16._entry_ptr.92, ptr @do_test_s16._entry_ptr.94, ptr @do_test_s16._entry_ptr.96, ptr @do_test_s16._entry_ptr.98, ptr @do_test_s32._entry, ptr @do_test_s32._entry.129, ptr @do_test_s32._entry.131, ptr @do_test_s32._entry.133, ptr @do_test_s32._entry.135, ptr @do_test_s32._entry.137, ptr @do_test_s32._entry.139, ptr @do_test_s32._entry.141, ptr @do_test_s32._entry.143, ptr @do_test_s32._entry.145, ptr @do_test_s32._entry_ptr, ptr @do_test_s32._entry_ptr.130, ptr @do_test_s32._entry_ptr.132, ptr @do_test_s32._entry_ptr.134, ptr @do_test_s32._entry_ptr.136, ptr @do_test_s32._entry_ptr.138, ptr @do_test_s32._entry_ptr.140, ptr @do_test_s32._entry_ptr.142, ptr @do_test_s32._entry_ptr.144, ptr @do_test_s32._entry_ptr.146, ptr @do_test_s8._entry, ptr @do_test_s8._entry.39, ptr @do_test_s8._entry.41, ptr @do_test_s8._entry.43, ptr @do_test_s8._entry.45, ptr @do_test_s8._entry.47, ptr @do_test_s8._entry.49, ptr @do_test_s8._entry.51, ptr @do_test_s8._entry.53, ptr @do_test_s8._entry.55, ptr @do_test_s8._entry_ptr, ptr @do_test_s8._entry_ptr.40, ptr @do_test_s8._entry_ptr.42, ptr @do_test_s8._entry_ptr.44, ptr @do_test_s8._entry_ptr.46, ptr @do_test_s8._entry_ptr.48, ptr @do_test_s8._entry_ptr.50, ptr @do_test_s8._entry_ptr.52, ptr @do_test_s8._entry_ptr.54, ptr @do_test_s8._entry_ptr.56, ptr @do_test_u16._entry, ptr @do_test_u16._entry.60, ptr @do_test_u16._entry.62, ptr @do_test_u16._entry.64, ptr @do_test_u16._entry.66, ptr @do_test_u16._entry.68, ptr @do_test_u16._entry.70, ptr @do_test_u16._entry.72, ptr @do_test_u16._entry.74, ptr @do_test_u16._entry.76, ptr @do_test_u16._entry_ptr, ptr @do_test_u16._entry_ptr.61, ptr @do_test_u16._entry_ptr.63, ptr @do_test_u16._entry_ptr.65, ptr @do_test_u16._entry_ptr.67, ptr @do_test_u16._entry_ptr.69, ptr @do_test_u16._entry_ptr.71, ptr @do_test_u16._entry_ptr.73, ptr @do_test_u16._entry_ptr.75, ptr @do_test_u16._entry_ptr.77, ptr @do_test_u32._entry, ptr @do_test_u32._entry.103, ptr @do_test_u32._entry.106, ptr @do_test_u32._entry.108, ptr @do_test_u32._entry.110, ptr @do_test_u32._entry.113, ptr @do_test_u32._entry.116, ptr @do_test_u32._entry.119, ptr @do_test_u32._entry.122, ptr @do_test_u32._entry.124, ptr @do_test_u32._entry_ptr, ptr @do_test_u32._entry_ptr.105, ptr @do_test_u32._entry_ptr.107, ptr @do_test_u32._entry_ptr.109, ptr @do_test_u32._entry_ptr.112, ptr @do_test_u32._entry_ptr.115, ptr @do_test_u32._entry_ptr.118, ptr @do_test_u32._entry_ptr.121, ptr @do_test_u32._entry_ptr.123, ptr @do_test_u32._entry_ptr.125, ptr @do_test_u8._entry, ptr @do_test_u8._entry.13, ptr @do_test_u8._entry.16, ptr @do_test_u8._entry.18, ptr @do_test_u8._entry.20, ptr @do_test_u8._entry.23, ptr @do_test_u8._entry.26, ptr @do_test_u8._entry.29, ptr @do_test_u8._entry.32, ptr @do_test_u8._entry.34, ptr @do_test_u8._entry_ptr, ptr @do_test_u8._entry_ptr.15, ptr @do_test_u8._entry_ptr.17, ptr @do_test_u8._entry_ptr.19, ptr @do_test_u8._entry_ptr.22, ptr @do_test_u8._entry_ptr.25, ptr @do_test_u8._entry_ptr.28, ptr @do_test_u8._entry_ptr.31, ptr @do_test_u8._entry_ptr.33, ptr @do_test_u8._entry_ptr.35, ptr @test_devm_kmalloc._entry, ptr @test_devm_kmalloc._entry.1261, ptr @test_devm_kmalloc._entry.1264, ptr @test_devm_kmalloc._entry.1267, ptr @test_devm_kmalloc._entry_ptr, ptr @test_devm_kmalloc._entry_ptr.1263, ptr @test_devm_kmalloc._entry_ptr.1266, ptr @test_devm_kmalloc._entry_ptr.1269, ptr @test_devm_kzalloc._entry, ptr @test_devm_kzalloc._entry.1272, ptr @test_devm_kzalloc._entry.1275, ptr @test_devm_kzalloc._entry.1278, ptr @test_devm_kzalloc._entry_ptr, ptr @test_devm_kzalloc._entry_ptr.1274, ptr @test_devm_kzalloc._entry_ptr.1277, ptr @test_devm_kzalloc._entry_ptr.1280, ptr @test_kmalloc._entry, ptr @test_kmalloc._entry.1129, ptr @test_kmalloc._entry.1132, ptr @test_kmalloc._entry.1135, ptr @test_kmalloc._entry_ptr, ptr @test_kmalloc._entry_ptr.1131, ptr @test_kmalloc._entry_ptr.1134, ptr @test_kmalloc._entry_ptr.1137, ptr @test_kmalloc_node._entry, ptr @test_kmalloc_node._entry.1140, ptr @test_kmalloc_node._entry.1143, ptr @test_kmalloc_node._entry.1146, ptr @test_kmalloc_node._entry_ptr, ptr @test_kmalloc_node._entry_ptr.1142, ptr @test_kmalloc_node._entry_ptr.1145, ptr @test_kmalloc_node._entry_ptr.1148, ptr @test_kvmalloc._entry, ptr @test_kvmalloc._entry.1173, ptr @test_kvmalloc._entry.1176, ptr @test_kvmalloc._entry.1179, ptr @test_kvmalloc._entry_ptr, ptr @test_kvmalloc._entry_ptr.1175, ptr @test_kvmalloc._entry_ptr.1178, ptr @test_kvmalloc._entry_ptr.1181, ptr @test_kvmalloc_node._entry, ptr @test_kvmalloc_node._entry.1184, ptr @test_kvmalloc_node._entry.1187, ptr @test_kvmalloc_node._entry.1190, ptr @test_kvmalloc_node._entry_ptr, ptr @test_kvmalloc_node._entry_ptr.1186, ptr @test_kvmalloc_node._entry_ptr.1189, ptr @test_kvmalloc_node._entry_ptr.1192, ptr @test_kvzalloc._entry, ptr @test_kvzalloc._entry.1195, ptr @test_kvzalloc._entry.1198, ptr @test_kvzalloc._entry.1201, ptr @test_kvzalloc._entry_ptr, ptr @test_kvzalloc._entry_ptr.1197, ptr @test_kvzalloc._entry_ptr.1200, ptr @test_kvzalloc._entry_ptr.1203, ptr @test_kvzalloc_node._entry, ptr @test_kvzalloc_node._entry.1206, ptr @test_kvzalloc_node._entry.1209, ptr @test_kvzalloc_node._entry.1212, ptr @test_kvzalloc_node._entry_ptr, ptr @test_kvzalloc_node._entry_ptr.1208, ptr @test_kvzalloc_node._entry_ptr.1211, ptr @test_kvzalloc_node._entry_ptr.1214, ptr @test_kzalloc._entry, ptr @test_kzalloc._entry.1151, ptr @test_kzalloc._entry.1154, ptr @test_kzalloc._entry.1157, ptr @test_kzalloc._entry_ptr, ptr @test_kzalloc._entry_ptr.1153, ptr @test_kzalloc._entry_ptr.1156, ptr @test_kzalloc._entry_ptr.1159, ptr @test_kzalloc_node._entry, ptr @test_kzalloc_node._entry.1162, ptr @test_kzalloc_node._entry.1165, ptr @test_kzalloc_node._entry.1168, ptr @test_kzalloc_node._entry_ptr, ptr @test_kzalloc_node._entry_ptr.1164, ptr @test_kzalloc_node._entry_ptr.1167, ptr @test_kzalloc_node._entry_ptr.1170, ptr @test_module_exit, ptr @test_module_init._entry, ptr @test_module_init._entry.3, ptr @test_module_init._entry_ptr, ptr @test_module_init._entry_ptr.5, ptr @test_overflow_allocation._entry, ptr @test_overflow_allocation._entry_ptr, ptr @test_overflow_shift._entry, ptr @test_overflow_shift._entry.1001, ptr @test_overflow_shift._entry.1003, ptr @test_overflow_shift._entry.1005, ptr @test_overflow_shift._entry.1007, ptr @test_overflow_shift._entry.1009, ptr @test_overflow_shift._entry.1011, ptr @test_overflow_shift._entry.1014, ptr @test_overflow_shift._entry.1016, ptr @test_overflow_shift._entry.1018, ptr @test_overflow_shift._entry.1020, ptr @test_overflow_shift._entry.1022, ptr @test_overflow_shift._entry.1024, ptr @test_overflow_shift._entry.1026, ptr @test_overflow_shift._entry.1028, ptr @test_overflow_shift._entry.1030, ptr @test_overflow_shift._entry.1032, ptr @test_overflow_shift._entry.1034, ptr @test_overflow_shift._entry.1036, ptr @test_overflow_shift._entry.1038, ptr @test_overflow_shift._entry.1040, ptr @test_overflow_shift._entry.1042, ptr @test_overflow_shift._entry.1044, ptr @test_overflow_shift._entry.1046, ptr @test_overflow_shift._entry.1048, ptr @test_overflow_shift._entry.1050, ptr @test_overflow_shift._entry.1052, ptr @test_overflow_shift._entry.1054, ptr @test_overflow_shift._entry.1056, ptr @test_overflow_shift._entry.1058, ptr @test_overflow_shift._entry.1060, ptr @test_overflow_shift._entry.1063, ptr @test_overflow_shift._entry.1065, ptr @test_overflow_shift._entry.1067, ptr @test_overflow_shift._entry.1069, ptr @test_overflow_shift._entry.1071, ptr @test_overflow_shift._entry.1073, ptr @test_overflow_shift._entry.1075, ptr @test_overflow_shift._entry.1077, ptr @test_overflow_shift._entry.1079, ptr @test_overflow_shift._entry.1081, ptr @test_overflow_shift._entry.1083, ptr @test_overflow_shift._entry.1085, ptr @test_overflow_shift._entry.1087, ptr @test_overflow_shift._entry.1089, ptr @test_overflow_shift._entry.1091, ptr @test_overflow_shift._entry.1093, ptr @test_overflow_shift._entry.1095, ptr @test_overflow_shift._entry.1097, ptr @test_overflow_shift._entry.1099, ptr @test_overflow_shift._entry.1101, ptr @test_overflow_shift._entry.1103, ptr @test_overflow_shift._entry.1105, ptr @test_overflow_shift._entry.1107, ptr @test_overflow_shift._entry.1109, ptr @test_overflow_shift._entry.1111, ptr @test_overflow_shift._entry.1113, ptr @test_overflow_shift._entry.1115, ptr @test_overflow_shift._entry.1117, ptr @test_overflow_shift._entry.1119, ptr @test_overflow_shift._entry.1121, ptr @test_overflow_shift._entry.1123, ptr @test_overflow_shift._entry.151, ptr @test_overflow_shift._entry.155, ptr @test_overflow_shift._entry.158, ptr @test_overflow_shift._entry.161, ptr @test_overflow_shift._entry.164, ptr @test_overflow_shift._entry.167, ptr @test_overflow_shift._entry.169, ptr @test_overflow_shift._entry.171, ptr @test_overflow_shift._entry.174, ptr @test_overflow_shift._entry.177, ptr @test_overflow_shift._entry.179, ptr @test_overflow_shift._entry.181, ptr @test_overflow_shift._entry.184, ptr @test_overflow_shift._entry.187, ptr @test_overflow_shift._entry.189, ptr @test_overflow_shift._entry.191, ptr @test_overflow_shift._entry.193, ptr @test_overflow_shift._entry.195, ptr @test_overflow_shift._entry.197, ptr @test_overflow_shift._entry.199, ptr @test_overflow_shift._entry.202, ptr @test_overflow_shift._entry.205, ptr @test_overflow_shift._entry.207, ptr @test_overflow_shift._entry.209, ptr @test_overflow_shift._entry.212, ptr @test_overflow_shift._entry.215, ptr @test_overflow_shift._entry.217, ptr @test_overflow_shift._entry.219, ptr @test_overflow_shift._entry.223, ptr @test_overflow_shift._entry.226, ptr @test_overflow_shift._entry.228, ptr @test_overflow_shift._entry.230, ptr @test_overflow_shift._entry.233, ptr @test_overflow_shift._entry.235, ptr @test_overflow_shift._entry.238, ptr @test_overflow_shift._entry.240, ptr @test_overflow_shift._entry.243, ptr @test_overflow_shift._entry.246, ptr @test_overflow_shift._entry.248, ptr @test_overflow_shift._entry.250, ptr @test_overflow_shift._entry.253, ptr @test_overflow_shift._entry.256, ptr @test_overflow_shift._entry.258, ptr @test_overflow_shift._entry.260, ptr @test_overflow_shift._entry.262, ptr @test_overflow_shift._entry.264, ptr @test_overflow_shift._entry.266, ptr @test_overflow_shift._entry.268, ptr @test_overflow_shift._entry.270, ptr @test_overflow_shift._entry.272, ptr @test_overflow_shift._entry.274, ptr @test_overflow_shift._entry.276, ptr @test_overflow_shift._entry.278, ptr @test_overflow_shift._entry.280, ptr @test_overflow_shift._entry.282, ptr @test_overflow_shift._entry.284, ptr @test_overflow_shift._entry.287, ptr @test_overflow_shift._entry.290, ptr @test_overflow_shift._entry.292, ptr @test_overflow_shift._entry.294, ptr @test_overflow_shift._entry.297, ptr @test_overflow_shift._entry.300, ptr @test_overflow_shift._entry.302, ptr @test_overflow_shift._entry.304, ptr @test_overflow_shift._entry.307, ptr @test_overflow_shift._entry.310, ptr @test_overflow_shift._entry.312, ptr @test_overflow_shift._entry.314, ptr @test_overflow_shift._entry.317, ptr @test_overflow_shift._entry.320, ptr @test_overflow_shift._entry.322, ptr @test_overflow_shift._entry.324, ptr @test_overflow_shift._entry.326, ptr @test_overflow_shift._entry.328, ptr @test_overflow_shift._entry.330, ptr @test_overflow_shift._entry.332, ptr @test_overflow_shift._entry.334, ptr @test_overflow_shift._entry.336, ptr @test_overflow_shift._entry.338, ptr @test_overflow_shift._entry.340, ptr @test_overflow_shift._entry.342, ptr @test_overflow_shift._entry.344, ptr @test_overflow_shift._entry.346, ptr @test_overflow_shift._entry.348, ptr @test_overflow_shift._entry.350, ptr @test_overflow_shift._entry.352, ptr @test_overflow_shift._entry.354, ptr @test_overflow_shift._entry.356, ptr @test_overflow_shift._entry.359, ptr @test_overflow_shift._entry.362, ptr @test_overflow_shift._entry.364, ptr @test_overflow_shift._entry.366, ptr @test_overflow_shift._entry.369, ptr @test_overflow_shift._entry.372, ptr @test_overflow_shift._entry.374, ptr @test_overflow_shift._entry.376, ptr @test_overflow_shift._entry.379, ptr @test_overflow_shift._entry.382, ptr @test_overflow_shift._entry.384, ptr @test_overflow_shift._entry.386, ptr @test_overflow_shift._entry.390, ptr @test_overflow_shift._entry.393, ptr @test_overflow_shift._entry.395, ptr @test_overflow_shift._entry.397, ptr @test_overflow_shift._entry.399, ptr @test_overflow_shift._entry.401, ptr @test_overflow_shift._entry.403, ptr @test_overflow_shift._entry.405, ptr @test_overflow_shift._entry.407, ptr @test_overflow_shift._entry.409, ptr @test_overflow_shift._entry.411, ptr @test_overflow_shift._entry.413, ptr @test_overflow_shift._entry.415, ptr @test_overflow_shift._entry.417, ptr @test_overflow_shift._entry.419, ptr @test_overflow_shift._entry.421, ptr @test_overflow_shift._entry.423, ptr @test_overflow_shift._entry.425, ptr @test_overflow_shift._entry.427, ptr @test_overflow_shift._entry.429, ptr @test_overflow_shift._entry.431, ptr @test_overflow_shift._entry.433, ptr @test_overflow_shift._entry.435, ptr @test_overflow_shift._entry.437, ptr @test_overflow_shift._entry.440, ptr @test_overflow_shift._entry.442, ptr @test_overflow_shift._entry.444, ptr @test_overflow_shift._entry.446, ptr @test_overflow_shift._entry.449, ptr @test_overflow_shift._entry.451, ptr @test_overflow_shift._entry.453, ptr @test_overflow_shift._entry.455, ptr @test_overflow_shift._entry.457, ptr @test_overflow_shift._entry.459, ptr @test_overflow_shift._entry.461, ptr @test_overflow_shift._entry.463, ptr @test_overflow_shift._entry.465, ptr @test_overflow_shift._entry.467, ptr @test_overflow_shift._entry.469, ptr @test_overflow_shift._entry.471, ptr @test_overflow_shift._entry.475, ptr @test_overflow_shift._entry.477, ptr @test_overflow_shift._entry.479, ptr @test_overflow_shift._entry.481, ptr @test_overflow_shift._entry.483, ptr @test_overflow_shift._entry.485, ptr @test_overflow_shift._entry.487, ptr @test_overflow_shift._entry.490, ptr @test_overflow_shift._entry.492, ptr @test_overflow_shift._entry.494, ptr @test_overflow_shift._entry.496, ptr @test_overflow_shift._entry.498, ptr @test_overflow_shift._entry.500, ptr @test_overflow_shift._entry.502, ptr @test_overflow_shift._entry.504, ptr @test_overflow_shift._entry.506, ptr @test_overflow_shift._entry.508, ptr @test_overflow_shift._entry.510, ptr @test_overflow_shift._entry.512, ptr @test_overflow_shift._entry.514, ptr @test_overflow_shift._entry.517, ptr @test_overflow_shift._entry.519, ptr @test_overflow_shift._entry.521, ptr @test_overflow_shift._entry.523, ptr @test_overflow_shift._entry.525, ptr @test_overflow_shift._entry.527, ptr @test_overflow_shift._entry.529, ptr @test_overflow_shift._entry.531, ptr @test_overflow_shift._entry.533, ptr @test_overflow_shift._entry.535, ptr @test_overflow_shift._entry.537, ptr @test_overflow_shift._entry.539, ptr @test_overflow_shift._entry.541, ptr @test_overflow_shift._entry.543, ptr @test_overflow_shift._entry.545, ptr @test_overflow_shift._entry.547, ptr @test_overflow_shift._entry.549, ptr @test_overflow_shift._entry.551, ptr @test_overflow_shift._entry.553, ptr @test_overflow_shift._entry.555, ptr @test_overflow_shift._entry.557, ptr @test_overflow_shift._entry.559, ptr @test_overflow_shift._entry.561, ptr @test_overflow_shift._entry.563, ptr @test_overflow_shift._entry.566, ptr @test_overflow_shift._entry.568, ptr @test_overflow_shift._entry.570, ptr @test_overflow_shift._entry.572, ptr @test_overflow_shift._entry.575, ptr @test_overflow_shift._entry.577, ptr @test_overflow_shift._entry.579, ptr @test_overflow_shift._entry.581, ptr @test_overflow_shift._entry.584, ptr @test_overflow_shift._entry.586, ptr @test_overflow_shift._entry.588, ptr @test_overflow_shift._entry.590, ptr @test_overflow_shift._entry.592, ptr @test_overflow_shift._entry.594, ptr @test_overflow_shift._entry.596, ptr @test_overflow_shift._entry.598, ptr @test_overflow_shift._entry.601, ptr @test_overflow_shift._entry.603, ptr @test_overflow_shift._entry.605, ptr @test_overflow_shift._entry.607, ptr @test_overflow_shift._entry.610, ptr @test_overflow_shift._entry.612, ptr @test_overflow_shift._entry.614, ptr @test_overflow_shift._entry.616, ptr @test_overflow_shift._entry.619, ptr @test_overflow_shift._entry.621, ptr @test_overflow_shift._entry.623, ptr @test_overflow_shift._entry.625, ptr @test_overflow_shift._entry.628, ptr @test_overflow_shift._entry.630, ptr @test_overflow_shift._entry.632, ptr @test_overflow_shift._entry.634, ptr @test_overflow_shift._entry.636, ptr @test_overflow_shift._entry.638, ptr @test_overflow_shift._entry.640, ptr @test_overflow_shift._entry.642, ptr @test_overflow_shift._entry.645, ptr @test_overflow_shift._entry.647, ptr @test_overflow_shift._entry.649, ptr @test_overflow_shift._entry.651, ptr @test_overflow_shift._entry.654, ptr @test_overflow_shift._entry.656, ptr @test_overflow_shift._entry.658, ptr @test_overflow_shift._entry.660, ptr @test_overflow_shift._entry.662, ptr @test_overflow_shift._entry.664, ptr @test_overflow_shift._entry.666, ptr @test_overflow_shift._entry.668, ptr @test_overflow_shift._entry.670, ptr @test_overflow_shift._entry.672, ptr @test_overflow_shift._entry.674, ptr @test_overflow_shift._entry.676, ptr @test_overflow_shift._entry.678, ptr @test_overflow_shift._entry.680, ptr @test_overflow_shift._entry.682, ptr @test_overflow_shift._entry.684, ptr @test_overflow_shift._entry.686, ptr @test_overflow_shift._entry.688, ptr @test_overflow_shift._entry.690, ptr @test_overflow_shift._entry.692, ptr @test_overflow_shift._entry.695, ptr @test_overflow_shift._entry.697, ptr @test_overflow_shift._entry.699, ptr @test_overflow_shift._entry.701, ptr @test_overflow_shift._entry.703, ptr @test_overflow_shift._entry.705, ptr @test_overflow_shift._entry.707, ptr @test_overflow_shift._entry.709, ptr @test_overflow_shift._entry.712, ptr @test_overflow_shift._entry.714, ptr @test_overflow_shift._entry.716, ptr @test_overflow_shift._entry.718, ptr @test_overflow_shift._entry.720, ptr @test_overflow_shift._entry.722, ptr @test_overflow_shift._entry.724, ptr @test_overflow_shift._entry.726, ptr @test_overflow_shift._entry.729, ptr @test_overflow_shift._entry.731, ptr @test_overflow_shift._entry.733, ptr @test_overflow_shift._entry.735, ptr @test_overflow_shift._entry.737, ptr @test_overflow_shift._entry.739, ptr @test_overflow_shift._entry.741, ptr @test_overflow_shift._entry.743, ptr @test_overflow_shift._entry.746, ptr @test_overflow_shift._entry.748, ptr @test_overflow_shift._entry.750, ptr @test_overflow_shift._entry.752, ptr @test_overflow_shift._entry.754, ptr @test_overflow_shift._entry.756, ptr @test_overflow_shift._entry.758, ptr @test_overflow_shift._entry.760, ptr @test_overflow_shift._entry.763, ptr @test_overflow_shift._entry.765, ptr @test_overflow_shift._entry.767, ptr @test_overflow_shift._entry.769, ptr @test_overflow_shift._entry.772, ptr @test_overflow_shift._entry.774, ptr @test_overflow_shift._entry.776, ptr @test_overflow_shift._entry.778, ptr @test_overflow_shift._entry.780, ptr @test_overflow_shift._entry.782, ptr @test_overflow_shift._entry.784, ptr @test_overflow_shift._entry.786, ptr @test_overflow_shift._entry.789, ptr @test_overflow_shift._entry.791, ptr @test_overflow_shift._entry.793, ptr @test_overflow_shift._entry.795, ptr @test_overflow_shift._entry.797, ptr @test_overflow_shift._entry.799, ptr @test_overflow_shift._entry.801, ptr @test_overflow_shift._entry.803, ptr @test_overflow_shift._entry.806, ptr @test_overflow_shift._entry.808, ptr @test_overflow_shift._entry.810, ptr @test_overflow_shift._entry.812, ptr @test_overflow_shift._entry.814, ptr @test_overflow_shift._entry.816, ptr @test_overflow_shift._entry.818, ptr @test_overflow_shift._entry.820, ptr @test_overflow_shift._entry.823, ptr @test_overflow_shift._entry.825, ptr @test_overflow_shift._entry.827, ptr @test_overflow_shift._entry.829, ptr @test_overflow_shift._entry.831, ptr @test_overflow_shift._entry.833, ptr @test_overflow_shift._entry.835, ptr @test_overflow_shift._entry.837, ptr @test_overflow_shift._entry.840, ptr @test_overflow_shift._entry.842, ptr @test_overflow_shift._entry.844, ptr @test_overflow_shift._entry.846, ptr @test_overflow_shift._entry.848, ptr @test_overflow_shift._entry.850, ptr @test_overflow_shift._entry.852, ptr @test_overflow_shift._entry.854, ptr @test_overflow_shift._entry.856, ptr @test_overflow_shift._entry.858, ptr @test_overflow_shift._entry.860, ptr @test_overflow_shift._entry.862, ptr @test_overflow_shift._entry.864, ptr @test_overflow_shift._entry.866, ptr @test_overflow_shift._entry.868, ptr @test_overflow_shift._entry.870, ptr @test_overflow_shift._entry.872, ptr @test_overflow_shift._entry.874, ptr @test_overflow_shift._entry.876, ptr @test_overflow_shift._entry.878, ptr @test_overflow_shift._entry.880, ptr @test_overflow_shift._entry.882, ptr @test_overflow_shift._entry.884, ptr @test_overflow_shift._entry.886, ptr @test_overflow_shift._entry.889, ptr @test_overflow_shift._entry.891, ptr @test_overflow_shift._entry.893, ptr @test_overflow_shift._entry.895, ptr @test_overflow_shift._entry.897, ptr @test_overflow_shift._entry.899, ptr @test_overflow_shift._entry.901, ptr @test_overflow_shift._entry.903, ptr @test_overflow_shift._entry.906, ptr @test_overflow_shift._entry.908, ptr @test_overflow_shift._entry.910, ptr @test_overflow_shift._entry.912, ptr @test_overflow_shift._entry.914, ptr @test_overflow_shift._entry.916, ptr @test_overflow_shift._entry.918, ptr @test_overflow_shift._entry.920, ptr @test_overflow_shift._entry.923, ptr @test_overflow_shift._entry.925, ptr @test_overflow_shift._entry.927, ptr @test_overflow_shift._entry.929, ptr @test_overflow_shift._entry.931, ptr @test_overflow_shift._entry.933, ptr @test_overflow_shift._entry.935, ptr @test_overflow_shift._entry.937, ptr @test_overflow_shift._entry.939, ptr @test_overflow_shift._entry.941, ptr @test_overflow_shift._entry.943, ptr @test_overflow_shift._entry.945, ptr @test_overflow_shift._entry.948, ptr @test_overflow_shift._entry.950, ptr @test_overflow_shift._entry.952, ptr @test_overflow_shift._entry.954, ptr @test_overflow_shift._entry.956, ptr @test_overflow_shift._entry.958, ptr @test_overflow_shift._entry.960, ptr @test_overflow_shift._entry.962, ptr @test_overflow_shift._entry.964, ptr @test_overflow_shift._entry.966, ptr @test_overflow_shift._entry.968, ptr @test_overflow_shift._entry.970, ptr @test_overflow_shift._entry.972, ptr @test_overflow_shift._entry.974, ptr @test_overflow_shift._entry.976, ptr @test_overflow_shift._entry.978, ptr @test_overflow_shift._entry.981, ptr @test_overflow_shift._entry.983, ptr @test_overflow_shift._entry.985, ptr @test_overflow_shift._entry.987, ptr @test_overflow_shift._entry.989, ptr @test_overflow_shift._entry.991, ptr @test_overflow_shift._entry.993, ptr @test_overflow_shift._entry.995, ptr @test_overflow_shift._entry.997, ptr @test_overflow_shift._entry.999, ptr @test_overflow_shift._entry_ptr, ptr @test_overflow_shift._entry_ptr.1000, ptr @test_overflow_shift._entry_ptr.1002, ptr @test_overflow_shift._entry_ptr.1004, ptr @test_overflow_shift._entry_ptr.1006, ptr @test_overflow_shift._entry_ptr.1008, ptr @test_overflow_shift._entry_ptr.1010, ptr @test_overflow_shift._entry_ptr.1012, ptr @test_overflow_shift._entry_ptr.1015, ptr @test_overflow_shift._entry_ptr.1017, ptr @test_overflow_shift._entry_ptr.1019, ptr @test_overflow_shift._entry_ptr.1021, ptr @test_overflow_shift._entry_ptr.1023, ptr @test_overflow_shift._entry_ptr.1025, ptr @test_overflow_shift._entry_ptr.1027, ptr @test_overflow_shift._entry_ptr.1029, ptr @test_overflow_shift._entry_ptr.1031, ptr @test_overflow_shift._entry_ptr.1033, ptr @test_overflow_shift._entry_ptr.1035, ptr @test_overflow_shift._entry_ptr.1037, ptr @test_overflow_shift._entry_ptr.1039, ptr @test_overflow_shift._entry_ptr.1041, ptr @test_overflow_shift._entry_ptr.1043, ptr @test_overflow_shift._entry_ptr.1045, ptr @test_overflow_shift._entry_ptr.1047, ptr @test_overflow_shift._entry_ptr.1049, ptr @test_overflow_shift._entry_ptr.1051, ptr @test_overflow_shift._entry_ptr.1053, ptr @test_overflow_shift._entry_ptr.1055, ptr @test_overflow_shift._entry_ptr.1057, ptr @test_overflow_shift._entry_ptr.1059, ptr @test_overflow_shift._entry_ptr.1061, ptr @test_overflow_shift._entry_ptr.1064, ptr @test_overflow_shift._entry_ptr.1066, ptr @test_overflow_shift._entry_ptr.1068, ptr @test_overflow_shift._entry_ptr.1070, ptr @test_overflow_shift._entry_ptr.1072, ptr @test_overflow_shift._entry_ptr.1074, ptr @test_overflow_shift._entry_ptr.1076, ptr @test_overflow_shift._entry_ptr.1078, ptr @test_overflow_shift._entry_ptr.1080, ptr @test_overflow_shift._entry_ptr.1082, ptr @test_overflow_shift._entry_ptr.1084, ptr @test_overflow_shift._entry_ptr.1086, ptr @test_overflow_shift._entry_ptr.1088, ptr @test_overflow_shift._entry_ptr.1090, ptr @test_overflow_shift._entry_ptr.1092, ptr @test_overflow_shift._entry_ptr.1094, ptr @test_overflow_shift._entry_ptr.1096, ptr @test_overflow_shift._entry_ptr.1098, ptr @test_overflow_shift._entry_ptr.1100, ptr @test_overflow_shift._entry_ptr.1102, ptr @test_overflow_shift._entry_ptr.1104, ptr @test_overflow_shift._entry_ptr.1106, ptr @test_overflow_shift._entry_ptr.1108, ptr @test_overflow_shift._entry_ptr.1110, ptr @test_overflow_shift._entry_ptr.1112, ptr @test_overflow_shift._entry_ptr.1114, ptr @test_overflow_shift._entry_ptr.1116, ptr @test_overflow_shift._entry_ptr.1118, ptr @test_overflow_shift._entry_ptr.1120, ptr @test_overflow_shift._entry_ptr.1122, ptr @test_overflow_shift._entry_ptr.1124, ptr @test_overflow_shift._entry_ptr.153, ptr @test_overflow_shift._entry_ptr.157, ptr @test_overflow_shift._entry_ptr.160, ptr @test_overflow_shift._entry_ptr.162, ptr @test_overflow_shift._entry_ptr.165, ptr @test_overflow_shift._entry_ptr.168, ptr @test_overflow_shift._entry_ptr.170, ptr @test_overflow_shift._entry_ptr.172, ptr @test_overflow_shift._entry_ptr.175, ptr @test_overflow_shift._entry_ptr.178, ptr @test_overflow_shift._entry_ptr.180, ptr @test_overflow_shift._entry_ptr.182, ptr @test_overflow_shift._entry_ptr.185, ptr @test_overflow_shift._entry_ptr.188, ptr @test_overflow_shift._entry_ptr.190, ptr @test_overflow_shift._entry_ptr.192, ptr @test_overflow_shift._entry_ptr.194, ptr @test_overflow_shift._entry_ptr.196, ptr @test_overflow_shift._entry_ptr.198, ptr @test_overflow_shift._entry_ptr.200, ptr @test_overflow_shift._entry_ptr.203, ptr @test_overflow_shift._entry_ptr.206, ptr @test_overflow_shift._entry_ptr.208, ptr @test_overflow_shift._entry_ptr.210, ptr @test_overflow_shift._entry_ptr.213, ptr @test_overflow_shift._entry_ptr.216, ptr @test_overflow_shift._entry_ptr.218, ptr @test_overflow_shift._entry_ptr.220, ptr @test_overflow_shift._entry_ptr.224, ptr @test_overflow_shift._entry_ptr.227, ptr @test_overflow_shift._entry_ptr.229, ptr @test_overflow_shift._entry_ptr.231, ptr @test_overflow_shift._entry_ptr.234, ptr @test_overflow_shift._entry_ptr.237, ptr @test_overflow_shift._entry_ptr.239, ptr @test_overflow_shift._entry_ptr.241, ptr @test_overflow_shift._entry_ptr.244, ptr @test_overflow_shift._entry_ptr.247, ptr @test_overflow_shift._entry_ptr.249, ptr @test_overflow_shift._entry_ptr.251, ptr @test_overflow_shift._entry_ptr.254, ptr @test_overflow_shift._entry_ptr.257, ptr @test_overflow_shift._entry_ptr.259, ptr @test_overflow_shift._entry_ptr.261, ptr @test_overflow_shift._entry_ptr.263, ptr @test_overflow_shift._entry_ptr.265, ptr @test_overflow_shift._entry_ptr.267, ptr @test_overflow_shift._entry_ptr.269, ptr @test_overflow_shift._entry_ptr.271, ptr @test_overflow_shift._entry_ptr.273, ptr @test_overflow_shift._entry_ptr.275, ptr @test_overflow_shift._entry_ptr.277, ptr @test_overflow_shift._entry_ptr.279, ptr @test_overflow_shift._entry_ptr.281, ptr @test_overflow_shift._entry_ptr.283, ptr @test_overflow_shift._entry_ptr.285, ptr @test_overflow_shift._entry_ptr.288, ptr @test_overflow_shift._entry_ptr.291, ptr @test_overflow_shift._entry_ptr.293, ptr @test_overflow_shift._entry_ptr.295, ptr @test_overflow_shift._entry_ptr.298, ptr @test_overflow_shift._entry_ptr.301, ptr @test_overflow_shift._entry_ptr.303, ptr @test_overflow_shift._entry_ptr.305, ptr @test_overflow_shift._entry_ptr.308, ptr @test_overflow_shift._entry_ptr.311, ptr @test_overflow_shift._entry_ptr.313, ptr @test_overflow_shift._entry_ptr.315, ptr @test_overflow_shift._entry_ptr.318, ptr @test_overflow_shift._entry_ptr.321, ptr @test_overflow_shift._entry_ptr.323, ptr @test_overflow_shift._entry_ptr.325, ptr @test_overflow_shift._entry_ptr.327, ptr @test_overflow_shift._entry_ptr.329, ptr @test_overflow_shift._entry_ptr.331, ptr @test_overflow_shift._entry_ptr.333, ptr @test_overflow_shift._entry_ptr.335, ptr @test_overflow_shift._entry_ptr.337, ptr @test_overflow_shift._entry_ptr.339, ptr @test_overflow_shift._entry_ptr.341, ptr @test_overflow_shift._entry_ptr.343, ptr @test_overflow_shift._entry_ptr.345, ptr @test_overflow_shift._entry_ptr.347, ptr @test_overflow_shift._entry_ptr.349, ptr @test_overflow_shift._entry_ptr.351, ptr @test_overflow_shift._entry_ptr.353, ptr @test_overflow_shift._entry_ptr.355, ptr @test_overflow_shift._entry_ptr.357, ptr @test_overflow_shift._entry_ptr.360, ptr @test_overflow_shift._entry_ptr.363, ptr @test_overflow_shift._entry_ptr.365, ptr @test_overflow_shift._entry_ptr.367, ptr @test_overflow_shift._entry_ptr.370, ptr @test_overflow_shift._entry_ptr.373, ptr @test_overflow_shift._entry_ptr.375, ptr @test_overflow_shift._entry_ptr.377, ptr @test_overflow_shift._entry_ptr.380, ptr @test_overflow_shift._entry_ptr.383, ptr @test_overflow_shift._entry_ptr.385, ptr @test_overflow_shift._entry_ptr.387, ptr @test_overflow_shift._entry_ptr.391, ptr @test_overflow_shift._entry_ptr.394, ptr @test_overflow_shift._entry_ptr.396, ptr @test_overflow_shift._entry_ptr.398, ptr @test_overflow_shift._entry_ptr.400, ptr @test_overflow_shift._entry_ptr.402, ptr @test_overflow_shift._entry_ptr.404, ptr @test_overflow_shift._entry_ptr.406, ptr @test_overflow_shift._entry_ptr.408, ptr @test_overflow_shift._entry_ptr.410, ptr @test_overflow_shift._entry_ptr.412, ptr @test_overflow_shift._entry_ptr.414, ptr @test_overflow_shift._entry_ptr.416, ptr @test_overflow_shift._entry_ptr.418, ptr @test_overflow_shift._entry_ptr.420, ptr @test_overflow_shift._entry_ptr.422, ptr @test_overflow_shift._entry_ptr.424, ptr @test_overflow_shift._entry_ptr.426, ptr @test_overflow_shift._entry_ptr.428, ptr @test_overflow_shift._entry_ptr.430, ptr @test_overflow_shift._entry_ptr.432, ptr @test_overflow_shift._entry_ptr.434, ptr @test_overflow_shift._entry_ptr.436, ptr @test_overflow_shift._entry_ptr.438, ptr @test_overflow_shift._entry_ptr.441, ptr @test_overflow_shift._entry_ptr.443, ptr @test_overflow_shift._entry_ptr.445, ptr @test_overflow_shift._entry_ptr.447, ptr @test_overflow_shift._entry_ptr.450, ptr @test_overflow_shift._entry_ptr.452, ptr @test_overflow_shift._entry_ptr.454, ptr @test_overflow_shift._entry_ptr.456, ptr @test_overflow_shift._entry_ptr.458, ptr @test_overflow_shift._entry_ptr.460, ptr @test_overflow_shift._entry_ptr.462, ptr @test_overflow_shift._entry_ptr.464, ptr @test_overflow_shift._entry_ptr.466, ptr @test_overflow_shift._entry_ptr.468, ptr @test_overflow_shift._entry_ptr.470, ptr @test_overflow_shift._entry_ptr.472, ptr @test_overflow_shift._entry_ptr.476, ptr @test_overflow_shift._entry_ptr.478, ptr @test_overflow_shift._entry_ptr.480, ptr @test_overflow_shift._entry_ptr.482, ptr @test_overflow_shift._entry_ptr.484, ptr @test_overflow_shift._entry_ptr.486, ptr @test_overflow_shift._entry_ptr.488, ptr @test_overflow_shift._entry_ptr.491, ptr @test_overflow_shift._entry_ptr.493, ptr @test_overflow_shift._entry_ptr.495, ptr @test_overflow_shift._entry_ptr.497, ptr @test_overflow_shift._entry_ptr.499, ptr @test_overflow_shift._entry_ptr.501, ptr @test_overflow_shift._entry_ptr.503, ptr @test_overflow_shift._entry_ptr.505, ptr @test_overflow_shift._entry_ptr.507, ptr @test_overflow_shift._entry_ptr.509, ptr @test_overflow_shift._entry_ptr.511, ptr @test_overflow_shift._entry_ptr.513, ptr @test_overflow_shift._entry_ptr.515, ptr @test_overflow_shift._entry_ptr.518, ptr @test_overflow_shift._entry_ptr.520, ptr @test_overflow_shift._entry_ptr.522, ptr @test_overflow_shift._entry_ptr.524, ptr @test_overflow_shift._entry_ptr.526, ptr @test_overflow_shift._entry_ptr.528, ptr @test_overflow_shift._entry_ptr.530, ptr @test_overflow_shift._entry_ptr.532, ptr @test_overflow_shift._entry_ptr.534, ptr @test_overflow_shift._entry_ptr.536, ptr @test_overflow_shift._entry_ptr.538, ptr @test_overflow_shift._entry_ptr.540, ptr @test_overflow_shift._entry_ptr.542, ptr @test_overflow_shift._entry_ptr.544, ptr @test_overflow_shift._entry_ptr.546, ptr @test_overflow_shift._entry_ptr.548, ptr @test_overflow_shift._entry_ptr.550, ptr @test_overflow_shift._entry_ptr.552, ptr @test_overflow_shift._entry_ptr.554, ptr @test_overflow_shift._entry_ptr.556, ptr @test_overflow_shift._entry_ptr.558, ptr @test_overflow_shift._entry_ptr.560, ptr @test_overflow_shift._entry_ptr.562, ptr @test_overflow_shift._entry_ptr.564, ptr @test_overflow_shift._entry_ptr.567, ptr @test_overflow_shift._entry_ptr.569, ptr @test_overflow_shift._entry_ptr.571, ptr @test_overflow_shift._entry_ptr.573, ptr @test_overflow_shift._entry_ptr.576, ptr @test_overflow_shift._entry_ptr.578, ptr @test_overflow_shift._entry_ptr.580, ptr @test_overflow_shift._entry_ptr.582, ptr @test_overflow_shift._entry_ptr.585, ptr @test_overflow_shift._entry_ptr.587, ptr @test_overflow_shift._entry_ptr.589, ptr @test_overflow_shift._entry_ptr.591, ptr @test_overflow_shift._entry_ptr.593, ptr @test_overflow_shift._entry_ptr.595, ptr @test_overflow_shift._entry_ptr.597, ptr @test_overflow_shift._entry_ptr.599, ptr @test_overflow_shift._entry_ptr.602, ptr @test_overflow_shift._entry_ptr.604, ptr @test_overflow_shift._entry_ptr.606, ptr @test_overflow_shift._entry_ptr.608, ptr @test_overflow_shift._entry_ptr.611, ptr @test_overflow_shift._entry_ptr.613, ptr @test_overflow_shift._entry_ptr.615, ptr @test_overflow_shift._entry_ptr.617, ptr @test_overflow_shift._entry_ptr.620, ptr @test_overflow_shift._entry_ptr.622, ptr @test_overflow_shift._entry_ptr.624, ptr @test_overflow_shift._entry_ptr.626, ptr @test_overflow_shift._entry_ptr.629, ptr @test_overflow_shift._entry_ptr.631, ptr @test_overflow_shift._entry_ptr.633, ptr @test_overflow_shift._entry_ptr.635, ptr @test_overflow_shift._entry_ptr.637, ptr @test_overflow_shift._entry_ptr.639, ptr @test_overflow_shift._entry_ptr.641, ptr @test_overflow_shift._entry_ptr.643, ptr @test_overflow_shift._entry_ptr.646, ptr @test_overflow_shift._entry_ptr.648, ptr @test_overflow_shift._entry_ptr.650, ptr @test_overflow_shift._entry_ptr.652, ptr @test_overflow_shift._entry_ptr.655, ptr @test_overflow_shift._entry_ptr.657, ptr @test_overflow_shift._entry_ptr.659, ptr @test_overflow_shift._entry_ptr.661, ptr @test_overflow_shift._entry_ptr.663, ptr @test_overflow_shift._entry_ptr.665, ptr @test_overflow_shift._entry_ptr.667, ptr @test_overflow_shift._entry_ptr.669, ptr @test_overflow_shift._entry_ptr.671, ptr @test_overflow_shift._entry_ptr.673, ptr @test_overflow_shift._entry_ptr.675, ptr @test_overflow_shift._entry_ptr.677, ptr @test_overflow_shift._entry_ptr.679, ptr @test_overflow_shift._entry_ptr.681, ptr @test_overflow_shift._entry_ptr.683, ptr @test_overflow_shift._entry_ptr.685, ptr @test_overflow_shift._entry_ptr.687, ptr @test_overflow_shift._entry_ptr.689, ptr @test_overflow_shift._entry_ptr.691, ptr @test_overflow_shift._entry_ptr.693, ptr @test_overflow_shift._entry_ptr.696, ptr @test_overflow_shift._entry_ptr.698, ptr @test_overflow_shift._entry_ptr.700, ptr @test_overflow_shift._entry_ptr.702, ptr @test_overflow_shift._entry_ptr.704, ptr @test_overflow_shift._entry_ptr.706, ptr @test_overflow_shift._entry_ptr.708, ptr @test_overflow_shift._entry_ptr.710, ptr @test_overflow_shift._entry_ptr.713, ptr @test_overflow_shift._entry_ptr.715, ptr @test_overflow_shift._entry_ptr.717, ptr @test_overflow_shift._entry_ptr.719, ptr @test_overflow_shift._entry_ptr.721, ptr @test_overflow_shift._entry_ptr.723, ptr @test_overflow_shift._entry_ptr.725, ptr @test_overflow_shift._entry_ptr.727, ptr @test_overflow_shift._entry_ptr.730, ptr @test_overflow_shift._entry_ptr.732, ptr @test_overflow_shift._entry_ptr.734, ptr @test_overflow_shift._entry_ptr.736, ptr @test_overflow_shift._entry_ptr.738, ptr @test_overflow_shift._entry_ptr.740, ptr @test_overflow_shift._entry_ptr.742, ptr @test_overflow_shift._entry_ptr.744, ptr @test_overflow_shift._entry_ptr.747, ptr @test_overflow_shift._entry_ptr.749, ptr @test_overflow_shift._entry_ptr.751, ptr @test_overflow_shift._entry_ptr.753, ptr @test_overflow_shift._entry_ptr.755, ptr @test_overflow_shift._entry_ptr.757, ptr @test_overflow_shift._entry_ptr.759, ptr @test_overflow_shift._entry_ptr.761, ptr @test_overflow_shift._entry_ptr.764, ptr @test_overflow_shift._entry_ptr.766, ptr @test_overflow_shift._entry_ptr.768, ptr @test_overflow_shift._entry_ptr.770, ptr @test_overflow_shift._entry_ptr.773, ptr @test_overflow_shift._entry_ptr.775, ptr @test_overflow_shift._entry_ptr.777, ptr @test_overflow_shift._entry_ptr.779, ptr @test_overflow_shift._entry_ptr.781, ptr @test_overflow_shift._entry_ptr.783, ptr @test_overflow_shift._entry_ptr.785, ptr @test_overflow_shift._entry_ptr.787, ptr @test_overflow_shift._entry_ptr.790, ptr @test_overflow_shift._entry_ptr.792, ptr @test_overflow_shift._entry_ptr.794, ptr @test_overflow_shift._entry_ptr.796, ptr @test_overflow_shift._entry_ptr.798, ptr @test_overflow_shift._entry_ptr.800, ptr @test_overflow_shift._entry_ptr.802, ptr @test_overflow_shift._entry_ptr.804, ptr @test_overflow_shift._entry_ptr.807, ptr @test_overflow_shift._entry_ptr.809, ptr @test_overflow_shift._entry_ptr.811, ptr @test_overflow_shift._entry_ptr.813, ptr @test_overflow_shift._entry_ptr.815, ptr @test_overflow_shift._entry_ptr.817, ptr @test_overflow_shift._entry_ptr.819, ptr @test_overflow_shift._entry_ptr.821, ptr @test_overflow_shift._entry_ptr.824, ptr @test_overflow_shift._entry_ptr.826, ptr @test_overflow_shift._entry_ptr.828, ptr @test_overflow_shift._entry_ptr.830, ptr @test_overflow_shift._entry_ptr.832, ptr @test_overflow_shift._entry_ptr.834, ptr @test_overflow_shift._entry_ptr.836, ptr @test_overflow_shift._entry_ptr.838, ptr @test_overflow_shift._entry_ptr.841, ptr @test_overflow_shift._entry_ptr.843, ptr @test_overflow_shift._entry_ptr.845, ptr @test_overflow_shift._entry_ptr.847, ptr @test_overflow_shift._entry_ptr.849, ptr @test_overflow_shift._entry_ptr.851, ptr @test_overflow_shift._entry_ptr.853, ptr @test_overflow_shift._entry_ptr.855, ptr @test_overflow_shift._entry_ptr.857, ptr @test_overflow_shift._entry_ptr.859, ptr @test_overflow_shift._entry_ptr.861, ptr @test_overflow_shift._entry_ptr.863, ptr @test_overflow_shift._entry_ptr.865, ptr @test_overflow_shift._entry_ptr.867, ptr @test_overflow_shift._entry_ptr.869, ptr @test_overflow_shift._entry_ptr.871, ptr @test_overflow_shift._entry_ptr.873, ptr @test_overflow_shift._entry_ptr.875, ptr @test_overflow_shift._entry_ptr.877, ptr @test_overflow_shift._entry_ptr.879, ptr @test_overflow_shift._entry_ptr.881, ptr @test_overflow_shift._entry_ptr.883, ptr @test_overflow_shift._entry_ptr.885, ptr @test_overflow_shift._entry_ptr.887, ptr @test_overflow_shift._entry_ptr.890, ptr @test_overflow_shift._entry_ptr.892, ptr @test_overflow_shift._entry_ptr.894, ptr @test_overflow_shift._entry_ptr.896, ptr @test_overflow_shift._entry_ptr.898, ptr @test_overflow_shift._entry_ptr.900, ptr @test_overflow_shift._entry_ptr.902, ptr @test_overflow_shift._entry_ptr.904, ptr @test_overflow_shift._entry_ptr.907, ptr @test_overflow_shift._entry_ptr.909, ptr @test_overflow_shift._entry_ptr.911, ptr @test_overflow_shift._entry_ptr.913, ptr @test_overflow_shift._entry_ptr.915, ptr @test_overflow_shift._entry_ptr.917, ptr @test_overflow_shift._entry_ptr.919, ptr @test_overflow_shift._entry_ptr.921, ptr @test_overflow_shift._entry_ptr.924, ptr @test_overflow_shift._entry_ptr.926, ptr @test_overflow_shift._entry_ptr.928, ptr @test_overflow_shift._entry_ptr.930, ptr @test_overflow_shift._entry_ptr.932, ptr @test_overflow_shift._entry_ptr.934, ptr @test_overflow_shift._entry_ptr.936, ptr @test_overflow_shift._entry_ptr.938, ptr @test_overflow_shift._entry_ptr.940, ptr @test_overflow_shift._entry_ptr.942, ptr @test_overflow_shift._entry_ptr.944, ptr @test_overflow_shift._entry_ptr.946, ptr @test_overflow_shift._entry_ptr.949, ptr @test_overflow_shift._entry_ptr.951, ptr @test_overflow_shift._entry_ptr.953, ptr @test_overflow_shift._entry_ptr.955, ptr @test_overflow_shift._entry_ptr.957, ptr @test_overflow_shift._entry_ptr.959, ptr @test_overflow_shift._entry_ptr.961, ptr @test_overflow_shift._entry_ptr.963, ptr @test_overflow_shift._entry_ptr.965, ptr @test_overflow_shift._entry_ptr.967, ptr @test_overflow_shift._entry_ptr.969, ptr @test_overflow_shift._entry_ptr.971, ptr @test_overflow_shift._entry_ptr.973, ptr @test_overflow_shift._entry_ptr.975, ptr @test_overflow_shift._entry_ptr.977, ptr @test_overflow_shift._entry_ptr.979, ptr @test_overflow_shift._entry_ptr.982, ptr @test_overflow_shift._entry_ptr.984, ptr @test_overflow_shift._entry_ptr.986, ptr @test_overflow_shift._entry_ptr.988, ptr @test_overflow_shift._entry_ptr.990, ptr @test_overflow_shift._entry_ptr.992, ptr @test_overflow_shift._entry_ptr.994, ptr @test_overflow_shift._entry_ptr.996, ptr @test_overflow_shift._entry_ptr.998, ptr @test_s16_overflow._entry, ptr @test_s16_overflow._entry_ptr, ptr @test_s32_overflow._entry, ptr @test_s32_overflow._entry_ptr, ptr @test_s8_overflow._entry, ptr @test_s8_overflow._entry_ptr, ptr @test_u16_overflow._entry, ptr @test_u16_overflow._entry_ptr, ptr @test_u32_overflow._entry, ptr @test_u32_overflow._entry_ptr, ptr @test_u8_overflow._entry, ptr @test_u8_overflow._entry_ptr, ptr @test_vmalloc._entry, ptr @test_vmalloc._entry.1217, ptr @test_vmalloc._entry.1220, ptr @test_vmalloc._entry.1223, ptr @test_vmalloc._entry_ptr, ptr @test_vmalloc._entry_ptr.1219, ptr @test_vmalloc._entry_ptr.1222, ptr @test_vmalloc._entry_ptr.1225, ptr @test_vmalloc_node._entry, ptr @test_vmalloc_node._entry.1228, ptr @test_vmalloc_node._entry.1231, ptr @test_vmalloc_node._entry.1234, ptr @test_vmalloc_node._entry_ptr, ptr @test_vmalloc_node._entry_ptr.1230, ptr @test_vmalloc_node._entry_ptr.1233, ptr @test_vmalloc_node._entry_ptr.1236, ptr @test_vzalloc._entry, ptr @test_vzalloc._entry.1239, ptr @test_vzalloc._entry.1242, ptr @test_vzalloc._entry.1245, ptr @test_vzalloc._entry_ptr, ptr @test_vzalloc._entry_ptr.1241, ptr @test_vzalloc._entry_ptr.1244, ptr @test_vzalloc._entry_ptr.1247, ptr @test_vzalloc_node._entry, ptr @test_vzalloc_node._entry.1250, ptr @test_vzalloc_node._entry.1253, ptr @test_vzalloc_node._entry.1256, ptr @test_vzalloc_node._entry_ptr, ptr @test_vzalloc_node._entry_ptr.1252, ptr @test_vzalloc_node._entry_ptr.1255, ptr @test_vzalloc_node._entry_ptr.1258, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.163, ptr @.str.166, ptr @.str.173, ptr @.str.176, ptr @.str.183, ptr @.str.186, ptr @.str.201, ptr @.str.204, ptr @.str.211, ptr @.str.214, ptr @.str.221, ptr @.str.222, ptr @.str.225, ptr @.str.232, ptr @.str.236, ptr @.str.242, ptr @.str.245, ptr @.str.252, ptr @.str.255, ptr @.str.286, ptr @.str.289, ptr @.str.296, ptr @.str.299, ptr @.str.306, ptr @.str.309, ptr @.str.316, ptr @.str.319, ptr @.str.358, ptr @.str.361, ptr @.str.368, ptr @.str.371, ptr @.str.378, ptr @.str.381, ptr @.str.388, ptr @.str.389, ptr @.str.392, ptr @.str.439, ptr @.str.448, ptr @.str.473, ptr @.str.474, ptr @.str.489, ptr @.str.516, ptr @.str.565, ptr @.str.574, ptr @.str.583, ptr @.str.600, ptr @.str.609, ptr @.str.618, ptr @.str.627, ptr @.str.644, ptr @.str.653, ptr @.str.694, ptr @.str.711, ptr @.str.728, ptr @.str.745, ptr @.str.762, ptr @.str.771, ptr @.str.788, ptr @.str.805, ptr @.str.822, ptr @.str.839, ptr @.str.888, ptr @.str.905, ptr @.str.922, ptr @.str.947, ptr @.str.980, ptr @.str.1013, ptr @.str.1062, ptr @.str.1125, ptr @.str.1126, ptr @.str.1127, ptr @.str.1128, ptr @.str.1130, ptr @.str.1133, ptr @.str.1136, ptr @.str.1138, ptr @.str.1139, ptr @.str.1141, ptr @.str.1144, ptr @.str.1147, ptr @.str.1149, ptr @.str.1150, ptr @.str.1152, ptr @.str.1155, ptr @.str.1158, ptr @.str.1160, ptr @.str.1161, ptr @.str.1163, ptr @.str.1166, ptr @.str.1169, ptr @.str.1171, ptr @.str.1172, ptr @.str.1174, ptr @.str.1177, ptr @.str.1180, ptr @.str.1182, ptr @.str.1183, ptr @.str.1185, ptr @.str.1188, ptr @.str.1191, ptr @.str.1193, ptr @.str.1194, ptr @.str.1196, ptr @.str.1199, ptr @.str.1202, ptr @.str.1204, ptr @.str.1205, ptr @.str.1207, ptr @.str.1210, ptr @.str.1213, ptr @.str.1215, ptr @.str.1216, ptr @.str.1218, ptr @.str.1221, ptr @.str.1224, ptr @.str.1226, ptr @.str.1227, ptr @.str.1229, ptr @.str.1232, ptr @.str.1235, ptr @.str.1237, ptr @.str.1238, ptr @.str.1240, ptr @.str.1243, ptr @.str.1246, ptr @.str.1248, ptr @.str.1249, ptr @.str.1251, ptr @.str.1254, ptr @.str.1257, ptr @.str.1259, ptr @.str.1260, ptr @.str.1262, ptr @.str.1265, ptr @.str.1268, ptr @.str.1270, ptr @.str.1271, ptr @.str.1273, ptr @.str.1276, ptr @.str.1279], section "llvm.metadata"
@0 = internal global [762 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_module_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_u8_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u8._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_s8_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s8._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_u16_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u16._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_s16_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s16._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_u32_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_u32._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_s32_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_s32._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.369 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.399 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.403 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.411 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.415 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.417 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.421 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.423 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.427 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.429 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.431 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.435 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.437 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.440 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.442 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.444 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.449 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.451 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.453 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.455 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.459 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.461 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.463 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.465 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.467 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.469 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.475 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.477 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.479 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.481 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.483 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.485 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.487 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.490 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.492 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.494 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.496 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.498 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.500 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.502 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.504 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.506 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.508 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.510 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.512 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.514 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.517 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.519 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.521 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.523 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.525 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.527 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.529 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.531 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.533 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.535 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.537 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.539 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.541 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.543 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.545 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.547 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.549 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.551 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.553 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.555 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.557 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.559 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.561 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.563 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.565 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.566 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.568 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.570 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.572 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.574 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.575 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.577 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.579 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.581 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.583 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.584 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.586 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.588 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.590 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.592 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.594 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.596 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.598 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.600 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.601 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.603 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.605 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.607 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.609 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.610 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.612 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.614 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.616 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.618 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.619 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.621 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.623 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.625 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.627 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.628 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.630 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.632 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.634 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.636 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.638 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.640 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.642 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.644 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.645 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.647 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.649 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.651 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.653 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.654 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.656 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.658 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.660 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.662 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.664 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.666 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.668 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.670 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.672 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.674 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.676 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.678 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.680 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.682 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.684 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.686 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.688 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.690 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.692 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.694 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.695 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.697 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.699 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.701 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.703 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.705 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.707 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.709 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.711 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.712 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.714 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.716 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.718 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.720 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.722 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.724 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.726 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.728 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.729 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.731 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.733 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.735 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.737 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.739 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.741 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.743 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.745 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.746 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.748 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.750 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.752 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.754 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.756 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.758 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.760 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.762 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.763 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.765 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.767 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.769 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.771 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.772 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.774 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.776 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.778 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.780 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.782 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.784 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.786 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.788 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.789 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.791 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.793 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.795 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.797 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.799 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.801 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.803 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.805 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.806 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.808 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.810 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.812 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.814 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.816 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.818 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.820 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.822 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.823 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.825 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.827 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.829 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.831 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.833 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.835 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.837 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.839 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.840 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.842 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.844 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.846 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.848 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.850 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.852 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.854 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.856 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.858 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.860 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.862 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.864 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.866 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.868 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.870 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.872 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.874 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.876 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.878 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.880 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.882 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.884 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.886 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.888 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.889 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.891 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.893 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.895 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.897 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.899 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.901 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.903 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.905 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.906 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.908 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.910 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.912 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.914 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.916 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.918 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.920 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.922 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.923 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.925 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.927 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.929 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.931 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.933 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.935 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.937 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.939 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.941 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.943 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.945 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.947 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.948 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.950 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.952 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.954 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.956 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.958 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.960 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.962 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.964 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.966 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.968 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.970 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.972 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.974 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.976 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.978 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.980 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.981 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.983 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.985 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.987 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.989 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.991 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.993 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.995 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.997 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.999 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1001 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1003 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1005 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1007 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1009 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1011 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1013 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1014 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1016 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1018 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1020 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1022 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1024 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1026 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1028 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1030 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1032 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1034 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1036 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1038 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1040 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1042 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1044 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1046 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1048 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1050 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1052 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1054 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1056 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1058 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1060 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1062 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1063 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1065 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1067 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1069 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1071 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1073 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1075 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1077 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1079 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1081 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1083 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1085 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1087 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1089 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1091 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1093 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1095 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1097 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1099 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_shift._entry.1123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_overflow_allocation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1127 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc._entry.1129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1130 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc._entry.1132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc._entry.1135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1136 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1138 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc_node._entry.1140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1141 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc_node._entry.1143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1144 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmalloc_node._entry.1146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1147 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1149 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc._entry.1151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1152 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc._entry.1154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1155 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc._entry.1157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1158 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1160 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc_node._entry.1162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1163 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc_node._entry.1165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1166 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kzalloc_node._entry.1168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1169 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1171 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc._entry.1173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1174 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc._entry.1176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1177 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc._entry.1179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1180 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1182 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc_node._entry.1184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1185 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc_node._entry.1187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1188 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc_node._entry.1190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1191 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1193 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1194 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc._entry.1195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1196 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc._entry.1198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1199 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc._entry.1201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1202 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1204 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc_node._entry.1206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1207 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc_node._entry.1209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1210 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvzalloc_node._entry.1212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1213 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1215 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1216 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc._entry.1217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1218 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc._entry.1220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1221 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc._entry.1223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1224 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1226 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1227 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc_node._entry.1228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1229 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc_node._entry.1231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1232 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vmalloc_node._entry.1234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1235 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1237 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1238 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc._entry.1239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1240 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc._entry.1242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1243 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc._entry.1245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1246 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1248 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1249 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc_node._entry.1250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1251 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc_node._entry.1253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1254 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vzalloc_node._entry.1256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1257 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1259 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1260 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kmalloc._entry.1261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1262 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kmalloc._entry.1264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1265 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kmalloc._entry.1267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1268 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kzalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1270 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1271 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kzalloc._entry.1272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1273 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kzalloc._entry.1275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1276 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_devm_kzalloc._entry.1278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3561 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1279 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.3564 to i32), i32 ptrtoint (ptr @___asan_gen_.3565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3566 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_module_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @test_overflow_calculation() #10
  %call1 = tail call fastcc i32 @test_overflow_shift() #10
  %or2 = or i32 %call1, %call
  %call3 = tail call fastcc i32 @test_overflow_allocation() #10
  %or4 = or i32 %or2, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4)
  %tobool.not = icmp eq i32 %or4, 0
  %.str.4..str = select i1 %tobool.not, ptr @.str.4, ptr @.str
  %. = select i1 %tobool.not, i32 0, i32 -22
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4..str) #11
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_overflow_calculation() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @test_u8_overflow() #10
  %call1 = tail call fastcc i32 @test_s8_overflow() #10
  %or2 = or i32 %call1, %call
  %call3 = tail call fastcc i32 @test_u16_overflow() #10
  %or4 = or i32 %or2, %call3
  %call5 = tail call fastcc i32 @test_s16_overflow() #10
  %or6 = or i32 %or4, %call5
  %call7 = tail call fastcc i32 @test_u32_overflow() #10
  %or8 = or i32 %or6, %call7
  %call9 = tail call fastcc i32 @test_s32_overflow() #10
  %or10 = or i32 %or8, %call9
  ret i32 %or10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_overflow_shift() unnamed_addr #1 section ".init.text" align 64 {
if.end10342:
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.154) #11
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.166) #11
  %call246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.176) #11
  %call341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.186) #11
  %call436 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.154) #11
  %call531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.204) #11
  %call626 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.214) #11
  %call721 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.225) #11
  %call811 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.154) #11
  %call901 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.245) #11
  %call991 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.255) #11
  %call1081 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.154) #11
  %call1171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.245) #11
  %call1261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.255) #11
  %call1351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.289) #11
  %call1441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.299) #11
  %call1531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.309) #11
  %call1621 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.319) #11
  %call1711 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.289) #11
  %call1801 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.299) #11
  %call1891 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.309) #11
  %call1981 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.319) #11
  %call2071 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.361) #11
  %call2161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.368, ptr noundef nonnull @.str.371) #11
  %call2251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.381) #11
  %call2339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.388, ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.392) #11
  %call2434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.150) #11
  %call2529 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.150) #11
  %call2619 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.150) #11
  %call2709 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.150) #11
  %call2799 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.150) #11
  %call2894 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.439, ptr noundef nonnull @.str.150) #11
  %call2989 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.150) #11
  %call3079 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.150) #11
  %call3169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.150) #11
  %call3259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.474, ptr noundef nonnull @.str.150) #11
  %call3354 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.489) #11
  %call3449 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.489) #11
  %call3539 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.489) #11
  %call3629 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.489) #11
  %call3719 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.516, ptr noundef nonnull @.str.489) #11
  %call3814 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.489) #11
  %call3909 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.489) #11
  %call3999 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.489) #11
  %call4089 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.489) #11
  %call4179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.489) #11
  %call4274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.565, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call4369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.574, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call4459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.583, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call4549 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.583, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call4637 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.600, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call4732 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.609, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call4827 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.618, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call4917 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.627, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call5007 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.627, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call5095 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.644, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.489) #11
  %call5190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.609, ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.489) #11
  %call5285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.618, ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.489) #11
  %call5375 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.627, ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.489) #11
  %call5465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.627, ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.489) #11
  %call5553 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.644, ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.489) #11
  %call5648 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.694, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call5743 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call5838 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.711, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call5933 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6023 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.728, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.728, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.745, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.745, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6381 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.762, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6476 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.771, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6571 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.771, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6666 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.788, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6761 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.788, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6851 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.805, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call6941 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.805, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call7031 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.822, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call7121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.822, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call7211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.839, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call7301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.839, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.489) #11
  %call7396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.788, ptr noundef nonnull @.str.489) #11
  %call7491 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.788, ptr noundef nonnull @.str.489) #11
  %call7586 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.805, ptr noundef nonnull @.str.489) #11
  %call7681 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.805, ptr noundef nonnull @.str.489) #11
  %call7771 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.888, ptr noundef nonnull @.str.489) #11
  %call7861 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.888, ptr noundef nonnull @.str.489) #11
  %call7951 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.905, ptr noundef nonnull @.str.489) #11
  %call8041 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.905, ptr noundef nonnull @.str.489) #11
  %call8131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.922, ptr noundef nonnull @.str.489) #11
  %call8221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.922, ptr noundef nonnull @.str.489) #11
  %call8316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.489) #11
  %call8411 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.947, ptr noundef nonnull @.str.489) #11
  %call8506 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.489) #11
  %call8601 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.947, ptr noundef nonnull @.str.489) #11
  %call8696 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.489) #11
  %call8791 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.980, ptr noundef nonnull @.str.489) #11
  %call8886 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.489) #11
  %call8981 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.980, ptr noundef nonnull @.str.489) #11
  %call9071 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.489) #11
  %call9161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.1013, ptr noundef nonnull @.str.489) #11
  %call9251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.489) #11
  %call9341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.1013, ptr noundef nonnull @.str.489) #11
  %call9431 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.489) #11
  %call9521 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.1013, ptr noundef nonnull @.str.489) #11
  %call9611 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.516, ptr noundef nonnull @.str.489) #11
  %call9701 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.1062, ptr noundef nonnull @.str.489) #11
  %call9791 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.516, ptr noundef nonnull @.str.489) #11
  %call9881 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.1062, ptr noundef nonnull @.str.489) #11
  %call9976 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.150) #11
  %call10071 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.150) #11
  %call10161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.150) #11
  %call10251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.150) #11
  %call10341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.150) #11
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_overflow_allocation() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %device_name = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %device_name) #12
  %0 = call ptr @memcpy(ptr %device_name, ptr @__const.test_overflow_allocation.device_name, i32 14)
  %call = call ptr @__root_device_register(ptr noundef nonnull %device_name, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1125) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call fastcc i32 @test_kmalloc() #10
  %call4 = call fastcc i32 @test_kmalloc_node() #10
  %or5 = or i32 %call4, %call3
  %call6 = call fastcc i32 @test_kzalloc() #10
  %or7 = or i32 %or5, %call6
  %call8 = call fastcc i32 @test_kzalloc_node() #10
  %or9 = or i32 %or7, %call8
  %call10 = call fastcc i32 @test_kvmalloc() #10
  %or11 = or i32 %or9, %call10
  %call12 = call fastcc i32 @test_kvmalloc_node() #10
  %or13 = or i32 %or11, %call12
  %call14 = call fastcc i32 @test_kvzalloc() #10
  %or15 = or i32 %or13, %call14
  %call16 = call fastcc i32 @test_kvzalloc_node() #10
  %or17 = or i32 %or15, %call16
  %call18 = call fastcc i32 @test_vmalloc() #10
  %or19 = or i32 %or17, %call18
  %call20 = call fastcc i32 @test_vmalloc_node() #10
  %or21 = or i32 %or19, %call20
  %call22 = call fastcc i32 @test_vzalloc() #10
  %or23 = or i32 %or21, %call22
  %call24 = call fastcc i32 @test_vzalloc_node() #10
  %or25 = or i32 %or23, %call24
  %call26 = call fastcc i32 @test_devm_kmalloc(ptr noundef %call) #10
  %or27 = or i32 %or25, %call26
  %call28 = call fastcc i32 @test_devm_kzalloc(ptr noundef %call) #10
  %or29 = or i32 %or27, %call28
  call void @device_unregister(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %or29, %if.end ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %device_name) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_u8_overflow() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef 18) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %err.06 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [18 x %struct.test_u8], ptr @u8_tests, i32 0, i32 %i.05
  %call1 = tail call fastcc i32 @do_test_u8(ptr noundef %arrayidx) #10
  %or = or i32 %call1, %err.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %or
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_s8_overflow() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.37, i32 noundef 19) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %err.06 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [19 x %struct.test_s8], ptr @s8_tests, i32 0, i32 %i.05
  %call1 = tail call fastcc i32 @do_test_s8(ptr noundef %arrayidx) #10
  %or = or i32 %call1, %err.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %or
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_u16_overflow() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.58, i32 noundef 17) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %err.06 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.test_u16], ptr @u16_tests, i32 0, i32 %i.05
  %call1 = tail call fastcc i32 @do_test_u16(ptr noundef %arrayidx) #10
  %or = or i32 %call1, %err.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %or
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_s16_overflow() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.79, i32 noundef 17) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %err.06 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.test_s16], ptr @s16_tests, i32 0, i32 %i.05
  %call1 = tail call fastcc i32 @do_test_s16(ptr noundef %arrayidx) #10
  %or = or i32 %call1, %err.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %or
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_u32_overflow() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.100, i32 noundef 17) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %err.06 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.test_u32], ptr @u32_tests, i32 0, i32 %i.05
  %call1 = tail call fastcc i32 @do_test_u32(ptr noundef %arrayidx) #10
  %or = or i32 %call1, %err.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %or
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_s32_overflow() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.127, i32 noundef 17) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %err.06 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.test_s32], ptr @s32_tests, i32 0, i32 %i.05
  %call1 = tail call fastcc i32 @do_test_s32(ptr noundef %arrayidx) #10
  %or = or i32 %call1, %err.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %or
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test_u8(ptr noundef readonly %p) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  %b = getelementptr inbounds %struct.test_u8, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b, align 1
  %4 = tail call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 %1, i8 %3)
  %5 = extractvalue { i8, i1 } %4, 1
  %6 = extractvalue { i8, i1 } %4, 0
  %s_of = getelementptr inbounds %struct.test_u8, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_of, align 1, !range !1502
  %9 = zext i1 %5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp8.not = icmp eq i8 %8, %9
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %conv13 = zext i8 %1 to i32
  %conv15 = zext i8 %3 to i32
  %cond = select i1 %tobool6.not, ptr @.str.12, ptr @.str.11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv13, i32 noundef %conv15, ptr noundef nonnull %cond, ptr noundef nonnull @.str.8) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 1, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %sum = getelementptr inbounds %struct.test_u8, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %11)
  %cmp22.not = icmp eq i8 %6, %11
  br i1 %cmp22.not, label %if.end.if.end37_crit_edge, label %do.end27

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i8 %11 to i32
  %conv20 = zext i8 %6 to i32
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p, align 1
  %conv30 = zext i8 %13 to i32
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %b, align 1
  %conv32 = zext i8 %15 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv21, i32 noundef %conv20, ptr noundef nonnull @.str.8) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end27, %if.end.if.end37_crit_edge
  %err.1 = phi i32 [ 1, %do.end27 ], [ %err.0, %if.end.if.end37_crit_edge ]
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %b, align 1
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p, align 1
  %20 = tail call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 %17, i8 %19)
  %21 = extractvalue { i8, i1 } %20, 1
  %22 = extractvalue { i8, i1 } %20, 0
  %23 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_of, align 1, !range !1502
  %25 = zext i1 %21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp62.not = icmp eq i8 %24, %25
  br i1 %cmp62.not, label %if.end37.if.end78_crit_edge, label %do.end67

if.end37.if.end78_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end67:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool60.not = icmp eq i8 %24, 0
  %conv70 = zext i8 %17 to i32
  %conv72 = zext i8 %19 to i32
  %cond76 = select i1 %tobool60.not, ptr @.str.12, ptr @.str.11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv70, i32 noundef %conv72, ptr noundef nonnull %cond76, ptr noundef nonnull @.str.8) #11
  br label %if.end78

if.end78:                                         ; preds = %do.end67, %if.end37.if.end78_crit_edge
  %err.2 = phi i32 [ 1, %do.end67 ], [ %err.1, %if.end37.if.end78_crit_edge ]
  %26 = ptrtoint ptr %sum to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %27)
  %cmp82.not = icmp eq i8 %22, %27
  br i1 %cmp82.not, label %if.end78.if.end97_crit_edge, label %do.end87

if.end78.if.end97_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %conv81 = zext i8 %27 to i32
  %conv79 = zext i8 %22 to i32
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %b, align 1
  %conv90 = zext i8 %29 to i32
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %p, align 1
  %conv92 = zext i8 %31 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv90, i32 noundef %conv92, i32 noundef %conv81, i32 noundef %conv79, ptr noundef nonnull @.str.8) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end87, %if.end78.if.end97_crit_edge
  %err.3 = phi i32 [ 1, %do.end87 ], [ %err.2, %if.end78.if.end97_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %p, align 1
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %b, align 1
  %36 = tail call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %33, i8 %35)
  %37 = extractvalue { i8, i1 } %36, 1
  %38 = extractvalue { i8, i1 } %36, 0
  %d_of = getelementptr inbounds %struct.test_u8, ptr %p, i32 0, i32 6
  %39 = ptrtoint ptr %d_of to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d_of, align 1, !range !1502
  %41 = zext i1 %37 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp121.not = icmp eq i8 %40, %41
  br i1 %cmp121.not, label %if.end97.if.end137_crit_edge, label %do.end126

if.end97.if.end137_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

do.end126:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool119.not = icmp eq i8 %40, 0
  %conv129 = zext i8 %33 to i32
  %conv131 = zext i8 %35 to i32
  %cond135 = select i1 %tobool119.not, ptr @.str.12, ptr @.str.11
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv129, i32 noundef %conv131, ptr noundef nonnull %cond135, ptr noundef nonnull @.str.8) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end126, %if.end97.if.end137_crit_edge
  %err.4 = phi i32 [ 1, %do.end126 ], [ %err.3, %if.end97.if.end137_crit_edge ]
  %diff = getelementptr inbounds %struct.test_u8, ptr %p, i32 0, i32 3
  %42 = ptrtoint ptr %diff to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %diff, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %43)
  %cmp140.not = icmp eq i8 %38, %43
  br i1 %cmp140.not, label %if.end137.if.end155_crit_edge, label %do.end145

if.end137.if.end155_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end145:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  %conv139 = zext i8 %43 to i32
  %conv138 = zext i8 %38 to i32
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %p, align 1
  %conv148 = zext i8 %45 to i32
  %46 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b, align 1
  %conv150 = zext i8 %47 to i32
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv148, i32 noundef %conv150, i32 noundef %conv139, i32 noundef %conv138, ptr noundef nonnull @.str.8) #11
  br label %if.end155

if.end155:                                        ; preds = %do.end145, %if.end137.if.end155_crit_edge
  %err.5 = phi i32 [ 1, %do.end145 ], [ %err.4, %if.end137.if.end155_crit_edge ]
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %p, align 1
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b, align 1
  %52 = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %49, i8 %51)
  %53 = extractvalue { i8, i1 } %52, 1
  %54 = extractvalue { i8, i1 } %52, 0
  %p_of = getelementptr inbounds %struct.test_u8, ptr %p, i32 0, i32 7
  %55 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_of, align 1, !range !1502
  %57 = zext i1 %53 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp179.not = icmp eq i8 %56, %57
  br i1 %cmp179.not, label %if.end155.if.end195_crit_edge, label %do.end184

if.end155.if.end195_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

do.end184:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool177.not = icmp eq i8 %56, 0
  %conv187 = zext i8 %49 to i32
  %conv189 = zext i8 %51 to i32
  %cond193 = select i1 %tobool177.not, ptr @.str.12, ptr @.str.11
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv187, i32 noundef %conv189, ptr noundef nonnull %cond193, ptr noundef nonnull @.str.8) #11
  br label %if.end195

if.end195:                                        ; preds = %do.end184, %if.end155.if.end195_crit_edge
  %err.6 = phi i32 [ 1, %do.end184 ], [ %err.5, %if.end155.if.end195_crit_edge ]
  %prod = getelementptr inbounds %struct.test_u8, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %prod to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %prod, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %59)
  %cmp198.not = icmp eq i8 %54, %59
  br i1 %cmp198.not, label %if.end195.if.end213_crit_edge, label %do.end203

if.end195.if.end213_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

do.end203:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %conv197 = zext i8 %59 to i32
  %conv196 = zext i8 %54 to i32
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %p, align 1
  %conv206 = zext i8 %61 to i32
  %62 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %b, align 1
  %conv208 = zext i8 %63 to i32
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv206, i32 noundef %conv208, i32 noundef %conv197, i32 noundef %conv196, ptr noundef nonnull @.str.8) #11
  br label %if.end213

if.end213:                                        ; preds = %do.end203, %if.end195.if.end213_crit_edge
  %err.7 = phi i32 [ 1, %do.end203 ], [ %err.6, %if.end195.if.end213_crit_edge ]
  %64 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %b, align 1
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %p, align 1
  %68 = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %65, i8 %67)
  %69 = extractvalue { i8, i1 } %68, 1
  %70 = extractvalue { i8, i1 } %68, 0
  %71 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %p_of, align 1, !range !1502
  %73 = zext i1 %69 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %73)
  %cmp238.not = icmp eq i8 %72, %73
  br i1 %cmp238.not, label %if.end213.if.end254_crit_edge, label %do.end243

if.end213.if.end254_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

do.end243:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool236.not = icmp eq i8 %72, 0
  %conv246 = zext i8 %65 to i32
  %conv248 = zext i8 %67 to i32
  %cond252 = select i1 %tobool236.not, ptr @.str.12, ptr @.str.11
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv246, i32 noundef %conv248, ptr noundef nonnull %cond252, ptr noundef nonnull @.str.8) #11
  br label %if.end254

if.end254:                                        ; preds = %do.end243, %if.end213.if.end254_crit_edge
  %err.8 = phi i32 [ 1, %do.end243 ], [ %err.7, %if.end213.if.end254_crit_edge ]
  %74 = ptrtoint ptr %prod to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %prod, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %75)
  %cmp258.not = icmp eq i8 %70, %75
  br i1 %cmp258.not, label %if.end254.if.end273_crit_edge, label %do.end263

if.end254.if.end273_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

do.end263:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  %conv257 = zext i8 %75 to i32
  %conv255 = zext i8 %70 to i32
  %76 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %b, align 1
  %conv266 = zext i8 %77 to i32
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %p, align 1
  %conv268 = zext i8 %79 to i32
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv266, i32 noundef %conv268, i32 noundef %conv257, i32 noundef %conv255, ptr noundef nonnull @.str.8) #11
  br label %if.end273

if.end273:                                        ; preds = %do.end263, %if.end254.if.end273_crit_edge
  %err.9 = phi i32 [ 1, %do.end263 ], [ %err.8, %if.end254.if.end273_crit_edge ]
  ret i32 %err.9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.usub.with.overflow.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.umul.with.overflow.i8(i8, i8) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test_s8(ptr noundef readonly %p) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  %b = getelementptr inbounds %struct.test_s8, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b, align 1
  %4 = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %1, i8 %3)
  %5 = extractvalue { i8, i1 } %4, 1
  %6 = extractvalue { i8, i1 } %4, 0
  %s_of = getelementptr inbounds %struct.test_s8, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_of, align 1, !range !1502
  %9 = zext i1 %5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp8.not = icmp eq i8 %8, %9
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %conv13 = sext i8 %1 to i32
  %conv15 = sext i8 %3 to i32
  %cond = select i1 %tobool6.not, ptr @.str.12, ptr @.str.11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv13, i32 noundef %conv15, ptr noundef nonnull %cond, ptr noundef nonnull @.str.37) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 1, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %sum = getelementptr inbounds %struct.test_s8, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %11)
  %cmp22.not = icmp eq i8 %6, %11
  br i1 %cmp22.not, label %if.end.if.end37_crit_edge, label %do.end27

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = sext i8 %11 to i32
  %conv20 = sext i8 %6 to i32
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p, align 1
  %conv30 = sext i8 %13 to i32
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %b, align 1
  %conv32 = sext i8 %15 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv21, i32 noundef %conv20, ptr noundef nonnull @.str.37) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end27, %if.end.if.end37_crit_edge
  %err.1 = phi i32 [ 1, %do.end27 ], [ %err.0, %if.end.if.end37_crit_edge ]
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %b, align 1
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p, align 1
  %20 = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %17, i8 %19)
  %21 = extractvalue { i8, i1 } %20, 1
  %22 = extractvalue { i8, i1 } %20, 0
  %23 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_of, align 1, !range !1502
  %25 = zext i1 %21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp62.not = icmp eq i8 %24, %25
  br i1 %cmp62.not, label %if.end37.if.end78_crit_edge, label %do.end67

if.end37.if.end78_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end67:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool60.not = icmp eq i8 %24, 0
  %conv70 = sext i8 %17 to i32
  %conv72 = sext i8 %19 to i32
  %cond76 = select i1 %tobool60.not, ptr @.str.12, ptr @.str.11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv70, i32 noundef %conv72, ptr noundef nonnull %cond76, ptr noundef nonnull @.str.37) #11
  br label %if.end78

if.end78:                                         ; preds = %do.end67, %if.end37.if.end78_crit_edge
  %err.2 = phi i32 [ 1, %do.end67 ], [ %err.1, %if.end37.if.end78_crit_edge ]
  %26 = ptrtoint ptr %sum to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %27)
  %cmp82.not = icmp eq i8 %22, %27
  br i1 %cmp82.not, label %if.end78.if.end97_crit_edge, label %do.end87

if.end78.if.end97_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %conv81 = sext i8 %27 to i32
  %conv79 = sext i8 %22 to i32
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %b, align 1
  %conv90 = sext i8 %29 to i32
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %p, align 1
  %conv92 = sext i8 %31 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv90, i32 noundef %conv92, i32 noundef %conv81, i32 noundef %conv79, ptr noundef nonnull @.str.37) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end87, %if.end78.if.end97_crit_edge
  %err.3 = phi i32 [ 1, %do.end87 ], [ %err.2, %if.end78.if.end97_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %p, align 1
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %b, align 1
  %36 = tail call { i8, i1 } @llvm.ssub.with.overflow.i8(i8 %33, i8 %35)
  %37 = extractvalue { i8, i1 } %36, 1
  %38 = extractvalue { i8, i1 } %36, 0
  %d_of = getelementptr inbounds %struct.test_s8, ptr %p, i32 0, i32 6
  %39 = ptrtoint ptr %d_of to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d_of, align 1, !range !1502
  %41 = zext i1 %37 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp121.not = icmp eq i8 %40, %41
  br i1 %cmp121.not, label %if.end97.if.end137_crit_edge, label %do.end126

if.end97.if.end137_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

do.end126:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool119.not = icmp eq i8 %40, 0
  %conv129 = sext i8 %33 to i32
  %conv131 = sext i8 %35 to i32
  %cond135 = select i1 %tobool119.not, ptr @.str.12, ptr @.str.11
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv129, i32 noundef %conv131, ptr noundef nonnull %cond135, ptr noundef nonnull @.str.37) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end126, %if.end97.if.end137_crit_edge
  %err.4 = phi i32 [ 1, %do.end126 ], [ %err.3, %if.end97.if.end137_crit_edge ]
  %diff = getelementptr inbounds %struct.test_s8, ptr %p, i32 0, i32 3
  %42 = ptrtoint ptr %diff to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %diff, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %43)
  %cmp140.not = icmp eq i8 %38, %43
  br i1 %cmp140.not, label %if.end137.if.end155_crit_edge, label %do.end145

if.end137.if.end155_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end145:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  %conv139 = sext i8 %43 to i32
  %conv138 = sext i8 %38 to i32
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %p, align 1
  %conv148 = sext i8 %45 to i32
  %46 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b, align 1
  %conv150 = sext i8 %47 to i32
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv148, i32 noundef %conv150, i32 noundef %conv139, i32 noundef %conv138, ptr noundef nonnull @.str.37) #11
  br label %if.end155

if.end155:                                        ; preds = %do.end145, %if.end137.if.end155_crit_edge
  %err.5 = phi i32 [ 1, %do.end145 ], [ %err.4, %if.end137.if.end155_crit_edge ]
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %p, align 1
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b, align 1
  %52 = tail call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %49, i8 %51)
  %53 = extractvalue { i8, i1 } %52, 1
  %54 = extractvalue { i8, i1 } %52, 0
  %p_of = getelementptr inbounds %struct.test_s8, ptr %p, i32 0, i32 7
  %55 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_of, align 1, !range !1502
  %57 = zext i1 %53 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp179.not = icmp eq i8 %56, %57
  br i1 %cmp179.not, label %if.end155.if.end195_crit_edge, label %do.end184

if.end155.if.end195_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

do.end184:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool177.not = icmp eq i8 %56, 0
  %conv187 = sext i8 %49 to i32
  %conv189 = sext i8 %51 to i32
  %cond193 = select i1 %tobool177.not, ptr @.str.12, ptr @.str.11
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv187, i32 noundef %conv189, ptr noundef nonnull %cond193, ptr noundef nonnull @.str.37) #11
  br label %if.end195

if.end195:                                        ; preds = %do.end184, %if.end155.if.end195_crit_edge
  %err.6 = phi i32 [ 1, %do.end184 ], [ %err.5, %if.end155.if.end195_crit_edge ]
  %prod = getelementptr inbounds %struct.test_s8, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %prod to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %prod, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %59)
  %cmp198.not = icmp eq i8 %54, %59
  br i1 %cmp198.not, label %if.end195.if.end213_crit_edge, label %do.end203

if.end195.if.end213_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

do.end203:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %conv197 = sext i8 %59 to i32
  %conv196 = sext i8 %54 to i32
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %p, align 1
  %conv206 = sext i8 %61 to i32
  %62 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %b, align 1
  %conv208 = sext i8 %63 to i32
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv206, i32 noundef %conv208, i32 noundef %conv197, i32 noundef %conv196, ptr noundef nonnull @.str.37) #11
  br label %if.end213

if.end213:                                        ; preds = %do.end203, %if.end195.if.end213_crit_edge
  %err.7 = phi i32 [ 1, %do.end203 ], [ %err.6, %if.end195.if.end213_crit_edge ]
  %64 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %b, align 1
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %p, align 1
  %68 = tail call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %65, i8 %67)
  %69 = extractvalue { i8, i1 } %68, 1
  %70 = extractvalue { i8, i1 } %68, 0
  %71 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %p_of, align 1, !range !1502
  %73 = zext i1 %69 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %73)
  %cmp238.not = icmp eq i8 %72, %73
  br i1 %cmp238.not, label %if.end213.if.end254_crit_edge, label %do.end243

if.end213.if.end254_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

do.end243:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool236.not = icmp eq i8 %72, 0
  %conv246 = sext i8 %65 to i32
  %conv248 = sext i8 %67 to i32
  %cond252 = select i1 %tobool236.not, ptr @.str.12, ptr @.str.11
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv246, i32 noundef %conv248, ptr noundef nonnull %cond252, ptr noundef nonnull @.str.37) #11
  br label %if.end254

if.end254:                                        ; preds = %do.end243, %if.end213.if.end254_crit_edge
  %err.8 = phi i32 [ 1, %do.end243 ], [ %err.7, %if.end213.if.end254_crit_edge ]
  %74 = ptrtoint ptr %prod to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %prod, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %75)
  %cmp258.not = icmp eq i8 %70, %75
  br i1 %cmp258.not, label %if.end254.if.end273_crit_edge, label %do.end263

if.end254.if.end273_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

do.end263:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  %conv257 = sext i8 %75 to i32
  %conv255 = sext i8 %70 to i32
  %76 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %b, align 1
  %conv266 = sext i8 %77 to i32
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %p, align 1
  %conv268 = sext i8 %79 to i32
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv266, i32 noundef %conv268, i32 noundef %conv257, i32 noundef %conv255, ptr noundef nonnull @.str.37) #11
  br label %if.end273

if.end273:                                        ; preds = %do.end263, %if.end254.if.end273_crit_edge
  %err.9 = phi i32 [ 1, %do.end263 ], [ %err.8, %if.end254.if.end273_crit_edge ]
  ret i32 %err.9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.sadd.with.overflow.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.ssub.with.overflow.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i8, i1 } @llvm.smul.with.overflow.i8(i8, i8) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test_u16(ptr noundef readonly %p) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p, align 2
  %b = getelementptr inbounds %struct.test_u16, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %b, align 2
  %4 = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %1, i16 %3)
  %5 = extractvalue { i16, i1 } %4, 1
  %6 = extractvalue { i16, i1 } %4, 0
  %s_of = getelementptr inbounds %struct.test_u16, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_of, align 2, !range !1502
  %9 = zext i1 %5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp8.not = icmp eq i8 %8, %9
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %conv13 = zext i16 %1 to i32
  %conv15 = zext i16 %3 to i32
  %cond = select i1 %tobool6.not, ptr @.str.12, ptr @.str.11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv13, i32 noundef %conv15, ptr noundef nonnull %cond, ptr noundef nonnull @.str.58) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 1, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %sum = getelementptr inbounds %struct.test_u16, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %11)
  %cmp22.not = icmp eq i16 %6, %11
  br i1 %cmp22.not, label %if.end.if.end37_crit_edge, label %do.end27

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i16 %11 to i32
  %conv20 = zext i16 %6 to i32
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %p, align 2
  %conv30 = zext i16 %13 to i32
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %b, align 2
  %conv32 = zext i16 %15 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv21, i32 noundef %conv20, ptr noundef nonnull @.str.58) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end27, %if.end.if.end37_crit_edge
  %err.1 = phi i32 [ 1, %do.end27 ], [ %err.0, %if.end.if.end37_crit_edge ]
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %b, align 2
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %p, align 2
  %20 = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %17, i16 %19)
  %21 = extractvalue { i16, i1 } %20, 1
  %22 = extractvalue { i16, i1 } %20, 0
  %23 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_of, align 2, !range !1502
  %25 = zext i1 %21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp62.not = icmp eq i8 %24, %25
  br i1 %cmp62.not, label %if.end37.if.end78_crit_edge, label %do.end67

if.end37.if.end78_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end67:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool60.not = icmp eq i8 %24, 0
  %conv70 = zext i16 %17 to i32
  %conv72 = zext i16 %19 to i32
  %cond76 = select i1 %tobool60.not, ptr @.str.12, ptr @.str.11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv70, i32 noundef %conv72, ptr noundef nonnull %cond76, ptr noundef nonnull @.str.58) #11
  br label %if.end78

if.end78:                                         ; preds = %do.end67, %if.end37.if.end78_crit_edge
  %err.2 = phi i32 [ 1, %do.end67 ], [ %err.1, %if.end37.if.end78_crit_edge ]
  %26 = ptrtoint ptr %sum to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %27)
  %cmp82.not = icmp eq i16 %22, %27
  br i1 %cmp82.not, label %if.end78.if.end97_crit_edge, label %do.end87

if.end78.if.end97_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %conv81 = zext i16 %27 to i32
  %conv79 = zext i16 %22 to i32
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %b, align 2
  %conv90 = zext i16 %29 to i32
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %p, align 2
  %conv92 = zext i16 %31 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv90, i32 noundef %conv92, i32 noundef %conv81, i32 noundef %conv79, ptr noundef nonnull @.str.58) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end87, %if.end78.if.end97_crit_edge
  %err.3 = phi i32 [ 1, %do.end87 ], [ %err.2, %if.end78.if.end97_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %p, align 2
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %b, align 2
  %36 = tail call { i16, i1 } @llvm.usub.with.overflow.i16(i16 %33, i16 %35)
  %37 = extractvalue { i16, i1 } %36, 1
  %38 = extractvalue { i16, i1 } %36, 0
  %d_of = getelementptr inbounds %struct.test_u16, ptr %p, i32 0, i32 6
  %39 = ptrtoint ptr %d_of to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d_of, align 1, !range !1502
  %41 = zext i1 %37 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp121.not = icmp eq i8 %40, %41
  br i1 %cmp121.not, label %if.end97.if.end137_crit_edge, label %do.end126

if.end97.if.end137_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

do.end126:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool119.not = icmp eq i8 %40, 0
  %conv129 = zext i16 %33 to i32
  %conv131 = zext i16 %35 to i32
  %cond135 = select i1 %tobool119.not, ptr @.str.12, ptr @.str.11
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv129, i32 noundef %conv131, ptr noundef nonnull %cond135, ptr noundef nonnull @.str.58) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end126, %if.end97.if.end137_crit_edge
  %err.4 = phi i32 [ 1, %do.end126 ], [ %err.3, %if.end97.if.end137_crit_edge ]
  %diff = getelementptr inbounds %struct.test_u16, ptr %p, i32 0, i32 3
  %42 = ptrtoint ptr %diff to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %diff, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %43)
  %cmp140.not = icmp eq i16 %38, %43
  br i1 %cmp140.not, label %if.end137.if.end155_crit_edge, label %do.end145

if.end137.if.end155_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end145:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  %conv139 = zext i16 %43 to i32
  %conv138 = zext i16 %38 to i32
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %p, align 2
  %conv148 = zext i16 %45 to i32
  %46 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %b, align 2
  %conv150 = zext i16 %47 to i32
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv148, i32 noundef %conv150, i32 noundef %conv139, i32 noundef %conv138, ptr noundef nonnull @.str.58) #11
  br label %if.end155

if.end155:                                        ; preds = %do.end145, %if.end137.if.end155_crit_edge
  %err.5 = phi i32 [ 1, %do.end145 ], [ %err.4, %if.end137.if.end155_crit_edge ]
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %p, align 2
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %b, align 2
  %52 = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %49, i16 %51)
  %53 = extractvalue { i16, i1 } %52, 1
  %54 = extractvalue { i16, i1 } %52, 0
  %p_of = getelementptr inbounds %struct.test_u16, ptr %p, i32 0, i32 7
  %55 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_of, align 2, !range !1502
  %57 = zext i1 %53 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp179.not = icmp eq i8 %56, %57
  br i1 %cmp179.not, label %if.end155.if.end195_crit_edge, label %do.end184

if.end155.if.end195_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

do.end184:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool177.not = icmp eq i8 %56, 0
  %conv187 = zext i16 %49 to i32
  %conv189 = zext i16 %51 to i32
  %cond193 = select i1 %tobool177.not, ptr @.str.12, ptr @.str.11
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv187, i32 noundef %conv189, ptr noundef nonnull %cond193, ptr noundef nonnull @.str.58) #11
  br label %if.end195

if.end195:                                        ; preds = %do.end184, %if.end155.if.end195_crit_edge
  %err.6 = phi i32 [ 1, %do.end184 ], [ %err.5, %if.end155.if.end195_crit_edge ]
  %prod = getelementptr inbounds %struct.test_u16, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %prod to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %prod, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %59)
  %cmp198.not = icmp eq i16 %54, %59
  br i1 %cmp198.not, label %if.end195.if.end213_crit_edge, label %do.end203

if.end195.if.end213_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

do.end203:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %conv197 = zext i16 %59 to i32
  %conv196 = zext i16 %54 to i32
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %p, align 2
  %conv206 = zext i16 %61 to i32
  %62 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %b, align 2
  %conv208 = zext i16 %63 to i32
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv206, i32 noundef %conv208, i32 noundef %conv197, i32 noundef %conv196, ptr noundef nonnull @.str.58) #11
  br label %if.end213

if.end213:                                        ; preds = %do.end203, %if.end195.if.end213_crit_edge
  %err.7 = phi i32 [ 1, %do.end203 ], [ %err.6, %if.end195.if.end213_crit_edge ]
  %64 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %b, align 2
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %p, align 2
  %68 = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %65, i16 %67)
  %69 = extractvalue { i16, i1 } %68, 1
  %70 = extractvalue { i16, i1 } %68, 0
  %71 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %p_of, align 2, !range !1502
  %73 = zext i1 %69 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %73)
  %cmp238.not = icmp eq i8 %72, %73
  br i1 %cmp238.not, label %if.end213.if.end254_crit_edge, label %do.end243

if.end213.if.end254_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

do.end243:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool236.not = icmp eq i8 %72, 0
  %conv246 = zext i16 %65 to i32
  %conv248 = zext i16 %67 to i32
  %cond252 = select i1 %tobool236.not, ptr @.str.12, ptr @.str.11
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv246, i32 noundef %conv248, ptr noundef nonnull %cond252, ptr noundef nonnull @.str.58) #11
  br label %if.end254

if.end254:                                        ; preds = %do.end243, %if.end213.if.end254_crit_edge
  %err.8 = phi i32 [ 1, %do.end243 ], [ %err.7, %if.end213.if.end254_crit_edge ]
  %74 = ptrtoint ptr %prod to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %prod, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %75)
  %cmp258.not = icmp eq i16 %70, %75
  br i1 %cmp258.not, label %if.end254.if.end273_crit_edge, label %do.end263

if.end254.if.end273_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

do.end263:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  %conv257 = zext i16 %75 to i32
  %conv255 = zext i16 %70 to i32
  %76 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %b, align 2
  %conv266 = zext i16 %77 to i32
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %p, align 2
  %conv268 = zext i16 %79 to i32
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv266, i32 noundef %conv268, i32 noundef %conv257, i32 noundef %conv255, ptr noundef nonnull @.str.58) #11
  br label %if.end273

if.end273:                                        ; preds = %do.end263, %if.end254.if.end273_crit_edge
  %err.9 = phi i32 [ 1, %do.end263 ], [ %err.8, %if.end254.if.end273_crit_edge ]
  ret i32 %err.9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i16, i1 } @llvm.uadd.with.overflow.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i16, i1 } @llvm.usub.with.overflow.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i16, i1 } @llvm.umul.with.overflow.i16(i16, i16) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test_s16(ptr noundef readonly %p) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p, align 2
  %b = getelementptr inbounds %struct.test_s16, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %b, align 2
  %4 = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %1, i16 %3)
  %5 = extractvalue { i16, i1 } %4, 1
  %6 = extractvalue { i16, i1 } %4, 0
  %s_of = getelementptr inbounds %struct.test_s16, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_of, align 2, !range !1502
  %9 = zext i1 %5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp8.not = icmp eq i8 %8, %9
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %conv13 = sext i16 %1 to i32
  %conv15 = sext i16 %3 to i32
  %cond = select i1 %tobool6.not, ptr @.str.12, ptr @.str.11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv13, i32 noundef %conv15, ptr noundef nonnull %cond, ptr noundef nonnull @.str.79) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 1, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %sum = getelementptr inbounds %struct.test_s16, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %11)
  %cmp22.not = icmp eq i16 %6, %11
  br i1 %cmp22.not, label %if.end.if.end37_crit_edge, label %do.end27

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = sext i16 %11 to i32
  %conv20 = sext i16 %6 to i32
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %p, align 2
  %conv30 = sext i16 %13 to i32
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %b, align 2
  %conv32 = sext i16 %15 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv21, i32 noundef %conv20, ptr noundef nonnull @.str.79) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end27, %if.end.if.end37_crit_edge
  %err.1 = phi i32 [ 1, %do.end27 ], [ %err.0, %if.end.if.end37_crit_edge ]
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %b, align 2
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %p, align 2
  %20 = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %17, i16 %19)
  %21 = extractvalue { i16, i1 } %20, 1
  %22 = extractvalue { i16, i1 } %20, 0
  %23 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_of, align 2, !range !1502
  %25 = zext i1 %21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp62.not = icmp eq i8 %24, %25
  br i1 %cmp62.not, label %if.end37.if.end78_crit_edge, label %do.end67

if.end37.if.end78_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end67:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool60.not = icmp eq i8 %24, 0
  %conv70 = sext i16 %17 to i32
  %conv72 = sext i16 %19 to i32
  %cond76 = select i1 %tobool60.not, ptr @.str.12, ptr @.str.11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv70, i32 noundef %conv72, ptr noundef nonnull %cond76, ptr noundef nonnull @.str.79) #11
  br label %if.end78

if.end78:                                         ; preds = %do.end67, %if.end37.if.end78_crit_edge
  %err.2 = phi i32 [ 1, %do.end67 ], [ %err.1, %if.end37.if.end78_crit_edge ]
  %26 = ptrtoint ptr %sum to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %27)
  %cmp82.not = icmp eq i16 %22, %27
  br i1 %cmp82.not, label %if.end78.if.end97_crit_edge, label %do.end87

if.end78.if.end97_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %conv81 = sext i16 %27 to i32
  %conv79 = sext i16 %22 to i32
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %b, align 2
  %conv90 = sext i16 %29 to i32
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %p, align 2
  %conv92 = sext i16 %31 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv90, i32 noundef %conv92, i32 noundef %conv81, i32 noundef %conv79, ptr noundef nonnull @.str.79) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end87, %if.end78.if.end97_crit_edge
  %err.3 = phi i32 [ 1, %do.end87 ], [ %err.2, %if.end78.if.end97_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %p, align 2
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %b, align 2
  %36 = tail call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %33, i16 %35)
  %37 = extractvalue { i16, i1 } %36, 1
  %38 = extractvalue { i16, i1 } %36, 0
  %d_of = getelementptr inbounds %struct.test_s16, ptr %p, i32 0, i32 6
  %39 = ptrtoint ptr %d_of to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d_of, align 1, !range !1502
  %41 = zext i1 %37 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp121.not = icmp eq i8 %40, %41
  br i1 %cmp121.not, label %if.end97.if.end137_crit_edge, label %do.end126

if.end97.if.end137_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

do.end126:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool119.not = icmp eq i8 %40, 0
  %conv129 = sext i16 %33 to i32
  %conv131 = sext i16 %35 to i32
  %cond135 = select i1 %tobool119.not, ptr @.str.12, ptr @.str.11
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv129, i32 noundef %conv131, ptr noundef nonnull %cond135, ptr noundef nonnull @.str.79) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end126, %if.end97.if.end137_crit_edge
  %err.4 = phi i32 [ 1, %do.end126 ], [ %err.3, %if.end97.if.end137_crit_edge ]
  %diff = getelementptr inbounds %struct.test_s16, ptr %p, i32 0, i32 3
  %42 = ptrtoint ptr %diff to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %diff, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %43)
  %cmp140.not = icmp eq i16 %38, %43
  br i1 %cmp140.not, label %if.end137.if.end155_crit_edge, label %do.end145

if.end137.if.end155_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end145:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  %conv139 = sext i16 %43 to i32
  %conv138 = sext i16 %38 to i32
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %p, align 2
  %conv148 = sext i16 %45 to i32
  %46 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %b, align 2
  %conv150 = sext i16 %47 to i32
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv148, i32 noundef %conv150, i32 noundef %conv139, i32 noundef %conv138, ptr noundef nonnull @.str.79) #11
  br label %if.end155

if.end155:                                        ; preds = %do.end145, %if.end137.if.end155_crit_edge
  %err.5 = phi i32 [ 1, %do.end145 ], [ %err.4, %if.end137.if.end155_crit_edge ]
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %p, align 2
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %b, align 2
  %52 = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %49, i16 %51)
  %53 = extractvalue { i16, i1 } %52, 1
  %54 = extractvalue { i16, i1 } %52, 0
  %p_of = getelementptr inbounds %struct.test_s16, ptr %p, i32 0, i32 7
  %55 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_of, align 2, !range !1502
  %57 = zext i1 %53 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp179.not = icmp eq i8 %56, %57
  br i1 %cmp179.not, label %if.end155.if.end195_crit_edge, label %do.end184

if.end155.if.end195_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

do.end184:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool177.not = icmp eq i8 %56, 0
  %conv187 = sext i16 %49 to i32
  %conv189 = sext i16 %51 to i32
  %cond193 = select i1 %tobool177.not, ptr @.str.12, ptr @.str.11
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv187, i32 noundef %conv189, ptr noundef nonnull %cond193, ptr noundef nonnull @.str.79) #11
  br label %if.end195

if.end195:                                        ; preds = %do.end184, %if.end155.if.end195_crit_edge
  %err.6 = phi i32 [ 1, %do.end184 ], [ %err.5, %if.end155.if.end195_crit_edge ]
  %prod = getelementptr inbounds %struct.test_s16, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %prod to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %prod, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %59)
  %cmp198.not = icmp eq i16 %54, %59
  br i1 %cmp198.not, label %if.end195.if.end213_crit_edge, label %do.end203

if.end195.if.end213_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

do.end203:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %conv197 = sext i16 %59 to i32
  %conv196 = sext i16 %54 to i32
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %p, align 2
  %conv206 = sext i16 %61 to i32
  %62 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %b, align 2
  %conv208 = sext i16 %63 to i32
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv206, i32 noundef %conv208, i32 noundef %conv197, i32 noundef %conv196, ptr noundef nonnull @.str.79) #11
  br label %if.end213

if.end213:                                        ; preds = %do.end203, %if.end195.if.end213_crit_edge
  %err.7 = phi i32 [ 1, %do.end203 ], [ %err.6, %if.end195.if.end213_crit_edge ]
  %64 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %b, align 2
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %p, align 2
  %68 = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %65, i16 %67)
  %69 = extractvalue { i16, i1 } %68, 1
  %70 = extractvalue { i16, i1 } %68, 0
  %71 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %p_of, align 2, !range !1502
  %73 = zext i1 %69 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %73)
  %cmp238.not = icmp eq i8 %72, %73
  br i1 %cmp238.not, label %if.end213.if.end254_crit_edge, label %do.end243

if.end213.if.end254_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

do.end243:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool236.not = icmp eq i8 %72, 0
  %conv246 = sext i16 %65 to i32
  %conv248 = sext i16 %67 to i32
  %cond252 = select i1 %tobool236.not, ptr @.str.12, ptr @.str.11
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv246, i32 noundef %conv248, ptr noundef nonnull %cond252, ptr noundef nonnull @.str.79) #11
  br label %if.end254

if.end254:                                        ; preds = %do.end243, %if.end213.if.end254_crit_edge
  %err.8 = phi i32 [ 1, %do.end243 ], [ %err.7, %if.end213.if.end254_crit_edge ]
  %74 = ptrtoint ptr %prod to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %prod, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %75)
  %cmp258.not = icmp eq i16 %70, %75
  br i1 %cmp258.not, label %if.end254.if.end273_crit_edge, label %do.end263

if.end254.if.end273_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

do.end263:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  %conv257 = sext i16 %75 to i32
  %conv255 = sext i16 %70 to i32
  %76 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %b, align 2
  %conv266 = sext i16 %77 to i32
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %p, align 2
  %conv268 = sext i16 %79 to i32
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv266, i32 noundef %conv268, i32 noundef %conv257, i32 noundef %conv255, ptr noundef nonnull @.str.79) #11
  br label %if.end273

if.end273:                                        ; preds = %do.end263, %if.end254.if.end273_crit_edge
  %err.9 = phi i32 [ 1, %do.end263 ], [ %err.8, %if.end254.if.end273_crit_edge ]
  ret i32 %err.9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i16, i1 } @llvm.ssub.with.overflow.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i16, i1 } @llvm.smul.with.overflow.i16(i16, i16) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test_u32(ptr noundef readonly %p) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %b = getelementptr inbounds %struct.test_u32, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %4 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %3)
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %s_of = getelementptr inbounds %struct.test_u32, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_of, align 4, !range !1502
  %9 = zext i1 %5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp8.not = icmp eq i8 %8, %9
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool6.not, ptr @.str.12, ptr @.str.11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %1, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull @.str.100) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 1, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %sum = getelementptr inbounds %struct.test_u32, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %11)
  %cmp18.not = icmp eq i32 %6, %11
  br i1 %cmp18.not, label %if.end.if.end29_crit_edge, label %do.end23

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p, align 4
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %13, i32 noundef %15, i32 noundef %11, i32 noundef %6, ptr noundef nonnull @.str.100) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end.if.end29_crit_edge
  %err.1 = phi i32 [ 1, %do.end23 ], [ %err.0, %if.end.if.end29_crit_edge ]
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b, align 4
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p, align 4
  %20 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %17, i32 %19)
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  %23 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_of, align 4, !range !1502
  %25 = zext i1 %21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp54.not = icmp eq i8 %24, %25
  br i1 %cmp54.not, label %if.end29.if.end68_crit_edge, label %do.end59

if.end29.if.end68_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end59:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool52.not = icmp eq i8 %24, 0
  %cond66 = select i1 %tobool52.not, ptr @.str.12, ptr @.str.11
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %cond66, ptr noundef nonnull @.str.100) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end59, %if.end29.if.end68_crit_edge
  %err.2 = phi i32 [ 1, %do.end59 ], [ %err.1, %if.end29.if.end68_crit_edge ]
  %26 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %27)
  %cmp70.not = icmp eq i32 %22, %27
  br i1 %cmp70.not, label %if.end68.if.end81_crit_edge, label %do.end75

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b, align 4
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p, align 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %29, i32 noundef %31, i32 noundef %27, i32 noundef %22, ptr noundef nonnull @.str.100) #11
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %if.end68.if.end81_crit_edge
  %err.3 = phi i32 [ 1, %do.end75 ], [ %err.2, %if.end68.if.end81_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p, align 4
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b, align 4
  %36 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %35)
  %37 = extractvalue { i32, i1 } %36, 1
  %38 = extractvalue { i32, i1 } %36, 0
  %d_of = getelementptr inbounds %struct.test_u32, ptr %p, i32 0, i32 6
  %39 = ptrtoint ptr %d_of to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d_of, align 1, !range !1502
  %41 = zext i1 %37 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp105.not = icmp eq i8 %40, %41
  br i1 %cmp105.not, label %if.end81.if.end119_crit_edge, label %do.end110

if.end81.if.end119_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

do.end110:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool103.not = icmp eq i8 %40, 0
  %cond117 = select i1 %tobool103.not, ptr @.str.12, ptr @.str.11
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %33, i32 noundef %35, ptr noundef nonnull %cond117, ptr noundef nonnull @.str.100) #11
  br label %if.end119

if.end119:                                        ; preds = %do.end110, %if.end81.if.end119_crit_edge
  %err.4 = phi i32 [ 1, %do.end110 ], [ %err.3, %if.end81.if.end119_crit_edge ]
  %diff = getelementptr inbounds %struct.test_u32, ptr %p, i32 0, i32 3
  %42 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %43)
  %cmp120.not = icmp eq i32 %38, %43
  br i1 %cmp120.not, label %if.end119.if.end131_crit_edge, label %do.end125

if.end119.if.end131_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

do.end125:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %p, align 4
  %46 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %b, align 4
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %45, i32 noundef %47, i32 noundef %43, i32 noundef %38, ptr noundef nonnull @.str.100) #11
  br label %if.end131

if.end131:                                        ; preds = %do.end125, %if.end119.if.end131_crit_edge
  %err.5 = phi i32 [ 1, %do.end125 ], [ %err.4, %if.end119.if.end131_crit_edge ]
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p, align 4
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %b, align 4
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 %51)
  %53 = extractvalue { i32, i1 } %52, 1
  %54 = extractvalue { i32, i1 } %52, 0
  %p_of = getelementptr inbounds %struct.test_u32, ptr %p, i32 0, i32 7
  %55 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_of, align 2, !range !1502
  %57 = zext i1 %53 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp155.not = icmp eq i8 %56, %57
  br i1 %cmp155.not, label %if.end131.if.end169_crit_edge, label %do.end160

if.end131.if.end169_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

do.end160:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool153.not = icmp eq i8 %56, 0
  %cond167 = select i1 %tobool153.not, ptr @.str.12, ptr @.str.11
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %49, i32 noundef %51, ptr noundef nonnull %cond167, ptr noundef nonnull @.str.100) #11
  br label %if.end169

if.end169:                                        ; preds = %do.end160, %if.end131.if.end169_crit_edge
  %err.6 = phi i32 [ 1, %do.end160 ], [ %err.5, %if.end131.if.end169_crit_edge ]
  %prod = getelementptr inbounds %struct.test_u32, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %59)
  %cmp170.not = icmp eq i32 %54, %59
  br i1 %cmp170.not, label %if.end169.if.end181_crit_edge, label %do.end175

if.end169.if.end181_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

do.end175:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %p, align 4
  %62 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %b, align 4
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %61, i32 noundef %63, i32 noundef %59, i32 noundef %54, ptr noundef nonnull @.str.100) #11
  br label %if.end181

if.end181:                                        ; preds = %do.end175, %if.end169.if.end181_crit_edge
  %err.7 = phi i32 [ 1, %do.end175 ], [ %err.6, %if.end169.if.end181_crit_edge ]
  %64 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %b, align 4
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p, align 4
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %65, i32 %67)
  %69 = extractvalue { i32, i1 } %68, 1
  %70 = extractvalue { i32, i1 } %68, 0
  %71 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %p_of, align 2, !range !1502
  %73 = zext i1 %69 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %73)
  %cmp206.not = icmp eq i8 %72, %73
  br i1 %cmp206.not, label %if.end181.if.end220_crit_edge, label %do.end211

if.end181.if.end220_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

do.end211:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool204.not = icmp eq i8 %72, 0
  %cond218 = select i1 %tobool204.not, ptr @.str.12, ptr @.str.11
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %65, i32 noundef %67, ptr noundef nonnull %cond218, ptr noundef nonnull @.str.100) #11
  br label %if.end220

if.end220:                                        ; preds = %do.end211, %if.end181.if.end220_crit_edge
  %err.8 = phi i32 [ 1, %do.end211 ], [ %err.7, %if.end181.if.end220_crit_edge ]
  %74 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %75)
  %cmp222.not = icmp eq i32 %70, %75
  br i1 %cmp222.not, label %if.end220.if.end233_crit_edge, label %do.end227

if.end220.if.end233_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

do.end227:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %b, align 4
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %p, align 4
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %77, i32 noundef %79, i32 noundef %75, i32 noundef %70, ptr noundef nonnull @.str.100) #11
  br label %if.end233

if.end233:                                        ; preds = %do.end227, %if.end220.if.end233_crit_edge
  %err.9 = phi i32 [ 1, %do.end227 ], [ %err.8, %if.end220.if.end233_crit_edge ]
  ret i32 %err.9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_test_s32(ptr noundef readonly %p) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %b = getelementptr inbounds %struct.test_s32, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 %3)
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %s_of = getelementptr inbounds %struct.test_s32, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_of, align 4, !range !1502
  %9 = zext i1 %5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp8.not = icmp eq i8 %8, %9
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool6.not, ptr @.str.12, ptr @.str.11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull @.str.127) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 1, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %sum = getelementptr inbounds %struct.test_s32, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %11)
  %cmp18.not = icmp eq i32 %6, %11
  br i1 %cmp18.not, label %if.end.if.end29_crit_edge, label %do.end23

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p, align 4
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %13, i32 noundef %15, i32 noundef %11, i32 noundef %6, ptr noundef nonnull @.str.127) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end.if.end29_crit_edge
  %err.1 = phi i32 [ 1, %do.end23 ], [ %err.0, %if.end.if.end29_crit_edge ]
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b, align 4
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p, align 4
  %20 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 %19)
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  %23 = ptrtoint ptr %s_of to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_of, align 4, !range !1502
  %25 = zext i1 %21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp54.not = icmp eq i8 %24, %25
  br i1 %cmp54.not, label %if.end29.if.end68_crit_edge, label %do.end59

if.end29.if.end68_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end59:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool52.not = icmp eq i8 %24, 0
  %cond66 = select i1 %tobool52.not, ptr @.str.12, ptr @.str.11
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %cond66, ptr noundef nonnull @.str.127) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end59, %if.end29.if.end68_crit_edge
  %err.2 = phi i32 [ 1, %do.end59 ], [ %err.1, %if.end29.if.end68_crit_edge ]
  %26 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %27)
  %cmp70.not = icmp eq i32 %22, %27
  br i1 %cmp70.not, label %if.end68.if.end81_crit_edge, label %do.end75

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b, align 4
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p, align 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %29, i32 noundef %31, i32 noundef %27, i32 noundef %22, ptr noundef nonnull @.str.127) #11
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %if.end68.if.end81_crit_edge
  %err.3 = phi i32 [ 1, %do.end75 ], [ %err.2, %if.end68.if.end81_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p, align 4
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b, align 4
  %36 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %33, i32 %35)
  %37 = extractvalue { i32, i1 } %36, 1
  %38 = extractvalue { i32, i1 } %36, 0
  %d_of = getelementptr inbounds %struct.test_s32, ptr %p, i32 0, i32 6
  %39 = ptrtoint ptr %d_of to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %d_of, align 1, !range !1502
  %41 = zext i1 %37 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp105.not = icmp eq i8 %40, %41
  br i1 %cmp105.not, label %if.end81.if.end119_crit_edge, label %do.end110

if.end81.if.end119_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

do.end110:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool103.not = icmp eq i8 %40, 0
  %cond117 = select i1 %tobool103.not, ptr @.str.12, ptr @.str.11
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %33, i32 noundef %35, ptr noundef nonnull %cond117, ptr noundef nonnull @.str.127) #11
  br label %if.end119

if.end119:                                        ; preds = %do.end110, %if.end81.if.end119_crit_edge
  %err.4 = phi i32 [ 1, %do.end110 ], [ %err.3, %if.end81.if.end119_crit_edge ]
  %diff = getelementptr inbounds %struct.test_s32, ptr %p, i32 0, i32 3
  %42 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %43)
  %cmp120.not = icmp eq i32 %38, %43
  br i1 %cmp120.not, label %if.end119.if.end131_crit_edge, label %do.end125

if.end119.if.end131_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

do.end125:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %p, align 4
  %46 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %b, align 4
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %45, i32 noundef %47, i32 noundef %43, i32 noundef %38, ptr noundef nonnull @.str.127) #11
  br label %if.end131

if.end131:                                        ; preds = %do.end125, %if.end119.if.end131_crit_edge
  %err.5 = phi i32 [ 1, %do.end125 ], [ %err.4, %if.end119.if.end131_crit_edge ]
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p, align 4
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %b, align 4
  %52 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %49, i32 %51)
  %53 = extractvalue { i32, i1 } %52, 1
  %54 = extractvalue { i32, i1 } %52, 0
  %p_of = getelementptr inbounds %struct.test_s32, ptr %p, i32 0, i32 7
  %55 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_of, align 2, !range !1502
  %57 = zext i1 %53 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp155.not = icmp eq i8 %56, %57
  br i1 %cmp155.not, label %if.end131.if.end169_crit_edge, label %do.end160

if.end131.if.end169_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

do.end160:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool153.not = icmp eq i8 %56, 0
  %cond167 = select i1 %tobool153.not, ptr @.str.12, ptr @.str.11
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %49, i32 noundef %51, ptr noundef nonnull %cond167, ptr noundef nonnull @.str.127) #11
  br label %if.end169

if.end169:                                        ; preds = %do.end160, %if.end131.if.end169_crit_edge
  %err.6 = phi i32 [ 1, %do.end160 ], [ %err.5, %if.end131.if.end169_crit_edge ]
  %prod = getelementptr inbounds %struct.test_s32, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %59)
  %cmp170.not = icmp eq i32 %54, %59
  br i1 %cmp170.not, label %if.end169.if.end181_crit_edge, label %do.end175

if.end169.if.end181_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

do.end175:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %p, align 4
  %62 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %b, align 4
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %61, i32 noundef %63, i32 noundef %59, i32 noundef %54, ptr noundef nonnull @.str.127) #11
  br label %if.end181

if.end181:                                        ; preds = %do.end175, %if.end169.if.end181_crit_edge
  %err.7 = phi i32 [ 1, %do.end175 ], [ %err.6, %if.end169.if.end181_crit_edge ]
  %64 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %b, align 4
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p, align 4
  %68 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %65, i32 %67)
  %69 = extractvalue { i32, i1 } %68, 1
  %70 = extractvalue { i32, i1 } %68, 0
  %71 = ptrtoint ptr %p_of to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %p_of, align 2, !range !1502
  %73 = zext i1 %69 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %73)
  %cmp206.not = icmp eq i8 %72, %73
  br i1 %cmp206.not, label %if.end181.if.end220_crit_edge, label %do.end211

if.end181.if.end220_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

do.end211:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool204.not = icmp eq i8 %72, 0
  %cond218 = select i1 %tobool204.not, ptr @.str.12, ptr @.str.11
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %65, i32 noundef %67, ptr noundef nonnull %cond218, ptr noundef nonnull @.str.127) #11
  br label %if.end220

if.end220:                                        ; preds = %do.end211, %if.end181.if.end220_crit_edge
  %err.8 = phi i32 [ 1, %do.end211 ], [ %err.7, %if.end181.if.end220_crit_edge ]
  %74 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %75)
  %cmp222.not = icmp eq i32 %70, %75
  br i1 %cmp222.not, label %if.end220.if.end233_crit_edge, label %do.end227

if.end220.if.end233_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

do.end227:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %b, align 4
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %p, align 4
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %77, i32 noundef %79, i32 noundef %75, i32 noundef %70, ptr noundef nonnull @.str.127) #11
  br label %if.end233

if.end233:                                        ; preds = %do.end227, %if.end220.if.end233_crit_edge
  %err.9 = phi i32 [ 1, %do.end227 ], [ %err.8, %if.end220.if.end233_crit_edge ]
  ret i32 %err.9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__root_device_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kmalloc() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 11456, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1127) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11456) #14
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1130) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i = select i1 %8, i32 -1, i32 %9
  %call9.i27 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 11456) #14
  %tobool13.not = icmp eq ptr %call9.i27, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1133) #11
  tail call void @kfree(ptr noundef nonnull %call9.i27) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1136) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kmalloc_node() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 11456, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1138) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kfree(ptr noundef nonnull %call.i.i) #12
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call.i4.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11456) #14
  %tobool3.not = icmp eq ptr %call.i4.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1141) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call.i4.i) #12
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i = select i1 %8, i32 -1, i32 %9
  %call.i4.i23 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 11456) #14
  %tobool13.not = icmp eq ptr %call.i4.i23, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1144) #11
  tail call void @kfree(ptr noundef nonnull %call.i4.i23) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1147) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kzalloc() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 11712, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1149) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11712) #14
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1152) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i = select i1 %8, i32 -1, i32 %9
  %call9.i.i27 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 11712) #14
  %tobool13.not = icmp eq ptr %call9.i.i27, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1155) #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i27) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1158) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kzalloc_node() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 11712, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1160) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #12
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call.i4.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11712) #14
  %tobool3.not = icmp eq ptr %call.i4.i.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1163) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call.i4.i.i) #12
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i = select i1 %8, i32 -1, i32 %9
  %call.i4.i.i23 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 11712) #14
  %tobool13.not = icmp eq ptr %call.i4.i.i23, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1166) #11
  tail call void @kfree(ptr noundef nonnull %call.i4.i.i23) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1169) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kvmalloc() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1, i32 noundef 11456, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1171) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kvfree(ptr noundef nonnull %call.i) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call.i1 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 11456, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i1, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1174) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kvfree(ptr noundef nonnull %call.i1) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call.i2 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 11456, i32 noundef -1) #14
  %tobool13.not = icmp eq ptr %call.i2, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1177) #11
  tail call void @kvfree(ptr noundef nonnull %call.i2) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1180) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kvmalloc_node() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call = tail call noalias ptr @kvmalloc_node(i32 noundef 1, i32 noundef 11456, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1182) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kvfree(ptr noundef nonnull %call) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call2 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 11456, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1185) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kvfree(ptr noundef nonnull %call2) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call12 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 11456, i32 noundef -1) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1188) #11
  tail call void @kvfree(ptr noundef nonnull %call12) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1191) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kvzalloc() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1, i32 noundef 11712, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1193) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call.i.i1 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 11712, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i.i1, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1196) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kvfree(ptr noundef nonnull %call.i.i1) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call.i.i2 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 11712, i32 noundef -1) #14
  %tobool13.not = icmp eq ptr %call.i.i2, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1199) #11
  tail call void @kvfree(ptr noundef nonnull %call.i.i2) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1202) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kvzalloc_node() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1, i32 noundef 11712, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1204) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kvfree(ptr noundef nonnull %call.i) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call.i1 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 11712, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i1, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1207) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @kvfree(ptr noundef nonnull %call.i1) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call.i2 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 11712, i32 noundef -1) #14
  %tobool13.not = icmp eq ptr %call.i2, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1210) #11
  tail call void @kvfree(ptr noundef nonnull %call.i2) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1213) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_vmalloc() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef 1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1215) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @vfree(ptr noundef nonnull %call) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call2 = tail call noalias ptr @vmalloc(i32 noundef %mul) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1218) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @vfree(ptr noundef nonnull %call2) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call12 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1221) #11
  tail call void @vfree(ptr noundef nonnull %call12) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1224) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_vmalloc_node() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call = tail call noalias ptr @vmalloc_node(i32 noundef 1, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1226) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @vfree(ptr noundef nonnull %call) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call2 = tail call noalias ptr @vmalloc_node(i32 noundef %mul, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1229) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @vfree(ptr noundef nonnull %call2) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call12 = tail call noalias ptr @vmalloc_node(i32 noundef %retval.0.i, i32 noundef -1) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1232) #11
  tail call void @vfree(ptr noundef nonnull %call12) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1235) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_vzalloc() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call = tail call noalias ptr @vzalloc(i32 noundef 1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1237) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @vfree(ptr noundef nonnull %call) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call2 = tail call noalias ptr @vzalloc(i32 noundef %mul) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1240) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @vfree(ptr noundef nonnull %call2) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call12 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1243) #11
  tail call void @vfree(ptr noundef nonnull %call12) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1246) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_vzalloc_node() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call = tail call noalias ptr @vzalloc_node(i32 noundef 1, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1248) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @vfree(ptr noundef nonnull %call) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call2 = tail call noalias ptr @vzalloc_node(i32 noundef %mul, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1251) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @vfree(ptr noundef nonnull %call2) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call12 = tail call noalias ptr @vzalloc_node(i32 noundef %retval.0.i, i32 noundef -1) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1254) #11
  tail call void @vfree(ptr noundef nonnull %call12) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1257) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_devm_kmalloc(ptr noundef %arg) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %arg, i32 noundef 1, i32 noundef 11456) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1259) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @devm_kfree(ptr noundef %arg, ptr noundef nonnull %call) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call2 = tail call noalias ptr @devm_kmalloc(ptr noundef %arg, i32 noundef %mul, i32 noundef 11456) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1262) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @devm_kfree(ptr noundef %arg, ptr noundef nonnull %call2) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call12 = tail call noalias ptr @devm_kmalloc(ptr noundef %arg, i32 noundef %retval.0.i, i32 noundef 11456) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1265) #11
  tail call void @devm_kfree(ptr noundef %arg, ptr noundef nonnull %call12) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1268) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_devm_kzalloc(ptr noundef %arg) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %a, align 4
  store volatile i32 20480, ptr %a, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %b, align 4
  store volatile i32 209716, ptr %b, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %arg, i32 noundef 1, i32 noundef 11712) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1270) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @devm_kfree(ptr noundef %arg, ptr noundef nonnull %call.i) #12
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %a.0.a.0.a.0. = load volatile i32, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %b.0.b.0.b.0. = load volatile i32, ptr %b, align 4
  %mul = mul i32 %b.0.b.0.b.0., %a.0.a.0.a.0.
  %call.i40 = tail call noalias ptr @devm_kmalloc(ptr noundef %arg, i32 noundef %mul, i32 noundef 11712) #12
  %tobool3.not = icmp eq ptr %call.i40, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1273) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @devm_kfree(ptr noundef %arg, ptr noundef nonnull %call.i40) #12
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %a.0.a.0.a.0.34 = load volatile i32, ptr %a, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0.b.0.b.0.33 = load volatile i32, ptr %b, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %a.0.a.0.a.0.34, i32 %b.0.b.0.b.0.33) #12
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call.i41 = tail call noalias ptr @devm_kmalloc(ptr noundef %arg, i32 noundef %retval.0.i, i32 noundef 11712) #12
  %tobool13.not = icmp eq ptr %call.i41, null
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1276) #11
  tail call void @devm_kfree(ptr noundef %arg, ptr noundef nonnull %call.i41) #12
  br label %cleanup

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1279) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end23 ], [ 1, %do.end7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 762)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 762)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !172, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !252, !253, !254, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !328, !329, !330, !331, !332, !333, !334, !335, !337, !338, !339, !340, !341, !342, !343, !344, !346, !347, !348, !349, !350, !351, !352, !353, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !399, !400, !401, !402, !403, !404, !405, !406, !408, !409, !410, !411, !412, !413, !414, !415, !417, !418, !419, !420, !421, !422, !423, !424, !426, !427, !428, !429, !430, !431, !432, !433, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !480, !481, !482, !483, !484, !485, !486, !487, !489, !490, !491, !492, !493, !494, !495, !496, !498, !499, !500, !501, !502, !503, !504, !505, !507, !508, !509, !510, !511, !512, !513, !514, !516, !517, !518, !519, !520, !521, !522, !523, !525, !526, !527, !528, !529, !530, !531, !532, !533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !545, !546, !547, !548, !549, !550, !551, !552, !554, !555, !556, !557, !558, !559, !560, !561, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !574, !575, !576, !577, !578, !579, !580, !581, !582, !584, !585, !586, !587, !588, !589, !590, !591, !593, !594, !595, !596, !597, !598, !599, !600, !602, !603, !604, !605, !606, !607, !608, !609, !611, !612, !613, !614, !615, !616, !617, !618, !619, !621, !622, !623, !624, !625, !626, !627, !628, !630, !631, !632, !633, !634, !635, !636, !637, !639, !640, !641, !642, !643, !644, !645, !646, !648, !649, !650, !651, !652, !653, !654, !655, !657, !658, !659, !660, !661, !662, !663, !664, !666, !667, !668, !669, !670, !671, !672, !673, !674, !676, !677, !678, !679, !680, !681, !682, !683, !684, !686, !687, !688, !689, !690, !691, !692, !693, !694, !696, !697, !698, !699, !700, !701, !702, !703, !705, !706, !707, !708, !709, !710, !711, !712, !713, !715, !716, !717, !718, !719, !720, !721, !722, !723, !725, !726, !727, !728, !729, !730, !731, !732, !733, !735, !736, !737, !738, !739, !740, !741, !742, !743, !745, !746, !747, !748, !749, !750, !751, !752, !754, !755, !756, !757, !758, !759, !760, !761, !762, !764, !765, !766, !767, !768, !769, !770, !771, !772, !774, !775, !776, !777, !778, !779, !780, !781, !783, !784, !785, !786, !787, !788, !789, !790, !792, !793, !794, !795, !796, !797, !798, !799, !801, !802, !803, !804, !805, !806, !807, !808, !810, !811, !812, !813, !814, !815, !816, !817, !818, !820, !821, !822, !823, !824, !825, !826, !827, !829, !830, !831, !832, !833, !834, !835, !836, !837, !839, !840, !841, !842, !843, !844, !845, !846, !848, !849, !850, !851, !852, !853, !854, !855, !856, !858, !859, !860, !861, !862, !863, !864, !865, !867, !868, !869, !870, !871, !872, !873, !874, !875, !877, !878, !879, !880, !881, !882, !883, !884, !886, !887, !888, !889, !890, !891, !892, !893, !894, !896, !897, !898, !899, !900, !901, !902, !903, !904, !906, !907, !908, !909, !910, !911, !912, !913, !915, !916, !917, !918, !919, !920, !921, !922, !923, !925, !926, !927, !928, !929, !930, !931, !932, !934, !935, !936, !937, !938, !939, !940, !941, !942, !944, !945, !946, !947, !948, !949, !950, !951, !953, !954, !955, !956, !957, !958, !959, !960, !961, !963, !964, !965, !966, !967, !968, !969, !970, !972, !973, !974, !975, !976, !977, !978, !979, !980, !982, !983, !984, !985, !986, !987, !988, !989, !991, !992, !993, !994, !995, !996, !997, !998, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1295, !1296, !1297, !1298, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493}
!llvm.module.flags = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500}
!llvm.ident = !{!1501}

!0 = !{ptr @__initcall__kmod_test_overflow__228_612_test_module_init6, !1, !"__initcall__kmod_test_overflow__228_612_test_module_init6", i1 false, i1 false}
!1 = !{!"../lib/test_overflow.c", i32 612, i32 1}
!2 = !{ptr @__exitcall_test_module_exit, !3, !"__exitcall_test_module_exit", i1 false, i1 false}
!3 = !{!"../lib/test_overflow.c", i32 613, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../lib/test_overflow.c", i32 614, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/test_overflow.c", i32 600, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @test_module_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @test_module_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test_overflow.c", i32 603, i32 3}
!15 = !{ptr @test_module_init._entry.3, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_module_init._entry_ptr.5, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test_overflow.c", i32 262, i32 1}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @test_u8_overflow._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @test_u8_overflow._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @do_test_u8._entry, !18, !"_entry", i1 false, i1 false}
!26 = !{ptr @do_test_u8._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @do_test_u8._entry.13, !18, !"_entry", i1 false, i1 false}
!31 = !{ptr @do_test_u8._entry_ptr.15, !18, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @do_test_u8._entry.16, !18, !"_entry", i1 false, i1 false}
!33 = !{ptr @do_test_u8._entry_ptr.17, !18, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @do_test_u8._entry.18, !18, !"_entry", i1 false, i1 false}
!35 = !{ptr @do_test_u8._entry_ptr.19, !18, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !18, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @do_test_u8._entry.20, !18, !"_entry", i1 false, i1 false}
!38 = !{ptr @do_test_u8._entry_ptr.22, !18, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !18, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @do_test_u8._entry.23, !18, !"_entry", i1 false, i1 false}
!41 = !{ptr @do_test_u8._entry_ptr.25, !18, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !18, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @do_test_u8._entry.26, !18, !"_entry", i1 false, i1 false}
!44 = !{ptr @do_test_u8._entry_ptr.28, !18, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !18, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @do_test_u8._entry.29, !18, !"_entry", i1 false, i1 false}
!47 = !{ptr @do_test_u8._entry_ptr.31, !18, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @do_test_u8._entry.32, !18, !"_entry", i1 false, i1 false}
!49 = !{ptr @do_test_u8._entry_ptr.33, !18, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @do_test_u8._entry.34, !18, !"_entry", i1 false, i1 false}
!51 = !{ptr @do_test_u8._entry_ptr.35, !18, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @u8_tests, !53, !"u8_tests", i1 false, i1 false}
!53 = !{!"../lib/test_overflow.c", i32 24, i32 1}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/test_overflow.c", i32 263, i32 1}
!56 = !{ptr @test_s8_overflow._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @test_s8_overflow._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.38, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @do_test_s8._entry, !55, !"_entry", i1 false, i1 false}
!61 = !{ptr @do_test_s8._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @do_test_s8._entry.39, !55, !"_entry", i1 false, i1 false}
!63 = !{ptr @do_test_s8._entry_ptr.40, !55, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @do_test_s8._entry.41, !55, !"_entry", i1 false, i1 false}
!65 = !{ptr @do_test_s8._entry_ptr.42, !55, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @do_test_s8._entry.43, !55, !"_entry", i1 false, i1 false}
!67 = !{ptr @do_test_s8._entry_ptr.44, !55, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @do_test_s8._entry.45, !55, !"_entry", i1 false, i1 false}
!69 = !{ptr @do_test_s8._entry_ptr.46, !55, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @do_test_s8._entry.47, !55, !"_entry", i1 false, i1 false}
!71 = !{ptr @do_test_s8._entry_ptr.48, !55, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @do_test_s8._entry.49, !55, !"_entry", i1 false, i1 false}
!73 = !{ptr @do_test_s8._entry_ptr.50, !55, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @do_test_s8._entry.51, !55, !"_entry", i1 false, i1 false}
!75 = !{ptr @do_test_s8._entry_ptr.52, !55, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @do_test_s8._entry.53, !55, !"_entry", i1 false, i1 false}
!77 = !{ptr @do_test_s8._entry_ptr.54, !55, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @do_test_s8._entry.55, !55, !"_entry", i1 false, i1 false}
!79 = !{ptr @do_test_s8._entry_ptr.56, !55, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @s8_tests, !81, !"s8_tests", i1 false, i1 false}
!81 = !{!"../lib/test_overflow.c", i32 116, i32 1}
!82 = !{ptr @.str.57, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/test_overflow.c", i32 264, i32 1}
!84 = !{ptr @test_u16_overflow._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @test_u16_overflow._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.58, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.59, !83, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @do_test_u16._entry, !83, !"_entry", i1 false, i1 false}
!89 = !{ptr @do_test_u16._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @do_test_u16._entry.60, !83, !"_entry", i1 false, i1 false}
!91 = !{ptr @do_test_u16._entry_ptr.61, !83, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @do_test_u16._entry.62, !83, !"_entry", i1 false, i1 false}
!93 = !{ptr @do_test_u16._entry_ptr.63, !83, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @do_test_u16._entry.64, !83, !"_entry", i1 false, i1 false}
!95 = !{ptr @do_test_u16._entry_ptr.65, !83, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @do_test_u16._entry.66, !83, !"_entry", i1 false, i1 false}
!97 = !{ptr @do_test_u16._entry_ptr.67, !83, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @do_test_u16._entry.68, !83, !"_entry", i1 false, i1 false}
!99 = !{ptr @do_test_u16._entry_ptr.69, !83, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @do_test_u16._entry.70, !83, !"_entry", i1 false, i1 false}
!101 = !{ptr @do_test_u16._entry_ptr.71, !83, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @do_test_u16._entry.72, !83, !"_entry", i1 false, i1 false}
!103 = !{ptr @do_test_u16._entry_ptr.73, !83, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @do_test_u16._entry.74, !83, !"_entry", i1 false, i1 false}
!105 = !{ptr @do_test_u16._entry_ptr.75, !83, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @do_test_u16._entry.76, !83, !"_entry", i1 false, i1 false}
!107 = !{ptr @do_test_u16._entry_ptr.77, !83, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @u16_tests, !109, !"u16_tests", i1 false, i1 false}
!109 = !{!"../lib/test_overflow.c", i32 47, i32 1}
!110 = !{ptr @.str.78, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../lib/test_overflow.c", i32 265, i32 1}
!112 = !{ptr @test_s16_overflow._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @test_s16_overflow._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.79, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.80, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @do_test_s16._entry, !111, !"_entry", i1 false, i1 false}
!117 = !{ptr @do_test_s16._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @do_test_s16._entry.81, !111, !"_entry", i1 false, i1 false}
!119 = !{ptr @do_test_s16._entry_ptr.82, !111, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @do_test_s16._entry.83, !111, !"_entry", i1 false, i1 false}
!121 = !{ptr @do_test_s16._entry_ptr.84, !111, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @do_test_s16._entry.85, !111, !"_entry", i1 false, i1 false}
!123 = !{ptr @do_test_s16._entry_ptr.86, !111, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @do_test_s16._entry.87, !111, !"_entry", i1 false, i1 false}
!125 = !{ptr @do_test_s16._entry_ptr.88, !111, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @do_test_s16._entry.89, !111, !"_entry", i1 false, i1 false}
!127 = !{ptr @do_test_s16._entry_ptr.90, !111, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @do_test_s16._entry.91, !111, !"_entry", i1 false, i1 false}
!129 = !{ptr @do_test_s16._entry_ptr.92, !111, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @do_test_s16._entry.93, !111, !"_entry", i1 false, i1 false}
!131 = !{ptr @do_test_s16._entry_ptr.94, !111, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @do_test_s16._entry.95, !111, !"_entry", i1 false, i1 false}
!133 = !{ptr @do_test_s16._entry_ptr.96, !111, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @do_test_s16._entry.97, !111, !"_entry", i1 false, i1 false}
!135 = !{ptr @do_test_s16._entry_ptr.98, !111, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @s16_tests, !137, !"s16_tests", i1 false, i1 false}
!137 = !{!"../lib/test_overflow.c", i32 143, i32 1}
!138 = !{ptr @.str.99, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../lib/test_overflow.c", i32 266, i32 1}
!140 = !{ptr @test_u32_overflow._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @test_u32_overflow._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.100, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.101, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.102, !139, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @do_test_u32._entry, !139, !"_entry", i1 false, i1 false}
!146 = !{ptr @do_test_u32._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.104, !139, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @do_test_u32._entry.103, !139, !"_entry", i1 false, i1 false}
!149 = !{ptr @do_test_u32._entry_ptr.105, !139, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @do_test_u32._entry.106, !139, !"_entry", i1 false, i1 false}
!151 = !{ptr @do_test_u32._entry_ptr.107, !139, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @do_test_u32._entry.108, !139, !"_entry", i1 false, i1 false}
!153 = !{ptr @do_test_u32._entry_ptr.109, !139, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.111, !139, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @do_test_u32._entry.110, !139, !"_entry", i1 false, i1 false}
!156 = !{ptr @do_test_u32._entry_ptr.112, !139, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.114, !139, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @do_test_u32._entry.113, !139, !"_entry", i1 false, i1 false}
!159 = !{ptr @do_test_u32._entry_ptr.115, !139, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.117, !139, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @do_test_u32._entry.116, !139, !"_entry", i1 false, i1 false}
!162 = !{ptr @do_test_u32._entry_ptr.118, !139, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.120, !139, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @do_test_u32._entry.119, !139, !"_entry", i1 false, i1 false}
!165 = !{ptr @do_test_u32._entry_ptr.121, !139, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @do_test_u32._entry.122, !139, !"_entry", i1 false, i1 false}
!167 = !{ptr @do_test_u32._entry_ptr.123, !139, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @do_test_u32._entry.124, !139, !"_entry", i1 false, i1 false}
!169 = !{ptr @do_test_u32._entry_ptr.125, !139, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @u32_tests, !171, !"u32_tests", i1 false, i1 false}
!171 = !{!"../lib/test_overflow.c", i32 69, i32 1}
!172 = !{ptr @.str.126, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../lib/test_overflow.c", i32 267, i32 1}
!174 = !{ptr @test_s32_overflow._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @test_s32_overflow._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.127, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.128, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @do_test_s32._entry, !173, !"_entry", i1 false, i1 false}
!179 = !{ptr @do_test_s32._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @do_test_s32._entry.129, !173, !"_entry", i1 false, i1 false}
!181 = !{ptr @do_test_s32._entry_ptr.130, !173, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @do_test_s32._entry.131, !173, !"_entry", i1 false, i1 false}
!183 = !{ptr @do_test_s32._entry_ptr.132, !173, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @do_test_s32._entry.133, !173, !"_entry", i1 false, i1 false}
!185 = !{ptr @do_test_s32._entry_ptr.134, !173, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @do_test_s32._entry.135, !173, !"_entry", i1 false, i1 false}
!187 = !{ptr @do_test_s32._entry_ptr.136, !173, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @do_test_s32._entry.137, !173, !"_entry", i1 false, i1 false}
!189 = !{ptr @do_test_s32._entry_ptr.138, !173, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @do_test_s32._entry.139, !173, !"_entry", i1 false, i1 false}
!191 = !{ptr @do_test_s32._entry_ptr.140, !173, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @do_test_s32._entry.141, !173, !"_entry", i1 false, i1 false}
!193 = !{ptr @do_test_s32._entry_ptr.142, !173, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @do_test_s32._entry.143, !173, !"_entry", i1 false, i1 false}
!195 = !{ptr @do_test_s32._entry_ptr.144, !173, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @do_test_s32._entry.145, !173, !"_entry", i1 false, i1 false}
!197 = !{ptr @do_test_s32._entry_ptr.146, !173, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @s32_tests, !199, !"s32_tests", i1 false, i1 false}
!199 = !{!"../lib/test_overflow.c", i32 166, i32 1}
!200 = !{ptr @.str.147, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../lib/test_overflow.c", i32 323, i32 9}
!202 = !{ptr @.str.148, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @test_overflow_shift._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @test_overflow_shift._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.149, !201, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.150, !201, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.152, !201, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @test_overflow_shift._entry.151, !201, !"_entry", i1 false, i1 false}
!209 = !{ptr @test_overflow_shift._entry_ptr.153, !201, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.154, !201, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.156, !201, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @test_overflow_shift._entry.155, !201, !"_entry", i1 false, i1 false}
!213 = !{ptr @test_overflow_shift._entry_ptr.157, !201, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.159, !201, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @test_overflow_shift._entry.158, !201, !"_entry", i1 false, i1 false}
!216 = !{ptr @test_overflow_shift._entry_ptr.160, !201, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @test_overflow_shift._entry.161, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../lib/test_overflow.c", i32 324, i32 9}
!219 = !{ptr @test_overflow_shift._entry_ptr.162, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.163, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @test_overflow_shift._entry.164, !218, !"_entry", i1 false, i1 false}
!222 = !{ptr @test_overflow_shift._entry_ptr.165, !218, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.166, !218, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @test_overflow_shift._entry.167, !218, !"_entry", i1 false, i1 false}
!225 = !{ptr @test_overflow_shift._entry_ptr.168, !218, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @test_overflow_shift._entry.169, !218, !"_entry", i1 false, i1 false}
!227 = !{ptr @test_overflow_shift._entry_ptr.170, !218, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @test_overflow_shift._entry.171, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../lib/test_overflow.c", i32 325, i32 9}
!230 = !{ptr @test_overflow_shift._entry_ptr.172, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.173, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @test_overflow_shift._entry.174, !229, !"_entry", i1 false, i1 false}
!233 = !{ptr @test_overflow_shift._entry_ptr.175, !229, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.176, !229, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @test_overflow_shift._entry.177, !229, !"_entry", i1 false, i1 false}
!236 = !{ptr @test_overflow_shift._entry_ptr.178, !229, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @test_overflow_shift._entry.179, !229, !"_entry", i1 false, i1 false}
!238 = !{ptr @test_overflow_shift._entry_ptr.180, !229, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @test_overflow_shift._entry.181, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../lib/test_overflow.c", i32 326, i32 9}
!241 = !{ptr @test_overflow_shift._entry_ptr.182, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.183, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @test_overflow_shift._entry.184, !240, !"_entry", i1 false, i1 false}
!244 = !{ptr @test_overflow_shift._entry_ptr.185, !240, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.186, !240, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @test_overflow_shift._entry.187, !240, !"_entry", i1 false, i1 false}
!247 = !{ptr @test_overflow_shift._entry_ptr.188, !240, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @test_overflow_shift._entry.189, !240, !"_entry", i1 false, i1 false}
!249 = !{ptr @test_overflow_shift._entry_ptr.190, !240, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @test_overflow_shift._entry.191, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../lib/test_overflow.c", i32 327, i32 9}
!252 = !{ptr @test_overflow_shift._entry_ptr.192, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @test_overflow_shift._entry.193, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @test_overflow_shift._entry_ptr.194, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @test_overflow_shift._entry.195, !251, !"_entry", i1 false, i1 false}
!256 = !{ptr @test_overflow_shift._entry_ptr.196, !251, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @test_overflow_shift._entry.197, !251, !"_entry", i1 false, i1 false}
!258 = !{ptr @test_overflow_shift._entry_ptr.198, !251, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @test_overflow_shift._entry.199, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../lib/test_overflow.c", i32 328, i32 9}
!261 = !{ptr @test_overflow_shift._entry_ptr.200, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.201, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @test_overflow_shift._entry.202, !260, !"_entry", i1 false, i1 false}
!264 = !{ptr @test_overflow_shift._entry_ptr.203, !260, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.204, !260, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @test_overflow_shift._entry.205, !260, !"_entry", i1 false, i1 false}
!267 = !{ptr @test_overflow_shift._entry_ptr.206, !260, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @test_overflow_shift._entry.207, !260, !"_entry", i1 false, i1 false}
!269 = !{ptr @test_overflow_shift._entry_ptr.208, !260, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @test_overflow_shift._entry.209, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../lib/test_overflow.c", i32 329, i32 9}
!272 = !{ptr @test_overflow_shift._entry_ptr.210, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.211, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @test_overflow_shift._entry.212, !271, !"_entry", i1 false, i1 false}
!275 = !{ptr @test_overflow_shift._entry_ptr.213, !271, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.214, !271, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @test_overflow_shift._entry.215, !271, !"_entry", i1 false, i1 false}
!278 = !{ptr @test_overflow_shift._entry_ptr.216, !271, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @test_overflow_shift._entry.217, !271, !"_entry", i1 false, i1 false}
!280 = !{ptr @test_overflow_shift._entry_ptr.218, !271, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @test_overflow_shift._entry.219, !282, !"_entry", i1 false, i1 false}
!282 = !{!"../lib/test_overflow.c", i32 330, i32 9}
!283 = !{ptr @test_overflow_shift._entry_ptr.220, !282, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.221, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.222, !282, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @test_overflow_shift._entry.223, !282, !"_entry", i1 false, i1 false}
!287 = !{ptr @test_overflow_shift._entry_ptr.224, !282, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.225, !282, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @test_overflow_shift._entry.226, !282, !"_entry", i1 false, i1 false}
!290 = !{ptr @test_overflow_shift._entry_ptr.227, !282, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @test_overflow_shift._entry.228, !282, !"_entry", i1 false, i1 false}
!292 = !{ptr @test_overflow_shift._entry_ptr.229, !282, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @test_overflow_shift._entry.230, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../lib/test_overflow.c", i32 331, i32 9}
!295 = !{ptr @test_overflow_shift._entry_ptr.231, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.232, !294, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @test_overflow_shift._entry.233, !294, !"_entry", i1 false, i1 false}
!298 = !{ptr @test_overflow_shift._entry_ptr.234, !294, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.236, !294, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @test_overflow_shift._entry.235, !294, !"_entry", i1 false, i1 false}
!301 = !{ptr @test_overflow_shift._entry_ptr.237, !294, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @test_overflow_shift._entry.238, !294, !"_entry", i1 false, i1 false}
!303 = !{ptr @test_overflow_shift._entry_ptr.239, !294, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @test_overflow_shift._entry.240, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../lib/test_overflow.c", i32 332, i32 9}
!306 = !{ptr @test_overflow_shift._entry_ptr.241, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.242, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @test_overflow_shift._entry.243, !305, !"_entry", i1 false, i1 false}
!309 = !{ptr @test_overflow_shift._entry_ptr.244, !305, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.245, !305, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @test_overflow_shift._entry.246, !305, !"_entry", i1 false, i1 false}
!312 = !{ptr @test_overflow_shift._entry_ptr.247, !305, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @test_overflow_shift._entry.248, !305, !"_entry", i1 false, i1 false}
!314 = !{ptr @test_overflow_shift._entry_ptr.249, !305, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @test_overflow_shift._entry.250, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../lib/test_overflow.c", i32 333, i32 9}
!317 = !{ptr @test_overflow_shift._entry_ptr.251, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.252, !316, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @test_overflow_shift._entry.253, !316, !"_entry", i1 false, i1 false}
!320 = !{ptr @test_overflow_shift._entry_ptr.254, !316, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.255, !316, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @test_overflow_shift._entry.256, !316, !"_entry", i1 false, i1 false}
!323 = !{ptr @test_overflow_shift._entry_ptr.257, !316, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @test_overflow_shift._entry.258, !316, !"_entry", i1 false, i1 false}
!325 = !{ptr @test_overflow_shift._entry_ptr.259, !316, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @test_overflow_shift._entry.260, !327, !"_entry", i1 false, i1 false}
!327 = !{!"../lib/test_overflow.c", i32 334, i32 9}
!328 = !{ptr @test_overflow_shift._entry_ptr.261, !327, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @test_overflow_shift._entry.262, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @test_overflow_shift._entry_ptr.263, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @test_overflow_shift._entry.264, !327, !"_entry", i1 false, i1 false}
!332 = !{ptr @test_overflow_shift._entry_ptr.265, !327, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @test_overflow_shift._entry.266, !327, !"_entry", i1 false, i1 false}
!334 = !{ptr @test_overflow_shift._entry_ptr.267, !327, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @test_overflow_shift._entry.268, !336, !"_entry", i1 false, i1 false}
!336 = !{!"../lib/test_overflow.c", i32 335, i32 9}
!337 = !{ptr @test_overflow_shift._entry_ptr.269, !336, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @test_overflow_shift._entry.270, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @test_overflow_shift._entry_ptr.271, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @test_overflow_shift._entry.272, !336, !"_entry", i1 false, i1 false}
!341 = !{ptr @test_overflow_shift._entry_ptr.273, !336, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @test_overflow_shift._entry.274, !336, !"_entry", i1 false, i1 false}
!343 = !{ptr @test_overflow_shift._entry_ptr.275, !336, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @test_overflow_shift._entry.276, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../lib/test_overflow.c", i32 336, i32 9}
!346 = !{ptr @test_overflow_shift._entry_ptr.277, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @test_overflow_shift._entry.278, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @test_overflow_shift._entry_ptr.279, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @test_overflow_shift._entry.280, !345, !"_entry", i1 false, i1 false}
!350 = !{ptr @test_overflow_shift._entry_ptr.281, !345, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @test_overflow_shift._entry.282, !345, !"_entry", i1 false, i1 false}
!352 = !{ptr @test_overflow_shift._entry_ptr.283, !345, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @test_overflow_shift._entry.284, !354, !"_entry", i1 false, i1 false}
!354 = !{!"../lib/test_overflow.c", i32 337, i32 9}
!355 = !{ptr @test_overflow_shift._entry_ptr.285, !354, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.286, !354, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @test_overflow_shift._entry.287, !354, !"_entry", i1 false, i1 false}
!358 = !{ptr @test_overflow_shift._entry_ptr.288, !354, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.289, !354, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @test_overflow_shift._entry.290, !354, !"_entry", i1 false, i1 false}
!361 = !{ptr @test_overflow_shift._entry_ptr.291, !354, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @test_overflow_shift._entry.292, !354, !"_entry", i1 false, i1 false}
!363 = !{ptr @test_overflow_shift._entry_ptr.293, !354, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @test_overflow_shift._entry.294, !365, !"_entry", i1 false, i1 false}
!365 = !{!"../lib/test_overflow.c", i32 338, i32 9}
!366 = !{ptr @test_overflow_shift._entry_ptr.295, !365, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.296, !365, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @test_overflow_shift._entry.297, !365, !"_entry", i1 false, i1 false}
!369 = !{ptr @test_overflow_shift._entry_ptr.298, !365, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.299, !365, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @test_overflow_shift._entry.300, !365, !"_entry", i1 false, i1 false}
!372 = !{ptr @test_overflow_shift._entry_ptr.301, !365, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @test_overflow_shift._entry.302, !365, !"_entry", i1 false, i1 false}
!374 = !{ptr @test_overflow_shift._entry_ptr.303, !365, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @test_overflow_shift._entry.304, !376, !"_entry", i1 false, i1 false}
!376 = !{!"../lib/test_overflow.c", i32 339, i32 9}
!377 = !{ptr @test_overflow_shift._entry_ptr.305, !376, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.306, !376, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @test_overflow_shift._entry.307, !376, !"_entry", i1 false, i1 false}
!380 = !{ptr @test_overflow_shift._entry_ptr.308, !376, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.309, !376, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @test_overflow_shift._entry.310, !376, !"_entry", i1 false, i1 false}
!383 = !{ptr @test_overflow_shift._entry_ptr.311, !376, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @test_overflow_shift._entry.312, !376, !"_entry", i1 false, i1 false}
!385 = !{ptr @test_overflow_shift._entry_ptr.313, !376, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @test_overflow_shift._entry.314, !387, !"_entry", i1 false, i1 false}
!387 = !{!"../lib/test_overflow.c", i32 340, i32 9}
!388 = !{ptr @test_overflow_shift._entry_ptr.315, !387, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.316, !387, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @test_overflow_shift._entry.317, !387, !"_entry", i1 false, i1 false}
!391 = !{ptr @test_overflow_shift._entry_ptr.318, !387, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.319, !387, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @test_overflow_shift._entry.320, !387, !"_entry", i1 false, i1 false}
!394 = !{ptr @test_overflow_shift._entry_ptr.321, !387, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @test_overflow_shift._entry.322, !387, !"_entry", i1 false, i1 false}
!396 = !{ptr @test_overflow_shift._entry_ptr.323, !387, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @test_overflow_shift._entry.324, !398, !"_entry", i1 false, i1 false}
!398 = !{!"../lib/test_overflow.c", i32 341, i32 9}
!399 = !{ptr @test_overflow_shift._entry_ptr.325, !398, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @test_overflow_shift._entry.326, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @test_overflow_shift._entry_ptr.327, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @test_overflow_shift._entry.328, !398, !"_entry", i1 false, i1 false}
!403 = !{ptr @test_overflow_shift._entry_ptr.329, !398, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @test_overflow_shift._entry.330, !398, !"_entry", i1 false, i1 false}
!405 = !{ptr @test_overflow_shift._entry_ptr.331, !398, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @test_overflow_shift._entry.332, !407, !"_entry", i1 false, i1 false}
!407 = !{!"../lib/test_overflow.c", i32 342, i32 9}
!408 = !{ptr @test_overflow_shift._entry_ptr.333, !407, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @test_overflow_shift._entry.334, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @test_overflow_shift._entry_ptr.335, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @test_overflow_shift._entry.336, !407, !"_entry", i1 false, i1 false}
!412 = !{ptr @test_overflow_shift._entry_ptr.337, !407, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @test_overflow_shift._entry.338, !407, !"_entry", i1 false, i1 false}
!414 = !{ptr @test_overflow_shift._entry_ptr.339, !407, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @test_overflow_shift._entry.340, !416, !"_entry", i1 false, i1 false}
!416 = !{!"../lib/test_overflow.c", i32 343, i32 9}
!417 = !{ptr @test_overflow_shift._entry_ptr.341, !416, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @test_overflow_shift._entry.342, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @test_overflow_shift._entry_ptr.343, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @test_overflow_shift._entry.344, !416, !"_entry", i1 false, i1 false}
!421 = !{ptr @test_overflow_shift._entry_ptr.345, !416, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @test_overflow_shift._entry.346, !416, !"_entry", i1 false, i1 false}
!423 = !{ptr @test_overflow_shift._entry_ptr.347, !416, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @test_overflow_shift._entry.348, !425, !"_entry", i1 false, i1 false}
!425 = !{!"../lib/test_overflow.c", i32 344, i32 9}
!426 = !{ptr @test_overflow_shift._entry_ptr.349, !425, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @test_overflow_shift._entry.350, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @test_overflow_shift._entry_ptr.351, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @test_overflow_shift._entry.352, !425, !"_entry", i1 false, i1 false}
!430 = !{ptr @test_overflow_shift._entry_ptr.353, !425, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @test_overflow_shift._entry.354, !425, !"_entry", i1 false, i1 false}
!432 = !{ptr @test_overflow_shift._entry_ptr.355, !425, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @test_overflow_shift._entry.356, !434, !"_entry", i1 false, i1 false}
!434 = !{!"../lib/test_overflow.c", i32 345, i32 9}
!435 = !{ptr @test_overflow_shift._entry_ptr.357, !434, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.358, !434, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @test_overflow_shift._entry.359, !434, !"_entry", i1 false, i1 false}
!438 = !{ptr @test_overflow_shift._entry_ptr.360, !434, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.361, !434, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @test_overflow_shift._entry.362, !434, !"_entry", i1 false, i1 false}
!441 = !{ptr @test_overflow_shift._entry_ptr.363, !434, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @test_overflow_shift._entry.364, !434, !"_entry", i1 false, i1 false}
!443 = !{ptr @test_overflow_shift._entry_ptr.365, !434, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @test_overflow_shift._entry.366, !445, !"_entry", i1 false, i1 false}
!445 = !{!"../lib/test_overflow.c", i32 346, i32 9}
!446 = !{ptr @test_overflow_shift._entry_ptr.367, !445, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.368, !445, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @test_overflow_shift._entry.369, !445, !"_entry", i1 false, i1 false}
!449 = !{ptr @test_overflow_shift._entry_ptr.370, !445, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.371, !445, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @test_overflow_shift._entry.372, !445, !"_entry", i1 false, i1 false}
!452 = !{ptr @test_overflow_shift._entry_ptr.373, !445, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @test_overflow_shift._entry.374, !445, !"_entry", i1 false, i1 false}
!454 = !{ptr @test_overflow_shift._entry_ptr.375, !445, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @test_overflow_shift._entry.376, !456, !"_entry", i1 false, i1 false}
!456 = !{!"../lib/test_overflow.c", i32 347, i32 9}
!457 = !{ptr @test_overflow_shift._entry_ptr.377, !456, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.378, !456, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @test_overflow_shift._entry.379, !456, !"_entry", i1 false, i1 false}
!460 = !{ptr @test_overflow_shift._entry_ptr.380, !456, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.381, !456, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @test_overflow_shift._entry.382, !456, !"_entry", i1 false, i1 false}
!463 = !{ptr @test_overflow_shift._entry_ptr.383, !456, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @test_overflow_shift._entry.384, !456, !"_entry", i1 false, i1 false}
!465 = !{ptr @test_overflow_shift._entry_ptr.385, !456, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @test_overflow_shift._entry.386, !467, !"_entry", i1 false, i1 false}
!467 = !{!"../lib/test_overflow.c", i32 348, i32 9}
!468 = !{ptr @test_overflow_shift._entry_ptr.387, !467, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.388, !467, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @.str.389, !467, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @test_overflow_shift._entry.390, !467, !"_entry", i1 false, i1 false}
!472 = !{ptr @test_overflow_shift._entry_ptr.391, !467, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.392, !467, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @test_overflow_shift._entry.393, !467, !"_entry", i1 false, i1 false}
!475 = !{ptr @test_overflow_shift._entry_ptr.394, !467, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @test_overflow_shift._entry.395, !467, !"_entry", i1 false, i1 false}
!477 = !{ptr @test_overflow_shift._entry_ptr.396, !467, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @test_overflow_shift._entry.397, !479, !"_entry", i1 false, i1 false}
!479 = !{!"../lib/test_overflow.c", i32 352, i32 9}
!480 = !{ptr @test_overflow_shift._entry_ptr.398, !479, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @test_overflow_shift._entry.399, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @test_overflow_shift._entry_ptr.400, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @test_overflow_shift._entry.401, !479, !"_entry", i1 false, i1 false}
!484 = !{ptr @test_overflow_shift._entry_ptr.402, !479, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @test_overflow_shift._entry.403, !479, !"_entry", i1 false, i1 false}
!486 = !{ptr @test_overflow_shift._entry_ptr.404, !479, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @test_overflow_shift._entry.405, !488, !"_entry", i1 false, i1 false}
!488 = !{!"../lib/test_overflow.c", i32 353, i32 9}
!489 = !{ptr @test_overflow_shift._entry_ptr.406, !488, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @test_overflow_shift._entry.407, !488, !"_entry", i1 false, i1 false}
!491 = !{ptr @test_overflow_shift._entry_ptr.408, !488, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @test_overflow_shift._entry.409, !488, !"_entry", i1 false, i1 false}
!493 = !{ptr @test_overflow_shift._entry_ptr.410, !488, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @test_overflow_shift._entry.411, !488, !"_entry", i1 false, i1 false}
!495 = !{ptr @test_overflow_shift._entry_ptr.412, !488, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @test_overflow_shift._entry.413, !497, !"_entry", i1 false, i1 false}
!497 = !{!"../lib/test_overflow.c", i32 354, i32 9}
!498 = !{ptr @test_overflow_shift._entry_ptr.414, !497, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @test_overflow_shift._entry.415, !497, !"_entry", i1 false, i1 false}
!500 = !{ptr @test_overflow_shift._entry_ptr.416, !497, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @test_overflow_shift._entry.417, !497, !"_entry", i1 false, i1 false}
!502 = !{ptr @test_overflow_shift._entry_ptr.418, !497, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @test_overflow_shift._entry.419, !497, !"_entry", i1 false, i1 false}
!504 = !{ptr @test_overflow_shift._entry_ptr.420, !497, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @test_overflow_shift._entry.421, !506, !"_entry", i1 false, i1 false}
!506 = !{!"../lib/test_overflow.c", i32 355, i32 9}
!507 = !{ptr @test_overflow_shift._entry_ptr.422, !506, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @test_overflow_shift._entry.423, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @test_overflow_shift._entry_ptr.424, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @test_overflow_shift._entry.425, !506, !"_entry", i1 false, i1 false}
!511 = !{ptr @test_overflow_shift._entry_ptr.426, !506, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @test_overflow_shift._entry.427, !506, !"_entry", i1 false, i1 false}
!513 = !{ptr @test_overflow_shift._entry_ptr.428, !506, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @test_overflow_shift._entry.429, !515, !"_entry", i1 false, i1 false}
!515 = !{!"../lib/test_overflow.c", i32 356, i32 9}
!516 = !{ptr @test_overflow_shift._entry_ptr.430, !515, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @test_overflow_shift._entry.431, !515, !"_entry", i1 false, i1 false}
!518 = !{ptr @test_overflow_shift._entry_ptr.432, !515, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @test_overflow_shift._entry.433, !515, !"_entry", i1 false, i1 false}
!520 = !{ptr @test_overflow_shift._entry_ptr.434, !515, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @test_overflow_shift._entry.435, !515, !"_entry", i1 false, i1 false}
!522 = !{ptr @test_overflow_shift._entry_ptr.436, !515, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @test_overflow_shift._entry.437, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../lib/test_overflow.c", i32 359, i32 9}
!525 = !{ptr @test_overflow_shift._entry_ptr.438, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.439, !524, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @test_overflow_shift._entry.440, !524, !"_entry", i1 false, i1 false}
!528 = !{ptr @test_overflow_shift._entry_ptr.441, !524, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @test_overflow_shift._entry.442, !524, !"_entry", i1 false, i1 false}
!530 = !{ptr @test_overflow_shift._entry_ptr.443, !524, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @test_overflow_shift._entry.444, !524, !"_entry", i1 false, i1 false}
!532 = !{ptr @test_overflow_shift._entry_ptr.445, !524, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @test_overflow_shift._entry.446, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../lib/test_overflow.c", i32 360, i32 9}
!535 = !{ptr @test_overflow_shift._entry_ptr.447, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.448, !534, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @test_overflow_shift._entry.449, !534, !"_entry", i1 false, i1 false}
!538 = !{ptr @test_overflow_shift._entry_ptr.450, !534, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @test_overflow_shift._entry.451, !534, !"_entry", i1 false, i1 false}
!540 = !{ptr @test_overflow_shift._entry_ptr.452, !534, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @test_overflow_shift._entry.453, !534, !"_entry", i1 false, i1 false}
!542 = !{ptr @test_overflow_shift._entry_ptr.454, !534, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @test_overflow_shift._entry.455, !544, !"_entry", i1 false, i1 false}
!544 = !{!"../lib/test_overflow.c", i32 361, i32 9}
!545 = !{ptr @test_overflow_shift._entry_ptr.456, !544, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @test_overflow_shift._entry.457, !544, !"_entry", i1 false, i1 false}
!547 = !{ptr @test_overflow_shift._entry_ptr.458, !544, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @test_overflow_shift._entry.459, !544, !"_entry", i1 false, i1 false}
!549 = !{ptr @test_overflow_shift._entry_ptr.460, !544, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @test_overflow_shift._entry.461, !544, !"_entry", i1 false, i1 false}
!551 = !{ptr @test_overflow_shift._entry_ptr.462, !544, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @test_overflow_shift._entry.463, !553, !"_entry", i1 false, i1 false}
!553 = !{!"../lib/test_overflow.c", i32 362, i32 9}
!554 = !{ptr @test_overflow_shift._entry_ptr.464, !553, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @test_overflow_shift._entry.465, !553, !"_entry", i1 false, i1 false}
!556 = !{ptr @test_overflow_shift._entry_ptr.466, !553, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @test_overflow_shift._entry.467, !553, !"_entry", i1 false, i1 false}
!558 = !{ptr @test_overflow_shift._entry_ptr.468, !553, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @test_overflow_shift._entry.469, !553, !"_entry", i1 false, i1 false}
!560 = !{ptr @test_overflow_shift._entry_ptr.470, !553, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @test_overflow_shift._entry.471, !562, !"_entry", i1 false, i1 false}
!562 = !{!"../lib/test_overflow.c", i32 363, i32 9}
!563 = !{ptr @test_overflow_shift._entry_ptr.472, !562, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.473, !562, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @.str.474, !562, !"<string literal>", i1 false, i1 false}
!566 = !{ptr @test_overflow_shift._entry.475, !562, !"_entry", i1 false, i1 false}
!567 = !{ptr @test_overflow_shift._entry_ptr.476, !562, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @test_overflow_shift._entry.477, !562, !"_entry", i1 false, i1 false}
!569 = !{ptr @test_overflow_shift._entry_ptr.478, !562, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @test_overflow_shift._entry.479, !562, !"_entry", i1 false, i1 false}
!571 = !{ptr @test_overflow_shift._entry_ptr.480, !562, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @test_overflow_shift._entry.481, !573, !"_entry", i1 false, i1 false}
!573 = !{!"../lib/test_overflow.c", i32 366, i32 9}
!574 = !{ptr @test_overflow_shift._entry_ptr.482, !573, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @test_overflow_shift._entry.483, !573, !"_entry", i1 false, i1 false}
!576 = !{ptr @test_overflow_shift._entry_ptr.484, !573, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @test_overflow_shift._entry.485, !573, !"_entry", i1 false, i1 false}
!578 = !{ptr @test_overflow_shift._entry_ptr.486, !573, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @test_overflow_shift._entry.487, !573, !"_entry", i1 false, i1 false}
!580 = !{ptr @test_overflow_shift._entry_ptr.488, !573, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.489, !573, !"<string literal>", i1 false, i1 false}
!582 = !{ptr @test_overflow_shift._entry.490, !583, !"_entry", i1 false, i1 false}
!583 = !{!"../lib/test_overflow.c", i32 367, i32 9}
!584 = !{ptr @test_overflow_shift._entry_ptr.491, !583, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @test_overflow_shift._entry.492, !583, !"_entry", i1 false, i1 false}
!586 = !{ptr @test_overflow_shift._entry_ptr.493, !583, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @test_overflow_shift._entry.494, !583, !"_entry", i1 false, i1 false}
!588 = !{ptr @test_overflow_shift._entry_ptr.495, !583, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @test_overflow_shift._entry.496, !583, !"_entry", i1 false, i1 false}
!590 = !{ptr @test_overflow_shift._entry_ptr.497, !583, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @test_overflow_shift._entry.498, !592, !"_entry", i1 false, i1 false}
!592 = !{!"../lib/test_overflow.c", i32 368, i32 9}
!593 = !{ptr @test_overflow_shift._entry_ptr.499, !592, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @test_overflow_shift._entry.500, !592, !"_entry", i1 false, i1 false}
!595 = !{ptr @test_overflow_shift._entry_ptr.501, !592, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @test_overflow_shift._entry.502, !592, !"_entry", i1 false, i1 false}
!597 = !{ptr @test_overflow_shift._entry_ptr.503, !592, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @test_overflow_shift._entry.504, !592, !"_entry", i1 false, i1 false}
!599 = !{ptr @test_overflow_shift._entry_ptr.505, !592, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @test_overflow_shift._entry.506, !601, !"_entry", i1 false, i1 false}
!601 = !{!"../lib/test_overflow.c", i32 369, i32 9}
!602 = !{ptr @test_overflow_shift._entry_ptr.507, !601, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @test_overflow_shift._entry.508, !601, !"_entry", i1 false, i1 false}
!604 = !{ptr @test_overflow_shift._entry_ptr.509, !601, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @test_overflow_shift._entry.510, !601, !"_entry", i1 false, i1 false}
!606 = !{ptr @test_overflow_shift._entry_ptr.511, !601, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @test_overflow_shift._entry.512, !601, !"_entry", i1 false, i1 false}
!608 = !{ptr @test_overflow_shift._entry_ptr.513, !601, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @test_overflow_shift._entry.514, !610, !"_entry", i1 false, i1 false}
!610 = !{!"../lib/test_overflow.c", i32 370, i32 9}
!611 = !{ptr @test_overflow_shift._entry_ptr.515, !610, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.516, !610, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @test_overflow_shift._entry.517, !610, !"_entry", i1 false, i1 false}
!614 = !{ptr @test_overflow_shift._entry_ptr.518, !610, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @test_overflow_shift._entry.519, !610, !"_entry", i1 false, i1 false}
!616 = !{ptr @test_overflow_shift._entry_ptr.520, !610, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @test_overflow_shift._entry.521, !610, !"_entry", i1 false, i1 false}
!618 = !{ptr @test_overflow_shift._entry_ptr.522, !610, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @test_overflow_shift._entry.523, !620, !"_entry", i1 false, i1 false}
!620 = !{!"../lib/test_overflow.c", i32 373, i32 9}
!621 = !{ptr @test_overflow_shift._entry_ptr.524, !620, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @test_overflow_shift._entry.525, !620, !"_entry", i1 false, i1 false}
!623 = !{ptr @test_overflow_shift._entry_ptr.526, !620, !"_entry_ptr", i1 false, i1 false}
!624 = !{ptr @test_overflow_shift._entry.527, !620, !"_entry", i1 false, i1 false}
!625 = !{ptr @test_overflow_shift._entry_ptr.528, !620, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @test_overflow_shift._entry.529, !620, !"_entry", i1 false, i1 false}
!627 = !{ptr @test_overflow_shift._entry_ptr.530, !620, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @test_overflow_shift._entry.531, !629, !"_entry", i1 false, i1 false}
!629 = !{!"../lib/test_overflow.c", i32 374, i32 9}
!630 = !{ptr @test_overflow_shift._entry_ptr.532, !629, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @test_overflow_shift._entry.533, !629, !"_entry", i1 false, i1 false}
!632 = !{ptr @test_overflow_shift._entry_ptr.534, !629, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @test_overflow_shift._entry.535, !629, !"_entry", i1 false, i1 false}
!634 = !{ptr @test_overflow_shift._entry_ptr.536, !629, !"_entry_ptr", i1 false, i1 false}
!635 = !{ptr @test_overflow_shift._entry.537, !629, !"_entry", i1 false, i1 false}
!636 = !{ptr @test_overflow_shift._entry_ptr.538, !629, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @test_overflow_shift._entry.539, !638, !"_entry", i1 false, i1 false}
!638 = !{!"../lib/test_overflow.c", i32 375, i32 9}
!639 = !{ptr @test_overflow_shift._entry_ptr.540, !638, !"_entry_ptr", i1 false, i1 false}
!640 = !{ptr @test_overflow_shift._entry.541, !638, !"_entry", i1 false, i1 false}
!641 = !{ptr @test_overflow_shift._entry_ptr.542, !638, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @test_overflow_shift._entry.543, !638, !"_entry", i1 false, i1 false}
!643 = !{ptr @test_overflow_shift._entry_ptr.544, !638, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @test_overflow_shift._entry.545, !638, !"_entry", i1 false, i1 false}
!645 = !{ptr @test_overflow_shift._entry_ptr.546, !638, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @test_overflow_shift._entry.547, !647, !"_entry", i1 false, i1 false}
!647 = !{!"../lib/test_overflow.c", i32 376, i32 9}
!648 = !{ptr @test_overflow_shift._entry_ptr.548, !647, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @test_overflow_shift._entry.549, !647, !"_entry", i1 false, i1 false}
!650 = !{ptr @test_overflow_shift._entry_ptr.550, !647, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @test_overflow_shift._entry.551, !647, !"_entry", i1 false, i1 false}
!652 = !{ptr @test_overflow_shift._entry_ptr.552, !647, !"_entry_ptr", i1 false, i1 false}
!653 = !{ptr @test_overflow_shift._entry.553, !647, !"_entry", i1 false, i1 false}
!654 = !{ptr @test_overflow_shift._entry_ptr.554, !647, !"_entry_ptr", i1 false, i1 false}
!655 = !{ptr @test_overflow_shift._entry.555, !656, !"_entry", i1 false, i1 false}
!656 = !{!"../lib/test_overflow.c", i32 377, i32 9}
!657 = !{ptr @test_overflow_shift._entry_ptr.556, !656, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @test_overflow_shift._entry.557, !656, !"_entry", i1 false, i1 false}
!659 = !{ptr @test_overflow_shift._entry_ptr.558, !656, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @test_overflow_shift._entry.559, !656, !"_entry", i1 false, i1 false}
!661 = !{ptr @test_overflow_shift._entry_ptr.560, !656, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @test_overflow_shift._entry.561, !656, !"_entry", i1 false, i1 false}
!663 = !{ptr @test_overflow_shift._entry_ptr.562, !656, !"_entry_ptr", i1 false, i1 false}
!664 = !{ptr @test_overflow_shift._entry.563, !665, !"_entry", i1 false, i1 false}
!665 = !{!"../lib/test_overflow.c", i32 381, i32 9}
!666 = !{ptr @test_overflow_shift._entry_ptr.564, !665, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.565, !665, !"<string literal>", i1 false, i1 false}
!668 = !{ptr @test_overflow_shift._entry.566, !665, !"_entry", i1 false, i1 false}
!669 = !{ptr @test_overflow_shift._entry_ptr.567, !665, !"_entry_ptr", i1 false, i1 false}
!670 = !{ptr @test_overflow_shift._entry.568, !665, !"_entry", i1 false, i1 false}
!671 = !{ptr @test_overflow_shift._entry_ptr.569, !665, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @test_overflow_shift._entry.570, !665, !"_entry", i1 false, i1 false}
!673 = !{ptr @test_overflow_shift._entry_ptr.571, !665, !"_entry_ptr", i1 false, i1 false}
!674 = !{ptr @test_overflow_shift._entry.572, !675, !"_entry", i1 false, i1 false}
!675 = !{!"../lib/test_overflow.c", i32 383, i32 9}
!676 = !{ptr @test_overflow_shift._entry_ptr.573, !675, !"_entry_ptr", i1 false, i1 false}
!677 = !{ptr @.str.574, !675, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @test_overflow_shift._entry.575, !675, !"_entry", i1 false, i1 false}
!679 = !{ptr @test_overflow_shift._entry_ptr.576, !675, !"_entry_ptr", i1 false, i1 false}
!680 = !{ptr @test_overflow_shift._entry.577, !675, !"_entry", i1 false, i1 false}
!681 = !{ptr @test_overflow_shift._entry_ptr.578, !675, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @test_overflow_shift._entry.579, !675, !"_entry", i1 false, i1 false}
!683 = !{ptr @test_overflow_shift._entry_ptr.580, !675, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @test_overflow_shift._entry.581, !685, !"_entry", i1 false, i1 false}
!685 = !{!"../lib/test_overflow.c", i32 385, i32 9}
!686 = !{ptr @test_overflow_shift._entry_ptr.582, !685, !"_entry_ptr", i1 false, i1 false}
!687 = !{ptr @.str.583, !685, !"<string literal>", i1 false, i1 false}
!688 = !{ptr @test_overflow_shift._entry.584, !685, !"_entry", i1 false, i1 false}
!689 = !{ptr @test_overflow_shift._entry_ptr.585, !685, !"_entry_ptr", i1 false, i1 false}
!690 = !{ptr @test_overflow_shift._entry.586, !685, !"_entry", i1 false, i1 false}
!691 = !{ptr @test_overflow_shift._entry_ptr.587, !685, !"_entry_ptr", i1 false, i1 false}
!692 = !{ptr @test_overflow_shift._entry.588, !685, !"_entry", i1 false, i1 false}
!693 = !{ptr @test_overflow_shift._entry_ptr.589, !685, !"_entry_ptr", i1 false, i1 false}
!694 = !{ptr @test_overflow_shift._entry.590, !695, !"_entry", i1 false, i1 false}
!695 = !{!"../lib/test_overflow.c", i32 386, i32 9}
!696 = !{ptr @test_overflow_shift._entry_ptr.591, !695, !"_entry_ptr", i1 false, i1 false}
!697 = !{ptr @test_overflow_shift._entry.592, !695, !"_entry", i1 false, i1 false}
!698 = !{ptr @test_overflow_shift._entry_ptr.593, !695, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @test_overflow_shift._entry.594, !695, !"_entry", i1 false, i1 false}
!700 = !{ptr @test_overflow_shift._entry_ptr.595, !695, !"_entry_ptr", i1 false, i1 false}
!701 = !{ptr @test_overflow_shift._entry.596, !695, !"_entry", i1 false, i1 false}
!702 = !{ptr @test_overflow_shift._entry_ptr.597, !695, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @test_overflow_shift._entry.598, !704, !"_entry", i1 false, i1 false}
!704 = !{!"../lib/test_overflow.c", i32 388, i32 9}
!705 = !{ptr @test_overflow_shift._entry_ptr.599, !704, !"_entry_ptr", i1 false, i1 false}
!706 = !{ptr @.str.600, !704, !"<string literal>", i1 false, i1 false}
!707 = !{ptr @test_overflow_shift._entry.601, !704, !"_entry", i1 false, i1 false}
!708 = !{ptr @test_overflow_shift._entry_ptr.602, !704, !"_entry_ptr", i1 false, i1 false}
!709 = !{ptr @test_overflow_shift._entry.603, !704, !"_entry", i1 false, i1 false}
!710 = !{ptr @test_overflow_shift._entry_ptr.604, !704, !"_entry_ptr", i1 false, i1 false}
!711 = !{ptr @test_overflow_shift._entry.605, !704, !"_entry", i1 false, i1 false}
!712 = !{ptr @test_overflow_shift._entry_ptr.606, !704, !"_entry_ptr", i1 false, i1 false}
!713 = !{ptr @test_overflow_shift._entry.607, !714, !"_entry", i1 false, i1 false}
!714 = !{!"../lib/test_overflow.c", i32 392, i32 9}
!715 = !{ptr @test_overflow_shift._entry_ptr.608, !714, !"_entry_ptr", i1 false, i1 false}
!716 = !{ptr @.str.609, !714, !"<string literal>", i1 false, i1 false}
!717 = !{ptr @test_overflow_shift._entry.610, !714, !"_entry", i1 false, i1 false}
!718 = !{ptr @test_overflow_shift._entry_ptr.611, !714, !"_entry_ptr", i1 false, i1 false}
!719 = !{ptr @test_overflow_shift._entry.612, !714, !"_entry", i1 false, i1 false}
!720 = !{ptr @test_overflow_shift._entry_ptr.613, !714, !"_entry_ptr", i1 false, i1 false}
!721 = !{ptr @test_overflow_shift._entry.614, !714, !"_entry", i1 false, i1 false}
!722 = !{ptr @test_overflow_shift._entry_ptr.615, !714, !"_entry_ptr", i1 false, i1 false}
!723 = !{ptr @test_overflow_shift._entry.616, !724, !"_entry", i1 false, i1 false}
!724 = !{!"../lib/test_overflow.c", i32 394, i32 9}
!725 = !{ptr @test_overflow_shift._entry_ptr.617, !724, !"_entry_ptr", i1 false, i1 false}
!726 = !{ptr @.str.618, !724, !"<string literal>", i1 false, i1 false}
!727 = !{ptr @test_overflow_shift._entry.619, !724, !"_entry", i1 false, i1 false}
!728 = !{ptr @test_overflow_shift._entry_ptr.620, !724, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @test_overflow_shift._entry.621, !724, !"_entry", i1 false, i1 false}
!730 = !{ptr @test_overflow_shift._entry_ptr.622, !724, !"_entry_ptr", i1 false, i1 false}
!731 = !{ptr @test_overflow_shift._entry.623, !724, !"_entry", i1 false, i1 false}
!732 = !{ptr @test_overflow_shift._entry_ptr.624, !724, !"_entry_ptr", i1 false, i1 false}
!733 = !{ptr @test_overflow_shift._entry.625, !734, !"_entry", i1 false, i1 false}
!734 = !{!"../lib/test_overflow.c", i32 396, i32 9}
!735 = !{ptr @test_overflow_shift._entry_ptr.626, !734, !"_entry_ptr", i1 false, i1 false}
!736 = !{ptr @.str.627, !734, !"<string literal>", i1 false, i1 false}
!737 = !{ptr @test_overflow_shift._entry.628, !734, !"_entry", i1 false, i1 false}
!738 = !{ptr @test_overflow_shift._entry_ptr.629, !734, !"_entry_ptr", i1 false, i1 false}
!739 = !{ptr @test_overflow_shift._entry.630, !734, !"_entry", i1 false, i1 false}
!740 = !{ptr @test_overflow_shift._entry_ptr.631, !734, !"_entry_ptr", i1 false, i1 false}
!741 = !{ptr @test_overflow_shift._entry.632, !734, !"_entry", i1 false, i1 false}
!742 = !{ptr @test_overflow_shift._entry_ptr.633, !734, !"_entry_ptr", i1 false, i1 false}
!743 = !{ptr @test_overflow_shift._entry.634, !744, !"_entry", i1 false, i1 false}
!744 = !{!"../lib/test_overflow.c", i32 397, i32 9}
!745 = !{ptr @test_overflow_shift._entry_ptr.635, !744, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @test_overflow_shift._entry.636, !744, !"_entry", i1 false, i1 false}
!747 = !{ptr @test_overflow_shift._entry_ptr.637, !744, !"_entry_ptr", i1 false, i1 false}
!748 = !{ptr @test_overflow_shift._entry.638, !744, !"_entry", i1 false, i1 false}
!749 = !{ptr @test_overflow_shift._entry_ptr.639, !744, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @test_overflow_shift._entry.640, !744, !"_entry", i1 false, i1 false}
!751 = !{ptr @test_overflow_shift._entry_ptr.641, !744, !"_entry_ptr", i1 false, i1 false}
!752 = !{ptr @test_overflow_shift._entry.642, !753, !"_entry", i1 false, i1 false}
!753 = !{!"../lib/test_overflow.c", i32 399, i32 9}
!754 = !{ptr @test_overflow_shift._entry_ptr.643, !753, !"_entry_ptr", i1 false, i1 false}
!755 = !{ptr @.str.644, !753, !"<string literal>", i1 false, i1 false}
!756 = !{ptr @test_overflow_shift._entry.645, !753, !"_entry", i1 false, i1 false}
!757 = !{ptr @test_overflow_shift._entry_ptr.646, !753, !"_entry_ptr", i1 false, i1 false}
!758 = !{ptr @test_overflow_shift._entry.647, !753, !"_entry", i1 false, i1 false}
!759 = !{ptr @test_overflow_shift._entry_ptr.648, !753, !"_entry_ptr", i1 false, i1 false}
!760 = !{ptr @test_overflow_shift._entry.649, !753, !"_entry", i1 false, i1 false}
!761 = !{ptr @test_overflow_shift._entry_ptr.650, !753, !"_entry_ptr", i1 false, i1 false}
!762 = !{ptr @test_overflow_shift._entry.651, !763, !"_entry", i1 false, i1 false}
!763 = !{!"../lib/test_overflow.c", i32 403, i32 9}
!764 = !{ptr @test_overflow_shift._entry_ptr.652, !763, !"_entry_ptr", i1 false, i1 false}
!765 = !{ptr @.str.653, !763, !"<string literal>", i1 false, i1 false}
!766 = !{ptr @test_overflow_shift._entry.654, !763, !"_entry", i1 false, i1 false}
!767 = !{ptr @test_overflow_shift._entry_ptr.655, !763, !"_entry_ptr", i1 false, i1 false}
!768 = !{ptr @test_overflow_shift._entry.656, !763, !"_entry", i1 false, i1 false}
!769 = !{ptr @test_overflow_shift._entry_ptr.657, !763, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @test_overflow_shift._entry.658, !763, !"_entry", i1 false, i1 false}
!771 = !{ptr @test_overflow_shift._entry_ptr.659, !763, !"_entry_ptr", i1 false, i1 false}
!772 = !{ptr @test_overflow_shift._entry.660, !773, !"_entry", i1 false, i1 false}
!773 = !{!"../lib/test_overflow.c", i32 405, i32 9}
!774 = !{ptr @test_overflow_shift._entry_ptr.661, !773, !"_entry_ptr", i1 false, i1 false}
!775 = !{ptr @test_overflow_shift._entry.662, !773, !"_entry", i1 false, i1 false}
!776 = !{ptr @test_overflow_shift._entry_ptr.663, !773, !"_entry_ptr", i1 false, i1 false}
!777 = !{ptr @test_overflow_shift._entry.664, !773, !"_entry", i1 false, i1 false}
!778 = !{ptr @test_overflow_shift._entry_ptr.665, !773, !"_entry_ptr", i1 false, i1 false}
!779 = !{ptr @test_overflow_shift._entry.666, !773, !"_entry", i1 false, i1 false}
!780 = !{ptr @test_overflow_shift._entry_ptr.667, !773, !"_entry_ptr", i1 false, i1 false}
!781 = !{ptr @test_overflow_shift._entry.668, !782, !"_entry", i1 false, i1 false}
!782 = !{!"../lib/test_overflow.c", i32 407, i32 9}
!783 = !{ptr @test_overflow_shift._entry_ptr.669, !782, !"_entry_ptr", i1 false, i1 false}
!784 = !{ptr @test_overflow_shift._entry.670, !782, !"_entry", i1 false, i1 false}
!785 = !{ptr @test_overflow_shift._entry_ptr.671, !782, !"_entry_ptr", i1 false, i1 false}
!786 = !{ptr @test_overflow_shift._entry.672, !782, !"_entry", i1 false, i1 false}
!787 = !{ptr @test_overflow_shift._entry_ptr.673, !782, !"_entry_ptr", i1 false, i1 false}
!788 = !{ptr @test_overflow_shift._entry.674, !782, !"_entry", i1 false, i1 false}
!789 = !{ptr @test_overflow_shift._entry_ptr.675, !782, !"_entry_ptr", i1 false, i1 false}
!790 = !{ptr @test_overflow_shift._entry.676, !791, !"_entry", i1 false, i1 false}
!791 = !{!"../lib/test_overflow.c", i32 408, i32 9}
!792 = !{ptr @test_overflow_shift._entry_ptr.677, !791, !"_entry_ptr", i1 false, i1 false}
!793 = !{ptr @test_overflow_shift._entry.678, !791, !"_entry", i1 false, i1 false}
!794 = !{ptr @test_overflow_shift._entry_ptr.679, !791, !"_entry_ptr", i1 false, i1 false}
!795 = !{ptr @test_overflow_shift._entry.680, !791, !"_entry", i1 false, i1 false}
!796 = !{ptr @test_overflow_shift._entry_ptr.681, !791, !"_entry_ptr", i1 false, i1 false}
!797 = !{ptr @test_overflow_shift._entry.682, !791, !"_entry", i1 false, i1 false}
!798 = !{ptr @test_overflow_shift._entry_ptr.683, !791, !"_entry_ptr", i1 false, i1 false}
!799 = !{ptr @test_overflow_shift._entry.684, !800, !"_entry", i1 false, i1 false}
!800 = !{!"../lib/test_overflow.c", i32 410, i32 9}
!801 = !{ptr @test_overflow_shift._entry_ptr.685, !800, !"_entry_ptr", i1 false, i1 false}
!802 = !{ptr @test_overflow_shift._entry.686, !800, !"_entry", i1 false, i1 false}
!803 = !{ptr @test_overflow_shift._entry_ptr.687, !800, !"_entry_ptr", i1 false, i1 false}
!804 = !{ptr @test_overflow_shift._entry.688, !800, !"_entry", i1 false, i1 false}
!805 = !{ptr @test_overflow_shift._entry_ptr.689, !800, !"_entry_ptr", i1 false, i1 false}
!806 = !{ptr @test_overflow_shift._entry.690, !800, !"_entry", i1 false, i1 false}
!807 = !{ptr @test_overflow_shift._entry_ptr.691, !800, !"_entry_ptr", i1 false, i1 false}
!808 = !{ptr @test_overflow_shift._entry.692, !809, !"_entry", i1 false, i1 false}
!809 = !{!"../lib/test_overflow.c", i32 413, i32 9}
!810 = !{ptr @test_overflow_shift._entry_ptr.693, !809, !"_entry_ptr", i1 false, i1 false}
!811 = !{ptr @.str.694, !809, !"<string literal>", i1 false, i1 false}
!812 = !{ptr @test_overflow_shift._entry.695, !809, !"_entry", i1 false, i1 false}
!813 = !{ptr @test_overflow_shift._entry_ptr.696, !809, !"_entry_ptr", i1 false, i1 false}
!814 = !{ptr @test_overflow_shift._entry.697, !809, !"_entry", i1 false, i1 false}
!815 = !{ptr @test_overflow_shift._entry_ptr.698, !809, !"_entry_ptr", i1 false, i1 false}
!816 = !{ptr @test_overflow_shift._entry.699, !809, !"_entry", i1 false, i1 false}
!817 = !{ptr @test_overflow_shift._entry_ptr.700, !809, !"_entry_ptr", i1 false, i1 false}
!818 = !{ptr @test_overflow_shift._entry.701, !819, !"_entry", i1 false, i1 false}
!819 = !{!"../lib/test_overflow.c", i32 414, i32 9}
!820 = !{ptr @test_overflow_shift._entry_ptr.702, !819, !"_entry_ptr", i1 false, i1 false}
!821 = !{ptr @test_overflow_shift._entry.703, !819, !"_entry", i1 false, i1 false}
!822 = !{ptr @test_overflow_shift._entry_ptr.704, !819, !"_entry_ptr", i1 false, i1 false}
!823 = !{ptr @test_overflow_shift._entry.705, !819, !"_entry", i1 false, i1 false}
!824 = !{ptr @test_overflow_shift._entry_ptr.706, !819, !"_entry_ptr", i1 false, i1 false}
!825 = !{ptr @test_overflow_shift._entry.707, !819, !"_entry", i1 false, i1 false}
!826 = !{ptr @test_overflow_shift._entry_ptr.708, !819, !"_entry_ptr", i1 false, i1 false}
!827 = !{ptr @test_overflow_shift._entry.709, !828, !"_entry", i1 false, i1 false}
!828 = !{!"../lib/test_overflow.c", i32 415, i32 9}
!829 = !{ptr @test_overflow_shift._entry_ptr.710, !828, !"_entry_ptr", i1 false, i1 false}
!830 = !{ptr @.str.711, !828, !"<string literal>", i1 false, i1 false}
!831 = !{ptr @test_overflow_shift._entry.712, !828, !"_entry", i1 false, i1 false}
!832 = !{ptr @test_overflow_shift._entry_ptr.713, !828, !"_entry_ptr", i1 false, i1 false}
!833 = !{ptr @test_overflow_shift._entry.714, !828, !"_entry", i1 false, i1 false}
!834 = !{ptr @test_overflow_shift._entry_ptr.715, !828, !"_entry_ptr", i1 false, i1 false}
!835 = !{ptr @test_overflow_shift._entry.716, !828, !"_entry", i1 false, i1 false}
!836 = !{ptr @test_overflow_shift._entry_ptr.717, !828, !"_entry_ptr", i1 false, i1 false}
!837 = !{ptr @test_overflow_shift._entry.718, !838, !"_entry", i1 false, i1 false}
!838 = !{!"../lib/test_overflow.c", i32 416, i32 9}
!839 = !{ptr @test_overflow_shift._entry_ptr.719, !838, !"_entry_ptr", i1 false, i1 false}
!840 = !{ptr @test_overflow_shift._entry.720, !838, !"_entry", i1 false, i1 false}
!841 = !{ptr @test_overflow_shift._entry_ptr.721, !838, !"_entry_ptr", i1 false, i1 false}
!842 = !{ptr @test_overflow_shift._entry.722, !838, !"_entry", i1 false, i1 false}
!843 = !{ptr @test_overflow_shift._entry_ptr.723, !838, !"_entry_ptr", i1 false, i1 false}
!844 = !{ptr @test_overflow_shift._entry.724, !838, !"_entry", i1 false, i1 false}
!845 = !{ptr @test_overflow_shift._entry_ptr.725, !838, !"_entry_ptr", i1 false, i1 false}
!846 = !{ptr @test_overflow_shift._entry.726, !847, !"_entry", i1 false, i1 false}
!847 = !{!"../lib/test_overflow.c", i32 417, i32 9}
!848 = !{ptr @test_overflow_shift._entry_ptr.727, !847, !"_entry_ptr", i1 false, i1 false}
!849 = !{ptr @.str.728, !847, !"<string literal>", i1 false, i1 false}
!850 = !{ptr @test_overflow_shift._entry.729, !847, !"_entry", i1 false, i1 false}
!851 = !{ptr @test_overflow_shift._entry_ptr.730, !847, !"_entry_ptr", i1 false, i1 false}
!852 = !{ptr @test_overflow_shift._entry.731, !847, !"_entry", i1 false, i1 false}
!853 = !{ptr @test_overflow_shift._entry_ptr.732, !847, !"_entry_ptr", i1 false, i1 false}
!854 = !{ptr @test_overflow_shift._entry.733, !847, !"_entry", i1 false, i1 false}
!855 = !{ptr @test_overflow_shift._entry_ptr.734, !847, !"_entry_ptr", i1 false, i1 false}
!856 = !{ptr @test_overflow_shift._entry.735, !857, !"_entry", i1 false, i1 false}
!857 = !{!"../lib/test_overflow.c", i32 418, i32 9}
!858 = !{ptr @test_overflow_shift._entry_ptr.736, !857, !"_entry_ptr", i1 false, i1 false}
!859 = !{ptr @test_overflow_shift._entry.737, !857, !"_entry", i1 false, i1 false}
!860 = !{ptr @test_overflow_shift._entry_ptr.738, !857, !"_entry_ptr", i1 false, i1 false}
!861 = !{ptr @test_overflow_shift._entry.739, !857, !"_entry", i1 false, i1 false}
!862 = !{ptr @test_overflow_shift._entry_ptr.740, !857, !"_entry_ptr", i1 false, i1 false}
!863 = !{ptr @test_overflow_shift._entry.741, !857, !"_entry", i1 false, i1 false}
!864 = !{ptr @test_overflow_shift._entry_ptr.742, !857, !"_entry_ptr", i1 false, i1 false}
!865 = !{ptr @test_overflow_shift._entry.743, !866, !"_entry", i1 false, i1 false}
!866 = !{!"../lib/test_overflow.c", i32 419, i32 9}
!867 = !{ptr @test_overflow_shift._entry_ptr.744, !866, !"_entry_ptr", i1 false, i1 false}
!868 = !{ptr @.str.745, !866, !"<string literal>", i1 false, i1 false}
!869 = !{ptr @test_overflow_shift._entry.746, !866, !"_entry", i1 false, i1 false}
!870 = !{ptr @test_overflow_shift._entry_ptr.747, !866, !"_entry_ptr", i1 false, i1 false}
!871 = !{ptr @test_overflow_shift._entry.748, !866, !"_entry", i1 false, i1 false}
!872 = !{ptr @test_overflow_shift._entry_ptr.749, !866, !"_entry_ptr", i1 false, i1 false}
!873 = !{ptr @test_overflow_shift._entry.750, !866, !"_entry", i1 false, i1 false}
!874 = !{ptr @test_overflow_shift._entry_ptr.751, !866, !"_entry_ptr", i1 false, i1 false}
!875 = !{ptr @test_overflow_shift._entry.752, !876, !"_entry", i1 false, i1 false}
!876 = !{!"../lib/test_overflow.c", i32 420, i32 9}
!877 = !{ptr @test_overflow_shift._entry_ptr.753, !876, !"_entry_ptr", i1 false, i1 false}
!878 = !{ptr @test_overflow_shift._entry.754, !876, !"_entry", i1 false, i1 false}
!879 = !{ptr @test_overflow_shift._entry_ptr.755, !876, !"_entry_ptr", i1 false, i1 false}
!880 = !{ptr @test_overflow_shift._entry.756, !876, !"_entry", i1 false, i1 false}
!881 = !{ptr @test_overflow_shift._entry_ptr.757, !876, !"_entry_ptr", i1 false, i1 false}
!882 = !{ptr @test_overflow_shift._entry.758, !876, !"_entry", i1 false, i1 false}
!883 = !{ptr @test_overflow_shift._entry_ptr.759, !876, !"_entry_ptr", i1 false, i1 false}
!884 = !{ptr @test_overflow_shift._entry.760, !885, !"_entry", i1 false, i1 false}
!885 = !{!"../lib/test_overflow.c", i32 421, i32 9}
!886 = !{ptr @test_overflow_shift._entry_ptr.761, !885, !"_entry_ptr", i1 false, i1 false}
!887 = !{ptr @.str.762, !885, !"<string literal>", i1 false, i1 false}
!888 = !{ptr @test_overflow_shift._entry.763, !885, !"_entry", i1 false, i1 false}
!889 = !{ptr @test_overflow_shift._entry_ptr.764, !885, !"_entry_ptr", i1 false, i1 false}
!890 = !{ptr @test_overflow_shift._entry.765, !885, !"_entry", i1 false, i1 false}
!891 = !{ptr @test_overflow_shift._entry_ptr.766, !885, !"_entry_ptr", i1 false, i1 false}
!892 = !{ptr @test_overflow_shift._entry.767, !885, !"_entry", i1 false, i1 false}
!893 = !{ptr @test_overflow_shift._entry_ptr.768, !885, !"_entry_ptr", i1 false, i1 false}
!894 = !{ptr @test_overflow_shift._entry.769, !895, !"_entry", i1 false, i1 false}
!895 = !{!"../lib/test_overflow.c", i32 424, i32 9}
!896 = !{ptr @test_overflow_shift._entry_ptr.770, !895, !"_entry_ptr", i1 false, i1 false}
!897 = !{ptr @.str.771, !895, !"<string literal>", i1 false, i1 false}
!898 = !{ptr @test_overflow_shift._entry.772, !895, !"_entry", i1 false, i1 false}
!899 = !{ptr @test_overflow_shift._entry_ptr.773, !895, !"_entry_ptr", i1 false, i1 false}
!900 = !{ptr @test_overflow_shift._entry.774, !895, !"_entry", i1 false, i1 false}
!901 = !{ptr @test_overflow_shift._entry_ptr.775, !895, !"_entry_ptr", i1 false, i1 false}
!902 = !{ptr @test_overflow_shift._entry.776, !895, !"_entry", i1 false, i1 false}
!903 = !{ptr @test_overflow_shift._entry_ptr.777, !895, !"_entry_ptr", i1 false, i1 false}
!904 = !{ptr @test_overflow_shift._entry.778, !905, !"_entry", i1 false, i1 false}
!905 = !{!"../lib/test_overflow.c", i32 425, i32 9}
!906 = !{ptr @test_overflow_shift._entry_ptr.779, !905, !"_entry_ptr", i1 false, i1 false}
!907 = !{ptr @test_overflow_shift._entry.780, !905, !"_entry", i1 false, i1 false}
!908 = !{ptr @test_overflow_shift._entry_ptr.781, !905, !"_entry_ptr", i1 false, i1 false}
!909 = !{ptr @test_overflow_shift._entry.782, !905, !"_entry", i1 false, i1 false}
!910 = !{ptr @test_overflow_shift._entry_ptr.783, !905, !"_entry_ptr", i1 false, i1 false}
!911 = !{ptr @test_overflow_shift._entry.784, !905, !"_entry", i1 false, i1 false}
!912 = !{ptr @test_overflow_shift._entry_ptr.785, !905, !"_entry_ptr", i1 false, i1 false}
!913 = !{ptr @test_overflow_shift._entry.786, !914, !"_entry", i1 false, i1 false}
!914 = !{!"../lib/test_overflow.c", i32 426, i32 9}
!915 = !{ptr @test_overflow_shift._entry_ptr.787, !914, !"_entry_ptr", i1 false, i1 false}
!916 = !{ptr @.str.788, !914, !"<string literal>", i1 false, i1 false}
!917 = !{ptr @test_overflow_shift._entry.789, !914, !"_entry", i1 false, i1 false}
!918 = !{ptr @test_overflow_shift._entry_ptr.790, !914, !"_entry_ptr", i1 false, i1 false}
!919 = !{ptr @test_overflow_shift._entry.791, !914, !"_entry", i1 false, i1 false}
!920 = !{ptr @test_overflow_shift._entry_ptr.792, !914, !"_entry_ptr", i1 false, i1 false}
!921 = !{ptr @test_overflow_shift._entry.793, !914, !"_entry", i1 false, i1 false}
!922 = !{ptr @test_overflow_shift._entry_ptr.794, !914, !"_entry_ptr", i1 false, i1 false}
!923 = !{ptr @test_overflow_shift._entry.795, !924, !"_entry", i1 false, i1 false}
!924 = !{!"../lib/test_overflow.c", i32 427, i32 9}
!925 = !{ptr @test_overflow_shift._entry_ptr.796, !924, !"_entry_ptr", i1 false, i1 false}
!926 = !{ptr @test_overflow_shift._entry.797, !924, !"_entry", i1 false, i1 false}
!927 = !{ptr @test_overflow_shift._entry_ptr.798, !924, !"_entry_ptr", i1 false, i1 false}
!928 = !{ptr @test_overflow_shift._entry.799, !924, !"_entry", i1 false, i1 false}
!929 = !{ptr @test_overflow_shift._entry_ptr.800, !924, !"_entry_ptr", i1 false, i1 false}
!930 = !{ptr @test_overflow_shift._entry.801, !924, !"_entry", i1 false, i1 false}
!931 = !{ptr @test_overflow_shift._entry_ptr.802, !924, !"_entry_ptr", i1 false, i1 false}
!932 = !{ptr @test_overflow_shift._entry.803, !933, !"_entry", i1 false, i1 false}
!933 = !{!"../lib/test_overflow.c", i32 428, i32 9}
!934 = !{ptr @test_overflow_shift._entry_ptr.804, !933, !"_entry_ptr", i1 false, i1 false}
!935 = !{ptr @.str.805, !933, !"<string literal>", i1 false, i1 false}
!936 = !{ptr @test_overflow_shift._entry.806, !933, !"_entry", i1 false, i1 false}
!937 = !{ptr @test_overflow_shift._entry_ptr.807, !933, !"_entry_ptr", i1 false, i1 false}
!938 = !{ptr @test_overflow_shift._entry.808, !933, !"_entry", i1 false, i1 false}
!939 = !{ptr @test_overflow_shift._entry_ptr.809, !933, !"_entry_ptr", i1 false, i1 false}
!940 = !{ptr @test_overflow_shift._entry.810, !933, !"_entry", i1 false, i1 false}
!941 = !{ptr @test_overflow_shift._entry_ptr.811, !933, !"_entry_ptr", i1 false, i1 false}
!942 = !{ptr @test_overflow_shift._entry.812, !943, !"_entry", i1 false, i1 false}
!943 = !{!"../lib/test_overflow.c", i32 429, i32 9}
!944 = !{ptr @test_overflow_shift._entry_ptr.813, !943, !"_entry_ptr", i1 false, i1 false}
!945 = !{ptr @test_overflow_shift._entry.814, !943, !"_entry", i1 false, i1 false}
!946 = !{ptr @test_overflow_shift._entry_ptr.815, !943, !"_entry_ptr", i1 false, i1 false}
!947 = !{ptr @test_overflow_shift._entry.816, !943, !"_entry", i1 false, i1 false}
!948 = !{ptr @test_overflow_shift._entry_ptr.817, !943, !"_entry_ptr", i1 false, i1 false}
!949 = !{ptr @test_overflow_shift._entry.818, !943, !"_entry", i1 false, i1 false}
!950 = !{ptr @test_overflow_shift._entry_ptr.819, !943, !"_entry_ptr", i1 false, i1 false}
!951 = !{ptr @test_overflow_shift._entry.820, !952, !"_entry", i1 false, i1 false}
!952 = !{!"../lib/test_overflow.c", i32 430, i32 9}
!953 = !{ptr @test_overflow_shift._entry_ptr.821, !952, !"_entry_ptr", i1 false, i1 false}
!954 = !{ptr @.str.822, !952, !"<string literal>", i1 false, i1 false}
!955 = !{ptr @test_overflow_shift._entry.823, !952, !"_entry", i1 false, i1 false}
!956 = !{ptr @test_overflow_shift._entry_ptr.824, !952, !"_entry_ptr", i1 false, i1 false}
!957 = !{ptr @test_overflow_shift._entry.825, !952, !"_entry", i1 false, i1 false}
!958 = !{ptr @test_overflow_shift._entry_ptr.826, !952, !"_entry_ptr", i1 false, i1 false}
!959 = !{ptr @test_overflow_shift._entry.827, !952, !"_entry", i1 false, i1 false}
!960 = !{ptr @test_overflow_shift._entry_ptr.828, !952, !"_entry_ptr", i1 false, i1 false}
!961 = !{ptr @test_overflow_shift._entry.829, !962, !"_entry", i1 false, i1 false}
!962 = !{!"../lib/test_overflow.c", i32 431, i32 9}
!963 = !{ptr @test_overflow_shift._entry_ptr.830, !962, !"_entry_ptr", i1 false, i1 false}
!964 = !{ptr @test_overflow_shift._entry.831, !962, !"_entry", i1 false, i1 false}
!965 = !{ptr @test_overflow_shift._entry_ptr.832, !962, !"_entry_ptr", i1 false, i1 false}
!966 = !{ptr @test_overflow_shift._entry.833, !962, !"_entry", i1 false, i1 false}
!967 = !{ptr @test_overflow_shift._entry_ptr.834, !962, !"_entry_ptr", i1 false, i1 false}
!968 = !{ptr @test_overflow_shift._entry.835, !962, !"_entry", i1 false, i1 false}
!969 = !{ptr @test_overflow_shift._entry_ptr.836, !962, !"_entry_ptr", i1 false, i1 false}
!970 = !{ptr @test_overflow_shift._entry.837, !971, !"_entry", i1 false, i1 false}
!971 = !{!"../lib/test_overflow.c", i32 432, i32 9}
!972 = !{ptr @test_overflow_shift._entry_ptr.838, !971, !"_entry_ptr", i1 false, i1 false}
!973 = !{ptr @.str.839, !971, !"<string literal>", i1 false, i1 false}
!974 = !{ptr @test_overflow_shift._entry.840, !971, !"_entry", i1 false, i1 false}
!975 = !{ptr @test_overflow_shift._entry_ptr.841, !971, !"_entry_ptr", i1 false, i1 false}
!976 = !{ptr @test_overflow_shift._entry.842, !971, !"_entry", i1 false, i1 false}
!977 = !{ptr @test_overflow_shift._entry_ptr.843, !971, !"_entry_ptr", i1 false, i1 false}
!978 = !{ptr @test_overflow_shift._entry.844, !971, !"_entry", i1 false, i1 false}
!979 = !{ptr @test_overflow_shift._entry_ptr.845, !971, !"_entry_ptr", i1 false, i1 false}
!980 = !{ptr @test_overflow_shift._entry.846, !981, !"_entry", i1 false, i1 false}
!981 = !{!"../lib/test_overflow.c", i32 433, i32 9}
!982 = !{ptr @test_overflow_shift._entry_ptr.847, !981, !"_entry_ptr", i1 false, i1 false}
!983 = !{ptr @test_overflow_shift._entry.848, !981, !"_entry", i1 false, i1 false}
!984 = !{ptr @test_overflow_shift._entry_ptr.849, !981, !"_entry_ptr", i1 false, i1 false}
!985 = !{ptr @test_overflow_shift._entry.850, !981, !"_entry", i1 false, i1 false}
!986 = !{ptr @test_overflow_shift._entry_ptr.851, !981, !"_entry_ptr", i1 false, i1 false}
!987 = !{ptr @test_overflow_shift._entry.852, !981, !"_entry", i1 false, i1 false}
!988 = !{ptr @test_overflow_shift._entry_ptr.853, !981, !"_entry_ptr", i1 false, i1 false}
!989 = !{ptr @test_overflow_shift._entry.854, !990, !"_entry", i1 false, i1 false}
!990 = !{!"../lib/test_overflow.c", i32 436, i32 9}
!991 = !{ptr @test_overflow_shift._entry_ptr.855, !990, !"_entry_ptr", i1 false, i1 false}
!992 = !{ptr @test_overflow_shift._entry.856, !990, !"_entry", i1 false, i1 false}
!993 = !{ptr @test_overflow_shift._entry_ptr.857, !990, !"_entry_ptr", i1 false, i1 false}
!994 = !{ptr @test_overflow_shift._entry.858, !990, !"_entry", i1 false, i1 false}
!995 = !{ptr @test_overflow_shift._entry_ptr.859, !990, !"_entry_ptr", i1 false, i1 false}
!996 = !{ptr @test_overflow_shift._entry.860, !990, !"_entry", i1 false, i1 false}
!997 = !{ptr @test_overflow_shift._entry_ptr.861, !990, !"_entry_ptr", i1 false, i1 false}
!998 = !{ptr @test_overflow_shift._entry.862, !999, !"_entry", i1 false, i1 false}
!999 = !{!"../lib/test_overflow.c", i32 437, i32 9}
!1000 = !{ptr @test_overflow_shift._entry_ptr.863, !999, !"_entry_ptr", i1 false, i1 false}
!1001 = !{ptr @test_overflow_shift._entry.864, !999, !"_entry", i1 false, i1 false}
!1002 = !{ptr @test_overflow_shift._entry_ptr.865, !999, !"_entry_ptr", i1 false, i1 false}
!1003 = !{ptr @test_overflow_shift._entry.866, !999, !"_entry", i1 false, i1 false}
!1004 = !{ptr @test_overflow_shift._entry_ptr.867, !999, !"_entry_ptr", i1 false, i1 false}
!1005 = !{ptr @test_overflow_shift._entry.868, !999, !"_entry", i1 false, i1 false}
!1006 = !{ptr @test_overflow_shift._entry_ptr.869, !999, !"_entry_ptr", i1 false, i1 false}
!1007 = !{ptr @test_overflow_shift._entry.870, !1008, !"_entry", i1 false, i1 false}
!1008 = !{!"../lib/test_overflow.c", i32 438, i32 9}
!1009 = !{ptr @test_overflow_shift._entry_ptr.871, !1008, !"_entry_ptr", i1 false, i1 false}
!1010 = !{ptr @test_overflow_shift._entry.872, !1008, !"_entry", i1 false, i1 false}
!1011 = !{ptr @test_overflow_shift._entry_ptr.873, !1008, !"_entry_ptr", i1 false, i1 false}
!1012 = !{ptr @test_overflow_shift._entry.874, !1008, !"_entry", i1 false, i1 false}
!1013 = !{ptr @test_overflow_shift._entry_ptr.875, !1008, !"_entry_ptr", i1 false, i1 false}
!1014 = !{ptr @test_overflow_shift._entry.876, !1008, !"_entry", i1 false, i1 false}
!1015 = !{ptr @test_overflow_shift._entry_ptr.877, !1008, !"_entry_ptr", i1 false, i1 false}
!1016 = !{ptr @test_overflow_shift._entry.878, !1017, !"_entry", i1 false, i1 false}
!1017 = !{!"../lib/test_overflow.c", i32 439, i32 9}
!1018 = !{ptr @test_overflow_shift._entry_ptr.879, !1017, !"_entry_ptr", i1 false, i1 false}
!1019 = !{ptr @test_overflow_shift._entry.880, !1017, !"_entry", i1 false, i1 false}
!1020 = !{ptr @test_overflow_shift._entry_ptr.881, !1017, !"_entry_ptr", i1 false, i1 false}
!1021 = !{ptr @test_overflow_shift._entry.882, !1017, !"_entry", i1 false, i1 false}
!1022 = !{ptr @test_overflow_shift._entry_ptr.883, !1017, !"_entry_ptr", i1 false, i1 false}
!1023 = !{ptr @test_overflow_shift._entry.884, !1017, !"_entry", i1 false, i1 false}
!1024 = !{ptr @test_overflow_shift._entry_ptr.885, !1017, !"_entry_ptr", i1 false, i1 false}
!1025 = !{ptr @test_overflow_shift._entry.886, !1026, !"_entry", i1 false, i1 false}
!1026 = !{!"../lib/test_overflow.c", i32 440, i32 9}
!1027 = !{ptr @test_overflow_shift._entry_ptr.887, !1026, !"_entry_ptr", i1 false, i1 false}
!1028 = !{ptr @.str.888, !1026, !"<string literal>", i1 false, i1 false}
!1029 = !{ptr @test_overflow_shift._entry.889, !1026, !"_entry", i1 false, i1 false}
!1030 = !{ptr @test_overflow_shift._entry_ptr.890, !1026, !"_entry_ptr", i1 false, i1 false}
!1031 = !{ptr @test_overflow_shift._entry.891, !1026, !"_entry", i1 false, i1 false}
!1032 = !{ptr @test_overflow_shift._entry_ptr.892, !1026, !"_entry_ptr", i1 false, i1 false}
!1033 = !{ptr @test_overflow_shift._entry.893, !1026, !"_entry", i1 false, i1 false}
!1034 = !{ptr @test_overflow_shift._entry_ptr.894, !1026, !"_entry_ptr", i1 false, i1 false}
!1035 = !{ptr @test_overflow_shift._entry.895, !1036, !"_entry", i1 false, i1 false}
!1036 = !{!"../lib/test_overflow.c", i32 441, i32 9}
!1037 = !{ptr @test_overflow_shift._entry_ptr.896, !1036, !"_entry_ptr", i1 false, i1 false}
!1038 = !{ptr @test_overflow_shift._entry.897, !1036, !"_entry", i1 false, i1 false}
!1039 = !{ptr @test_overflow_shift._entry_ptr.898, !1036, !"_entry_ptr", i1 false, i1 false}
!1040 = !{ptr @test_overflow_shift._entry.899, !1036, !"_entry", i1 false, i1 false}
!1041 = !{ptr @test_overflow_shift._entry_ptr.900, !1036, !"_entry_ptr", i1 false, i1 false}
!1042 = !{ptr @test_overflow_shift._entry.901, !1036, !"_entry", i1 false, i1 false}
!1043 = !{ptr @test_overflow_shift._entry_ptr.902, !1036, !"_entry_ptr", i1 false, i1 false}
!1044 = !{ptr @test_overflow_shift._entry.903, !1045, !"_entry", i1 false, i1 false}
!1045 = !{!"../lib/test_overflow.c", i32 442, i32 9}
!1046 = !{ptr @test_overflow_shift._entry_ptr.904, !1045, !"_entry_ptr", i1 false, i1 false}
!1047 = !{ptr @.str.905, !1045, !"<string literal>", i1 false, i1 false}
!1048 = !{ptr @test_overflow_shift._entry.906, !1045, !"_entry", i1 false, i1 false}
!1049 = !{ptr @test_overflow_shift._entry_ptr.907, !1045, !"_entry_ptr", i1 false, i1 false}
!1050 = !{ptr @test_overflow_shift._entry.908, !1045, !"_entry", i1 false, i1 false}
!1051 = !{ptr @test_overflow_shift._entry_ptr.909, !1045, !"_entry_ptr", i1 false, i1 false}
!1052 = !{ptr @test_overflow_shift._entry.910, !1045, !"_entry", i1 false, i1 false}
!1053 = !{ptr @test_overflow_shift._entry_ptr.911, !1045, !"_entry_ptr", i1 false, i1 false}
!1054 = !{ptr @test_overflow_shift._entry.912, !1055, !"_entry", i1 false, i1 false}
!1055 = !{!"../lib/test_overflow.c", i32 443, i32 9}
!1056 = !{ptr @test_overflow_shift._entry_ptr.913, !1055, !"_entry_ptr", i1 false, i1 false}
!1057 = !{ptr @test_overflow_shift._entry.914, !1055, !"_entry", i1 false, i1 false}
!1058 = !{ptr @test_overflow_shift._entry_ptr.915, !1055, !"_entry_ptr", i1 false, i1 false}
!1059 = !{ptr @test_overflow_shift._entry.916, !1055, !"_entry", i1 false, i1 false}
!1060 = !{ptr @test_overflow_shift._entry_ptr.917, !1055, !"_entry_ptr", i1 false, i1 false}
!1061 = !{ptr @test_overflow_shift._entry.918, !1055, !"_entry", i1 false, i1 false}
!1062 = !{ptr @test_overflow_shift._entry_ptr.919, !1055, !"_entry_ptr", i1 false, i1 false}
!1063 = !{ptr @test_overflow_shift._entry.920, !1064, !"_entry", i1 false, i1 false}
!1064 = !{!"../lib/test_overflow.c", i32 444, i32 9}
!1065 = !{ptr @test_overflow_shift._entry_ptr.921, !1064, !"_entry_ptr", i1 false, i1 false}
!1066 = !{ptr @.str.922, !1064, !"<string literal>", i1 false, i1 false}
!1067 = !{ptr @test_overflow_shift._entry.923, !1064, !"_entry", i1 false, i1 false}
!1068 = !{ptr @test_overflow_shift._entry_ptr.924, !1064, !"_entry_ptr", i1 false, i1 false}
!1069 = !{ptr @test_overflow_shift._entry.925, !1064, !"_entry", i1 false, i1 false}
!1070 = !{ptr @test_overflow_shift._entry_ptr.926, !1064, !"_entry_ptr", i1 false, i1 false}
!1071 = !{ptr @test_overflow_shift._entry.927, !1064, !"_entry", i1 false, i1 false}
!1072 = !{ptr @test_overflow_shift._entry_ptr.928, !1064, !"_entry_ptr", i1 false, i1 false}
!1073 = !{ptr @test_overflow_shift._entry.929, !1074, !"_entry", i1 false, i1 false}
!1074 = !{!"../lib/test_overflow.c", i32 445, i32 9}
!1075 = !{ptr @test_overflow_shift._entry_ptr.930, !1074, !"_entry_ptr", i1 false, i1 false}
!1076 = !{ptr @test_overflow_shift._entry.931, !1074, !"_entry", i1 false, i1 false}
!1077 = !{ptr @test_overflow_shift._entry_ptr.932, !1074, !"_entry_ptr", i1 false, i1 false}
!1078 = !{ptr @test_overflow_shift._entry.933, !1074, !"_entry", i1 false, i1 false}
!1079 = !{ptr @test_overflow_shift._entry_ptr.934, !1074, !"_entry_ptr", i1 false, i1 false}
!1080 = !{ptr @test_overflow_shift._entry.935, !1074, !"_entry", i1 false, i1 false}
!1081 = !{ptr @test_overflow_shift._entry_ptr.936, !1074, !"_entry_ptr", i1 false, i1 false}
!1082 = !{ptr @test_overflow_shift._entry.937, !1083, !"_entry", i1 false, i1 false}
!1083 = !{!"../lib/test_overflow.c", i32 448, i32 9}
!1084 = !{ptr @test_overflow_shift._entry_ptr.938, !1083, !"_entry_ptr", i1 false, i1 false}
!1085 = !{ptr @test_overflow_shift._entry.939, !1083, !"_entry", i1 false, i1 false}
!1086 = !{ptr @test_overflow_shift._entry_ptr.940, !1083, !"_entry_ptr", i1 false, i1 false}
!1087 = !{ptr @test_overflow_shift._entry.941, !1083, !"_entry", i1 false, i1 false}
!1088 = !{ptr @test_overflow_shift._entry_ptr.942, !1083, !"_entry_ptr", i1 false, i1 false}
!1089 = !{ptr @test_overflow_shift._entry.943, !1083, !"_entry", i1 false, i1 false}
!1090 = !{ptr @test_overflow_shift._entry_ptr.944, !1083, !"_entry_ptr", i1 false, i1 false}
!1091 = !{ptr @test_overflow_shift._entry.945, !1092, !"_entry", i1 false, i1 false}
!1092 = !{!"../lib/test_overflow.c", i32 449, i32 9}
!1093 = !{ptr @test_overflow_shift._entry_ptr.946, !1092, !"_entry_ptr", i1 false, i1 false}
!1094 = !{ptr @.str.947, !1092, !"<string literal>", i1 false, i1 false}
!1095 = !{ptr @test_overflow_shift._entry.948, !1092, !"_entry", i1 false, i1 false}
!1096 = !{ptr @test_overflow_shift._entry_ptr.949, !1092, !"_entry_ptr", i1 false, i1 false}
!1097 = !{ptr @test_overflow_shift._entry.950, !1092, !"_entry", i1 false, i1 false}
!1098 = !{ptr @test_overflow_shift._entry_ptr.951, !1092, !"_entry_ptr", i1 false, i1 false}
!1099 = !{ptr @test_overflow_shift._entry.952, !1092, !"_entry", i1 false, i1 false}
!1100 = !{ptr @test_overflow_shift._entry_ptr.953, !1092, !"_entry_ptr", i1 false, i1 false}
!1101 = !{ptr @test_overflow_shift._entry.954, !1102, !"_entry", i1 false, i1 false}
!1102 = !{!"../lib/test_overflow.c", i32 450, i32 9}
!1103 = !{ptr @test_overflow_shift._entry_ptr.955, !1102, !"_entry_ptr", i1 false, i1 false}
!1104 = !{ptr @test_overflow_shift._entry.956, !1102, !"_entry", i1 false, i1 false}
!1105 = !{ptr @test_overflow_shift._entry_ptr.957, !1102, !"_entry_ptr", i1 false, i1 false}
!1106 = !{ptr @test_overflow_shift._entry.958, !1102, !"_entry", i1 false, i1 false}
!1107 = !{ptr @test_overflow_shift._entry_ptr.959, !1102, !"_entry_ptr", i1 false, i1 false}
!1108 = !{ptr @test_overflow_shift._entry.960, !1102, !"_entry", i1 false, i1 false}
!1109 = !{ptr @test_overflow_shift._entry_ptr.961, !1102, !"_entry_ptr", i1 false, i1 false}
!1110 = !{ptr @test_overflow_shift._entry.962, !1111, !"_entry", i1 false, i1 false}
!1111 = !{!"../lib/test_overflow.c", i32 451, i32 9}
!1112 = !{ptr @test_overflow_shift._entry_ptr.963, !1111, !"_entry_ptr", i1 false, i1 false}
!1113 = !{ptr @test_overflow_shift._entry.964, !1111, !"_entry", i1 false, i1 false}
!1114 = !{ptr @test_overflow_shift._entry_ptr.965, !1111, !"_entry_ptr", i1 false, i1 false}
!1115 = !{ptr @test_overflow_shift._entry.966, !1111, !"_entry", i1 false, i1 false}
!1116 = !{ptr @test_overflow_shift._entry_ptr.967, !1111, !"_entry_ptr", i1 false, i1 false}
!1117 = !{ptr @test_overflow_shift._entry.968, !1111, !"_entry", i1 false, i1 false}
!1118 = !{ptr @test_overflow_shift._entry_ptr.969, !1111, !"_entry_ptr", i1 false, i1 false}
!1119 = !{ptr @test_overflow_shift._entry.970, !1120, !"_entry", i1 false, i1 false}
!1120 = !{!"../lib/test_overflow.c", i32 452, i32 9}
!1121 = !{ptr @test_overflow_shift._entry_ptr.971, !1120, !"_entry_ptr", i1 false, i1 false}
!1122 = !{ptr @test_overflow_shift._entry.972, !1120, !"_entry", i1 false, i1 false}
!1123 = !{ptr @test_overflow_shift._entry_ptr.973, !1120, !"_entry_ptr", i1 false, i1 false}
!1124 = !{ptr @test_overflow_shift._entry.974, !1120, !"_entry", i1 false, i1 false}
!1125 = !{ptr @test_overflow_shift._entry_ptr.975, !1120, !"_entry_ptr", i1 false, i1 false}
!1126 = !{ptr @test_overflow_shift._entry.976, !1120, !"_entry", i1 false, i1 false}
!1127 = !{ptr @test_overflow_shift._entry_ptr.977, !1120, !"_entry_ptr", i1 false, i1 false}
!1128 = !{ptr @test_overflow_shift._entry.978, !1129, !"_entry", i1 false, i1 false}
!1129 = !{!"../lib/test_overflow.c", i32 453, i32 9}
!1130 = !{ptr @test_overflow_shift._entry_ptr.979, !1129, !"_entry_ptr", i1 false, i1 false}
!1131 = !{ptr @.str.980, !1129, !"<string literal>", i1 false, i1 false}
!1132 = !{ptr @test_overflow_shift._entry.981, !1129, !"_entry", i1 false, i1 false}
!1133 = !{ptr @test_overflow_shift._entry_ptr.982, !1129, !"_entry_ptr", i1 false, i1 false}
!1134 = !{ptr @test_overflow_shift._entry.983, !1129, !"_entry", i1 false, i1 false}
!1135 = !{ptr @test_overflow_shift._entry_ptr.984, !1129, !"_entry_ptr", i1 false, i1 false}
!1136 = !{ptr @test_overflow_shift._entry.985, !1129, !"_entry", i1 false, i1 false}
!1137 = !{ptr @test_overflow_shift._entry_ptr.986, !1129, !"_entry_ptr", i1 false, i1 false}
!1138 = !{ptr @test_overflow_shift._entry.987, !1139, !"_entry", i1 false, i1 false}
!1139 = !{!"../lib/test_overflow.c", i32 454, i32 9}
!1140 = !{ptr @test_overflow_shift._entry_ptr.988, !1139, !"_entry_ptr", i1 false, i1 false}
!1141 = !{ptr @test_overflow_shift._entry.989, !1139, !"_entry", i1 false, i1 false}
!1142 = !{ptr @test_overflow_shift._entry_ptr.990, !1139, !"_entry_ptr", i1 false, i1 false}
!1143 = !{ptr @test_overflow_shift._entry.991, !1139, !"_entry", i1 false, i1 false}
!1144 = !{ptr @test_overflow_shift._entry_ptr.992, !1139, !"_entry_ptr", i1 false, i1 false}
!1145 = !{ptr @test_overflow_shift._entry.993, !1139, !"_entry", i1 false, i1 false}
!1146 = !{ptr @test_overflow_shift._entry_ptr.994, !1139, !"_entry_ptr", i1 false, i1 false}
!1147 = !{ptr @test_overflow_shift._entry.995, !1148, !"_entry", i1 false, i1 false}
!1148 = !{!"../lib/test_overflow.c", i32 455, i32 9}
!1149 = !{ptr @test_overflow_shift._entry_ptr.996, !1148, !"_entry_ptr", i1 false, i1 false}
!1150 = !{ptr @test_overflow_shift._entry.997, !1148, !"_entry", i1 false, i1 false}
!1151 = !{ptr @test_overflow_shift._entry_ptr.998, !1148, !"_entry_ptr", i1 false, i1 false}
!1152 = !{ptr @test_overflow_shift._entry.999, !1148, !"_entry", i1 false, i1 false}
!1153 = !{ptr @test_overflow_shift._entry_ptr.1000, !1148, !"_entry_ptr", i1 false, i1 false}
!1154 = !{ptr @test_overflow_shift._entry.1001, !1148, !"_entry", i1 false, i1 false}
!1155 = !{ptr @test_overflow_shift._entry_ptr.1002, !1148, !"_entry_ptr", i1 false, i1 false}
!1156 = !{ptr @test_overflow_shift._entry.1003, !1157, !"_entry", i1 false, i1 false}
!1157 = !{!"../lib/test_overflow.c", i32 456, i32 9}
!1158 = !{ptr @test_overflow_shift._entry_ptr.1004, !1157, !"_entry_ptr", i1 false, i1 false}
!1159 = !{ptr @test_overflow_shift._entry.1005, !1157, !"_entry", i1 false, i1 false}
!1160 = !{ptr @test_overflow_shift._entry_ptr.1006, !1157, !"_entry_ptr", i1 false, i1 false}
!1161 = !{ptr @test_overflow_shift._entry.1007, !1157, !"_entry", i1 false, i1 false}
!1162 = !{ptr @test_overflow_shift._entry_ptr.1008, !1157, !"_entry_ptr", i1 false, i1 false}
!1163 = !{ptr @test_overflow_shift._entry.1009, !1157, !"_entry", i1 false, i1 false}
!1164 = !{ptr @test_overflow_shift._entry_ptr.1010, !1157, !"_entry_ptr", i1 false, i1 false}
!1165 = !{ptr @test_overflow_shift._entry.1011, !1166, !"_entry", i1 false, i1 false}
!1166 = !{!"../lib/test_overflow.c", i32 457, i32 9}
!1167 = !{ptr @test_overflow_shift._entry_ptr.1012, !1166, !"_entry_ptr", i1 false, i1 false}
!1168 = !{ptr @.str.1013, !1166, !"<string literal>", i1 false, i1 false}
!1169 = !{ptr @test_overflow_shift._entry.1014, !1166, !"_entry", i1 false, i1 false}
!1170 = !{ptr @test_overflow_shift._entry_ptr.1015, !1166, !"_entry_ptr", i1 false, i1 false}
!1171 = !{ptr @test_overflow_shift._entry.1016, !1166, !"_entry", i1 false, i1 false}
!1172 = !{ptr @test_overflow_shift._entry_ptr.1017, !1166, !"_entry_ptr", i1 false, i1 false}
!1173 = !{ptr @test_overflow_shift._entry.1018, !1166, !"_entry", i1 false, i1 false}
!1174 = !{ptr @test_overflow_shift._entry_ptr.1019, !1166, !"_entry_ptr", i1 false, i1 false}
!1175 = !{ptr @test_overflow_shift._entry.1020, !1176, !"_entry", i1 false, i1 false}
!1176 = !{!"../lib/test_overflow.c", i32 458, i32 9}
!1177 = !{ptr @test_overflow_shift._entry_ptr.1021, !1176, !"_entry_ptr", i1 false, i1 false}
!1178 = !{ptr @test_overflow_shift._entry.1022, !1176, !"_entry", i1 false, i1 false}
!1179 = !{ptr @test_overflow_shift._entry_ptr.1023, !1176, !"_entry_ptr", i1 false, i1 false}
!1180 = !{ptr @test_overflow_shift._entry.1024, !1176, !"_entry", i1 false, i1 false}
!1181 = !{ptr @test_overflow_shift._entry_ptr.1025, !1176, !"_entry_ptr", i1 false, i1 false}
!1182 = !{ptr @test_overflow_shift._entry.1026, !1176, !"_entry", i1 false, i1 false}
!1183 = !{ptr @test_overflow_shift._entry_ptr.1027, !1176, !"_entry_ptr", i1 false, i1 false}
!1184 = !{ptr @test_overflow_shift._entry.1028, !1185, !"_entry", i1 false, i1 false}
!1185 = !{!"../lib/test_overflow.c", i32 459, i32 9}
!1186 = !{ptr @test_overflow_shift._entry_ptr.1029, !1185, !"_entry_ptr", i1 false, i1 false}
!1187 = !{ptr @test_overflow_shift._entry.1030, !1185, !"_entry", i1 false, i1 false}
!1188 = !{ptr @test_overflow_shift._entry_ptr.1031, !1185, !"_entry_ptr", i1 false, i1 false}
!1189 = !{ptr @test_overflow_shift._entry.1032, !1185, !"_entry", i1 false, i1 false}
!1190 = !{ptr @test_overflow_shift._entry_ptr.1033, !1185, !"_entry_ptr", i1 false, i1 false}
!1191 = !{ptr @test_overflow_shift._entry.1034, !1185, !"_entry", i1 false, i1 false}
!1192 = !{ptr @test_overflow_shift._entry_ptr.1035, !1185, !"_entry_ptr", i1 false, i1 false}
!1193 = !{ptr @test_overflow_shift._entry.1036, !1194, !"_entry", i1 false, i1 false}
!1194 = !{!"../lib/test_overflow.c", i32 460, i32 9}
!1195 = !{ptr @test_overflow_shift._entry_ptr.1037, !1194, !"_entry_ptr", i1 false, i1 false}
!1196 = !{ptr @test_overflow_shift._entry.1038, !1194, !"_entry", i1 false, i1 false}
!1197 = !{ptr @test_overflow_shift._entry_ptr.1039, !1194, !"_entry_ptr", i1 false, i1 false}
!1198 = !{ptr @test_overflow_shift._entry.1040, !1194, !"_entry", i1 false, i1 false}
!1199 = !{ptr @test_overflow_shift._entry_ptr.1041, !1194, !"_entry_ptr", i1 false, i1 false}
!1200 = !{ptr @test_overflow_shift._entry.1042, !1194, !"_entry", i1 false, i1 false}
!1201 = !{ptr @test_overflow_shift._entry_ptr.1043, !1194, !"_entry_ptr", i1 false, i1 false}
!1202 = !{ptr @test_overflow_shift._entry.1044, !1203, !"_entry", i1 false, i1 false}
!1203 = !{!"../lib/test_overflow.c", i32 461, i32 9}
!1204 = !{ptr @test_overflow_shift._entry_ptr.1045, !1203, !"_entry_ptr", i1 false, i1 false}
!1205 = !{ptr @test_overflow_shift._entry.1046, !1203, !"_entry", i1 false, i1 false}
!1206 = !{ptr @test_overflow_shift._entry_ptr.1047, !1203, !"_entry_ptr", i1 false, i1 false}
!1207 = !{ptr @test_overflow_shift._entry.1048, !1203, !"_entry", i1 false, i1 false}
!1208 = !{ptr @test_overflow_shift._entry_ptr.1049, !1203, !"_entry_ptr", i1 false, i1 false}
!1209 = !{ptr @test_overflow_shift._entry.1050, !1203, !"_entry", i1 false, i1 false}
!1210 = !{ptr @test_overflow_shift._entry_ptr.1051, !1203, !"_entry_ptr", i1 false, i1 false}
!1211 = !{ptr @test_overflow_shift._entry.1052, !1212, !"_entry", i1 false, i1 false}
!1212 = !{!"../lib/test_overflow.c", i32 462, i32 9}
!1213 = !{ptr @test_overflow_shift._entry_ptr.1053, !1212, !"_entry_ptr", i1 false, i1 false}
!1214 = !{ptr @test_overflow_shift._entry.1054, !1212, !"_entry", i1 false, i1 false}
!1215 = !{ptr @test_overflow_shift._entry_ptr.1055, !1212, !"_entry_ptr", i1 false, i1 false}
!1216 = !{ptr @test_overflow_shift._entry.1056, !1212, !"_entry", i1 false, i1 false}
!1217 = !{ptr @test_overflow_shift._entry_ptr.1057, !1212, !"_entry_ptr", i1 false, i1 false}
!1218 = !{ptr @test_overflow_shift._entry.1058, !1212, !"_entry", i1 false, i1 false}
!1219 = !{ptr @test_overflow_shift._entry_ptr.1059, !1212, !"_entry_ptr", i1 false, i1 false}
!1220 = !{ptr @test_overflow_shift._entry.1060, !1221, !"_entry", i1 false, i1 false}
!1221 = !{!"../lib/test_overflow.c", i32 463, i32 9}
!1222 = !{ptr @test_overflow_shift._entry_ptr.1061, !1221, !"_entry_ptr", i1 false, i1 false}
!1223 = !{ptr @.str.1062, !1221, !"<string literal>", i1 false, i1 false}
!1224 = !{ptr @test_overflow_shift._entry.1063, !1221, !"_entry", i1 false, i1 false}
!1225 = !{ptr @test_overflow_shift._entry_ptr.1064, !1221, !"_entry_ptr", i1 false, i1 false}
!1226 = !{ptr @test_overflow_shift._entry.1065, !1221, !"_entry", i1 false, i1 false}
!1227 = !{ptr @test_overflow_shift._entry_ptr.1066, !1221, !"_entry_ptr", i1 false, i1 false}
!1228 = !{ptr @test_overflow_shift._entry.1067, !1221, !"_entry", i1 false, i1 false}
!1229 = !{ptr @test_overflow_shift._entry_ptr.1068, !1221, !"_entry_ptr", i1 false, i1 false}
!1230 = !{ptr @test_overflow_shift._entry.1069, !1231, !"_entry", i1 false, i1 false}
!1231 = !{!"../lib/test_overflow.c", i32 464, i32 9}
!1232 = !{ptr @test_overflow_shift._entry_ptr.1070, !1231, !"_entry_ptr", i1 false, i1 false}
!1233 = !{ptr @test_overflow_shift._entry.1071, !1231, !"_entry", i1 false, i1 false}
!1234 = !{ptr @test_overflow_shift._entry_ptr.1072, !1231, !"_entry_ptr", i1 false, i1 false}
!1235 = !{ptr @test_overflow_shift._entry.1073, !1231, !"_entry", i1 false, i1 false}
!1236 = !{ptr @test_overflow_shift._entry_ptr.1074, !1231, !"_entry_ptr", i1 false, i1 false}
!1237 = !{ptr @test_overflow_shift._entry.1075, !1231, !"_entry", i1 false, i1 false}
!1238 = !{ptr @test_overflow_shift._entry_ptr.1076, !1231, !"_entry_ptr", i1 false, i1 false}
!1239 = !{ptr @test_overflow_shift._entry.1077, !1240, !"_entry", i1 false, i1 false}
!1240 = !{!"../lib/test_overflow.c", i32 465, i32 9}
!1241 = !{ptr @test_overflow_shift._entry_ptr.1078, !1240, !"_entry_ptr", i1 false, i1 false}
!1242 = !{ptr @test_overflow_shift._entry.1079, !1240, !"_entry", i1 false, i1 false}
!1243 = !{ptr @test_overflow_shift._entry_ptr.1080, !1240, !"_entry_ptr", i1 false, i1 false}
!1244 = !{ptr @test_overflow_shift._entry.1081, !1240, !"_entry", i1 false, i1 false}
!1245 = !{ptr @test_overflow_shift._entry_ptr.1082, !1240, !"_entry_ptr", i1 false, i1 false}
!1246 = !{ptr @test_overflow_shift._entry.1083, !1240, !"_entry", i1 false, i1 false}
!1247 = !{ptr @test_overflow_shift._entry_ptr.1084, !1240, !"_entry_ptr", i1 false, i1 false}
!1248 = !{ptr @test_overflow_shift._entry.1085, !1249, !"_entry", i1 false, i1 false}
!1249 = !{!"../lib/test_overflow.c", i32 476, i32 9}
!1250 = !{ptr @test_overflow_shift._entry_ptr.1086, !1249, !"_entry_ptr", i1 false, i1 false}
!1251 = !{ptr @test_overflow_shift._entry.1087, !1249, !"_entry", i1 false, i1 false}
!1252 = !{ptr @test_overflow_shift._entry_ptr.1088, !1249, !"_entry_ptr", i1 false, i1 false}
!1253 = !{ptr @test_overflow_shift._entry.1089, !1249, !"_entry", i1 false, i1 false}
!1254 = !{ptr @test_overflow_shift._entry_ptr.1090, !1249, !"_entry_ptr", i1 false, i1 false}
!1255 = !{ptr @test_overflow_shift._entry.1091, !1249, !"_entry", i1 false, i1 false}
!1256 = !{ptr @test_overflow_shift._entry_ptr.1092, !1249, !"_entry_ptr", i1 false, i1 false}
!1257 = !{ptr @test_overflow_shift._entry.1093, !1258, !"_entry", i1 false, i1 false}
!1258 = !{!"../lib/test_overflow.c", i32 477, i32 9}
!1259 = !{ptr @test_overflow_shift._entry_ptr.1094, !1258, !"_entry_ptr", i1 false, i1 false}
!1260 = !{ptr @test_overflow_shift._entry.1095, !1258, !"_entry", i1 false, i1 false}
!1261 = !{ptr @test_overflow_shift._entry_ptr.1096, !1258, !"_entry_ptr", i1 false, i1 false}
!1262 = !{ptr @test_overflow_shift._entry.1097, !1258, !"_entry", i1 false, i1 false}
!1263 = !{ptr @test_overflow_shift._entry_ptr.1098, !1258, !"_entry_ptr", i1 false, i1 false}
!1264 = !{ptr @test_overflow_shift._entry.1099, !1258, !"_entry", i1 false, i1 false}
!1265 = !{ptr @test_overflow_shift._entry_ptr.1100, !1258, !"_entry_ptr", i1 false, i1 false}
!1266 = !{ptr @test_overflow_shift._entry.1101, !1267, !"_entry", i1 false, i1 false}
!1267 = !{!"../lib/test_overflow.c", i32 478, i32 9}
!1268 = !{ptr @test_overflow_shift._entry_ptr.1102, !1267, !"_entry_ptr", i1 false, i1 false}
!1269 = !{ptr @test_overflow_shift._entry.1103, !1267, !"_entry", i1 false, i1 false}
!1270 = !{ptr @test_overflow_shift._entry_ptr.1104, !1267, !"_entry_ptr", i1 false, i1 false}
!1271 = !{ptr @test_overflow_shift._entry.1105, !1267, !"_entry", i1 false, i1 false}
!1272 = !{ptr @test_overflow_shift._entry_ptr.1106, !1267, !"_entry_ptr", i1 false, i1 false}
!1273 = !{ptr @test_overflow_shift._entry.1107, !1267, !"_entry", i1 false, i1 false}
!1274 = !{ptr @test_overflow_shift._entry_ptr.1108, !1267, !"_entry_ptr", i1 false, i1 false}
!1275 = !{ptr @test_overflow_shift._entry.1109, !1276, !"_entry", i1 false, i1 false}
!1276 = !{!"../lib/test_overflow.c", i32 479, i32 9}
!1277 = !{ptr @test_overflow_shift._entry_ptr.1110, !1276, !"_entry_ptr", i1 false, i1 false}
!1278 = !{ptr @test_overflow_shift._entry.1111, !1276, !"_entry", i1 false, i1 false}
!1279 = !{ptr @test_overflow_shift._entry_ptr.1112, !1276, !"_entry_ptr", i1 false, i1 false}
!1280 = !{ptr @test_overflow_shift._entry.1113, !1276, !"_entry", i1 false, i1 false}
!1281 = !{ptr @test_overflow_shift._entry_ptr.1114, !1276, !"_entry_ptr", i1 false, i1 false}
!1282 = !{ptr @test_overflow_shift._entry.1115, !1276, !"_entry", i1 false, i1 false}
!1283 = !{ptr @test_overflow_shift._entry_ptr.1116, !1276, !"_entry_ptr", i1 false, i1 false}
!1284 = !{ptr @test_overflow_shift._entry.1117, !1285, !"_entry", i1 false, i1 false}
!1285 = !{!"../lib/test_overflow.c", i32 480, i32 9}
!1286 = !{ptr @test_overflow_shift._entry_ptr.1118, !1285, !"_entry_ptr", i1 false, i1 false}
!1287 = !{ptr @test_overflow_shift._entry.1119, !1285, !"_entry", i1 false, i1 false}
!1288 = !{ptr @test_overflow_shift._entry_ptr.1120, !1285, !"_entry_ptr", i1 false, i1 false}
!1289 = !{ptr @test_overflow_shift._entry.1121, !1285, !"_entry", i1 false, i1 false}
!1290 = !{ptr @test_overflow_shift._entry_ptr.1122, !1285, !"_entry_ptr", i1 false, i1 false}
!1291 = !{ptr @test_overflow_shift._entry.1123, !1285, !"_entry", i1 false, i1 false}
!1292 = !{ptr @test_overflow_shift._entry_ptr.1124, !1285, !"_entry_ptr", i1 false, i1 false}
!1293 = !{ptr @.str.1125, !1294, !"<string literal>", i1 false, i1 false}
!1294 = !{!"../lib/test_overflow.c", i32 567, i32 3}
!1295 = !{ptr @.str.1126, !1294, !"<string literal>", i1 false, i1 false}
!1296 = !{ptr @test_overflow_allocation._entry, !1294, !"_entry", i1 false, i1 false}
!1297 = !{ptr @test_overflow_allocation._entry_ptr, !1294, !"_entry_ptr", i1 false, i1 false}
!1298 = !{ptr @.str.1127, !1299, !"<string literal>", i1 false, i1 false}
!1299 = !{!"../lib/test_overflow.c", i32 543, i32 1}
!1300 = !{ptr @.str.1128, !1299, !"<string literal>", i1 false, i1 false}
!1301 = !{ptr @test_kmalloc._entry, !1299, !"_entry", i1 false, i1 false}
!1302 = !{ptr @test_kmalloc._entry_ptr, !1299, !"_entry_ptr", i1 false, i1 false}
!1303 = !{ptr @.str.1130, !1299, !"<string literal>", i1 false, i1 false}
!1304 = !{ptr @test_kmalloc._entry.1129, !1299, !"_entry", i1 false, i1 false}
!1305 = !{ptr @test_kmalloc._entry_ptr.1131, !1299, !"_entry_ptr", i1 false, i1 false}
!1306 = !{ptr @.str.1133, !1299, !"<string literal>", i1 false, i1 false}
!1307 = !{ptr @test_kmalloc._entry.1132, !1299, !"_entry", i1 false, i1 false}
!1308 = !{ptr @test_kmalloc._entry_ptr.1134, !1299, !"_entry_ptr", i1 false, i1 false}
!1309 = !{ptr @.str.1136, !1299, !"<string literal>", i1 false, i1 false}
!1310 = !{ptr @test_kmalloc._entry.1135, !1299, !"_entry", i1 false, i1 false}
!1311 = !{ptr @test_kmalloc._entry_ptr.1137, !1299, !"_entry_ptr", i1 false, i1 false}
!1312 = !{ptr @.str.1138, !1313, !"<string literal>", i1 false, i1 false}
!1313 = !{!"../lib/test_overflow.c", i32 544, i32 1}
!1314 = !{ptr @.str.1139, !1313, !"<string literal>", i1 false, i1 false}
!1315 = !{ptr @test_kmalloc_node._entry, !1313, !"_entry", i1 false, i1 false}
!1316 = !{ptr @test_kmalloc_node._entry_ptr, !1313, !"_entry_ptr", i1 false, i1 false}
!1317 = !{ptr @.str.1141, !1313, !"<string literal>", i1 false, i1 false}
!1318 = !{ptr @test_kmalloc_node._entry.1140, !1313, !"_entry", i1 false, i1 false}
!1319 = !{ptr @test_kmalloc_node._entry_ptr.1142, !1313, !"_entry_ptr", i1 false, i1 false}
!1320 = !{ptr @.str.1144, !1313, !"<string literal>", i1 false, i1 false}
!1321 = !{ptr @test_kmalloc_node._entry.1143, !1313, !"_entry", i1 false, i1 false}
!1322 = !{ptr @test_kmalloc_node._entry_ptr.1145, !1313, !"_entry_ptr", i1 false, i1 false}
!1323 = !{ptr @.str.1147, !1313, !"<string literal>", i1 false, i1 false}
!1324 = !{ptr @test_kmalloc_node._entry.1146, !1313, !"_entry", i1 false, i1 false}
!1325 = !{ptr @test_kmalloc_node._entry_ptr.1148, !1313, !"_entry_ptr", i1 false, i1 false}
!1326 = !{ptr @.str.1149, !1327, !"<string literal>", i1 false, i1 false}
!1327 = !{!"../lib/test_overflow.c", i32 545, i32 1}
!1328 = !{ptr @.str.1150, !1327, !"<string literal>", i1 false, i1 false}
!1329 = !{ptr @test_kzalloc._entry, !1327, !"_entry", i1 false, i1 false}
!1330 = !{ptr @test_kzalloc._entry_ptr, !1327, !"_entry_ptr", i1 false, i1 false}
!1331 = !{ptr @.str.1152, !1327, !"<string literal>", i1 false, i1 false}
!1332 = !{ptr @test_kzalloc._entry.1151, !1327, !"_entry", i1 false, i1 false}
!1333 = !{ptr @test_kzalloc._entry_ptr.1153, !1327, !"_entry_ptr", i1 false, i1 false}
!1334 = !{ptr @.str.1155, !1327, !"<string literal>", i1 false, i1 false}
!1335 = !{ptr @test_kzalloc._entry.1154, !1327, !"_entry", i1 false, i1 false}
!1336 = !{ptr @test_kzalloc._entry_ptr.1156, !1327, !"_entry_ptr", i1 false, i1 false}
!1337 = !{ptr @.str.1158, !1327, !"<string literal>", i1 false, i1 false}
!1338 = !{ptr @test_kzalloc._entry.1157, !1327, !"_entry", i1 false, i1 false}
!1339 = !{ptr @test_kzalloc._entry_ptr.1159, !1327, !"_entry_ptr", i1 false, i1 false}
!1340 = !{ptr @.str.1160, !1341, !"<string literal>", i1 false, i1 false}
!1341 = !{!"../lib/test_overflow.c", i32 546, i32 1}
!1342 = !{ptr @.str.1161, !1341, !"<string literal>", i1 false, i1 false}
!1343 = !{ptr @test_kzalloc_node._entry, !1341, !"_entry", i1 false, i1 false}
!1344 = !{ptr @test_kzalloc_node._entry_ptr, !1341, !"_entry_ptr", i1 false, i1 false}
!1345 = !{ptr @.str.1163, !1341, !"<string literal>", i1 false, i1 false}
!1346 = !{ptr @test_kzalloc_node._entry.1162, !1341, !"_entry", i1 false, i1 false}
!1347 = !{ptr @test_kzalloc_node._entry_ptr.1164, !1341, !"_entry_ptr", i1 false, i1 false}
!1348 = !{ptr @.str.1166, !1341, !"<string literal>", i1 false, i1 false}
!1349 = !{ptr @test_kzalloc_node._entry.1165, !1341, !"_entry", i1 false, i1 false}
!1350 = !{ptr @test_kzalloc_node._entry_ptr.1167, !1341, !"_entry_ptr", i1 false, i1 false}
!1351 = !{ptr @.str.1169, !1341, !"<string literal>", i1 false, i1 false}
!1352 = !{ptr @test_kzalloc_node._entry.1168, !1341, !"_entry", i1 false, i1 false}
!1353 = !{ptr @test_kzalloc_node._entry_ptr.1170, !1341, !"_entry_ptr", i1 false, i1 false}
!1354 = !{ptr @.str.1171, !1355, !"<string literal>", i1 false, i1 false}
!1355 = !{!"../lib/test_overflow.c", i32 551, i32 1}
!1356 = !{ptr @.str.1172, !1355, !"<string literal>", i1 false, i1 false}
!1357 = !{ptr @test_kvmalloc._entry, !1355, !"_entry", i1 false, i1 false}
!1358 = !{ptr @test_kvmalloc._entry_ptr, !1355, !"_entry_ptr", i1 false, i1 false}
!1359 = !{ptr @.str.1174, !1355, !"<string literal>", i1 false, i1 false}
!1360 = !{ptr @test_kvmalloc._entry.1173, !1355, !"_entry", i1 false, i1 false}
!1361 = !{ptr @test_kvmalloc._entry_ptr.1175, !1355, !"_entry_ptr", i1 false, i1 false}
!1362 = !{ptr @.str.1177, !1355, !"<string literal>", i1 false, i1 false}
!1363 = !{ptr @test_kvmalloc._entry.1176, !1355, !"_entry", i1 false, i1 false}
!1364 = !{ptr @test_kvmalloc._entry_ptr.1178, !1355, !"_entry_ptr", i1 false, i1 false}
!1365 = !{ptr @.str.1180, !1355, !"<string literal>", i1 false, i1 false}
!1366 = !{ptr @test_kvmalloc._entry.1179, !1355, !"_entry", i1 false, i1 false}
!1367 = !{ptr @test_kvmalloc._entry_ptr.1181, !1355, !"_entry_ptr", i1 false, i1 false}
!1368 = !{ptr @.str.1182, !1369, !"<string literal>", i1 false, i1 false}
!1369 = !{!"../lib/test_overflow.c", i32 552, i32 1}
!1370 = !{ptr @.str.1183, !1369, !"<string literal>", i1 false, i1 false}
!1371 = !{ptr @test_kvmalloc_node._entry, !1369, !"_entry", i1 false, i1 false}
!1372 = !{ptr @test_kvmalloc_node._entry_ptr, !1369, !"_entry_ptr", i1 false, i1 false}
!1373 = !{ptr @.str.1185, !1369, !"<string literal>", i1 false, i1 false}
!1374 = !{ptr @test_kvmalloc_node._entry.1184, !1369, !"_entry", i1 false, i1 false}
!1375 = !{ptr @test_kvmalloc_node._entry_ptr.1186, !1369, !"_entry_ptr", i1 false, i1 false}
!1376 = !{ptr @.str.1188, !1369, !"<string literal>", i1 false, i1 false}
!1377 = !{ptr @test_kvmalloc_node._entry.1187, !1369, !"_entry", i1 false, i1 false}
!1378 = !{ptr @test_kvmalloc_node._entry_ptr.1189, !1369, !"_entry_ptr", i1 false, i1 false}
!1379 = !{ptr @.str.1191, !1369, !"<string literal>", i1 false, i1 false}
!1380 = !{ptr @test_kvmalloc_node._entry.1190, !1369, !"_entry", i1 false, i1 false}
!1381 = !{ptr @test_kvmalloc_node._entry_ptr.1192, !1369, !"_entry_ptr", i1 false, i1 false}
!1382 = !{ptr @.str.1193, !1383, !"<string literal>", i1 false, i1 false}
!1383 = !{!"../lib/test_overflow.c", i32 553, i32 1}
!1384 = !{ptr @.str.1194, !1383, !"<string literal>", i1 false, i1 false}
!1385 = !{ptr @test_kvzalloc._entry, !1383, !"_entry", i1 false, i1 false}
!1386 = !{ptr @test_kvzalloc._entry_ptr, !1383, !"_entry_ptr", i1 false, i1 false}
!1387 = !{ptr @.str.1196, !1383, !"<string literal>", i1 false, i1 false}
!1388 = !{ptr @test_kvzalloc._entry.1195, !1383, !"_entry", i1 false, i1 false}
!1389 = !{ptr @test_kvzalloc._entry_ptr.1197, !1383, !"_entry_ptr", i1 false, i1 false}
!1390 = !{ptr @.str.1199, !1383, !"<string literal>", i1 false, i1 false}
!1391 = !{ptr @test_kvzalloc._entry.1198, !1383, !"_entry", i1 false, i1 false}
!1392 = !{ptr @test_kvzalloc._entry_ptr.1200, !1383, !"_entry_ptr", i1 false, i1 false}
!1393 = !{ptr @.str.1202, !1383, !"<string literal>", i1 false, i1 false}
!1394 = !{ptr @test_kvzalloc._entry.1201, !1383, !"_entry", i1 false, i1 false}
!1395 = !{ptr @test_kvzalloc._entry_ptr.1203, !1383, !"_entry_ptr", i1 false, i1 false}
!1396 = !{ptr @.str.1204, !1397, !"<string literal>", i1 false, i1 false}
!1397 = !{!"../lib/test_overflow.c", i32 554, i32 1}
!1398 = !{ptr @.str.1205, !1397, !"<string literal>", i1 false, i1 false}
!1399 = !{ptr @test_kvzalloc_node._entry, !1397, !"_entry", i1 false, i1 false}
!1400 = !{ptr @test_kvzalloc_node._entry_ptr, !1397, !"_entry_ptr", i1 false, i1 false}
!1401 = !{ptr @.str.1207, !1397, !"<string literal>", i1 false, i1 false}
!1402 = !{ptr @test_kvzalloc_node._entry.1206, !1397, !"_entry", i1 false, i1 false}
!1403 = !{ptr @test_kvzalloc_node._entry_ptr.1208, !1397, !"_entry_ptr", i1 false, i1 false}
!1404 = !{ptr @.str.1210, !1397, !"<string literal>", i1 false, i1 false}
!1405 = !{ptr @test_kvzalloc_node._entry.1209, !1397, !"_entry", i1 false, i1 false}
!1406 = !{ptr @test_kvzalloc_node._entry_ptr.1211, !1397, !"_entry_ptr", i1 false, i1 false}
!1407 = !{ptr @.str.1213, !1397, !"<string literal>", i1 false, i1 false}
!1408 = !{ptr @test_kvzalloc_node._entry.1212, !1397, !"_entry", i1 false, i1 false}
!1409 = !{ptr @test_kvzalloc_node._entry_ptr.1214, !1397, !"_entry_ptr", i1 false, i1 false}
!1410 = !{ptr @.str.1215, !1411, !"<string literal>", i1 false, i1 false}
!1411 = !{!"../lib/test_overflow.c", i32 547, i32 1}
!1412 = !{ptr @.str.1216, !1411, !"<string literal>", i1 false, i1 false}
!1413 = !{ptr @test_vmalloc._entry, !1411, !"_entry", i1 false, i1 false}
!1414 = !{ptr @test_vmalloc._entry_ptr, !1411, !"_entry_ptr", i1 false, i1 false}
!1415 = !{ptr @.str.1218, !1411, !"<string literal>", i1 false, i1 false}
!1416 = !{ptr @test_vmalloc._entry.1217, !1411, !"_entry", i1 false, i1 false}
!1417 = !{ptr @test_vmalloc._entry_ptr.1219, !1411, !"_entry_ptr", i1 false, i1 false}
!1418 = !{ptr @.str.1221, !1411, !"<string literal>", i1 false, i1 false}
!1419 = !{ptr @test_vmalloc._entry.1220, !1411, !"_entry", i1 false, i1 false}
!1420 = !{ptr @test_vmalloc._entry_ptr.1222, !1411, !"_entry_ptr", i1 false, i1 false}
!1421 = !{ptr @.str.1224, !1411, !"<string literal>", i1 false, i1 false}
!1422 = !{ptr @test_vmalloc._entry.1223, !1411, !"_entry", i1 false, i1 false}
!1423 = !{ptr @test_vmalloc._entry_ptr.1225, !1411, !"_entry_ptr", i1 false, i1 false}
!1424 = !{ptr @.str.1226, !1425, !"<string literal>", i1 false, i1 false}
!1425 = !{!"../lib/test_overflow.c", i32 548, i32 1}
!1426 = !{ptr @.str.1227, !1425, !"<string literal>", i1 false, i1 false}
!1427 = !{ptr @test_vmalloc_node._entry, !1425, !"_entry", i1 false, i1 false}
!1428 = !{ptr @test_vmalloc_node._entry_ptr, !1425, !"_entry_ptr", i1 false, i1 false}
!1429 = !{ptr @.str.1229, !1425, !"<string literal>", i1 false, i1 false}
!1430 = !{ptr @test_vmalloc_node._entry.1228, !1425, !"_entry", i1 false, i1 false}
!1431 = !{ptr @test_vmalloc_node._entry_ptr.1230, !1425, !"_entry_ptr", i1 false, i1 false}
!1432 = !{ptr @.str.1232, !1425, !"<string literal>", i1 false, i1 false}
!1433 = !{ptr @test_vmalloc_node._entry.1231, !1425, !"_entry", i1 false, i1 false}
!1434 = !{ptr @test_vmalloc_node._entry_ptr.1233, !1425, !"_entry_ptr", i1 false, i1 false}
!1435 = !{ptr @.str.1235, !1425, !"<string literal>", i1 false, i1 false}
!1436 = !{ptr @test_vmalloc_node._entry.1234, !1425, !"_entry", i1 false, i1 false}
!1437 = !{ptr @test_vmalloc_node._entry_ptr.1236, !1425, !"_entry_ptr", i1 false, i1 false}
!1438 = !{ptr @.str.1237, !1439, !"<string literal>", i1 false, i1 false}
!1439 = !{!"../lib/test_overflow.c", i32 549, i32 1}
!1440 = !{ptr @.str.1238, !1439, !"<string literal>", i1 false, i1 false}
!1441 = !{ptr @test_vzalloc._entry, !1439, !"_entry", i1 false, i1 false}
!1442 = !{ptr @test_vzalloc._entry_ptr, !1439, !"_entry_ptr", i1 false, i1 false}
!1443 = !{ptr @.str.1240, !1439, !"<string literal>", i1 false, i1 false}
!1444 = !{ptr @test_vzalloc._entry.1239, !1439, !"_entry", i1 false, i1 false}
!1445 = !{ptr @test_vzalloc._entry_ptr.1241, !1439, !"_entry_ptr", i1 false, i1 false}
!1446 = !{ptr @.str.1243, !1439, !"<string literal>", i1 false, i1 false}
!1447 = !{ptr @test_vzalloc._entry.1242, !1439, !"_entry", i1 false, i1 false}
!1448 = !{ptr @test_vzalloc._entry_ptr.1244, !1439, !"_entry_ptr", i1 false, i1 false}
!1449 = !{ptr @.str.1246, !1439, !"<string literal>", i1 false, i1 false}
!1450 = !{ptr @test_vzalloc._entry.1245, !1439, !"_entry", i1 false, i1 false}
!1451 = !{ptr @test_vzalloc._entry_ptr.1247, !1439, !"_entry_ptr", i1 false, i1 false}
!1452 = !{ptr @.str.1248, !1453, !"<string literal>", i1 false, i1 false}
!1453 = !{!"../lib/test_overflow.c", i32 550, i32 1}
!1454 = !{ptr @.str.1249, !1453, !"<string literal>", i1 false, i1 false}
!1455 = !{ptr @test_vzalloc_node._entry, !1453, !"_entry", i1 false, i1 false}
!1456 = !{ptr @test_vzalloc_node._entry_ptr, !1453, !"_entry_ptr", i1 false, i1 false}
!1457 = !{ptr @.str.1251, !1453, !"<string literal>", i1 false, i1 false}
!1458 = !{ptr @test_vzalloc_node._entry.1250, !1453, !"_entry", i1 false, i1 false}
!1459 = !{ptr @test_vzalloc_node._entry_ptr.1252, !1453, !"_entry_ptr", i1 false, i1 false}
!1460 = !{ptr @.str.1254, !1453, !"<string literal>", i1 false, i1 false}
!1461 = !{ptr @test_vzalloc_node._entry.1253, !1453, !"_entry", i1 false, i1 false}
!1462 = !{ptr @test_vzalloc_node._entry_ptr.1255, !1453, !"_entry_ptr", i1 false, i1 false}
!1463 = !{ptr @.str.1257, !1453, !"<string literal>", i1 false, i1 false}
!1464 = !{ptr @test_vzalloc_node._entry.1256, !1453, !"_entry", i1 false, i1 false}
!1465 = !{ptr @test_vzalloc_node._entry_ptr.1258, !1453, !"_entry_ptr", i1 false, i1 false}
!1466 = !{ptr @.str.1259, !1467, !"<string literal>", i1 false, i1 false}
!1467 = !{!"../lib/test_overflow.c", i32 555, i32 1}
!1468 = !{ptr @.str.1260, !1467, !"<string literal>", i1 false, i1 false}
!1469 = !{ptr @test_devm_kmalloc._entry, !1467, !"_entry", i1 false, i1 false}
!1470 = !{ptr @test_devm_kmalloc._entry_ptr, !1467, !"_entry_ptr", i1 false, i1 false}
!1471 = !{ptr @.str.1262, !1467, !"<string literal>", i1 false, i1 false}
!1472 = !{ptr @test_devm_kmalloc._entry.1261, !1467, !"_entry", i1 false, i1 false}
!1473 = !{ptr @test_devm_kmalloc._entry_ptr.1263, !1467, !"_entry_ptr", i1 false, i1 false}
!1474 = !{ptr @.str.1265, !1467, !"<string literal>", i1 false, i1 false}
!1475 = !{ptr @test_devm_kmalloc._entry.1264, !1467, !"_entry", i1 false, i1 false}
!1476 = !{ptr @test_devm_kmalloc._entry_ptr.1266, !1467, !"_entry_ptr", i1 false, i1 false}
!1477 = !{ptr @.str.1268, !1467, !"<string literal>", i1 false, i1 false}
!1478 = !{ptr @test_devm_kmalloc._entry.1267, !1467, !"_entry", i1 false, i1 false}
!1479 = !{ptr @test_devm_kmalloc._entry_ptr.1269, !1467, !"_entry_ptr", i1 false, i1 false}
!1480 = !{ptr @.str.1270, !1481, !"<string literal>", i1 false, i1 false}
!1481 = !{!"../lib/test_overflow.c", i32 556, i32 1}
!1482 = !{ptr @.str.1271, !1481, !"<string literal>", i1 false, i1 false}
!1483 = !{ptr @test_devm_kzalloc._entry, !1481, !"_entry", i1 false, i1 false}
!1484 = !{ptr @test_devm_kzalloc._entry_ptr, !1481, !"_entry_ptr", i1 false, i1 false}
!1485 = !{ptr @.str.1273, !1481, !"<string literal>", i1 false, i1 false}
!1486 = !{ptr @test_devm_kzalloc._entry.1272, !1481, !"_entry", i1 false, i1 false}
!1487 = !{ptr @test_devm_kzalloc._entry_ptr.1274, !1481, !"_entry_ptr", i1 false, i1 false}
!1488 = !{ptr @.str.1276, !1481, !"<string literal>", i1 false, i1 false}
!1489 = !{ptr @test_devm_kzalloc._entry.1275, !1481, !"_entry", i1 false, i1 false}
!1490 = !{ptr @test_devm_kzalloc._entry_ptr.1277, !1481, !"_entry_ptr", i1 false, i1 false}
!1491 = !{ptr @.str.1279, !1481, !"<string literal>", i1 false, i1 false}
!1492 = !{ptr @test_devm_kzalloc._entry.1278, !1481, !"_entry", i1 false, i1 false}
!1493 = !{ptr @test_devm_kzalloc._entry_ptr.1280, !1481, !"_entry_ptr", i1 false, i1 false}
!1494 = !{i32 1, !"wchar_size", i32 2}
!1495 = !{i32 1, !"min_enum_size", i32 4}
!1496 = !{i32 8, !"branch-target-enforcement", i32 0}
!1497 = !{i32 8, !"sign-return-address", i32 0}
!1498 = !{i32 8, !"sign-return-address-all", i32 0}
!1499 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1500 = !{i32 7, !"uwtable", i32 1}
!1501 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1502 = !{i8 0, i8 2}
