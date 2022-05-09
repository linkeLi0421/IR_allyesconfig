; ModuleID = '/llk/IR_all_yes/lib/test_user_copy.c_pt.bc'
source_filename = "../lib/test_user_copy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author226 = internal constant [41 x i8] c"author=Kees Cook <keescook@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@test_user_copy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_user_copy: Failed to allocate user memory\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_user_copy_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/test_user_copy.c\00", [43 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr = internal global ptr @test_user_copy_init._entry, section ".printk_index", align 4
@test_user_copy_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014test_user_copy: [%d] legitimate copy_to_user failed\0A\00", [41 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.5 = internal global ptr @test_user_copy_init._entry.3, section ".printk_index", align 4
@test_user_copy_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014test_user_copy: [%d] legitimate copy_from_user failed\0A\00", [39 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.8 = internal global ptr @test_user_copy_init._entry.6, section ".printk_index", align 4
@test_user_copy_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014test_user_copy: [%d] legitimate usercopy failed to copy data\0A\00", [32 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.11 = internal global ptr @test_user_copy_init._entry.9, section ".printk_index", align 4
@test_user_copy_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014test_user_copy: [%d] legitimate put_user (u8) failed\0A\00", [40 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.14 = internal global ptr @test_user_copy_init._entry.12, section ".printk_index", align 4
@test_user_copy_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014test_user_copy: [%d] legitimate get_user (u8) failed\0A\00", [40 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.17 = internal global ptr @test_user_copy_init._entry.15, section ".printk_index", align 4
@test_user_copy_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014test_user_copy: [%d] legitimate get_user (u8) failed to do copy\0A\00", [61 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.20 = internal global ptr @test_user_copy_init._entry.18, section ".printk_index", align 4
@test_user_copy_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016test_user_copy: 0x%llx != 0x%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.23 = internal global ptr @test_user_copy_init._entry.21, section ".printk_index", align 4
@test_user_copy_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014test_user_copy: [%d] legitimate put_user (u16) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.26 = internal global ptr @test_user_copy_init._entry.24, section ".printk_index", align 4
@test_user_copy_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014test_user_copy: [%d] legitimate get_user (u16) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.29 = internal global ptr @test_user_copy_init._entry.27, section ".printk_index", align 4
@test_user_copy_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014test_user_copy: [%d] legitimate get_user (u16) failed to do copy\0A\00", [60 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.32 = internal global ptr @test_user_copy_init._entry.30, section ".printk_index", align 4
@test_user_copy_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.34 = internal global ptr @test_user_copy_init._entry.33, section ".printk_index", align 4
@test_user_copy_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014test_user_copy: [%d] legitimate put_user (u32) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.37 = internal global ptr @test_user_copy_init._entry.35, section ".printk_index", align 4
@test_user_copy_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014test_user_copy: [%d] legitimate get_user (u32) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.40 = internal global ptr @test_user_copy_init._entry.38, section ".printk_index", align 4
@test_user_copy_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014test_user_copy: [%d] legitimate get_user (u32) failed to do copy\0A\00", [60 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.43 = internal global ptr @test_user_copy_init._entry.41, section ".printk_index", align 4
@test_user_copy_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.45 = internal global ptr @test_user_copy_init._entry.44, section ".printk_index", align 4
@test_user_copy_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.1, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014test_user_copy: [%d] illegal all-kernel copy_from_user passed\0A\00", [63 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.48 = internal global ptr @test_user_copy_init._entry.46, section ".printk_index", align 4
@test_user_copy_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014test_user_copy: [%d] zeroing failure for illegal all-kernel copy_from_user\0A\00", [50 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.51 = internal global ptr @test_user_copy_init._entry.49, section ".printk_index", align 4
@test_user_copy_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.1, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014test_user_copy: [%d] illegal all-kernel copy_to_user passed\0A\00", [33 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.54 = internal global ptr @test_user_copy_init._entry.52, section ".printk_index", align 4
@test_user_copy_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014test_user_copy: [%d] illegal reversed copy_to_user passed\0A\00", [35 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.57 = internal global ptr @test_user_copy_init._entry.55, section ".printk_index", align 4
@test_user_copy_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014test_user_copy: [%d] illegal get_user (u8) passed\0A\00", [43 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.60 = internal global ptr @test_user_copy_init._entry.58, section ".printk_index", align 4
@test_user_copy_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014test_user_copy: [%d] zeroing failure for illegal get_user (u8)\0A\00", [62 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.63 = internal global ptr @test_user_copy_init._entry.61, section ".printk_index", align 4
@test_user_copy_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016test_user_copy: 0x%llx != 0\0A\00", [33 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.66 = internal global ptr @test_user_copy_init._entry.64, section ".printk_index", align 4
@test_user_copy_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014test_user_copy: [%d] illegal put_user (u8) passed\0A\00", [43 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.69 = internal global ptr @test_user_copy_init._entry.67, section ".printk_index", align 4
@test_user_copy_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_user_copy: [%d] illegal get_user (u16) passed\0A\00", [42 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.72 = internal global ptr @test_user_copy_init._entry.70, section ".printk_index", align 4
@test_user_copy_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014test_user_copy: [%d] zeroing failure for illegal get_user (u16)\0A\00", [61 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.75 = internal global ptr @test_user_copy_init._entry.73, section ".printk_index", align 4
@test_user_copy_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.77 = internal global ptr @test_user_copy_init._entry.76, section ".printk_index", align 4
@test_user_copy_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_user_copy: [%d] illegal put_user (u16) passed\0A\00", [42 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.80 = internal global ptr @test_user_copy_init._entry.78, section ".printk_index", align 4
@test_user_copy_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.1, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_user_copy: [%d] illegal get_user (u32) passed\0A\00", [42 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.83 = internal global ptr @test_user_copy_init._entry.81, section ".printk_index", align 4
@test_user_copy_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.1, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014test_user_copy: [%d] zeroing failure for illegal get_user (u32)\0A\00", [61 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.86 = internal global ptr @test_user_copy_init._entry.84, section ".printk_index", align 4
@test_user_copy_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.1, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.88 = internal global ptr @test_user_copy_init._entry.87, section ".printk_index", align 4
@test_user_copy_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.1, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_user_copy: [%d] illegal put_user (u32) passed\0A\00", [42 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.91 = internal global ptr @test_user_copy_init._entry.89, section ".printk_index", align 4
@test_user_copy_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.1, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016test_user_copy: tests passed.\0A\00", [63 x i8] zeroinitializer }, align 32
@test_user_copy_init._entry_ptr.94 = internal global ptr @test_user_copy_init._entry.92, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@test_check_nonzero_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014test_user_copy: [%d] buffer too small\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_check_nonzero_user\00", [40 x i8] zeroinitializer }, align 32
@test_check_nonzero_user._entry_ptr = internal global ptr @test_check_nonzero_user._entry, section ".printk_index", align 4
@test_check_nonzero_user._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.99, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_check_nonzero_user._entry_ptr.101 = internal global ptr @test_check_nonzero_user._entry.100, section ".printk_index", align 4
@test_check_nonzero_user._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.99, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\014test_user_copy: [%d] check_nonzero_user(=%d) != memchr_inv(=%d) mismatch (start=%zu, end=%zu)\0A\00", [63 x i8] zeroinitializer }, align 32
@test_check_nonzero_user._entry_ptr.104 = internal global ptr @test_check_nonzero_user._entry.102, section ".printk_index", align 4
@test_copy_struct_from_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014test_user_copy: [%d] kmalloc failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"test_copy_struct_from_user\00", [37 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr = internal global ptr @test_copy_struct_from_user._entry, section ".printk_index", align 4
@test_copy_struct_from_user._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.108 = internal global ptr @test_copy_struct_from_user._entry.107, section ".printk_index", align 4
@test_copy_struct_from_user._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.106, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.110 = internal global ptr @test_copy_struct_from_user._entry.109, section ".printk_index", align 4
@test_copy_struct_from_user._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.106, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014test_user_copy: [%d] copy_struct_from_user(usize == ksize) failed\0A\00", [59 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.113 = internal global ptr @test_copy_struct_from_user._entry.111, section ".printk_index", align 4
@test_copy_struct_from_user._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.106, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014test_user_copy: [%d] copy_struct_from_user(usize == ksize) gives unexpected copy\0A\00", [44 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.116 = internal global ptr @test_copy_struct_from_user._entry.114, section ".printk_index", align 4
@test_copy_struct_from_user._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.106, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014test_user_copy: [%d] copy_struct_from_user(usize < ksize) failed\0A\00", [60 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.119 = internal global ptr @test_copy_struct_from_user._entry.117, section ".printk_index", align 4
@test_copy_struct_from_user._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.106, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014test_user_copy: [%d] copy_struct_from_user(usize < ksize) gives unexpected copy\0A\00", [45 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.122 = internal global ptr @test_copy_struct_from_user._entry.120, section ".printk_index", align 4
@test_copy_struct_from_user._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.106, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014test_user_copy: [%d] copy_struct_from_user(usize > ksize) didn't give E2BIG\0A\00", [49 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.125 = internal global ptr @test_copy_struct_from_user._entry.123, section ".printk_index", align 4
@test_copy_struct_from_user._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.106, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014test_user_copy: [%d] legitimate clear_user failed\0A\00", [43 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.128 = internal global ptr @test_copy_struct_from_user._entry.126, section ".printk_index", align 4
@test_copy_struct_from_user._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.106, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014test_user_copy: [%d] copy_struct_from_user(usize > ksize) failed\0A\00", [60 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.131 = internal global ptr @test_copy_struct_from_user._entry.129, section ".printk_index", align 4
@test_copy_struct_from_user._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.106, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014test_user_copy: [%d] copy_struct_from_user(usize > ksize) gives unexpected copy\0A\00", [45 x i8] zeroinitializer }, align 32
@test_copy_struct_from_user._entry_ptr.134 = internal global ptr @test_copy_struct_from_user._entry.132, section ".printk_index", align 4
@test_user_copy_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016test_user_copy: unloaded.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_user_copy_exit\00", [44 x i8] zeroinitializer }, align 32
@test_user_copy_exit._entry_ptr = internal global ptr @test_user_copy_exit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967289]
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 202, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 214, i32 9 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 217, i32 9 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 219, i32 9 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 239, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 240, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 241, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 261, i32 9 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 266, i32 9 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 280, i32 9 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 283, i32 9 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 302, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 303, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 304, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 314, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 174, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 52, i32 6 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 87, i32 9 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 96, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 113, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 118, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 124, i32 9 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 134, i32 9 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 136, i32 9 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 147, i32 9 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 149, i32 9 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 157, i32 9 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 165, i32 9 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 169, i32 9 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 171, i32 9 }
@___asan_gen_.413 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [24 x i8] c"../lib/test_user_copy.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 325, i32 2 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_license227, ptr @test_check_nonzero_user._entry, ptr @test_check_nonzero_user._entry.100, ptr @test_check_nonzero_user._entry.102, ptr @test_check_nonzero_user._entry_ptr, ptr @test_check_nonzero_user._entry_ptr.101, ptr @test_check_nonzero_user._entry_ptr.104, ptr @test_copy_struct_from_user._entry, ptr @test_copy_struct_from_user._entry.107, ptr @test_copy_struct_from_user._entry.109, ptr @test_copy_struct_from_user._entry.111, ptr @test_copy_struct_from_user._entry.114, ptr @test_copy_struct_from_user._entry.117, ptr @test_copy_struct_from_user._entry.120, ptr @test_copy_struct_from_user._entry.123, ptr @test_copy_struct_from_user._entry.126, ptr @test_copy_struct_from_user._entry.129, ptr @test_copy_struct_from_user._entry.132, ptr @test_copy_struct_from_user._entry_ptr, ptr @test_copy_struct_from_user._entry_ptr.108, ptr @test_copy_struct_from_user._entry_ptr.110, ptr @test_copy_struct_from_user._entry_ptr.113, ptr @test_copy_struct_from_user._entry_ptr.116, ptr @test_copy_struct_from_user._entry_ptr.119, ptr @test_copy_struct_from_user._entry_ptr.122, ptr @test_copy_struct_from_user._entry_ptr.125, ptr @test_copy_struct_from_user._entry_ptr.128, ptr @test_copy_struct_from_user._entry_ptr.131, ptr @test_copy_struct_from_user._entry_ptr.134, ptr @test_user_copy_exit._entry, ptr @test_user_copy_exit._entry_ptr, ptr @test_user_copy_init._entry, ptr @test_user_copy_init._entry.12, ptr @test_user_copy_init._entry.15, ptr @test_user_copy_init._entry.18, ptr @test_user_copy_init._entry.21, ptr @test_user_copy_init._entry.24, ptr @test_user_copy_init._entry.27, ptr @test_user_copy_init._entry.3, ptr @test_user_copy_init._entry.30, ptr @test_user_copy_init._entry.33, ptr @test_user_copy_init._entry.35, ptr @test_user_copy_init._entry.38, ptr @test_user_copy_init._entry.41, ptr @test_user_copy_init._entry.44, ptr @test_user_copy_init._entry.46, ptr @test_user_copy_init._entry.49, ptr @test_user_copy_init._entry.52, ptr @test_user_copy_init._entry.55, ptr @test_user_copy_init._entry.58, ptr @test_user_copy_init._entry.6, ptr @test_user_copy_init._entry.61, ptr @test_user_copy_init._entry.64, ptr @test_user_copy_init._entry.67, ptr @test_user_copy_init._entry.70, ptr @test_user_copy_init._entry.73, ptr @test_user_copy_init._entry.76, ptr @test_user_copy_init._entry.78, ptr @test_user_copy_init._entry.81, ptr @test_user_copy_init._entry.84, ptr @test_user_copy_init._entry.87, ptr @test_user_copy_init._entry.89, ptr @test_user_copy_init._entry.9, ptr @test_user_copy_init._entry.92, ptr @test_user_copy_init._entry_ptr, ptr @test_user_copy_init._entry_ptr.11, ptr @test_user_copy_init._entry_ptr.14, ptr @test_user_copy_init._entry_ptr.17, ptr @test_user_copy_init._entry_ptr.20, ptr @test_user_copy_init._entry_ptr.23, ptr @test_user_copy_init._entry_ptr.26, ptr @test_user_copy_init._entry_ptr.29, ptr @test_user_copy_init._entry_ptr.32, ptr @test_user_copy_init._entry_ptr.34, ptr @test_user_copy_init._entry_ptr.37, ptr @test_user_copy_init._entry_ptr.40, ptr @test_user_copy_init._entry_ptr.43, ptr @test_user_copy_init._entry_ptr.45, ptr @test_user_copy_init._entry_ptr.48, ptr @test_user_copy_init._entry_ptr.5, ptr @test_user_copy_init._entry_ptr.51, ptr @test_user_copy_init._entry_ptr.54, ptr @test_user_copy_init._entry_ptr.57, ptr @test_user_copy_init._entry_ptr.60, ptr @test_user_copy_init._entry_ptr.63, ptr @test_user_copy_init._entry_ptr.66, ptr @test_user_copy_init._entry_ptr.69, ptr @test_user_copy_init._entry_ptr.72, ptr @test_user_copy_init._entry_ptr.75, ptr @test_user_copy_init._entry_ptr.77, ptr @test_user_copy_init._entry_ptr.8, ptr @test_user_copy_init._entry_ptr.80, ptr @test_user_copy_init._entry_ptr.83, ptr @test_user_copy_init._entry_ptr.86, ptr @test_user_copy_init._entry_ptr.88, ptr @test_user_copy_init._entry_ptr.91, ptr @test_user_copy_init._entry_ptr.94, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.90, ptr @.str.93, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_check_nonzero_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_check_nonzero_user._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_check_nonzero_user._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_copy_struct_from_user._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_user_copy_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8192) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 8192, i32 noundef 7, i32 noundef 34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call1)
  %cmp = icmp ugt i32 %call1, -1226833921
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = inttoptr i32 %call1 to ptr
  %2 = call ptr @memset(ptr %call7.i, i32 58, i32 8192)
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end4.if.end59.i.i700.sink.split_crit_edge, label %if.end.i.i

if.end4.if.end59.i.i700.sink.split_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i.i700.sink.split

if.end.i.i:                                       ; preds = %if.end4
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4096, i32 -1226833920) #11, !srcloc !192
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.end59.i.i700.sink.split_crit_edge

if.end.i.i.if.end59.i.i700.sink.split_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i.i700.sink.split

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef 4096) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool6.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool6.not, label %copy_to_user.exit.if.end59.i.i700_crit_edge, label %copy_to_user.exit.if.end59.i.i700.sink.split_crit_edge

copy_to_user.exit.if.end59.i.i700.sink.split_crit_edge: ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i.i700.sink.split

copy_to_user.exit.if.end59.i.i700_crit_edge:      ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i.i700

if.end59.i.i700.sink.split:                       ; preds = %copy_to_user.exit.if.end59.i.i700.sink.split_crit_edge, %if.end.i.i.if.end59.i.i700.sink.split_crit_edge, %if.end4.if.end59.i.i700.sink.split_crit_edge
  %n.addr.0.i828831.ph = phi i32 [ %call.i12.i.i, %copy_to_user.exit.if.end59.i.i700.sink.split_crit_edge ], [ 4096, %if.end4.if.end59.i.i700.sink.split_crit_edge ], [ 4096, %if.end.i.i.if.end59.i.i700.sink.split_crit_edge ]
  %call12836 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 215) #10
  br label %if.end59.i.i700

if.end59.i.i700:                                  ; preds = %if.end59.i.i700.sink.split, %copy_to_user.exit.if.end59.i.i700_crit_edge
  %n.addr.0.i828831 = phi i32 [ 0, %copy_to_user.exit.if.end59.i.i700_crit_edge ], [ %n.addr.0.i828831.ph, %if.end59.i.i700.sink.split ]
  %4 = call ptr @memset(ptr %call7.i, i32 0, i32 4096)
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #9
  %call.i.i701 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i701, label %if.end59.i.i700.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i700.if.then11.i.i_crit_edge:          ; preds = %if.end59.i.i700
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i700
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4096, i32 -1226833920) #11, !srcloc !193
  %asmresult.i.i702 = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i702)
  %cmp.i6.i703 = icmp eq i32 %asmresult.i.i702, 0
  br i1 %cmp.i6.i703, label %if.end.i.i705, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !194

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i705:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i704 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4096) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !195
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %1, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i705.if.end24_crit_edge, label %if.end.i.i705.if.then11.i.i_crit_edge, !prof !194

if.end.i.i705.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i705
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i705.if.end24_crit_edge:                 ; preds = %if.end.i.i705
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then11.i.i:                                    ; preds = %if.end.i.i705.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i700.if.then11.i.i_crit_edge
  %res.0.i.i839 = phi i32 [ %call1.i.i.i, %if.end.i.i705.if.then11.i.i_crit_edge ], [ 4096, %if.end59.i.i700.if.then11.i.i_crit_edge ], [ 4096, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4096, %res.0.i.i839
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i839)
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 218) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then11.i.i, %if.end.i.i705.if.end24_crit_edge
  %n.addr.0.i706846 = phi i32 [ %res.0.i.i839, %if.then11.i.i ], [ 0, %if.end.i.i705.if.end24_crit_edge ]
  %or26 = or i32 %n.addr.0.i828831, %n.addr.0.i706846
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4096
  %call28 = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(4096) %call7.i, ptr noundef dereferenceable(4096) %add.ptr, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end24.if.end36_crit_edge, label %do.end33

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 220) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end24.if.end36_crit_edge
  %or38 = or i32 %or26, %call28
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 239) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !195
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i8 90, i32 -1226833921) #9, !srcloc !198
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool47.not = icmp eq i32 %13, 0
  br i1 %tobool47.not, label %if.end36.if.end54_crit_edge, label %do.end51

if.end36.if.end54_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end51:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 239) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end36.if.end54_crit_edge
  %or56 = or i32 %or38, %13
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 239) #9
  %14 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i707 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i707 to ptr
  %cpu_domain.i.i708 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i708) #5, !srcloc !195
  %and.i709 = and i32 %16, -13
  %or.i710 = or i32 %and.i709, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i710) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #9, !srcloc !199
  %asmresult = extractvalue { i32, i32 } %17, 0
  %asmresult66 = extractvalue { i32, i32 } %17, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool68.not = icmp eq i32 %asmresult, 0
  br i1 %tobool68.not, label %if.end54.if.end75_crit_edge, label %do.end72

if.end54.if.end75_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

do.end72:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 239) #10
  br label %if.end75

if.end75:                                         ; preds = %do.end72, %if.end54.if.end75_crit_edge
  %or77 = or i32 %or56, %asmresult
  %conv79 = and i32 %asmresult66, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %conv79)
  %cmp80 = icmp ne i32 %conv79, 90
  %conv81 = zext i1 %cmp80 to i32
  br i1 %cmp80, label %do.end98, label %if.end75.do.body105_crit_edge

if.end75.do.body105_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body105

do.end98:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 239) #10
  %conv100 = zext i32 %conv79 to i64
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %conv100, i64 noundef 90) #10
  br label %do.body105

do.body105:                                       ; preds = %do.end98, %if.end75.do.body105_crit_edge
  %or91848 = or i32 %or77, %conv81
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 240) #9
  %18 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i711 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i711 to ptr
  %cpu_domain.i.i712 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i712) #5, !srcloc !195
  %and.i713 = and i32 %20, -13
  %or.i714 = or i32 %and.i713, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i714) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i16 23131, i32 -1226833921) #9, !srcloc !200
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool122.not = icmp eq i32 %21, 0
  br i1 %tobool122.not, label %do.body105.if.end129_crit_edge, label %do.end126

do.body105.if.end129_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

do.end126:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 240) #10
  br label %if.end129

if.end129:                                        ; preds = %do.end126, %do.body105.if.end129_crit_edge
  %or131 = or i32 %or91848, %21
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 240) #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i715 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i715 to ptr
  %cpu_domain.i.i716 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i716) #5, !srcloc !195
  %and.i717 = and i32 %24, -13
  %or.i718 = or i32 %and.i717, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i718) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %25 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #9, !srcloc !201
  %asmresult142 = extractvalue { i32, i32 } %25, 0
  %asmresult143 = extractvalue { i32, i32 } %25, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult142)
  %tobool146.not = icmp eq i32 %asmresult142, 0
  br i1 %tobool146.not, label %if.end129.if.end153_crit_edge, label %do.end150

if.end129.if.end153_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

do.end150:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef 240) #10
  br label %if.end153

if.end153:                                        ; preds = %do.end150, %if.end129.if.end153_crit_edge
  %or155 = or i32 %or131, %asmresult142
  %conv157 = and i32 %asmresult143, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 23131, i32 %conv157)
  %cmp158 = icmp ne i32 %conv157, 23131
  %conv159 = zext i1 %cmp158 to i32
  br i1 %cmp158, label %do.end176, label %if.end153.do.body183_crit_edge

if.end153.do.body183_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body183

do.end176:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 240) #10
  %conv178 = zext i32 %conv157 to i64
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %conv178, i64 noundef 23131) #10
  br label %do.body183

do.body183:                                       ; preds = %do.end176, %if.end153.do.body183_crit_edge
  %or169851 = or i32 %or155, %conv159
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 241) #9
  %26 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i719 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i719 to ptr
  %cpu_domain.i.i720 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i720) #5, !srcloc !195
  %and.i721 = and i32 %28, -13
  %or.i722 = or i32 %and.i721, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i722) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 1515936861, i32 -1226833921) #9, !srcloc !202
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool200.not = icmp eq i32 %29, 0
  br i1 %tobool200.not, label %do.body183.if.end207_crit_edge, label %do.end204

do.body183.if.end207_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end207

do.end204:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #7
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 241) #10
  br label %if.end207

if.end207:                                        ; preds = %do.end204, %do.body183.if.end207_crit_edge
  %or209 = or i32 %or169851, %29
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 241) #9
  %30 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i723 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i723 to ptr
  %cpu_domain.i.i724 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i724) #5, !srcloc !195
  %and.i725 = and i32 %32, -13
  %or.i726 = or i32 %and.i725, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i726) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #9, !srcloc !203
  %asmresult220 = extractvalue { i32, i32 } %33, 0
  %asmresult221 = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult220)
  %tobool223.not = icmp eq i32 %asmresult220, 0
  br i1 %tobool223.not, label %if.end207.if.end230_crit_edge, label %do.end227

if.end207.if.end230_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end230

do.end227:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef 241) #10
  br label %if.end230

if.end230:                                        ; preds = %do.end227, %if.end207.if.end230_crit_edge
  %or232 = or i32 %or209, %asmresult220
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515936861, i32 %asmresult221)
  %cmp234 = icmp ne i32 %asmresult221, 1515936861
  %conv235 = zext i1 %cmp234 to i32
  br i1 %cmp234, label %do.end251, label %if.end230.do.end257_crit_edge

if.end230.do.end257_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end257

do.end251:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #7
  %call242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 241) #10
  %conv253 = zext i32 %asmresult221 to i64
  %call254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %conv253, i64 noundef 1515936861) #10
  br label %do.end257

do.end257:                                        ; preds = %do.end251, %if.end230.do.end257_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 3584
  %34 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 1024)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end257
  %i.05.i = phi i32 [ 1, %do.end257 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 %i.05.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %arrayidx.i, align 1
  %add.i = add nuw nsw i32 %i.05.i, 2
  %cmp8.i = icmp ult i32 %i.05.i, 254
  br i1 %cmp8.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.body13.i_crit_edge

for.body.i.for.body13.i_crit_edge:                ; preds = %for.body.i
  br label %for.body13.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.body.i.for.body13.i_crit_edge
  %i.16.i = phi i32 [ %add16.i, %for.body13.i.for.body13.i_crit_edge ], [ 768, %for.body.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr i8, ptr %add.ptr.i, i32 %i.16.i
  %36 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %arrayidx14.i, align 2
  %add16.i = add nuw nsw i32 %i.16.i, 2
  %cmp11.i = icmp ult i32 %i.16.i, 1022
  br i1 %cmp11.i, label %for.body13.i.for.body13.i_crit_edge, label %for.end17.i

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.end17.i:                                      ; preds = %for.body13.i
  %or245854 = or i32 %or232, %conv235
  %add.ptr5.i = getelementptr i8, ptr %1, i32 3584
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #9
  %call.i.i.i800 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i800, label %for.end17.i.do.end24.i_crit_edge, label %if.end.i.i.i

for.end17.i.do.end24.i_crit_edge:                 ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.i

if.end.i.i.i:                                     ; preds = %for.end17.i
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr5.i, i32 1024, i32 -1226833920) #11, !srcloc !192
  %asmresult.i.i.i = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.do.end24.i_crit_edge

if.end.i.i.i.do.end24.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 1024) #9
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr5.i, ptr noundef %add.ptr.i, i32 noundef 1024) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool20.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool20.not.i, label %copy_to_user.exit.i.for.body36.lr.ph.i.preheader_crit_edge, label %copy_to_user.exit.i.do.end24.i_crit_edge

copy_to_user.exit.i.do.end24.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.i

copy_to_user.exit.i.for.body36.lr.ph.i.preheader_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body36.lr.ph.i.preheader

do.end24.i:                                       ; preds = %copy_to_user.exit.i.do.end24.i_crit_edge, %if.end.i.i.i.do.end24.i_crit_edge, %for.end17.i.do.end24.i_crit_edge
  %n.addr.0.i3.i = phi i32 [ %call.i12.i.i.i, %copy_to_user.exit.i.do.end24.i_crit_edge ], [ 1024, %for.end17.i.do.end24.i_crit_edge ], [ 1024, %if.end.i.i.i.do.end24.i_crit_edge ]
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 88) #10
  br label %for.body36.lr.ph.i.preheader

for.body36.lr.ph.i.preheader:                     ; preds = %do.end24.i, %copy_to_user.exit.i.for.body36.lr.ph.i.preheader_crit_edge
  %ret.013.i.ph = phi i32 [ 0, %copy_to_user.exit.i.for.body36.lr.ph.i.preheader_crit_edge ], [ %n.addr.0.i3.i, %do.end24.i ]
  br label %for.body36.lr.ph.i

for.body36.lr.ph.i:                               ; preds = %for.inc59.i.for.body36.lr.ph.i_crit_edge, %for.body36.lr.ph.i.preheader
  %ret.013.i = phi i32 [ %or56.i, %for.inc59.i.for.body36.lr.ph.i_crit_edge ], [ %ret.013.i.ph, %for.body36.lr.ph.i.preheader ]
  %start.011.i = phi i32 [ %inc60.i, %for.inc59.i.for.body36.lr.ph.i_crit_edge ], [ 0, %for.body36.lr.ph.i.preheader ]
  %add.ptr39.i = getelementptr i8, ptr %add.ptr5.i, i32 %start.011.i
  %add.ptr41.i = getelementptr i8, ptr %add.ptr.i, i32 %start.011.i
  br label %for.body36.i

for.body36.i:                                     ; preds = %if.end54.i.for.body36.i_crit_edge, %for.body36.lr.ph.i
  %ret.110.i = phi i32 [ %ret.013.i, %for.body36.lr.ph.i ], [ %or56.i, %if.end54.i.for.body36.i_crit_edge ]
  %end.08.i = phi i32 [ %start.011.i, %for.body36.lr.ph.i ], [ %inc.i, %if.end54.i.for.body36.i_crit_edge ]
  %sub37.i = sub nuw nsw i32 %end.08.i, %start.011.i
  %call40.i = tail call i32 @check_zeroed_user(ptr noundef %add.ptr39.i, i32 noundef %sub37.i) #9
  %call.i.i801 = tail call ptr @memchr_inv(ptr noundef %add.ptr41.i, i32 noundef 0, i32 noundef %sub37.i) #9
  %cmp.i.i802 = icmp eq ptr %call.i.i801, null
  %conv43.i = zext i1 %cmp.i.i802 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call40.i, i32 %conv43.i)
  %cmp45.i = icmp ne i32 %call40.i, %conv43.i
  %conv46.i = zext i1 %cmp45.i to i32
  br i1 %cmp45.i, label %do.end51.i, label %for.body36.i.if.end54.i_crit_edge

for.body36.i.if.end54.i_crit_edge:                ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54.i

do.end51.i:                                       ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef 98, i32 noundef %call40.i, i32 noundef %conv43.i, i32 noundef %start.011.i, i32 noundef %end.08.i) #10
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end51.i, %for.body36.i.if.end54.i_crit_edge
  %or56.i = or i32 %ret.110.i, %conv46.i
  %inc.i = add nuw nsw i32 %end.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1025
  br i1 %exitcond.not.i, label %for.inc59.i, label %if.end54.i.for.body36.i_crit_edge

if.end54.i.for.body36.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body36.i

for.inc59.i:                                      ; preds = %if.end54.i
  %inc60.i = add nuw nsw i32 %start.011.i, 1
  %exitcond14.not.i = icmp eq i32 %inc60.i, 1025
  br i1 %exitcond14.not.i, label %test_check_nonzero_user.exit, label %for.inc59.i.for.body36.lr.ph.i_crit_edge

for.inc59.i.for.body36.lr.ph.i_crit_edge:         ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body36.lr.ph.i

test_check_nonzero_user.exit:                     ; preds = %for.inc59.i
  %or259 = or i32 %or245854, %or56.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 8192) #8
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end5.critedge.i

do.end.i:                                         ; preds = %test_check_nonzero_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef 113) #10
  br label %test_copy_struct_from_user.exit

if.end5.critedge.i:                               ; preds = %test_check_nonzero_user.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 8192) #8
  %cmp8.i803 = icmp eq ptr %call7.i2.i, null
  %conv9.i = zext i1 %cmp8.i803 to i32
  br i1 %cmp8.i803, label %do.end14.i, label %if.end21.critedge.i

do.end14.i:                                       ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef 118) #10
  br label %test_copy_struct_from_user.exit

if.end21.critedge.i:                              ; preds = %if.end5.critedge.i
  %40 = call ptr @memset(ptr %call7.i.i, i32 62, i32 8192)
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #9
  %call.i.i.i804 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i804, label %if.end21.critedge.i.do.end28.i_crit_edge, label %if.end.i.i.i807

if.end21.critedge.i.do.end28.i_crit_edge:         ; preds = %if.end21.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28.i

if.end.i.i.i807:                                  ; preds = %if.end21.critedge.i
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8192, i32 -1226833920) #11, !srcloc !192
  %asmresult.i.i.i805 = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i805)
  %cmp.i6.i.i806 = icmp eq i32 %asmresult.i.i.i805, 0
  br i1 %cmp.i6.i.i806, label %copy_to_user.exit.i810, label %if.end.i.i.i807.do.end28.i_crit_edge

if.end.i.i.i807.do.end28.i_crit_edge:             ; preds = %if.end.i.i.i807
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28.i

copy_to_user.exit.i810:                           ; preds = %if.end.i.i.i807
  %call.i.i.i.i808 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef 8192) #9
  %call.i12.i.i.i809 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 8192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i809)
  %tobool24.not.i = icmp eq i32 %call.i12.i.i.i809, 0
  br i1 %tobool24.not.i, label %copy_to_user.exit.i810.if.end31.i_crit_edge, label %copy_to_user.exit.i810.do.end28.i_crit_edge

copy_to_user.exit.i810.do.end28.i_crit_edge:      ; preds = %copy_to_user.exit.i810
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28.i

copy_to_user.exit.i810.if.end31.i_crit_edge:      ; preds = %copy_to_user.exit.i810
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

do.end28.i:                                       ; preds = %copy_to_user.exit.i810.do.end28.i_crit_edge, %if.end.i.i.i807.do.end28.i_crit_edge, %if.end21.critedge.i.do.end28.i_crit_edge
  %n.addr.0.i87.i = phi i32 [ %call.i12.i.i.i809, %copy_to_user.exit.i810.do.end28.i_crit_edge ], [ 8192, %if.end21.critedge.i.do.end28.i_crit_edge ], [ 8192, %if.end.i.i.i807.do.end28.i_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 125) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %copy_to_user.exit.i810.if.end31.i_crit_edge
  %n.addr.0.i88.i = phi i32 [ %n.addr.0.i87.i, %do.end28.i ], [ 0, %copy_to_user.exit.i810.if.end31.i_crit_edge ]
  %or.i811 = or i32 %n.addr.0.i88.i, %conv9.i
  %42 = call ptr @memcpy(ptr %call7.i2.i, ptr %call7.i.i, i32 8192)
  %43 = call ptr @memset(ptr %call7.i, i32 0, i32 8192)
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #9
  %call.i.i.i3.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i3.i, label %if.end31.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end31.i.if.then11.i.i.i.i_crit_edge:           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end31.i
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8192, i32 -1226833920) #11, !srcloc !193
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !194

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i, i32 noundef 8192) #9
  %45 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !195
  %and.i.i.i.i.i.i812 = and i32 %47, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i812, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %call1.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %call7.i, ptr noundef %1, i32 noundef 8192) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end42.i_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !194

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end42.i_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end31.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i91.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8192, %if.end31.i.if.then11.i.i.i.i_crit_edge ], [ 8192, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8192, %res.0.i.i.i91.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i.i.i
  %48 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i91.i)
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 135) #10
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then11.i.i.i.i, %if.end.i.i.i.i.if.end42.i_crit_edge
  %retval.1.i95.i = phi i32 [ -14, %if.then11.i.i.i.i ], [ 0, %if.end.i.i.i.i.if.end42.i_crit_edge ]
  %or44.i = or i32 %or.i811, %retval.1.i95.i
  %call46.i = tail call i32 @memcmp(ptr noundef dereferenceable(8192) %call7.i, ptr noundef nonnull dereferenceable(8192) %call7.i2.i, i32 noundef 8192) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end42.i.if.end54.i817_crit_edge, label %do.end51.i814

if.end42.i.if.end54.i817_crit_edge:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54.i817

do.end51.i814:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  %call53.i813 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef 137) #10
  br label %if.end54.i817

if.end54.i817:                                    ; preds = %do.end51.i814, %if.end42.i.if.end54.i817_crit_edge
  %or56.i815 = or i32 %or44.i, %call46.i
  %49 = call ptr @memcpy(ptr %call7.i2.i, ptr %call7.i.i, i32 4096)
  %add.ptr.i816 = getelementptr i8, ptr %call7.i2.i, i32 4096
  %50 = call ptr @memset(ptr %add.ptr.i816, i32 0, i32 4096)
  %51 = call ptr @memset(ptr %call7.i, i32 0, i32 8192)
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #9
  %call.i.i.i9.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i9.i, label %if.end54.i817.if.then11.i.i.i26.i_crit_edge, label %land.lhs.true.i.i.i13.i

if.end54.i817.if.then11.i.i.i26.i_crit_edge:      ; preds = %if.end54.i817
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i26.i

land.lhs.true.i.i.i13.i:                          ; preds = %if.end54.i817
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4096, i32 -1226833920) #11, !srcloc !193
  %asmresult.i.i.i11.i = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i11.i)
  %cmp.i6.i.i12.i = icmp eq i32 %asmresult.i.i.i11.i, 0
  br i1 %cmp.i6.i.i12.i, label %if.end.i.i.i23.i, label %land.lhs.true.i.i.i13.i.if.then11.i.i.i26.i_crit_edge, !prof !194

land.lhs.true.i.i.i13.i.if.then11.i.i.i26.i_crit_edge: ; preds = %land.lhs.true.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i26.i

if.end.i.i.i23.i:                                 ; preds = %land.lhs.true.i.i.i13.i
  %call.i.i.i.i14.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i, i32 noundef 4096) #9
  %53 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i.i.i.i.i15.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i15.i to ptr
  %cpu_domain.i.i.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i16.i) #5, !srcloc !195
  %and.i.i.i.i.i17.i = and i32 %55, -13
  %or.i.i.i.i.i18.i = or i32 %and.i.i.i.i.i17.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i18.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %call1.i.i.i.i19.i = tail call i32 @arm_copy_from_user(ptr noundef %call7.i, ptr noundef %1, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i19.i)
  %tobool4.not.i.i.i22.i = icmp eq i32 %call1.i.i.i.i19.i, 0
  br i1 %tobool4.not.i.i.i22.i, label %if.end.i.i.i23.i.if.end66.i_crit_edge, label %if.end.i.i.i23.i.if.then11.i.i.i26.i_crit_edge, !prof !194

if.end.i.i.i23.i.if.then11.i.i.i26.i_crit_edge:   ; preds = %if.end.i.i.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i26.i

if.end.i.i.i23.i.if.end66.i_crit_edge:            ; preds = %if.end.i.i.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.i

if.then11.i.i.i26.i:                              ; preds = %if.end.i.i.i23.i.if.then11.i.i.i26.i_crit_edge, %land.lhs.true.i.i.i13.i.if.then11.i.i.i26.i_crit_edge, %if.end54.i817.if.then11.i.i.i26.i_crit_edge
  %res.0.i.i.i2198.i = phi i32 [ %call1.i.i.i.i19.i, %if.end.i.i.i23.i.if.then11.i.i.i26.i_crit_edge ], [ 4096, %if.end54.i817.if.then11.i.i.i26.i_crit_edge ], [ 4096, %land.lhs.true.i.i.i13.i.if.then11.i.i.i26.i_crit_edge ]
  %sub.i.i.i24.i = sub i32 4096, %res.0.i.i.i2198.i
  %add.ptr.i.i.i25.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i.i24.i
  %56 = call ptr @memset(ptr %add.ptr.i.i.i25.i, i32 0, i32 %res.0.i.i.i2198.i)
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 148) #10
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then11.i.i.i26.i, %if.end.i.i.i23.i.if.end66.i_crit_edge
  %retval.1.i27102.i = phi i32 [ -14, %if.then11.i.i.i26.i ], [ 0, %if.end.i.i.i23.i.if.end66.i_crit_edge ]
  %or68.i = or i32 %or56.i815, %retval.1.i27102.i
  %call70.i = tail call i32 @memcmp(ptr noundef dereferenceable(8192) %call7.i, ptr noundef nonnull dereferenceable(8192) %call7.i2.i, i32 noundef 8192) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end66.i.if.end78.i_crit_edge, label %do.end75.i

if.end66.i.if.end78.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.i

do.end75.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef 150) #10
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end75.i, %if.end66.i.if.end78.i_crit_edge
  %or80.i = or i32 %or68.i, %call70.i
  %57 = call ptr @memset(ptr %call7.i, i32 0, i32 8192)
  %add.ptr10.i.i = getelementptr i8, ptr %1, i32 4096
  %call.i.i818 = tail call i32 @check_zeroed_user(ptr noundef %add.ptr10.i.i, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i818)
  %cmp11.i.i = icmp slt i32 %call.i.i818, 1
  br i1 %cmp11.i.i, label %copy_struct_from_user.exit52.i, label %if.end59.i.i.i32.i

if.end59.i.i.i32.i:                               ; preds = %if.end78.i
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #9
  %call.i.i.i33.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i33.i, label %if.end59.i.i.i32.i.if.then11.i.i.i50.i_crit_edge, label %land.lhs.true.i.i.i37.i

if.end59.i.i.i32.i.if.then11.i.i.i50.i_crit_edge: ; preds = %if.end59.i.i.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i50.i

land.lhs.true.i.i.i37.i:                          ; preds = %if.end59.i.i.i32.i
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4096, i32 -1226833920) #11, !srcloc !193
  %asmresult.i.i.i35.i = extractvalue { i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i35.i)
  %cmp.i6.i.i36.i = icmp eq i32 %asmresult.i.i.i35.i, 0
  br i1 %cmp.i6.i.i36.i, label %if.end.i.i.i47.i, label %land.lhs.true.i.i.i37.i.if.then11.i.i.i50.i_crit_edge, !prof !194

land.lhs.true.i.i.i37.i.if.then11.i.i.i50.i_crit_edge: ; preds = %land.lhs.true.i.i.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i50.i

if.end.i.i.i47.i:                                 ; preds = %land.lhs.true.i.i.i37.i
  %call.i.i.i.i38.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i, i32 noundef 4096) #9
  %59 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i.i.i.i.i39.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i.i39.i to ptr
  %cpu_domain.i.i.i.i.i.i40.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 4
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i40.i) #5, !srcloc !195
  %and.i.i.i.i.i41.i = and i32 %61, -13
  %or.i.i.i.i.i42.i = or i32 %and.i.i.i.i.i41.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i42.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %call1.i.i.i.i43.i = tail call i32 @arm_copy_from_user(ptr noundef %call7.i, ptr noundef %1, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i43.i)
  %tobool4.not.i.i.i46.i = icmp eq i32 %call1.i.i.i.i43.i, 0
  br i1 %tobool4.not.i.i.i46.i, label %if.end.i.i.i47.i.do.end90.i_crit_edge, label %if.end.i.i.i47.i.if.then11.i.i.i50.i_crit_edge, !prof !194

if.end.i.i.i47.i.if.then11.i.i.i50.i_crit_edge:   ; preds = %if.end.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i50.i

if.end.i.i.i47.i.do.end90.i_crit_edge:            ; preds = %if.end.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end90.i

if.then11.i.i.i50.i:                              ; preds = %if.end.i.i.i47.i.if.then11.i.i.i50.i_crit_edge, %land.lhs.true.i.i.i37.i.if.then11.i.i.i50.i_crit_edge, %if.end59.i.i.i32.i.if.then11.i.i.i50.i_crit_edge
  %res.0.i.i.i45105.i = phi i32 [ %call1.i.i.i.i43.i, %if.end.i.i.i47.i.if.then11.i.i.i50.i_crit_edge ], [ 4096, %if.end59.i.i.i32.i.if.then11.i.i.i50.i_crit_edge ], [ 4096, %land.lhs.true.i.i.i37.i.if.then11.i.i.i50.i_crit_edge ]
  %sub.i.i.i48.i = sub i32 4096, %res.0.i.i.i45105.i
  %add.ptr.i.i.i49.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i.i48.i
  %62 = call ptr @memset(ptr %add.ptr.i.i.i49.i, i32 0, i32 %res.0.i.i.i45105.i)
  br label %do.end90.i

copy_struct_from_user.exit52.i:                   ; preds = %if.end78.i
  %63 = zext i32 %call.i.i818 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i818, label %copy_struct_from_user.exit52.i.do.end90.i_crit_edge [
    i32 -7, label %copy_struct_from_user.exit52.i.if.end93.i_crit_edge
    i32 0, label %copy_struct_from_user.exit52.i.if.end93.i_crit_edge880
  ]

copy_struct_from_user.exit52.i.if.end93.i_crit_edge880: ; preds = %copy_struct_from_user.exit52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93.i

copy_struct_from_user.exit52.i.if.end93.i_crit_edge: ; preds = %copy_struct_from_user.exit52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93.i

copy_struct_from_user.exit52.i.do.end90.i_crit_edge: ; preds = %copy_struct_from_user.exit52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end90.i

do.end90.i:                                       ; preds = %copy_struct_from_user.exit52.i.do.end90.i_crit_edge, %if.then11.i.i.i50.i, %if.end.i.i.i47.i.do.end90.i_crit_edge
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef 158) #10
  br label %if.end93.i

if.end93.i:                                       ; preds = %do.end90.i, %copy_struct_from_user.exit52.i.if.end93.i_crit_edge, %copy_struct_from_user.exit52.i.if.end93.i_crit_edge880
  %conv85109.i = phi i32 [ 1, %do.end90.i ], [ 0, %copy_struct_from_user.exit52.i.if.end93.i_crit_edge ], [ 0, %copy_struct_from_user.exit52.i.if.end93.i_crit_edge880 ]
  %or95.i = or i32 %or80.i, %conv85109.i
  %64 = call ptr @memcpy(ptr %call7.i2.i, ptr %call7.i.i, i32 4096)
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr10.i.i, i32 4096, i32 -1226833920) #11, !srcloc !204
  %asmresult.i.i819 = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i819)
  %cmp.i.i820 = icmp eq i32 %asmresult.i.i819, 0
  br i1 %cmp.i.i820, label %clear_user.exit.i, label %if.end93.i.do.end105.i_crit_edge

if.end93.i.do.end105.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end105.i

clear_user.exit.i:                                ; preds = %if.end93.i
  %66 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i.i.i83.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i83.i to ptr
  %cpu_domain.i.i.i.i.i821 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i821) #5, !srcloc !195
  %and.i.i.i.i822 = and i32 %68, -13
  %or.i.i.i.i823 = or i32 %and.i.i.i.i822, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i823) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %call1.i.i.i824 = tail call i32 @arm_clear_user(ptr noundef %add.ptr10.i.i, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i824)
  %tobool101.not.i = icmp eq i32 %call1.i.i.i824, 0
  br i1 %tobool101.not.i, label %clear_user.exit.i.if.end108.i_crit_edge, label %clear_user.exit.i.do.end105.i_crit_edge

clear_user.exit.i.do.end105.i_crit_edge:          ; preds = %clear_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end105.i

clear_user.exit.i.if.end108.i_crit_edge:          ; preds = %clear_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108.i

do.end105.i:                                      ; preds = %clear_user.exit.i.do.end105.i_crit_edge, %if.end93.i.do.end105.i_crit_edge
  %n.addr.0.i84113.i = phi i32 [ %call1.i.i.i824, %clear_user.exit.i.do.end105.i_crit_edge ], [ 4096, %if.end93.i.do.end105.i_crit_edge ]
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef 166) #10
  br label %if.end108.i

if.end108.i:                                      ; preds = %do.end105.i, %clear_user.exit.i.if.end108.i_crit_edge
  %n.addr.0.i84114.i = phi i32 [ %n.addr.0.i84113.i, %do.end105.i ], [ 0, %clear_user.exit.i.if.end108.i_crit_edge ]
  %or110.i = or i32 %or95.i, %n.addr.0.i84114.i
  %69 = call ptr @memset(ptr %call7.i, i32 0, i32 8192)
  %call.i54.i = tail call i32 @check_zeroed_user(ptr noundef %add.ptr10.i.i, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54.i)
  %cmp11.i55.i = icmp slt i32 %call.i54.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool.not.i56.i = icmp eq i32 %call.i54.i, 0
  %..i57.i = select i1 %tobool.not.i56.i, i32 -7, i32 %call.i54.i
  br i1 %cmp11.i55.i, label %if.end108.i.do.end117.i_crit_edge, label %if.end59.i.i.i62.i

if.end108.i.do.end117.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end117.i

if.end59.i.i.i62.i:                               ; preds = %if.end108.i
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #9
  %call.i.i.i63.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i63.i, label %if.end59.i.i.i62.i.if.then11.i.i.i80.i_crit_edge, label %land.lhs.true.i.i.i67.i

if.end59.i.i.i62.i.if.then11.i.i.i80.i_crit_edge: ; preds = %if.end59.i.i.i62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i80.i

land.lhs.true.i.i.i67.i:                          ; preds = %if.end59.i.i.i62.i
  %70 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4096, i32 -1226833920) #11, !srcloc !193
  %asmresult.i.i.i65.i = extractvalue { i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i65.i)
  %cmp.i6.i.i66.i = icmp eq i32 %asmresult.i.i.i65.i, 0
  br i1 %cmp.i6.i.i66.i, label %if.end.i.i.i77.i, label %land.lhs.true.i.i.i67.i.if.then11.i.i.i80.i_crit_edge, !prof !194

land.lhs.true.i.i.i67.i.if.then11.i.i.i80.i_crit_edge: ; preds = %land.lhs.true.i.i.i67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i80.i

if.end.i.i.i77.i:                                 ; preds = %land.lhs.true.i.i.i67.i
  %call.i.i.i.i68.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i, i32 noundef 4096) #9
  %71 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i.i.i.i.i69.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i.i69.i to ptr
  %cpu_domain.i.i.i.i.i.i70.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 4
  %73 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i70.i) #5, !srcloc !195
  %and.i.i.i.i.i71.i = and i32 %73, -13
  %or.i.i.i.i.i72.i = or i32 %and.i.i.i.i.i71.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i72.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %call1.i.i.i.i73.i = tail call i32 @arm_copy_from_user(ptr noundef %call7.i, ptr noundef %1, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i73.i)
  %tobool4.not.i.i.i76.i = icmp eq i32 %call1.i.i.i.i73.i, 0
  br i1 %tobool4.not.i.i.i76.i, label %if.end.i.i.i77.i.if.end120.i_crit_edge, label %if.end.i.i.i77.i.if.then11.i.i.i80.i_crit_edge, !prof !194

if.end.i.i.i77.i.if.then11.i.i.i80.i_crit_edge:   ; preds = %if.end.i.i.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i80.i

if.end.i.i.i77.i.if.end120.i_crit_edge:           ; preds = %if.end.i.i.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120.i

if.then11.i.i.i80.i:                              ; preds = %if.end.i.i.i77.i.if.then11.i.i.i80.i_crit_edge, %land.lhs.true.i.i.i67.i.if.then11.i.i.i80.i_crit_edge, %if.end59.i.i.i62.i.if.then11.i.i.i80.i_crit_edge
  %res.0.i.i.i75117.i = phi i32 [ %call1.i.i.i.i73.i, %if.end.i.i.i77.i.if.then11.i.i.i80.i_crit_edge ], [ 4096, %if.end59.i.i.i62.i.if.then11.i.i.i80.i_crit_edge ], [ 4096, %land.lhs.true.i.i.i67.i.if.then11.i.i.i80.i_crit_edge ]
  %sub.i.i.i78.i = sub i32 4096, %res.0.i.i.i75117.i
  %add.ptr.i.i.i79.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i.i78.i
  %74 = call ptr @memset(ptr %add.ptr.i.i.i79.i, i32 0, i32 %res.0.i.i.i75117.i)
  br label %do.end117.i

do.end117.i:                                      ; preds = %if.then11.i.i.i80.i, %if.end108.i.do.end117.i_crit_edge
  %retval.1.i81.ph.i = phi i32 [ -14, %if.then11.i.i.i80.i ], [ %..i57.i, %if.end108.i.do.end117.i_crit_edge ]
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef 170) #10
  br label %if.end120.i

if.end120.i:                                      ; preds = %do.end117.i, %if.end.i.i.i77.i.if.end120.i_crit_edge
  %retval.1.i81121.i = phi i32 [ %retval.1.i81.ph.i, %do.end117.i ], [ 0, %if.end.i.i.i77.i.if.end120.i_crit_edge ]
  %or122.i = or i32 %or110.i, %retval.1.i81121.i
  %call124.i = tail call i32 @memcmp(ptr noundef dereferenceable(4096) %call7.i, ptr noundef nonnull dereferenceable(4096) %call7.i2.i, i32 noundef 4096) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %if.end120.i.if.end132.i_crit_edge, label %do.end129.i

if.end120.i.if.end132.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132.i

do.end129.i:                                      ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #7
  %call131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef 172) #10
  br label %if.end132.i

if.end132.i:                                      ; preds = %do.end129.i, %if.end120.i.if.end132.i_crit_edge
  %or134.i = or i32 %or122.i, %call124.i
  br label %test_copy_struct_from_user.exit

test_copy_struct_from_user.exit:                  ; preds = %if.end132.i, %do.end14.i, %do.end.i
  %expected.0.i = phi ptr [ %call7.i2.i, %if.end132.i ], [ null, %do.end.i ], [ null, %do.end14.i ]
  %ret.0.i = phi i32 [ %or134.i, %if.end132.i ], [ 1, %do.end.i ], [ 1, %do.end14.i ]
  tail call void @kfree(ptr noundef %expected.0.i) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  %or261 = or i32 %or259, %ret.0.i
  %75 = call ptr @memset(ptr %call7.i, i32 90, i32 4096)
  %76 = call ptr @memset(ptr %add.ptr, i32 0, i32 4096)
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #9
  %call.i.i731 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i731, label %test_copy_struct_from_user.exit.if.then11.i.i747_crit_edge, label %land.lhs.true.i.i734

test_copy_struct_from_user.exit.if.then11.i.i747_crit_edge: ; preds = %test_copy_struct_from_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i747

land.lhs.true.i.i734:                             ; preds = %test_copy_struct_from_user.exit
  %77 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 4096, i32 -1226833920) #11, !srcloc !193
  %asmresult.i.i732 = extractvalue { i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i732)
  %cmp.i6.i733 = icmp eq i32 %asmresult.i.i732, 0
  br i1 %cmp.i6.i733, label %if.end.i.i744, label %land.lhs.true.i.i734.if.then11.i.i747_crit_edge, !prof !194

land.lhs.true.i.i734.if.then11.i.i747_crit_edge:  ; preds = %land.lhs.true.i.i734
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i747

if.end.i.i744:                                    ; preds = %land.lhs.true.i.i734
  %call.i.i.i735 = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i, i32 noundef 4096) #9
  %78 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i.i.i.i736 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i.i736 to ptr
  %cpu_domain.i.i.i.i.i737 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i737) #5, !srcloc !195
  %and.i.i.i.i738 = and i32 %80, -13
  %or.i.i.i.i739 = or i32 %and.i.i.i.i738, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i739) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %call1.i.i.i740 = tail call i32 @arm_copy_from_user(ptr noundef %call7.i, ptr noundef %add.ptr, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i740)
  %tobool4.not.i.i743 = icmp eq i32 %call1.i.i.i740, 0
  br i1 %tobool4.not.i.i743, label %do.end271, label %if.end.i.i744.if.then11.i.i747_crit_edge, !prof !194

if.end.i.i744.if.then11.i.i747_crit_edge:         ; preds = %if.end.i.i744
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i747

if.then11.i.i747:                                 ; preds = %if.end.i.i744.if.then11.i.i747_crit_edge, %land.lhs.true.i.i734.if.then11.i.i747_crit_edge, %test_copy_struct_from_user.exit.if.then11.i.i747_crit_edge
  %res.0.i.i742858 = phi i32 [ %call1.i.i.i740, %if.end.i.i744.if.then11.i.i747_crit_edge ], [ 4096, %test_copy_struct_from_user.exit.if.then11.i.i747_crit_edge ], [ 4096, %land.lhs.true.i.i734.if.then11.i.i747_crit_edge ]
  %sub.i.i745 = sub i32 4096, %res.0.i.i742858
  %add.ptr.i.i746 = getelementptr i8, ptr %call7.i, i32 %sub.i.i745
  %81 = call ptr @memset(ptr %add.ptr.i.i746, i32 0, i32 %res.0.i.i742858)
  br label %if.end274

do.end271:                                        ; preds = %if.end.i.i744
  call void @__sanitizer_cov_trace_pc() #7
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 263) #10
  br label %if.end274

if.end274:                                        ; preds = %do.end271, %if.then11.i.i747
  %lnot.ext862 = phi i32 [ 0, %if.then11.i.i747 ], [ 1, %do.end271 ]
  %or276 = or i32 %or261, %lnot.ext862
  %call279 = tail call i32 @memcmp(ptr noundef dereferenceable(4096) %add.ptr, ptr noundef nonnull dereferenceable(4096) %call7.i, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.end274.if.end287_crit_edge, label %do.end284

if.end274.if.end287_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end287

do.end284:                                        ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #7
  %call286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 267) #10
  br label %if.end287

if.end287:                                        ; preds = %do.end284, %if.end274.if.end287_crit_edge
  %or289 = or i32 %or276, %call279
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #9
  %call.i.i754 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i754, label %if.end287.if.end303_crit_edge, label %if.end.i.i757

if.end287.if.end303_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

if.end.i.i757:                                    ; preds = %if.end287
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %call7.i, i32 4096, i32 -1226833920) #11, !srcloc !192
  %asmresult.i.i755 = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i755)
  %cmp.i6.i756 = icmp eq i32 %asmresult.i.i755, 0
  br i1 %cmp.i6.i756, label %copy_to_user.exit762, label %if.end.i.i757.if.end303_crit_edge

if.end.i.i757.if.end303_crit_edge:                ; preds = %if.end.i.i757
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

copy_to_user.exit762:                             ; preds = %if.end.i.i757
  %call.i.i.i758 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4096) #9
  %call.i12.i.i759 = tail call i32 @arm_copy_to_user(ptr noundef %call7.i, ptr noundef %add.ptr, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i759)
  %tobool293.not = icmp eq i32 %call.i12.i.i759, 0
  br i1 %tobool293.not, label %do.end300, label %copy_to_user.exit762.if.end303_crit_edge

copy_to_user.exit762.if.end303_crit_edge:         ; preds = %copy_to_user.exit762
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

do.end300:                                        ; preds = %copy_to_user.exit762
  call void @__sanitizer_cov_trace_pc() #7
  %call302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 282) #10
  br label %if.end303

if.end303:                                        ; preds = %do.end300, %copy_to_user.exit762.if.end303_crit_edge, %if.end.i.i757.if.end303_crit_edge, %if.end287.if.end303_crit_edge
  %lnot.ext295866 = phi i32 [ 1, %do.end300 ], [ 0, %copy_to_user.exit762.if.end303_crit_edge ], [ 0, %if.end287.if.end303_crit_edge ], [ 0, %if.end.i.i757.if.end303_crit_edge ]
  %or305 = or i32 %or289, %lnot.ext295866
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #9
  %call.i.i767 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i767, label %if.end303.if.end318_crit_edge, label %if.end.i.i770

if.end303.if.end318_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end318

if.end.i.i770:                                    ; preds = %if.end303
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %call7.i, i32 4096, i32 -1226833920) #11, !srcloc !192
  %asmresult.i.i768 = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i768)
  %cmp.i6.i769 = icmp eq i32 %asmresult.i.i768, 0
  br i1 %cmp.i6.i769, label %copy_to_user.exit775, label %if.end.i.i770.if.end318_crit_edge

if.end.i.i770.if.end318_crit_edge:                ; preds = %if.end.i.i770
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end318

copy_to_user.exit775:                             ; preds = %if.end.i.i770
  %call.i.i.i771 = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4096) #9
  %call.i12.i.i772 = tail call i32 @arm_copy_to_user(ptr noundef %call7.i, ptr noundef %1, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i772)
  %tobool308.not = icmp eq i32 %call.i12.i.i772, 0
  br i1 %tobool308.not, label %do.end315, label %copy_to_user.exit775.if.end318_crit_edge

copy_to_user.exit775.if.end318_crit_edge:         ; preds = %copy_to_user.exit775
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end318

do.end315:                                        ; preds = %copy_to_user.exit775
  call void @__sanitizer_cov_trace_pc() #7
  %call317 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 285) #10
  br label %if.end318

if.end318:                                        ; preds = %do.end315, %copy_to_user.exit775.if.end318_crit_edge, %if.end.i.i770.if.end318_crit_edge, %if.end303.if.end318_crit_edge
  %lnot.ext310870 = phi i32 [ 1, %do.end315 ], [ 0, %copy_to_user.exit775.if.end318_crit_edge ], [ 0, %if.end303.if.end318_crit_edge ], [ 0, %if.end.i.i770.if.end318_crit_edge ]
  %or320 = or i32 %or305, %lnot.ext310870
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 302) #9
  %84 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i776 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i776 to ptr
  %cpu_domain.i.i777 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 4
  %86 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i777) #5, !srcloc !195
  %and.i778 = and i32 %86, -13
  %or.i779 = or i32 %and.i778, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i779) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %87 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %call7.i, i32 -1226833921) #9, !srcloc !205
  %asmresult332 = extractvalue { i32, i32 } %87, 0
  %asmresult333 = extractvalue { i32, i32 } %87, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %conv334 = trunc i32 %asmresult333 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult332)
  %tobool336.not = icmp eq i32 %asmresult332, 0
  %lnot.ext338 = zext i1 %tobool336.not to i32
  br i1 %tobool336.not, label %do.end343, label %if.end318.if.end346_crit_edge

if.end318.if.end346_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end346

do.end343:                                        ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #7
  %call345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef 302) #10
  br label %if.end346

if.end346:                                        ; preds = %do.end343, %if.end318.if.end346_crit_edge
  %or348 = or i32 %or320, %lnot.ext338
  %conv350 = and i32 %asmresult333, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv350)
  %cmp351 = icmp ne i32 %conv350, 0
  %conv352 = zext i1 %cmp351 to i32
  br i1 %cmp351, label %do.end369, label %if.end346.if.end373_crit_edge

if.end346.if.end373_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end373

do.end369:                                        ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  %call359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 302) #10
  %conv371 = zext i32 %conv350 to i64
  %call372 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i64 noundef %conv371) #10
  br label %if.end373

if.end373:                                        ; preds = %do.end369, %if.end346.if.end373_crit_edge
  %or362872 = or i32 %or348, %conv352
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 302) #9
  %88 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i780 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i780 to ptr
  %cpu_domain.i.i781 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i781) #5, !srcloc !195
  %and.i782 = and i32 %90, -13
  %or.i783 = or i32 %and.i782, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i783) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %91 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %call7.i, i8 %conv334, i32 -1226833921) #9, !srcloc !206
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool390.not = icmp eq i32 %91, 0
  %lnot.ext392 = zext i1 %tobool390.not to i32
  br i1 %tobool390.not, label %do.end397, label %if.end373.if.end400_crit_edge

if.end373.if.end400_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end400

do.end397:                                        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #7
  %call399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef 302) #10
  br label %if.end400

if.end400:                                        ; preds = %do.end397, %if.end373.if.end400_crit_edge
  %or402 = or i32 %or362872, %lnot.ext392
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 303) #9
  %92 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i784 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i784 to ptr
  %cpu_domain.i.i785 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 4
  %94 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i785) #5, !srcloc !195
  %and.i786 = and i32 %94, -13
  %or.i787 = or i32 %and.i786, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i787) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %95 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %call7.i, i32 -1226833921) #9, !srcloc !207
  %asmresult416 = extractvalue { i32, i32 } %95, 0
  %asmresult417 = extractvalue { i32, i32 } %95, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %conv418 = trunc i32 %asmresult417 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult416)
  %tobool420.not = icmp eq i32 %asmresult416, 0
  %lnot.ext422 = zext i1 %tobool420.not to i32
  br i1 %tobool420.not, label %do.end427, label %if.end400.if.end430_crit_edge

if.end400.if.end430_crit_edge:                    ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end430

do.end427:                                        ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #7
  %call429 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef 303) #10
  br label %if.end430

if.end430:                                        ; preds = %do.end427, %if.end400.if.end430_crit_edge
  %or432 = or i32 %or402, %lnot.ext422
  %conv434 = and i32 %asmresult417, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv434)
  %cmp435 = icmp ne i32 %conv434, 0
  %conv436 = zext i1 %cmp435 to i32
  br i1 %cmp435, label %do.end453, label %if.end430.if.end457_crit_edge

if.end430.if.end457_crit_edge:                    ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end457

do.end453:                                        ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #7
  %call443 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef 303) #10
  %conv455 = zext i32 %conv434 to i64
  %call456 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i64 noundef %conv455) #10
  br label %if.end457

if.end457:                                        ; preds = %do.end453, %if.end430.if.end457_crit_edge
  %or446875 = or i32 %or432, %conv436
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 303) #9
  %96 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i788 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i788 to ptr
  %cpu_domain.i.i789 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 4
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i789) #5, !srcloc !195
  %and.i790 = and i32 %98, -13
  %or.i791 = or i32 %and.i790, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i791) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %99 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %call7.i, i16 %conv418, i32 -1226833921) #9, !srcloc !208
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool474.not = icmp eq i32 %99, 0
  %lnot.ext476 = zext i1 %tobool474.not to i32
  br i1 %tobool474.not, label %do.end481, label %if.end457.if.end484_crit_edge

if.end457.if.end484_crit_edge:                    ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end484

do.end481:                                        ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #7
  %call483 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef 303) #10
  br label %if.end484

if.end484:                                        ; preds = %do.end481, %if.end457.if.end484_crit_edge
  %or486 = or i32 %or446875, %lnot.ext476
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 304) #9
  %100 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i792 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i792 to ptr
  %cpu_domain.i.i793 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 4
  %102 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i793) #5, !srcloc !195
  %and.i794 = and i32 %102, -13
  %or.i795 = or i32 %and.i794, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i795) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %103 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %call7.i, i32 -1226833921) #9, !srcloc !209
  %asmresult500 = extractvalue { i32, i32 } %103, 0
  %asmresult501 = extractvalue { i32, i32 } %103, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult500)
  %tobool503.not = icmp eq i32 %asmresult500, 0
  %lnot.ext505 = zext i1 %tobool503.not to i32
  br i1 %tobool503.not, label %do.end510, label %if.end484.if.end513_crit_edge

if.end484.if.end513_crit_edge:                    ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end513

do.end510:                                        ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #7
  %call512 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef 304) #10
  br label %if.end513

if.end513:                                        ; preds = %do.end510, %if.end484.if.end513_crit_edge
  %or515 = or i32 %or486, %lnot.ext505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult501)
  %cmp517 = icmp ne i32 %asmresult501, 0
  %conv518 = zext i1 %cmp517 to i32
  br i1 %cmp517, label %do.end534, label %if.end513.if.end538_crit_edge

if.end513.if.end538_crit_edge:                    ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end538

do.end534:                                        ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #7
  %call525 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 304) #10
  %conv536 = zext i32 %asmresult501 to i64
  %call537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i64 noundef %conv536) #10
  br label %if.end538

if.end538:                                        ; preds = %do.end534, %if.end513.if.end538_crit_edge
  %or528878 = or i32 %or515, %conv518
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 304) #9
  %104 = tail call i32 @llvm.read_register.i32(metadata !183) #9
  %and.i.i.i796 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i796 to ptr
  %cpu_domain.i.i797 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i797) #5, !srcloc !195
  %and.i798 = and i32 %106, -13
  %or.i799 = or i32 %and.i798, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i799) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %107 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %call7.i, i32 %asmresult501, i32 -1226833921) #9, !srcloc !210
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool555.not = icmp eq i32 %107, 0
  %lnot.ext557 = zext i1 %tobool555.not to i32
  br i1 %tobool555.not, label %do.end562, label %if.end538.if.end565_crit_edge

if.end538.if.end565_crit_edge:                    ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end565

do.end562:                                        ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #7
  %call564 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef 304) #10
  br label %if.end565

if.end565:                                        ; preds = %do.end562, %if.end538.if.end565_crit_edge
  %or567 = or i32 %or528878, %lnot.ext557
  %call570 = tail call i32 @vm_munmap(i32 noundef %call1, i32 noundef 8192) #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or567)
  %cmp571 = icmp eq i32 %or567, 0
  br i1 %cmp571, label %do.end576, label %if.end565.cleanup_crit_edge

if.end565.cleanup_crit_edge:                      ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end576:                                        ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #7
  %call578 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end576, %if.end565.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %do.end576 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end565.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !114, !115, !116, !118, !119, !121, !123, !125, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182}
!llvm.named.register.sp = !{!183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__UNIQUE_ID_author226, !1, !"__UNIQUE_ID_author226", i1 false, i1 false}
!1 = !{!"../lib/test_user_copy.c", i32 330, i32 1}
!2 = !{ptr @__UNIQUE_ID_license227, !3, !"__UNIQUE_ID_license227", i1 false, i1 false}
!3 = !{!"../lib/test_user_copy.c", i32 331, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/test_user_copy.c", i32 202, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @test_user_copy_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @test_user_copy_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/test_user_copy.c", i32 214, i32 9}
!12 = !{ptr @test_user_copy_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @test_user_copy_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/test_user_copy.c", i32 217, i32 9}
!16 = !{ptr @test_user_copy_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @test_user_copy_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/test_user_copy.c", i32 219, i32 9}
!20 = !{ptr @test_user_copy_init._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @test_user_copy_init._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/test_user_copy.c", i32 239, i32 2}
!24 = !{ptr @test_user_copy_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @test_user_copy_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @test_user_copy_init._entry.15, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @test_user_copy_init._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @test_user_copy_init._entry.18, !23, !"_entry", i1 false, i1 false}
!31 = !{ptr @test_user_copy_init._entry_ptr.20, !23, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !23, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @test_user_copy_init._entry.21, !23, !"_entry", i1 false, i1 false}
!34 = !{ptr @test_user_copy_init._entry_ptr.23, !23, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/test_user_copy.c", i32 240, i32 2}
!37 = !{ptr @test_user_copy_init._entry.24, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @test_user_copy_init._entry_ptr.26, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.28, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @test_user_copy_init._entry.27, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @test_user_copy_init._entry_ptr.29, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.31, !36, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @test_user_copy_init._entry.30, !36, !"_entry", i1 false, i1 false}
!44 = !{ptr @test_user_copy_init._entry_ptr.32, !36, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @test_user_copy_init._entry.33, !36, !"_entry", i1 false, i1 false}
!46 = !{ptr @test_user_copy_init._entry_ptr.34, !36, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.36, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/test_user_copy.c", i32 241, i32 2}
!49 = !{ptr @test_user_copy_init._entry.35, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @test_user_copy_init._entry_ptr.37, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.39, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @test_user_copy_init._entry.38, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @test_user_copy_init._entry_ptr.40, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.42, !48, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @test_user_copy_init._entry.41, !48, !"_entry", i1 false, i1 false}
!56 = !{ptr @test_user_copy_init._entry_ptr.43, !48, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @test_user_copy_init._entry.44, !48, !"_entry", i1 false, i1 false}
!58 = !{ptr @test_user_copy_init._entry_ptr.45, !48, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.47, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test_user_copy.c", i32 261, i32 9}
!61 = !{ptr @test_user_copy_init._entry.46, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @test_user_copy_init._entry_ptr.48, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.50, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test_user_copy.c", i32 266, i32 9}
!65 = !{ptr @test_user_copy_init._entry.49, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @test_user_copy_init._entry_ptr.51, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.53, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../lib/test_user_copy.c", i32 280, i32 9}
!69 = !{ptr @test_user_copy_init._entry.52, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @test_user_copy_init._entry_ptr.54, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.56, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test_user_copy.c", i32 283, i32 9}
!73 = !{ptr @test_user_copy_init._entry.55, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @test_user_copy_init._entry_ptr.57, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.59, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/test_user_copy.c", i32 302, i32 2}
!77 = !{ptr @test_user_copy_init._entry.58, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @test_user_copy_init._entry_ptr.60, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.62, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @test_user_copy_init._entry.61, !76, !"_entry", i1 false, i1 false}
!81 = !{ptr @test_user_copy_init._entry_ptr.63, !76, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.65, !76, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @test_user_copy_init._entry.64, !76, !"_entry", i1 false, i1 false}
!84 = !{ptr @test_user_copy_init._entry_ptr.66, !76, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.68, !76, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @test_user_copy_init._entry.67, !76, !"_entry", i1 false, i1 false}
!87 = !{ptr @test_user_copy_init._entry_ptr.69, !76, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.71, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../lib/test_user_copy.c", i32 303, i32 2}
!90 = !{ptr @test_user_copy_init._entry.70, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @test_user_copy_init._entry_ptr.72, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.74, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @test_user_copy_init._entry.73, !89, !"_entry", i1 false, i1 false}
!94 = !{ptr @test_user_copy_init._entry_ptr.75, !89, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @test_user_copy_init._entry.76, !89, !"_entry", i1 false, i1 false}
!96 = !{ptr @test_user_copy_init._entry_ptr.77, !89, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.79, !89, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @test_user_copy_init._entry.78, !89, !"_entry", i1 false, i1 false}
!99 = !{ptr @test_user_copy_init._entry_ptr.80, !89, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.82, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../lib/test_user_copy.c", i32 304, i32 2}
!102 = !{ptr @test_user_copy_init._entry.81, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @test_user_copy_init._entry_ptr.83, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.85, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @test_user_copy_init._entry.84, !101, !"_entry", i1 false, i1 false}
!106 = !{ptr @test_user_copy_init._entry_ptr.86, !101, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @test_user_copy_init._entry.87, !101, !"_entry", i1 false, i1 false}
!108 = !{ptr @test_user_copy_init._entry_ptr.88, !101, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.90, !101, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @test_user_copy_init._entry.89, !101, !"_entry", i1 false, i1 false}
!111 = !{ptr @test_user_copy_init._entry_ptr.91, !101, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.93, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/test_user_copy.c", i32 314, i32 3}
!114 = !{ptr @test_user_copy_init._entry.92, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @test_user_copy_init._entry_ptr.94, !113, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!118 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!121 = !{ptr @.str.97, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!123 = !{ptr @.str.98, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/test_user_copy.c", i32 52, i32 6}
!125 = !{ptr @.str.99, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @test_check_nonzero_user._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @test_check_nonzero_user._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @test_check_nonzero_user._entry.100, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../lib/test_user_copy.c", i32 87, i32 9}
!130 = !{ptr @test_check_nonzero_user._entry_ptr.101, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.103, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../lib/test_user_copy.c", i32 96, i32 11}
!133 = !{ptr @test_check_nonzero_user._entry.102, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @test_check_nonzero_user._entry_ptr.104, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.105, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/test_user_copy.c", i32 113, i32 8}
!137 = !{ptr @.str.106, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @test_copy_struct_from_user._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @test_copy_struct_from_user._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @test_copy_struct_from_user._entry.107, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../lib/test_user_copy.c", i32 118, i32 8}
!142 = !{ptr @test_copy_struct_from_user._entry_ptr.108, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @test_copy_struct_from_user._entry.109, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../lib/test_user_copy.c", i32 124, i32 9}
!145 = !{ptr @test_copy_struct_from_user._entry_ptr.110, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.112, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../lib/test_user_copy.c", i32 134, i32 9}
!148 = !{ptr @test_copy_struct_from_user._entry.111, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @test_copy_struct_from_user._entry_ptr.113, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.115, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../lib/test_user_copy.c", i32 136, i32 9}
!152 = !{ptr @test_copy_struct_from_user._entry.114, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @test_copy_struct_from_user._entry_ptr.116, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.118, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../lib/test_user_copy.c", i32 147, i32 9}
!156 = !{ptr @test_copy_struct_from_user._entry.117, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @test_copy_struct_from_user._entry_ptr.119, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.121, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../lib/test_user_copy.c", i32 149, i32 9}
!160 = !{ptr @test_copy_struct_from_user._entry.120, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @test_copy_struct_from_user._entry_ptr.122, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.124, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../lib/test_user_copy.c", i32 157, i32 9}
!164 = !{ptr @test_copy_struct_from_user._entry.123, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @test_copy_struct_from_user._entry_ptr.125, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.127, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../lib/test_user_copy.c", i32 165, i32 9}
!168 = !{ptr @test_copy_struct_from_user._entry.126, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @test_copy_struct_from_user._entry_ptr.128, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.130, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../lib/test_user_copy.c", i32 169, i32 9}
!172 = !{ptr @test_copy_struct_from_user._entry.129, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @test_copy_struct_from_user._entry_ptr.131, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.133, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../lib/test_user_copy.c", i32 171, i32 9}
!176 = !{ptr @test_copy_struct_from_user._entry.132, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @test_copy_struct_from_user._entry_ptr.134, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.135, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../lib/test_user_copy.c", i32 325, i32 2}
!180 = !{ptr @.str.136, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @test_user_copy_exit._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @test_user_copy_exit._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{!"sp"}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 2152737098, i64 2152737123}
!193 = !{i64 2152736417, i64 2152736442}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{i64 5231972}
!196 = !{i64 5232169}
!197 = !{i64 2152717402}
!198 = !{i64 2153576688, i64 2153576998, i64 2153577312, i64 2153577626}
!199 = !{i64 2153598395, i64 2153598705, i64 2153599019, i64 2153599333}
!200 = !{i64 2153624289, i64 2153624599, i64 2153624913, i64 2153625227}
!201 = !{i64 2153646791, i64 2153647101, i64 2153647415, i64 2153647729}
!202 = !{i64 2153671971, i64 2153672281, i64 2153672595, i64 2153672909}
!203 = !{i64 2153695241, i64 2153695551, i64 2153695865, i64 2153696179}
!204 = !{i64 2152733219, i64 2152733244}
!205 = !{i64 2153733161, i64 2153733471, i64 2153733785, i64 2153734099}
!206 = !{i64 2153756684, i64 2153756994, i64 2153757308, i64 2153757622}
!207 = !{i64 2153781210, i64 2153781520, i64 2153781834, i64 2153782148}
!208 = !{i64 2153804009, i64 2153804319, i64 2153804633, i64 2153804947}
!209 = !{i64 2153829316, i64 2153829626, i64 2153829940, i64 2153830254}
!210 = !{i64 2153851347, i64 2153851657, i64 2153851971, i64 2153852285}
