; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_format.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_format.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@igt_check_drm_format_block_width._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 20, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013drm_format: %s/%u: %s\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"igt_check_drm_format_block_width\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/selftests/test-drm_format.c\00", [52 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr = internal global ptr @igt_check_drm_format_block_width._entry, section ".printk_index", align 4
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 0) != 0)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.5 = internal global ptr @igt_check_drm_format_block_width._entry.4, section ".printk_index", align 4
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_width(info, -1) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.8 = internal global ptr @igt_check_drm_format_block_width._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 1) != 0)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 26, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.11 = internal global ptr @igt_check_drm_format_block_width._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FAIL_ON(!info)\0A\00", [16 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.14 = internal global ptr @igt_check_drm_format_block_width._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 0) != 1)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.17 = internal global ptr @igt_check_drm_format_block_width._entry.16, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.19 = internal global ptr @igt_check_drm_format_block_width._entry.18, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.21 = internal global ptr @igt_check_drm_format_block_width._entry.20, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.23 = internal global ptr @igt_check_drm_format_block_width._entry.22, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.25 = internal global ptr @igt_check_drm_format_block_width._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 1) != 1)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.28 = internal global ptr @igt_check_drm_format_block_width._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 2) != 0)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.31 = internal global ptr @igt_check_drm_format_block_width._entry.30, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.33 = internal global ptr @igt_check_drm_format_block_width._entry.32, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.35 = internal global ptr @igt_check_drm_format_block_width._entry.34, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.37 = internal global ptr @igt_check_drm_format_block_width._entry.36, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.39 = internal global ptr @igt_check_drm_format_block_width._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 2) != 1)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.42 = internal global ptr @igt_check_drm_format_block_width._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 3) != 0)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.45 = internal global ptr @igt_check_drm_format_block_width._entry.44, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.47 = internal global ptr @igt_check_drm_format_block_width._entry.46, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.49 = internal global ptr @igt_check_drm_format_block_width._entry.48, section ".printk_index", align 4
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FAIL_ON(drm_format_info_block_width(info, 0) != 2)\0A\00", [44 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.52 = internal global ptr @igt_check_drm_format_block_width._entry.51, section ".printk_index", align 4
@igt_check_drm_format_block_width._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_width._entry_ptr.54 = internal global ptr @igt_check_drm_format_block_width._entry.53, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"igt_check_drm_format_block_height\00", [62 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr = internal global ptr @igt_check_drm_format_block_height._entry, section ".printk_index", align 4
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 0) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.58 = internal global ptr @igt_check_drm_format_block_height._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"FAIL_ON(drm_format_info_block_height(info, -1) != 0)\0A\00", [42 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.61 = internal global ptr @igt_check_drm_format_block_height._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 1) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.64 = internal global ptr @igt_check_drm_format_block_height._entry.63, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.66 = internal global ptr @igt_check_drm_format_block_height._entry.65, section ".printk_index", align 4
@.str.67 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 0) != 1)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.69 = internal global ptr @igt_check_drm_format_block_height._entry.68, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.71 = internal global ptr @igt_check_drm_format_block_height._entry.70, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.73 = internal global ptr @igt_check_drm_format_block_height._entry.72, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.75 = internal global ptr @igt_check_drm_format_block_height._entry.74, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.77 = internal global ptr @igt_check_drm_format_block_height._entry.76, section ".printk_index", align 4
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 1) != 1)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.80 = internal global ptr @igt_check_drm_format_block_height._entry.79, section ".printk_index", align 4
@.str.81 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 2) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.83 = internal global ptr @igt_check_drm_format_block_height._entry.82, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.85 = internal global ptr @igt_check_drm_format_block_height._entry.84, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.87 = internal global ptr @igt_check_drm_format_block_height._entry.86, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.89 = internal global ptr @igt_check_drm_format_block_height._entry.88, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.91 = internal global ptr @igt_check_drm_format_block_height._entry.90, section ".printk_index", align 4
@.str.92 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 2) != 1)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.94 = internal global ptr @igt_check_drm_format_block_height._entry.93, section ".printk_index", align 4
@.str.95 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 3) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.97 = internal global ptr @igt_check_drm_format_block_height._entry.96, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.99 = internal global ptr @igt_check_drm_format_block_height._entry.98, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.101 = internal global ptr @igt_check_drm_format_block_height._entry.100, section ".printk_index", align 4
@.str.102 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_block_height(info, 0) != 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.104 = internal global ptr @igt_check_drm_format_block_height._entry.103, section ".printk_index", align 4
@igt_check_drm_format_block_height._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_block_height._entry_ptr.106 = internal global ptr @igt_check_drm_format_block_height._entry.105, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"igt_check_drm_format_min_pitch\00", [33 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr = internal global ptr @igt_check_drm_format_min_pitch._entry, section ".printk_index", align 4
@.str.108 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.110 = internal global ptr @igt_check_drm_format_min_pitch._entry.109, section ".printk_index", align 4
@.str.111 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0)\0A\00", [42 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.113 = internal global ptr @igt_check_drm_format_min_pitch._entry.112, section ".printk_index", align 4
@.str.114 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.116 = internal global ptr @igt_check_drm_format_min_pitch._entry.115, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.118 = internal global ptr @igt_check_drm_format_min_pitch._entry.117, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.120 = internal global ptr @igt_check_drm_format_min_pitch._entry.119, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.122 = internal global ptr @igt_check_drm_format_min_pitch._entry.121, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.124 = internal global ptr @igt_check_drm_format_min_pitch._entry.123, section ".printk_index", align 4
@.str.125 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 1)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.127 = internal global ptr @igt_check_drm_format_min_pitch._entry.126, section ".printk_index", align 4
@.str.128 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.130 = internal global ptr @igt_check_drm_format_min_pitch._entry.129, section ".printk_index", align 4
@.str.131 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 640)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.133 = internal global ptr @igt_check_drm_format_min_pitch._entry.132, section ".printk_index", align 4
@.str.134 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 1024)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.136 = internal global ptr @igt_check_drm_format_min_pitch._entry.135, section ".printk_index", align 4
@.str.137 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 1920)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.139 = internal global ptr @igt_check_drm_format_min_pitch._entry.138, section ".printk_index", align 4
@.str.140 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 4096)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.142 = internal global ptr @igt_check_drm_format_min_pitch._entry.141, section ".printk_index", align 4
@.str.143 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 671)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.145 = internal global ptr @igt_check_drm_format_min_pitch._entry.144, section ".printk_index", align 4
@.str.146 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, (~0U)) != (uint64_t)(~0U))\0A\00", [57 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.148 = internal global ptr @igt_check_drm_format_min_pitch._entry.147, section ".printk_index", align 4
@.str.149 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, ((~0U) - 1)) != (uint64_t)((~0U) - 1))\0A\00", [45 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.151 = internal global ptr @igt_check_drm_format_min_pitch._entry.150, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.153 = internal global ptr @igt_check_drm_format_min_pitch._entry.152, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.155 = internal global ptr @igt_check_drm_format_min_pitch._entry.154, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.157 = internal global ptr @igt_check_drm_format_min_pitch._entry.156, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.159 = internal global ptr @igt_check_drm_format_min_pitch._entry.158, section ".printk_index", align 4
@.str.160 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.162 = internal global ptr @igt_check_drm_format_min_pitch._entry.161, section ".printk_index", align 4
@.str.163 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 4)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.165 = internal global ptr @igt_check_drm_format_min_pitch._entry.164, section ".printk_index", align 4
@.str.166 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 1280)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.168 = internal global ptr @igt_check_drm_format_min_pitch._entry.167, section ".printk_index", align 4
@.str.169 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 2048)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.171 = internal global ptr @igt_check_drm_format_min_pitch._entry.170, section ".printk_index", align 4
@.str.172 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 3840)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.174 = internal global ptr @igt_check_drm_format_min_pitch._entry.173, section ".printk_index", align 4
@.str.175 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 8192)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.177 = internal global ptr @igt_check_drm_format_min_pitch._entry.176, section ".printk_index", align 4
@.str.178 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 1342)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.180 = internal global ptr @igt_check_drm_format_min_pitch._entry.179, section ".printk_index", align 4
@.str.181 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, (~0U)) != (uint64_t)(~0U) * 2)\0A\00", [53 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.183 = internal global ptr @igt_check_drm_format_min_pitch._entry.182, section ".printk_index", align 4
@.str.184 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, ((~0U) - 1)) != (uint64_t)((~0U) - 1) * 2)\0A\00", [41 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.186 = internal global ptr @igt_check_drm_format_min_pitch._entry.185, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.188 = internal global ptr @igt_check_drm_format_min_pitch._entry.187, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.190 = internal global ptr @igt_check_drm_format_min_pitch._entry.189, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.192 = internal global ptr @igt_check_drm_format_min_pitch._entry.191, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.194 = internal global ptr @igt_check_drm_format_min_pitch._entry.193, section ".printk_index", align 4
@.str.195 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 3)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.197 = internal global ptr @igt_check_drm_format_min_pitch._entry.196, section ".printk_index", align 4
@.str.198 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 6)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.200 = internal global ptr @igt_check_drm_format_min_pitch._entry.199, section ".printk_index", align 4
@.str.201 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 1920)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.203 = internal global ptr @igt_check_drm_format_min_pitch._entry.202, section ".printk_index", align 4
@.str.204 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 3072)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.206 = internal global ptr @igt_check_drm_format_min_pitch._entry.205, section ".printk_index", align 4
@.str.207 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 5760)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.209 = internal global ptr @igt_check_drm_format_min_pitch._entry.208, section ".printk_index", align 4
@.str.210 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 12288)\0A\00", [36 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.212 = internal global ptr @igt_check_drm_format_min_pitch._entry.211, section ".printk_index", align 4
@.str.213 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 2013)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.215 = internal global ptr @igt_check_drm_format_min_pitch._entry.214, section ".printk_index", align 4
@.str.216 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, (~0U)) != (uint64_t)(~0U) * 3)\0A\00", [53 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.218 = internal global ptr @igt_check_drm_format_min_pitch._entry.217, section ".printk_index", align 4
@.str.219 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, (~0U) - 1) != (uint64_t)((~0U) - 1) * 3)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.221 = internal global ptr @igt_check_drm_format_min_pitch._entry.220, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.223 = internal global ptr @igt_check_drm_format_min_pitch._entry.222, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.225 = internal global ptr @igt_check_drm_format_min_pitch._entry.224, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.227 = internal global ptr @igt_check_drm_format_min_pitch._entry.226, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.229 = internal global ptr @igt_check_drm_format_min_pitch._entry.228, section ".printk_index", align 4
@.str.230 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 4)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.232 = internal global ptr @igt_check_drm_format_min_pitch._entry.231, section ".printk_index", align 4
@.str.233 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 8)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.235 = internal global ptr @igt_check_drm_format_min_pitch._entry.234, section ".printk_index", align 4
@.str.236 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 2560)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.238 = internal global ptr @igt_check_drm_format_min_pitch._entry.237, section ".printk_index", align 4
@.str.239 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 4096)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.241 = internal global ptr @igt_check_drm_format_min_pitch._entry.240, section ".printk_index", align 4
@.str.242 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 7680)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.244 = internal global ptr @igt_check_drm_format_min_pitch._entry.243, section ".printk_index", align 4
@.str.245 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 16384)\0A\00", [36 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.247 = internal global ptr @igt_check_drm_format_min_pitch._entry.246, section ".printk_index", align 4
@.str.248 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 2684)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.250 = internal global ptr @igt_check_drm_format_min_pitch._entry.249, section ".printk_index", align 4
@.str.251 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, (~0U)) != (uint64_t)(~0U) * 4)\0A\00", [53 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.253 = internal global ptr @igt_check_drm_format_min_pitch._entry.252, section ".printk_index", align 4
@.str.254 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, (~0U) - 1) != (uint64_t)((~0U) - 1) * 4)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.256 = internal global ptr @igt_check_drm_format_min_pitch._entry.255, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.258 = internal global ptr @igt_check_drm_format_min_pitch._entry.257, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.260 = internal global ptr @igt_check_drm_format_min_pitch._entry.259, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.262 = internal global ptr @igt_check_drm_format_min_pitch._entry.261, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.264 = internal global ptr @igt_check_drm_format_min_pitch._entry.263, section ".printk_index", align 4
@.str.265 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 0) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.267 = internal global ptr @igt_check_drm_format_min_pitch._entry.266, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.269 = internal global ptr @igt_check_drm_format_min_pitch._entry.268, section ".printk_index", align 4
@.str.270 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 1) != 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.272 = internal global ptr @igt_check_drm_format_min_pitch._entry.271, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.274 = internal global ptr @igt_check_drm_format_min_pitch._entry.273, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.276 = internal global ptr @igt_check_drm_format_min_pitch._entry.275, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.278 = internal global ptr @igt_check_drm_format_min_pitch._entry.277, section ".printk_index", align 4
@.str.279 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 320) != 640)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.281 = internal global ptr @igt_check_drm_format_min_pitch._entry.280, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.283 = internal global ptr @igt_check_drm_format_min_pitch._entry.282, section ".printk_index", align 4
@.str.284 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 512) != 1024)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.286 = internal global ptr @igt_check_drm_format_min_pitch._entry.285, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.288 = internal global ptr @igt_check_drm_format_min_pitch._entry.287, section ".printk_index", align 4
@.str.289 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 960) != 1920)\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.291 = internal global ptr @igt_check_drm_format_min_pitch._entry.290, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.293 = internal global ptr @igt_check_drm_format_min_pitch._entry.292, section ".printk_index", align 4
@.str.294 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 2048) != 4096)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.296 = internal global ptr @igt_check_drm_format_min_pitch._entry.295, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.298 = internal global ptr @igt_check_drm_format_min_pitch._entry.297, section ".printk_index", align 4
@.str.299 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 336) != 672)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.301 = internal global ptr @igt_check_drm_format_min_pitch._entry.300, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.303 = internal global ptr @igt_check_drm_format_min_pitch._entry.302, section ".printk_index", align 4
@.str.304 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, (~0U) / 2 + 1) != (uint64_t)(~0U) + 1)\0A\00", [45 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.306 = internal global ptr @igt_check_drm_format_min_pitch._entry.305, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.308 = internal global ptr @igt_check_drm_format_min_pitch._entry.307, section ".printk_index", align 4
@.str.309 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, ((~0U) - 1) / 2) != (uint64_t)((~0U) - 1))\0A\00", [41 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.311 = internal global ptr @igt_check_drm_format_min_pitch._entry.310, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.313 = internal global ptr @igt_check_drm_format_min_pitch._entry.312, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.315 = internal global ptr @igt_check_drm_format_min_pitch._entry.314, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.317 = internal global ptr @igt_check_drm_format_min_pitch._entry.316, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.319 = internal global ptr @igt_check_drm_format_min_pitch._entry.318, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.321 = internal global ptr @igt_check_drm_format_min_pitch._entry.320, section ".printk_index", align 4
@.str.322 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 3, 0) != 0)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.324 = internal global ptr @igt_check_drm_format_min_pitch._entry.323, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.326 = internal global ptr @igt_check_drm_format_min_pitch._entry.325, section ".printk_index", align 4
@.str.327 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 1) != 1)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.329 = internal global ptr @igt_check_drm_format_min_pitch._entry.328, section ".printk_index", align 4
@.str.330 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 1) != 1)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.331 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.332 = internal global ptr @igt_check_drm_format_min_pitch._entry.331, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.334 = internal global ptr @igt_check_drm_format_min_pitch._entry.333, section ".printk_index", align 4
@.str.335 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 2) != 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.337 = internal global ptr @igt_check_drm_format_min_pitch._entry.336, section ".printk_index", align 4
@.str.338 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 2) != 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.340 = internal global ptr @igt_check_drm_format_min_pitch._entry.339, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.342 = internal global ptr @igt_check_drm_format_min_pitch._entry.341, section ".printk_index", align 4
@.str.343 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 320) != 320)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.345 = internal global ptr @igt_check_drm_format_min_pitch._entry.344, section ".printk_index", align 4
@.str.346 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 320) != 320)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.348 = internal global ptr @igt_check_drm_format_min_pitch._entry.347, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.350 = internal global ptr @igt_check_drm_format_min_pitch._entry.349, section ".printk_index", align 4
@.str.351 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 512) != 512)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.353 = internal global ptr @igt_check_drm_format_min_pitch._entry.352, section ".printk_index", align 4
@.str.354 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 512) != 512)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.356 = internal global ptr @igt_check_drm_format_min_pitch._entry.355, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.358 = internal global ptr @igt_check_drm_format_min_pitch._entry.357, section ".printk_index", align 4
@.str.359 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 960) != 960)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.360 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.361 = internal global ptr @igt_check_drm_format_min_pitch._entry.360, section ".printk_index", align 4
@.str.362 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 960) != 960)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.363 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.364 = internal global ptr @igt_check_drm_format_min_pitch._entry.363, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.366 = internal global ptr @igt_check_drm_format_min_pitch._entry.365, section ".printk_index", align 4
@.str.367 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 2048) != 2048)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.369 = internal global ptr @igt_check_drm_format_min_pitch._entry.368, section ".printk_index", align 4
@.str.370 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 2048) != 2048)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.372 = internal global ptr @igt_check_drm_format_min_pitch._entry.371, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.373 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.374 = internal global ptr @igt_check_drm_format_min_pitch._entry.373, section ".printk_index", align 4
@.str.375 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, 336) != 336)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.377 = internal global ptr @igt_check_drm_format_min_pitch._entry.376, section ".printk_index", align 4
@.str.378 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, 336) != 336)\0A\00", [39 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.380 = internal global ptr @igt_check_drm_format_min_pitch._entry.379, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.381 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.382 = internal global ptr @igt_check_drm_format_min_pitch._entry.381, section ".printk_index", align 4
@.str.383 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, (~0U) / 2 + 1) != (uint64_t)(~0U) / 2 + 1)\0A\00", [41 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.385 = internal global ptr @igt_check_drm_format_min_pitch._entry.384, section ".printk_index", align 4
@.str.386 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, (~0U) / 2 + 1) != (uint64_t)(~0U) / 2 + 1)\0A\00", [41 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.387 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.388 = internal global ptr @igt_check_drm_format_min_pitch._entry.387, section ".printk_index", align 4
@.str.389 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, ((~0U) - 1) / 2) != (uint64_t)((~0U) - 1) / 2)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.390 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.391 = internal global ptr @igt_check_drm_format_min_pitch._entry.390, section ".printk_index", align 4
@.str.392 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 1, ((~0U) - 1) / 2) != (uint64_t)((~0U) - 1) / 2)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.394 = internal global ptr @igt_check_drm_format_min_pitch._entry.393, section ".printk_index", align 4
@.str.395 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 2, ((~0U) - 1) / 2) != (uint64_t)((~0U) - 1) / 2)\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.397 = internal global ptr @igt_check_drm_format_min_pitch._entry.396, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.399 = internal global ptr @igt_check_drm_format_min_pitch._entry.398, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.401 = internal global ptr @igt_check_drm_format_min_pitch._entry.400, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.402 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.403 = internal global ptr @igt_check_drm_format_min_pitch._entry.402, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.405 = internal global ptr @igt_check_drm_format_min_pitch._entry.404, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.406 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.407 = internal global ptr @igt_check_drm_format_min_pitch._entry.406, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.409 = internal global ptr @igt_check_drm_format_min_pitch._entry.408, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.410 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.411 = internal global ptr @igt_check_drm_format_min_pitch._entry.410, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.412 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.413 = internal global ptr @igt_check_drm_format_min_pitch._entry.412, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.414 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.415 = internal global ptr @igt_check_drm_format_min_pitch._entry.414, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.417 = internal global ptr @igt_check_drm_format_min_pitch._entry.416, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.419 = internal global ptr @igt_check_drm_format_min_pitch._entry.418, section ".printk_index", align 4
@igt_check_drm_format_min_pitch._entry.420 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_drm_format_min_pitch._entry_ptr.421 = internal global ptr @igt_check_drm_format_min_pitch._entry.420, section ".printk_index", align 4
@.str.422 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"FAIL_ON(drm_format_info_min_pitch(info, 0, (~0U) - 1) != (uint64_t)((~0U) - 1) * 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 20, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 21, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 22, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 26, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 27, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 28, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 29, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 33, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 34, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 35, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 36, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 37, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 41, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 42, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 43, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 44, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 45, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 46, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 50, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 51, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 52, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 53, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 63, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 64, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 65, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 69, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 70, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 71, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 72, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 76, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 77, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 78, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 79, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 80, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 84, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 85, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 86, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 87, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 88, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 89, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 93, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 94, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 95, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 96, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 106, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 107, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 108, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 112, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 113, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 114, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 115, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 117, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 118, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 119, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 120, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 121, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 122, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 123, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 124, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 126, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 131, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 132, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 133, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 134, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 136, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 137, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 138, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 139, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 140, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 141, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 142, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 143, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 145, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 150, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 151, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 152, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 153, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 155, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 156, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 157, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 158, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 159, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 160, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 161, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 162, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 164, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 169, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 170, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 171, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 172, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 174, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 175, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 176, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 177, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 178, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 179, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 180, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 181, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 183, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 188, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 189, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 190, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 191, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 192, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 194, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 195, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 196, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 197, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 198, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 199, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 200, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 201, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 202, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 203, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 204, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 205, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 206, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 207, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 208, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 210, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 212, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 214, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 219, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 220, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 221, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 222, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 223, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 224, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 226, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 227, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 228, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 229, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 230, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 231, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 232, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 233, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 234, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 235, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 236, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 237, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 238, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 239, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 240, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 241, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 242, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 243, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 244, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 245, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 246, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 247, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 249, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 251, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 253, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 255, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 257, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 262, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 263, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 264, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 265, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 267, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 268, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 269, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 270, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 271, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 272, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 273, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 274, i32 2 }
@___asan_gen_.1200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1204 = private constant [47 x i8] c"../drivers/gpu/drm/selftests/test-drm_format.c\00", align 1
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 276, i32 2 }
@llvm.compiler.used = appending global [429 x ptr] [ptr @igt_check_drm_format_block_height._entry, ptr @igt_check_drm_format_block_height._entry.100, ptr @igt_check_drm_format_block_height._entry.103, ptr @igt_check_drm_format_block_height._entry.105, ptr @igt_check_drm_format_block_height._entry.57, ptr @igt_check_drm_format_block_height._entry.60, ptr @igt_check_drm_format_block_height._entry.63, ptr @igt_check_drm_format_block_height._entry.65, ptr @igt_check_drm_format_block_height._entry.68, ptr @igt_check_drm_format_block_height._entry.70, ptr @igt_check_drm_format_block_height._entry.72, ptr @igt_check_drm_format_block_height._entry.74, ptr @igt_check_drm_format_block_height._entry.76, ptr @igt_check_drm_format_block_height._entry.79, ptr @igt_check_drm_format_block_height._entry.82, ptr @igt_check_drm_format_block_height._entry.84, ptr @igt_check_drm_format_block_height._entry.86, ptr @igt_check_drm_format_block_height._entry.88, ptr @igt_check_drm_format_block_height._entry.90, ptr @igt_check_drm_format_block_height._entry.93, ptr @igt_check_drm_format_block_height._entry.96, ptr @igt_check_drm_format_block_height._entry.98, ptr @igt_check_drm_format_block_height._entry_ptr, ptr @igt_check_drm_format_block_height._entry_ptr.101, ptr @igt_check_drm_format_block_height._entry_ptr.104, ptr @igt_check_drm_format_block_height._entry_ptr.106, ptr @igt_check_drm_format_block_height._entry_ptr.58, ptr @igt_check_drm_format_block_height._entry_ptr.61, ptr @igt_check_drm_format_block_height._entry_ptr.64, ptr @igt_check_drm_format_block_height._entry_ptr.66, ptr @igt_check_drm_format_block_height._entry_ptr.69, ptr @igt_check_drm_format_block_height._entry_ptr.71, ptr @igt_check_drm_format_block_height._entry_ptr.73, ptr @igt_check_drm_format_block_height._entry_ptr.75, ptr @igt_check_drm_format_block_height._entry_ptr.77, ptr @igt_check_drm_format_block_height._entry_ptr.80, ptr @igt_check_drm_format_block_height._entry_ptr.83, ptr @igt_check_drm_format_block_height._entry_ptr.85, ptr @igt_check_drm_format_block_height._entry_ptr.87, ptr @igt_check_drm_format_block_height._entry_ptr.89, ptr @igt_check_drm_format_block_height._entry_ptr.91, ptr @igt_check_drm_format_block_height._entry_ptr.94, ptr @igt_check_drm_format_block_height._entry_ptr.97, ptr @igt_check_drm_format_block_height._entry_ptr.99, ptr @igt_check_drm_format_block_width._entry, ptr @igt_check_drm_format_block_width._entry.10, ptr @igt_check_drm_format_block_width._entry.13, ptr @igt_check_drm_format_block_width._entry.16, ptr @igt_check_drm_format_block_width._entry.18, ptr @igt_check_drm_format_block_width._entry.20, ptr @igt_check_drm_format_block_width._entry.22, ptr @igt_check_drm_format_block_width._entry.24, ptr @igt_check_drm_format_block_width._entry.27, ptr @igt_check_drm_format_block_width._entry.30, ptr @igt_check_drm_format_block_width._entry.32, ptr @igt_check_drm_format_block_width._entry.34, ptr @igt_check_drm_format_block_width._entry.36, ptr @igt_check_drm_format_block_width._entry.38, ptr @igt_check_drm_format_block_width._entry.4, ptr @igt_check_drm_format_block_width._entry.41, ptr @igt_check_drm_format_block_width._entry.44, ptr @igt_check_drm_format_block_width._entry.46, ptr @igt_check_drm_format_block_width._entry.48, ptr @igt_check_drm_format_block_width._entry.51, ptr @igt_check_drm_format_block_width._entry.53, ptr @igt_check_drm_format_block_width._entry.7, ptr @igt_check_drm_format_block_width._entry_ptr, ptr @igt_check_drm_format_block_width._entry_ptr.11, ptr @igt_check_drm_format_block_width._entry_ptr.14, ptr @igt_check_drm_format_block_width._entry_ptr.17, ptr @igt_check_drm_format_block_width._entry_ptr.19, ptr @igt_check_drm_format_block_width._entry_ptr.21, ptr @igt_check_drm_format_block_width._entry_ptr.23, ptr @igt_check_drm_format_block_width._entry_ptr.25, ptr @igt_check_drm_format_block_width._entry_ptr.28, ptr @igt_check_drm_format_block_width._entry_ptr.31, ptr @igt_check_drm_format_block_width._entry_ptr.33, ptr @igt_check_drm_format_block_width._entry_ptr.35, ptr @igt_check_drm_format_block_width._entry_ptr.37, ptr @igt_check_drm_format_block_width._entry_ptr.39, ptr @igt_check_drm_format_block_width._entry_ptr.42, ptr @igt_check_drm_format_block_width._entry_ptr.45, ptr @igt_check_drm_format_block_width._entry_ptr.47, ptr @igt_check_drm_format_block_width._entry_ptr.49, ptr @igt_check_drm_format_block_width._entry_ptr.5, ptr @igt_check_drm_format_block_width._entry_ptr.52, ptr @igt_check_drm_format_block_width._entry_ptr.54, ptr @igt_check_drm_format_block_width._entry_ptr.8, ptr @igt_check_drm_format_min_pitch._entry, ptr @igt_check_drm_format_min_pitch._entry.109, ptr @igt_check_drm_format_min_pitch._entry.112, ptr @igt_check_drm_format_min_pitch._entry.115, ptr @igt_check_drm_format_min_pitch._entry.117, ptr @igt_check_drm_format_min_pitch._entry.119, ptr @igt_check_drm_format_min_pitch._entry.121, ptr @igt_check_drm_format_min_pitch._entry.123, ptr @igt_check_drm_format_min_pitch._entry.126, ptr @igt_check_drm_format_min_pitch._entry.129, ptr @igt_check_drm_format_min_pitch._entry.132, ptr @igt_check_drm_format_min_pitch._entry.135, ptr @igt_check_drm_format_min_pitch._entry.138, ptr @igt_check_drm_format_min_pitch._entry.141, ptr @igt_check_drm_format_min_pitch._entry.144, ptr @igt_check_drm_format_min_pitch._entry.147, ptr @igt_check_drm_format_min_pitch._entry.150, ptr @igt_check_drm_format_min_pitch._entry.152, ptr @igt_check_drm_format_min_pitch._entry.154, ptr @igt_check_drm_format_min_pitch._entry.156, ptr @igt_check_drm_format_min_pitch._entry.158, ptr @igt_check_drm_format_min_pitch._entry.161, ptr @igt_check_drm_format_min_pitch._entry.164, ptr @igt_check_drm_format_min_pitch._entry.167, ptr @igt_check_drm_format_min_pitch._entry.170, ptr @igt_check_drm_format_min_pitch._entry.173, ptr @igt_check_drm_format_min_pitch._entry.176, ptr @igt_check_drm_format_min_pitch._entry.179, ptr @igt_check_drm_format_min_pitch._entry.182, ptr @igt_check_drm_format_min_pitch._entry.185, ptr @igt_check_drm_format_min_pitch._entry.187, ptr @igt_check_drm_format_min_pitch._entry.189, ptr @igt_check_drm_format_min_pitch._entry.191, ptr @igt_check_drm_format_min_pitch._entry.193, ptr @igt_check_drm_format_min_pitch._entry.196, ptr @igt_check_drm_format_min_pitch._entry.199, ptr @igt_check_drm_format_min_pitch._entry.202, ptr @igt_check_drm_format_min_pitch._entry.205, ptr @igt_check_drm_format_min_pitch._entry.208, ptr @igt_check_drm_format_min_pitch._entry.211, ptr @igt_check_drm_format_min_pitch._entry.214, ptr @igt_check_drm_format_min_pitch._entry.217, ptr @igt_check_drm_format_min_pitch._entry.220, ptr @igt_check_drm_format_min_pitch._entry.222, ptr @igt_check_drm_format_min_pitch._entry.224, ptr @igt_check_drm_format_min_pitch._entry.226, ptr @igt_check_drm_format_min_pitch._entry.228, ptr @igt_check_drm_format_min_pitch._entry.231, ptr @igt_check_drm_format_min_pitch._entry.234, ptr @igt_check_drm_format_min_pitch._entry.237, ptr @igt_check_drm_format_min_pitch._entry.240, ptr @igt_check_drm_format_min_pitch._entry.243, ptr @igt_check_drm_format_min_pitch._entry.246, ptr @igt_check_drm_format_min_pitch._entry.249, ptr @igt_check_drm_format_min_pitch._entry.252, ptr @igt_check_drm_format_min_pitch._entry.255, ptr @igt_check_drm_format_min_pitch._entry.257, ptr @igt_check_drm_format_min_pitch._entry.259, ptr @igt_check_drm_format_min_pitch._entry.261, ptr @igt_check_drm_format_min_pitch._entry.263, ptr @igt_check_drm_format_min_pitch._entry.266, ptr @igt_check_drm_format_min_pitch._entry.268, ptr @igt_check_drm_format_min_pitch._entry.271, ptr @igt_check_drm_format_min_pitch._entry.273, ptr @igt_check_drm_format_min_pitch._entry.275, ptr @igt_check_drm_format_min_pitch._entry.277, ptr @igt_check_drm_format_min_pitch._entry.280, ptr @igt_check_drm_format_min_pitch._entry.282, ptr @igt_check_drm_format_min_pitch._entry.285, ptr @igt_check_drm_format_min_pitch._entry.287, ptr @igt_check_drm_format_min_pitch._entry.290, ptr @igt_check_drm_format_min_pitch._entry.292, ptr @igt_check_drm_format_min_pitch._entry.295, ptr @igt_check_drm_format_min_pitch._entry.297, ptr @igt_check_drm_format_min_pitch._entry.300, ptr @igt_check_drm_format_min_pitch._entry.302, ptr @igt_check_drm_format_min_pitch._entry.305, ptr @igt_check_drm_format_min_pitch._entry.307, ptr @igt_check_drm_format_min_pitch._entry.310, ptr @igt_check_drm_format_min_pitch._entry.312, ptr @igt_check_drm_format_min_pitch._entry.314, ptr @igt_check_drm_format_min_pitch._entry.316, ptr @igt_check_drm_format_min_pitch._entry.318, ptr @igt_check_drm_format_min_pitch._entry.320, ptr @igt_check_drm_format_min_pitch._entry.323, ptr @igt_check_drm_format_min_pitch._entry.325, ptr @igt_check_drm_format_min_pitch._entry.328, ptr @igt_check_drm_format_min_pitch._entry.331, ptr @igt_check_drm_format_min_pitch._entry.333, ptr @igt_check_drm_format_min_pitch._entry.336, ptr @igt_check_drm_format_min_pitch._entry.339, ptr @igt_check_drm_format_min_pitch._entry.341, ptr @igt_check_drm_format_min_pitch._entry.344, ptr @igt_check_drm_format_min_pitch._entry.347, ptr @igt_check_drm_format_min_pitch._entry.349, ptr @igt_check_drm_format_min_pitch._entry.352, ptr @igt_check_drm_format_min_pitch._entry.355, ptr @igt_check_drm_format_min_pitch._entry.357, ptr @igt_check_drm_format_min_pitch._entry.360, ptr @igt_check_drm_format_min_pitch._entry.363, ptr @igt_check_drm_format_min_pitch._entry.365, ptr @igt_check_drm_format_min_pitch._entry.368, ptr @igt_check_drm_format_min_pitch._entry.371, ptr @igt_check_drm_format_min_pitch._entry.373, ptr @igt_check_drm_format_min_pitch._entry.376, ptr @igt_check_drm_format_min_pitch._entry.379, ptr @igt_check_drm_format_min_pitch._entry.381, ptr @igt_check_drm_format_min_pitch._entry.384, ptr @igt_check_drm_format_min_pitch._entry.387, ptr @igt_check_drm_format_min_pitch._entry.390, ptr @igt_check_drm_format_min_pitch._entry.393, ptr @igt_check_drm_format_min_pitch._entry.396, ptr @igt_check_drm_format_min_pitch._entry.398, ptr @igt_check_drm_format_min_pitch._entry.400, ptr @igt_check_drm_format_min_pitch._entry.402, ptr @igt_check_drm_format_min_pitch._entry.404, ptr @igt_check_drm_format_min_pitch._entry.406, ptr @igt_check_drm_format_min_pitch._entry.408, ptr @igt_check_drm_format_min_pitch._entry.410, ptr @igt_check_drm_format_min_pitch._entry.412, ptr @igt_check_drm_format_min_pitch._entry.414, ptr @igt_check_drm_format_min_pitch._entry.416, ptr @igt_check_drm_format_min_pitch._entry.418, ptr @igt_check_drm_format_min_pitch._entry.420, ptr @igt_check_drm_format_min_pitch._entry_ptr, ptr @igt_check_drm_format_min_pitch._entry_ptr.110, ptr @igt_check_drm_format_min_pitch._entry_ptr.113, ptr @igt_check_drm_format_min_pitch._entry_ptr.116, ptr @igt_check_drm_format_min_pitch._entry_ptr.118, ptr @igt_check_drm_format_min_pitch._entry_ptr.120, ptr @igt_check_drm_format_min_pitch._entry_ptr.122, ptr @igt_check_drm_format_min_pitch._entry_ptr.124, ptr @igt_check_drm_format_min_pitch._entry_ptr.127, ptr @igt_check_drm_format_min_pitch._entry_ptr.130, ptr @igt_check_drm_format_min_pitch._entry_ptr.133, ptr @igt_check_drm_format_min_pitch._entry_ptr.136, ptr @igt_check_drm_format_min_pitch._entry_ptr.139, ptr @igt_check_drm_format_min_pitch._entry_ptr.142, ptr @igt_check_drm_format_min_pitch._entry_ptr.145, ptr @igt_check_drm_format_min_pitch._entry_ptr.148, ptr @igt_check_drm_format_min_pitch._entry_ptr.151, ptr @igt_check_drm_format_min_pitch._entry_ptr.153, ptr @igt_check_drm_format_min_pitch._entry_ptr.155, ptr @igt_check_drm_format_min_pitch._entry_ptr.157, ptr @igt_check_drm_format_min_pitch._entry_ptr.159, ptr @igt_check_drm_format_min_pitch._entry_ptr.162, ptr @igt_check_drm_format_min_pitch._entry_ptr.165, ptr @igt_check_drm_format_min_pitch._entry_ptr.168, ptr @igt_check_drm_format_min_pitch._entry_ptr.171, ptr @igt_check_drm_format_min_pitch._entry_ptr.174, ptr @igt_check_drm_format_min_pitch._entry_ptr.177, ptr @igt_check_drm_format_min_pitch._entry_ptr.180, ptr @igt_check_drm_format_min_pitch._entry_ptr.183, ptr @igt_check_drm_format_min_pitch._entry_ptr.186, ptr @igt_check_drm_format_min_pitch._entry_ptr.188, ptr @igt_check_drm_format_min_pitch._entry_ptr.190, ptr @igt_check_drm_format_min_pitch._entry_ptr.192, ptr @igt_check_drm_format_min_pitch._entry_ptr.194, ptr @igt_check_drm_format_min_pitch._entry_ptr.197, ptr @igt_check_drm_format_min_pitch._entry_ptr.200, ptr @igt_check_drm_format_min_pitch._entry_ptr.203, ptr @igt_check_drm_format_min_pitch._entry_ptr.206, ptr @igt_check_drm_format_min_pitch._entry_ptr.209, ptr @igt_check_drm_format_min_pitch._entry_ptr.212, ptr @igt_check_drm_format_min_pitch._entry_ptr.215, ptr @igt_check_drm_format_min_pitch._entry_ptr.218, ptr @igt_check_drm_format_min_pitch._entry_ptr.221, ptr @igt_check_drm_format_min_pitch._entry_ptr.223, ptr @igt_check_drm_format_min_pitch._entry_ptr.225, ptr @igt_check_drm_format_min_pitch._entry_ptr.227, ptr @igt_check_drm_format_min_pitch._entry_ptr.229, ptr @igt_check_drm_format_min_pitch._entry_ptr.232, ptr @igt_check_drm_format_min_pitch._entry_ptr.235, ptr @igt_check_drm_format_min_pitch._entry_ptr.238, ptr @igt_check_drm_format_min_pitch._entry_ptr.241, ptr @igt_check_drm_format_min_pitch._entry_ptr.244, ptr @igt_check_drm_format_min_pitch._entry_ptr.247, ptr @igt_check_drm_format_min_pitch._entry_ptr.250, ptr @igt_check_drm_format_min_pitch._entry_ptr.253, ptr @igt_check_drm_format_min_pitch._entry_ptr.256, ptr @igt_check_drm_format_min_pitch._entry_ptr.258, ptr @igt_check_drm_format_min_pitch._entry_ptr.260, ptr @igt_check_drm_format_min_pitch._entry_ptr.262, ptr @igt_check_drm_format_min_pitch._entry_ptr.264, ptr @igt_check_drm_format_min_pitch._entry_ptr.267, ptr @igt_check_drm_format_min_pitch._entry_ptr.269, ptr @igt_check_drm_format_min_pitch._entry_ptr.272, ptr @igt_check_drm_format_min_pitch._entry_ptr.274, ptr @igt_check_drm_format_min_pitch._entry_ptr.276, ptr @igt_check_drm_format_min_pitch._entry_ptr.278, ptr @igt_check_drm_format_min_pitch._entry_ptr.281, ptr @igt_check_drm_format_min_pitch._entry_ptr.283, ptr @igt_check_drm_format_min_pitch._entry_ptr.286, ptr @igt_check_drm_format_min_pitch._entry_ptr.288, ptr @igt_check_drm_format_min_pitch._entry_ptr.291, ptr @igt_check_drm_format_min_pitch._entry_ptr.293, ptr @igt_check_drm_format_min_pitch._entry_ptr.296, ptr @igt_check_drm_format_min_pitch._entry_ptr.298, ptr @igt_check_drm_format_min_pitch._entry_ptr.301, ptr @igt_check_drm_format_min_pitch._entry_ptr.303, ptr @igt_check_drm_format_min_pitch._entry_ptr.306, ptr @igt_check_drm_format_min_pitch._entry_ptr.308, ptr @igt_check_drm_format_min_pitch._entry_ptr.311, ptr @igt_check_drm_format_min_pitch._entry_ptr.313, ptr @igt_check_drm_format_min_pitch._entry_ptr.315, ptr @igt_check_drm_format_min_pitch._entry_ptr.317, ptr @igt_check_drm_format_min_pitch._entry_ptr.319, ptr @igt_check_drm_format_min_pitch._entry_ptr.321, ptr @igt_check_drm_format_min_pitch._entry_ptr.324, ptr @igt_check_drm_format_min_pitch._entry_ptr.326, ptr @igt_check_drm_format_min_pitch._entry_ptr.329, ptr @igt_check_drm_format_min_pitch._entry_ptr.332, ptr @igt_check_drm_format_min_pitch._entry_ptr.334, ptr @igt_check_drm_format_min_pitch._entry_ptr.337, ptr @igt_check_drm_format_min_pitch._entry_ptr.340, ptr @igt_check_drm_format_min_pitch._entry_ptr.342, ptr @igt_check_drm_format_min_pitch._entry_ptr.345, ptr @igt_check_drm_format_min_pitch._entry_ptr.348, ptr @igt_check_drm_format_min_pitch._entry_ptr.350, ptr @igt_check_drm_format_min_pitch._entry_ptr.353, ptr @igt_check_drm_format_min_pitch._entry_ptr.356, ptr @igt_check_drm_format_min_pitch._entry_ptr.358, ptr @igt_check_drm_format_min_pitch._entry_ptr.361, ptr @igt_check_drm_format_min_pitch._entry_ptr.364, ptr @igt_check_drm_format_min_pitch._entry_ptr.366, ptr @igt_check_drm_format_min_pitch._entry_ptr.369, ptr @igt_check_drm_format_min_pitch._entry_ptr.372, ptr @igt_check_drm_format_min_pitch._entry_ptr.374, ptr @igt_check_drm_format_min_pitch._entry_ptr.377, ptr @igt_check_drm_format_min_pitch._entry_ptr.380, ptr @igt_check_drm_format_min_pitch._entry_ptr.382, ptr @igt_check_drm_format_min_pitch._entry_ptr.385, ptr @igt_check_drm_format_min_pitch._entry_ptr.388, ptr @igt_check_drm_format_min_pitch._entry_ptr.391, ptr @igt_check_drm_format_min_pitch._entry_ptr.394, ptr @igt_check_drm_format_min_pitch._entry_ptr.397, ptr @igt_check_drm_format_min_pitch._entry_ptr.399, ptr @igt_check_drm_format_min_pitch._entry_ptr.401, ptr @igt_check_drm_format_min_pitch._entry_ptr.403, ptr @igt_check_drm_format_min_pitch._entry_ptr.405, ptr @igt_check_drm_format_min_pitch._entry_ptr.407, ptr @igt_check_drm_format_min_pitch._entry_ptr.409, ptr @igt_check_drm_format_min_pitch._entry_ptr.411, ptr @igt_check_drm_format_min_pitch._entry_ptr.413, ptr @igt_check_drm_format_min_pitch._entry_ptr.415, ptr @igt_check_drm_format_min_pitch._entry_ptr.417, ptr @igt_check_drm_format_min_pitch._entry_ptr.419, ptr @igt_check_drm_format_min_pitch._entry_ptr.421, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.26, ptr @.str.29, ptr @.str.40, ptr @.str.43, ptr @.str.50, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.67, ptr @.str.78, ptr @.str.81, ptr @.str.92, ptr @.str.95, ptr @.str.102, ptr @.str.107, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.245, ptr @.str.248, ptr @.str.251, ptr @.str.254, ptr @.str.265, ptr @.str.270, ptr @.str.279, ptr @.str.284, ptr @.str.289, ptr @.str.294, ptr @.str.299, ptr @.str.304, ptr @.str.309, ptr @.str.322, ptr @.str.327, ptr @.str.330, ptr @.str.335, ptr @.str.338, ptr @.str.343, ptr @.str.346, ptr @.str.351, ptr @.str.354, ptr @.str.359, ptr @.str.362, ptr @.str.367, ptr @.str.370, ptr @.str.375, ptr @.str.378, ptr @.str.383, ptr @.str.386, ptr @.str.389, ptr @.str.392, ptr @.str.395, ptr @.str.422], section "llvm.metadata"
@0 = internal global [261 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_width._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_block_height._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.360 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.363 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.381 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.387 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.402 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.412 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_format_min_pitch._entry.420 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_check_drm_format_block_width(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_format_info_block_width(ptr noundef null, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, ptr noundef nonnull @.str.3) #6
  br label %cleanup

do.body5:                                         ; preds = %entry
  %call6 = tail call i32 @drm_format_info_block_width(ptr noundef null, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %do.body17, label %do.end11

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 21, ptr noundef nonnull @.str.6) #6
  br label %cleanup

do.body17:                                        ; preds = %do.body5
  %call18 = tail call i32 @drm_format_info_block_width(ptr noundef null, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %do.end28, label %do.end23

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22, ptr noundef nonnull @.str.9) #6
  br label %cleanup

do.end28:                                         ; preds = %do.body17
  %call29 = tail call ptr @drm_format_info(i32 noundef 842093144) #3
  %tobool.not = icmp eq ptr %call29, null
  br i1 %tobool.not, label %do.end34, label %do.body40

do.end34:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 26, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body40:                                        ; preds = %do.end28
  %call41 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call29, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 1
  br i1 %cmp42.not, label %do.body52, label %do.end46

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #5
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 27, ptr noundef nonnull @.str.15) #6
  br label %cleanup

do.body52:                                        ; preds = %do.body40
  %call53 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call29, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %do.body64, label %do.end58

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #5
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 28, ptr noundef nonnull @.str.9) #6
  br label %cleanup

do.body64:                                        ; preds = %do.body52
  %call65 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call29, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66.not = icmp eq i32 %call65, 0
  br i1 %cmp66.not, label %do.end75, label %do.end70

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #5
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 29, ptr noundef nonnull @.str.6) #6
  br label %cleanup

do.end75:                                         ; preds = %do.body64
  %call76 = tail call ptr @drm_format_info(i32 noundef 842094158) #3
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %do.end82, label %do.body88

do.end82:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #5
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body88:                                        ; preds = %do.end75
  %call89 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call76, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 1
  br i1 %cmp90.not, label %do.body100, label %do.end94

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34, ptr noundef nonnull @.str.15) #6
  br label %cleanup

do.body100:                                       ; preds = %do.body88
  %call101 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call76, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call101)
  %cmp102.not = icmp eq i32 %call101, 1
  br i1 %cmp102.not, label %do.body112, label %do.end106

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #5
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 35, ptr noundef nonnull @.str.26) #6
  br label %cleanup

do.body112:                                       ; preds = %do.body100
  %call113 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call76, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114.not = icmp eq i32 %call113, 0
  br i1 %cmp114.not, label %do.body124, label %do.end118

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #5
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 36, ptr noundef nonnull @.str.29) #6
  br label %cleanup

do.body124:                                       ; preds = %do.body112
  %call125 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call76, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126.not = icmp eq i32 %call125, 0
  br i1 %cmp126.not, label %do.end135, label %do.end130

do.end130:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #5
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 37, ptr noundef nonnull @.str.6) #6
  br label %cleanup

do.end135:                                        ; preds = %do.body124
  %call136 = tail call ptr @drm_format_info(i32 noundef 909202777) #3
  %tobool138.not = icmp eq ptr %call136, null
  br i1 %tobool138.not, label %do.end142, label %do.body148

do.end142:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #5
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body148:                                       ; preds = %do.end135
  %call149 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call136, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call149)
  %cmp150.not = icmp eq i32 %call149, 1
  br i1 %cmp150.not, label %do.body160, label %do.end154

do.end154:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #5
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, ptr noundef nonnull @.str.15) #6
  br label %cleanup

do.body160:                                       ; preds = %do.body148
  %call161 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call136, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call161)
  %cmp162.not = icmp eq i32 %call161, 1
  br i1 %cmp162.not, label %do.body172, label %do.end166

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #5
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @.str.26) #6
  br label %cleanup

do.body172:                                       ; preds = %do.body160
  %call173 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call136, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call173)
  %cmp174.not = icmp eq i32 %call173, 1
  br i1 %cmp174.not, label %do.body184, label %do.end178

do.end178:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #5
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, ptr noundef nonnull @.str.40) #6
  br label %cleanup

do.body184:                                       ; preds = %do.body172
  %call185 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call136, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186.not = icmp eq i32 %call185, 0
  br i1 %cmp186.not, label %do.body196, label %do.end190

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #5
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.43) #6
  br label %cleanup

do.body196:                                       ; preds = %do.body184
  %call197 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call136, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198.not = icmp eq i32 %call197, 0
  br i1 %cmp198.not, label %do.end207, label %do.end202

do.end202:                                        ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #5
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef nonnull @.str.6) #6
  br label %cleanup

do.end207:                                        ; preds = %do.body196
  %call208 = tail call ptr @drm_format_info(i32 noundef 810299480) #3
  %tobool210.not = icmp eq ptr %call208, null
  br i1 %tobool210.not, label %do.end214, label %do.body220

do.end214:                                        ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #5
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 50, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body220:                                       ; preds = %do.end207
  %call221 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call208, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call221)
  %cmp222.not = icmp eq i32 %call221, 2
  br i1 %cmp222.not, label %do.body232, label %do.end226

do.end226:                                        ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #5
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51, ptr noundef nonnull @.str.50) #6
  br label %cleanup

do.body232:                                       ; preds = %do.body220
  %call233 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call208, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234.not = icmp eq i32 %call233, 0
  br i1 %cmp234.not, label %do.body244, label %do.end238

do.end238:                                        ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #5
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 52, ptr noundef nonnull @.str.9) #6
  br label %cleanup

do.body244:                                       ; preds = %do.body232
  %call245 = tail call i32 @drm_format_info_block_width(ptr noundef nonnull %call208, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246.not = icmp eq i32 %call245, 0
  br i1 %cmp246.not, label %do.body244.cleanup_crit_edge, label %do.end250

do.body244.cleanup_crit_edge:                     ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end250:                                        ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #5
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @.str.6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end250, %do.body244.cleanup_crit_edge, %do.end238, %do.end226, %do.end214, %do.end202, %do.end190, %do.end178, %do.end166, %do.end154, %do.end142, %do.end130, %do.end118, %do.end106, %do.end94, %do.end82, %do.end70, %do.end58, %do.end46, %do.end34, %do.end23, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end23 ], [ -22, %do.end46 ], [ -22, %do.end58 ], [ -22, %do.end70 ], [ -22, %do.end94 ], [ -22, %do.end106 ], [ -22, %do.end118 ], [ -22, %do.end130 ], [ -22, %do.end154 ], [ -22, %do.end166 ], [ -22, %do.end178 ], [ -22, %do.end190 ], [ -22, %do.end202 ], [ -22, %do.end226 ], [ -22, %do.end238 ], [ -22, %do.end250 ], [ -22, %do.end214 ], [ -22, %do.end142 ], [ -22, %do.end82 ], [ -22, %do.end34 ], [ 0, %do.body244.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_width(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_check_drm_format_block_height(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_format_info_block_height(ptr noundef null, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 63, ptr noundef nonnull @.str.56) #6
  br label %cleanup

do.body5:                                         ; preds = %entry
  %call6 = tail call i32 @drm_format_info_block_height(ptr noundef null, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %do.body17, label %do.end11

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 64, ptr noundef nonnull @.str.59) #6
  br label %cleanup

do.body17:                                        ; preds = %do.body5
  %call18 = tail call i32 @drm_format_info_block_height(ptr noundef null, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %do.end28, label %do.end23

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 65, ptr noundef nonnull @.str.62) #6
  br label %cleanup

do.end28:                                         ; preds = %do.body17
  %call29 = tail call ptr @drm_format_info(i32 noundef 842093144) #3
  %tobool.not = icmp eq ptr %call29, null
  br i1 %tobool.not, label %do.end34, label %do.body40

do.end34:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 69, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body40:                                        ; preds = %do.end28
  %call41 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call29, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 1
  br i1 %cmp42.not, label %do.body52, label %do.end46

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #5
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 70, ptr noundef nonnull @.str.67) #6
  br label %cleanup

do.body52:                                        ; preds = %do.body40
  %call53 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call29, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %do.body64, label %do.end58

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #5
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 71, ptr noundef nonnull @.str.62) #6
  br label %cleanup

do.body64:                                        ; preds = %do.body52
  %call65 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call29, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66.not = icmp eq i32 %call65, 0
  br i1 %cmp66.not, label %do.end75, label %do.end70

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #5
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 72, ptr noundef nonnull @.str.59) #6
  br label %cleanup

do.end75:                                         ; preds = %do.body64
  %call76 = tail call ptr @drm_format_info(i32 noundef 842094158) #3
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %do.end82, label %do.body88

do.end82:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #5
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 76, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body88:                                        ; preds = %do.end75
  %call89 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call76, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 1
  br i1 %cmp90.not, label %do.body100, label %do.end94

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 77, ptr noundef nonnull @.str.67) #6
  br label %cleanup

do.body100:                                       ; preds = %do.body88
  %call101 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call76, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call101)
  %cmp102.not = icmp eq i32 %call101, 1
  br i1 %cmp102.not, label %do.body112, label %do.end106

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #5
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 78, ptr noundef nonnull @.str.78) #6
  br label %cleanup

do.body112:                                       ; preds = %do.body100
  %call113 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call76, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114.not = icmp eq i32 %call113, 0
  br i1 %cmp114.not, label %do.body124, label %do.end118

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #5
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 79, ptr noundef nonnull @.str.81) #6
  br label %cleanup

do.body124:                                       ; preds = %do.body112
  %call125 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call76, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126.not = icmp eq i32 %call125, 0
  br i1 %cmp126.not, label %do.end135, label %do.end130

do.end130:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #5
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 80, ptr noundef nonnull @.str.59) #6
  br label %cleanup

do.end135:                                        ; preds = %do.body124
  %call136 = tail call ptr @drm_format_info(i32 noundef 909202777) #3
  %tobool138.not = icmp eq ptr %call136, null
  br i1 %tobool138.not, label %do.end142, label %do.body148

do.end142:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #5
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 84, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body148:                                       ; preds = %do.end135
  %call149 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call136, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call149)
  %cmp150.not = icmp eq i32 %call149, 1
  br i1 %cmp150.not, label %do.body160, label %do.end154

do.end154:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #5
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 85, ptr noundef nonnull @.str.67) #6
  br label %cleanup

do.body160:                                       ; preds = %do.body148
  %call161 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call136, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call161)
  %cmp162.not = icmp eq i32 %call161, 1
  br i1 %cmp162.not, label %do.body172, label %do.end166

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #5
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 86, ptr noundef nonnull @.str.78) #6
  br label %cleanup

do.body172:                                       ; preds = %do.body160
  %call173 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call136, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call173)
  %cmp174.not = icmp eq i32 %call173, 1
  br i1 %cmp174.not, label %do.body184, label %do.end178

do.end178:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #5
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 87, ptr noundef nonnull @.str.92) #6
  br label %cleanup

do.body184:                                       ; preds = %do.body172
  %call185 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call136, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186.not = icmp eq i32 %call185, 0
  br i1 %cmp186.not, label %do.body196, label %do.end190

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #5
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 88, ptr noundef nonnull @.str.95) #6
  br label %cleanup

do.body196:                                       ; preds = %do.body184
  %call197 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call136, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198.not = icmp eq i32 %call197, 0
  br i1 %cmp198.not, label %do.end207, label %do.end202

do.end202:                                        ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #5
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 89, ptr noundef nonnull @.str.59) #6
  br label %cleanup

do.end207:                                        ; preds = %do.body196
  %call208 = tail call ptr @drm_format_info(i32 noundef 810299480) #3
  %tobool210.not = icmp eq ptr %call208, null
  br i1 %tobool210.not, label %do.end214, label %do.body220

do.end214:                                        ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #5
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 93, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body220:                                       ; preds = %do.end207
  %call221 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call208, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call221)
  %cmp222.not = icmp eq i32 %call221, 2
  br i1 %cmp222.not, label %do.body232, label %do.end226

do.end226:                                        ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #5
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 94, ptr noundef nonnull @.str.102) #6
  br label %cleanup

do.body232:                                       ; preds = %do.body220
  %call233 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call208, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234.not = icmp eq i32 %call233, 0
  br i1 %cmp234.not, label %do.body244, label %do.end238

do.end238:                                        ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #5
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 95, ptr noundef nonnull @.str.62) #6
  br label %cleanup

do.body244:                                       ; preds = %do.body232
  %call245 = tail call i32 @drm_format_info_block_height(ptr noundef nonnull %call208, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246.not = icmp eq i32 %call245, 0
  br i1 %cmp246.not, label %do.body244.cleanup_crit_edge, label %do.end250

do.body244.cleanup_crit_edge:                     ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end250:                                        ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #5
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef 96, ptr noundef nonnull @.str.59) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end250, %do.body244.cleanup_crit_edge, %do.end238, %do.end226, %do.end214, %do.end202, %do.end190, %do.end178, %do.end166, %do.end154, %do.end142, %do.end130, %do.end118, %do.end106, %do.end94, %do.end82, %do.end70, %do.end58, %do.end46, %do.end34, %do.end23, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end23 ], [ -22, %do.end46 ], [ -22, %do.end58 ], [ -22, %do.end70 ], [ -22, %do.end94 ], [ -22, %do.end106 ], [ -22, %do.end118 ], [ -22, %do.end130 ], [ -22, %do.end154 ], [ -22, %do.end166 ], [ -22, %do.end178 ], [ -22, %do.end190 ], [ -22, %do.end202 ], [ -22, %do.end226 ], [ -22, %do.end238 ], [ -22, %do.end250 ], [ -22, %do.end214 ], [ -22, %do.end142 ], [ -22, %do.end82 ], [ -22, %do.end34 ], [ 0, %do.body244.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_height(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_check_drm_format_min_pitch(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @drm_format_info_min_pitch(ptr noundef null, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 106, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body5:                                         ; preds = %entry
  %call6 = tail call i64 @drm_format_info_min_pitch(ptr noundef null, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6)
  %cmp7.not = icmp eq i64 %call6, 0
  br i1 %cmp7.not, label %do.body17, label %do.end11

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 107, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body17:                                        ; preds = %do.body5
  %call18 = tail call i64 @drm_format_info_min_pitch(ptr noundef null, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call18)
  %cmp19.not = icmp eq i64 %call18, 0
  br i1 %cmp19.not, label %do.end28, label %do.end23

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 108, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.end28:                                         ; preds = %do.body17
  %call29 = tail call ptr @drm_format_info(i32 noundef 943867730) #3
  %tobool.not = icmp eq ptr %call29, null
  br i1 %tobool.not, label %do.end34, label %do.body40

do.end34:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 112, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body40:                                        ; preds = %do.end28
  %call41 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call41)
  %cmp42.not = icmp eq i64 %call41, 0
  br i1 %cmp42.not, label %do.body52, label %do.end46

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #5
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 113, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body52:                                        ; preds = %do.body40
  %call53 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call53)
  %cmp54.not = icmp eq i64 %call53, 0
  br i1 %cmp54.not, label %do.body64, label %do.end58

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #5
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 114, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body64:                                        ; preds = %do.body52
  %call65 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call65)
  %cmp66.not = icmp eq i64 %call65, 0
  br i1 %cmp66.not, label %do.body76, label %do.end70

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #5
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 115, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.body76:                                        ; preds = %do.body64
  %call77 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call77)
  %cmp78.not = icmp eq i64 %call77, 1
  br i1 %cmp78.not, label %do.body88, label %do.end82

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #5
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 117, ptr noundef nonnull @.str.125) #6
  br label %cleanup

do.body88:                                        ; preds = %do.body76
  %call89 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call89)
  %cmp90.not = icmp eq i64 %call89, 2
  br i1 %cmp90.not, label %do.body100, label %do.end94

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 118, ptr noundef nonnull @.str.128) #6
  br label %cleanup

do.body100:                                       ; preds = %do.body88
  %call101 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 640) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 640, i64 %call101)
  %cmp102.not = icmp eq i64 %call101, 640
  br i1 %cmp102.not, label %do.body112, label %do.end106

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #5
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 119, ptr noundef nonnull @.str.131) #6
  br label %cleanup

do.body112:                                       ; preds = %do.body100
  %call113 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %call113)
  %cmp114.not = icmp eq i64 %call113, 1024
  br i1 %cmp114.not, label %do.body124, label %do.end118

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #5
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 120, ptr noundef nonnull @.str.134) #6
  br label %cleanup

do.body124:                                       ; preds = %do.body112
  %call125 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 1920) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1920, i64 %call125)
  %cmp126.not = icmp eq i64 %call125, 1920
  br i1 %cmp126.not, label %do.body136, label %do.end130

do.end130:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #5
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 121, ptr noundef nonnull @.str.137) #6
  br label %cleanup

do.body136:                                       ; preds = %do.body124
  %call137 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 4096) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call137)
  %cmp138.not = icmp eq i64 %call137, 4096
  br i1 %cmp138.not, label %do.body148, label %do.end142

do.end142:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #5
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 122, ptr noundef nonnull @.str.140) #6
  br label %cleanup

do.body148:                                       ; preds = %do.body136
  %call149 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 671) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 671, i64 %call149)
  %cmp150.not = icmp eq i64 %call149, 671
  br i1 %cmp150.not, label %do.body160, label %do.end154

do.end154:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #5
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 123, ptr noundef nonnull @.str.143) #6
  br label %cleanup

do.body160:                                       ; preds = %do.body148
  %call161 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call161)
  %cmp162.not = icmp eq i64 %call161, 4294967295
  br i1 %cmp162.not, label %do.body172, label %do.end166

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #5
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 125, ptr noundef nonnull @.str.146) #6
  br label %cleanup

do.body172:                                       ; preds = %do.body160
  %call173 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef -2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %call173)
  %cmp174.not = icmp eq i64 %call173, 4294967294
  br i1 %cmp174.not, label %do.end183, label %do.end178

do.end178:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #5
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 127, ptr noundef nonnull @.str.149) #6
  br label %cleanup

do.end183:                                        ; preds = %do.body172
  %call184 = tail call ptr @drm_format_info(i32 noundef 842093144) #3
  %tobool186.not = icmp eq ptr %call184, null
  br i1 %tobool186.not, label %do.end190, label %do.body196

do.end190:                                        ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #5
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 131, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body196:                                       ; preds = %do.end183
  %call197 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call197)
  %cmp198.not = icmp eq i64 %call197, 0
  br i1 %cmp198.not, label %do.body208, label %do.end202

do.end202:                                        ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #5
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 132, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body208:                                       ; preds = %do.body196
  %call209 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call209)
  %cmp210.not = icmp eq i64 %call209, 0
  br i1 %cmp210.not, label %do.body220, label %do.end214

do.end214:                                        ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #5
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 133, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body220:                                       ; preds = %do.body208
  %call221 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call221)
  %cmp222.not = icmp eq i64 %call221, 0
  br i1 %cmp222.not, label %do.body232, label %do.end226

do.end226:                                        ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #5
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 134, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.body232:                                       ; preds = %do.body220
  %call233 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call233)
  %cmp234.not = icmp eq i64 %call233, 2
  br i1 %cmp234.not, label %do.body244, label %do.end238

do.end238:                                        ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #5
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 136, ptr noundef nonnull @.str.160) #6
  br label %cleanup

do.body244:                                       ; preds = %do.body232
  %call245 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %call245)
  %cmp246.not = icmp eq i64 %call245, 4
  br i1 %cmp246.not, label %do.body256, label %do.end250

do.end250:                                        ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #5
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 137, ptr noundef nonnull @.str.163) #6
  br label %cleanup

do.body256:                                       ; preds = %do.body244
  %call257 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 640) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1280, i64 %call257)
  %cmp258.not = icmp eq i64 %call257, 1280
  br i1 %cmp258.not, label %do.body268, label %do.end262

do.end262:                                        ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #5
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 138, ptr noundef nonnull @.str.166) #6
  br label %cleanup

do.body268:                                       ; preds = %do.body256
  %call269 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %call269)
  %cmp270.not = icmp eq i64 %call269, 2048
  br i1 %cmp270.not, label %do.body280, label %do.end274

do.end274:                                        ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #5
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 139, ptr noundef nonnull @.str.169) #6
  br label %cleanup

do.body280:                                       ; preds = %do.body268
  %call281 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 1920) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3840, i64 %call281)
  %cmp282.not = icmp eq i64 %call281, 3840
  br i1 %cmp282.not, label %do.body292, label %do.end286

do.end286:                                        ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #5
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 140, ptr noundef nonnull @.str.172) #6
  br label %cleanup

do.body292:                                       ; preds = %do.body280
  %call293 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 4096) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %call293)
  %cmp294.not = icmp eq i64 %call293, 8192
  br i1 %cmp294.not, label %do.body304, label %do.end298

do.end298:                                        ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #5
  %call300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 141, ptr noundef nonnull @.str.175) #6
  br label %cleanup

do.body304:                                       ; preds = %do.body292
  %call305 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef 671) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1342, i64 %call305)
  %cmp306.not = icmp eq i64 %call305, 1342
  br i1 %cmp306.not, label %do.body316, label %do.end310

do.end310:                                        ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #5
  %call312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 142, ptr noundef nonnull @.str.178) #6
  br label %cleanup

do.body316:                                       ; preds = %do.body304
  %call317 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934590, i64 %call317)
  %cmp318.not = icmp eq i64 %call317, 8589934590
  br i1 %cmp318.not, label %do.body328, label %do.end322

do.end322:                                        ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #5
  %call324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 144, ptr noundef nonnull @.str.181) #6
  br label %cleanup

do.body328:                                       ; preds = %do.body316
  %call329 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call184, i32 noundef 0, i32 noundef -2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934588, i64 %call329)
  %cmp330.not = icmp eq i64 %call329, 8589934588
  br i1 %cmp330.not, label %do.end339, label %do.end334

do.end334:                                        ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #5
  %call336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 146, ptr noundef nonnull @.str.184) #6
  br label %cleanup

do.end339:                                        ; preds = %do.body328
  %call340 = tail call ptr @drm_format_info(i32 noundef 875710290) #3
  %tobool342.not = icmp eq ptr %call340, null
  br i1 %tobool342.not, label %do.end346, label %do.body352

do.end346:                                        ; preds = %do.end339
  call void @__sanitizer_cov_trace_pc() #5
  %call348 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 150, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body352:                                       ; preds = %do.end339
  %call353 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call353)
  %cmp354.not = icmp eq i64 %call353, 0
  br i1 %cmp354.not, label %do.body364, label %do.end358

do.end358:                                        ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #5
  %call360 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 151, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body364:                                       ; preds = %do.body352
  %call365 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call365)
  %cmp366.not = icmp eq i64 %call365, 0
  br i1 %cmp366.not, label %do.body376, label %do.end370

do.end370:                                        ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #5
  %call372 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 152, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body376:                                       ; preds = %do.body364
  %call377 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call377)
  %cmp378.not = icmp eq i64 %call377, 0
  br i1 %cmp378.not, label %do.body388, label %do.end382

do.end382:                                        ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #5
  %call384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 153, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.body388:                                       ; preds = %do.body376
  %call389 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %call389)
  %cmp390.not = icmp eq i64 %call389, 3
  br i1 %cmp390.not, label %do.body400, label %do.end394

do.end394:                                        ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #5
  %call396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 155, ptr noundef nonnull @.str.195) #6
  br label %cleanup

do.body400:                                       ; preds = %do.body388
  %call401 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %call401)
  %cmp402.not = icmp eq i64 %call401, 6
  br i1 %cmp402.not, label %do.body412, label %do.end406

do.end406:                                        ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #5
  %call408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 156, ptr noundef nonnull @.str.198) #6
  br label %cleanup

do.body412:                                       ; preds = %do.body400
  %call413 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 640) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1920, i64 %call413)
  %cmp414.not = icmp eq i64 %call413, 1920
  br i1 %cmp414.not, label %do.body424, label %do.end418

do.end418:                                        ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #5
  %call420 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 157, ptr noundef nonnull @.str.201) #6
  br label %cleanup

do.body424:                                       ; preds = %do.body412
  %call425 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3072, i64 %call425)
  %cmp426.not = icmp eq i64 %call425, 3072
  br i1 %cmp426.not, label %do.body436, label %do.end430

do.end430:                                        ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #5
  %call432 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 158, ptr noundef nonnull @.str.204) #6
  br label %cleanup

do.body436:                                       ; preds = %do.body424
  %call437 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 1920) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 5760, i64 %call437)
  %cmp438.not = icmp eq i64 %call437, 5760
  br i1 %cmp438.not, label %do.body448, label %do.end442

do.end442:                                        ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #5
  %call444 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 159, ptr noundef nonnull @.str.207) #6
  br label %cleanup

do.body448:                                       ; preds = %do.body436
  %call449 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 4096) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 12288, i64 %call449)
  %cmp450.not = icmp eq i64 %call449, 12288
  br i1 %cmp450.not, label %do.body460, label %do.end454

do.end454:                                        ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #5
  %call456 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 160, ptr noundef nonnull @.str.210) #6
  br label %cleanup

do.body460:                                       ; preds = %do.body448
  %call461 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef 671) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2013, i64 %call461)
  %cmp462.not = icmp eq i64 %call461, 2013
  br i1 %cmp462.not, label %do.body472, label %do.end466

do.end466:                                        ; preds = %do.body460
  call void @__sanitizer_cov_trace_pc() #5
  %call468 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 161, ptr noundef nonnull @.str.213) #6
  br label %cleanup

do.body472:                                       ; preds = %do.body460
  %call473 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901885, i64 %call473)
  %cmp474.not = icmp eq i64 %call473, 12884901885
  br i1 %cmp474.not, label %do.body484, label %do.end478

do.end478:                                        ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #5
  %call480 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 163, ptr noundef nonnull @.str.216) #6
  br label %cleanup

do.body484:                                       ; preds = %do.body472
  %call485 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call340, i32 noundef 0, i32 noundef -2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901882, i64 %call485)
  %cmp486.not = icmp eq i64 %call485, 12884901882
  br i1 %cmp486.not, label %do.end495, label %do.end490

do.end490:                                        ; preds = %do.body484
  call void @__sanitizer_cov_trace_pc() #5
  %call492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 165, ptr noundef nonnull @.str.219) #6
  br label %cleanup

do.end495:                                        ; preds = %do.body484
  %call496 = tail call ptr @drm_format_info(i32 noundef 875708993) #3
  %tobool498.not = icmp eq ptr %call496, null
  br i1 %tobool498.not, label %do.end502, label %do.body508

do.end502:                                        ; preds = %do.end495
  call void @__sanitizer_cov_trace_pc() #5
  %call504 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 169, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body508:                                       ; preds = %do.end495
  %call509 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call509)
  %cmp510.not = icmp eq i64 %call509, 0
  br i1 %cmp510.not, label %do.body520, label %do.end514

do.end514:                                        ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #5
  %call516 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 170, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body520:                                       ; preds = %do.body508
  %call521 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call521)
  %cmp522.not = icmp eq i64 %call521, 0
  br i1 %cmp522.not, label %do.body532, label %do.end526

do.end526:                                        ; preds = %do.body520
  call void @__sanitizer_cov_trace_pc() #5
  %call528 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 171, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body532:                                       ; preds = %do.body520
  %call533 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call533)
  %cmp534.not = icmp eq i64 %call533, 0
  br i1 %cmp534.not, label %do.body544, label %do.end538

do.end538:                                        ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #5
  %call540 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 172, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.body544:                                       ; preds = %do.body532
  %call545 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %call545)
  %cmp546.not = icmp eq i64 %call545, 4
  br i1 %cmp546.not, label %do.body556, label %do.end550

do.end550:                                        ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #5
  %call552 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 174, ptr noundef nonnull @.str.230) #6
  br label %cleanup

do.body556:                                       ; preds = %do.body544
  %call557 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %call557)
  %cmp558.not = icmp eq i64 %call557, 8
  br i1 %cmp558.not, label %do.body568, label %do.end562

do.end562:                                        ; preds = %do.body556
  call void @__sanitizer_cov_trace_pc() #5
  %call564 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 175, ptr noundef nonnull @.str.233) #6
  br label %cleanup

do.body568:                                       ; preds = %do.body556
  %call569 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 640) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2560, i64 %call569)
  %cmp570.not = icmp eq i64 %call569, 2560
  br i1 %cmp570.not, label %do.body580, label %do.end574

do.end574:                                        ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #5
  %call576 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 176, ptr noundef nonnull @.str.236) #6
  br label %cleanup

do.body580:                                       ; preds = %do.body568
  %call581 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call581)
  %cmp582.not = icmp eq i64 %call581, 4096
  br i1 %cmp582.not, label %do.body592, label %do.end586

do.end586:                                        ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #5
  %call588 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 177, ptr noundef nonnull @.str.239) #6
  br label %cleanup

do.body592:                                       ; preds = %do.body580
  %call593 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 1920) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 7680, i64 %call593)
  %cmp594.not = icmp eq i64 %call593, 7680
  br i1 %cmp594.not, label %do.body604, label %do.end598

do.end598:                                        ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #5
  %call600 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 178, ptr noundef nonnull @.str.242) #6
  br label %cleanup

do.body604:                                       ; preds = %do.body592
  %call605 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 4096) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 16384, i64 %call605)
  %cmp606.not = icmp eq i64 %call605, 16384
  br i1 %cmp606.not, label %do.body616, label %do.end610

do.end610:                                        ; preds = %do.body604
  call void @__sanitizer_cov_trace_pc() #5
  %call612 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 179, ptr noundef nonnull @.str.245) #6
  br label %cleanup

do.body616:                                       ; preds = %do.body604
  %call617 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef 671) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2684, i64 %call617)
  %cmp618.not = icmp eq i64 %call617, 2684
  br i1 %cmp618.not, label %do.body628, label %do.end622

do.end622:                                        ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #5
  %call624 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 180, ptr noundef nonnull @.str.248) #6
  br label %cleanup

do.body628:                                       ; preds = %do.body616
  %call629 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869180, i64 %call629)
  %cmp630.not = icmp eq i64 %call629, 17179869180
  br i1 %cmp630.not, label %do.body640, label %do.end634

do.end634:                                        ; preds = %do.body628
  call void @__sanitizer_cov_trace_pc() #5
  %call636 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 182, ptr noundef nonnull @.str.251) #6
  br label %cleanup

do.body640:                                       ; preds = %do.body628
  %call641 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call496, i32 noundef 0, i32 noundef -2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869176, i64 %call641)
  %cmp642.not = icmp eq i64 %call641, 17179869176
  br i1 %cmp642.not, label %do.end651, label %do.end646

do.end646:                                        ; preds = %do.body640
  call void @__sanitizer_cov_trace_pc() #5
  %call648 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 184, ptr noundef nonnull @.str.254) #6
  br label %cleanup

do.end651:                                        ; preds = %do.body640
  %call652 = tail call ptr @drm_format_info(i32 noundef 842094158) #3
  %tobool654.not = icmp eq ptr %call652, null
  br i1 %tobool654.not, label %do.end658, label %do.body664

do.end658:                                        ; preds = %do.end651
  call void @__sanitizer_cov_trace_pc() #5
  %call660 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 188, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body664:                                       ; preds = %do.end651
  %call665 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call665)
  %cmp666.not = icmp eq i64 %call665, 0
  br i1 %cmp666.not, label %do.body676, label %do.end670

do.end670:                                        ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #5
  %call672 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 189, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body676:                                       ; preds = %do.body664
  %call677 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call677)
  %cmp678.not = icmp eq i64 %call677, 0
  br i1 %cmp678.not, label %do.body688, label %do.end682

do.end682:                                        ; preds = %do.body676
  call void @__sanitizer_cov_trace_pc() #5
  %call684 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 190, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.body688:                                       ; preds = %do.body676
  %call689 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call689)
  %cmp690.not = icmp eq i64 %call689, 0
  br i1 %cmp690.not, label %do.body700, label %do.end694

do.end694:                                        ; preds = %do.body688
  call void @__sanitizer_cov_trace_pc() #5
  %call696 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 191, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body700:                                       ; preds = %do.body688
  %call701 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 2, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call701)
  %cmp702.not = icmp eq i64 %call701, 0
  br i1 %cmp702.not, label %do.body712, label %do.end706

do.end706:                                        ; preds = %do.body700
  call void @__sanitizer_cov_trace_pc() #5
  %call708 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 192, ptr noundef nonnull @.str.265) #6
  br label %cleanup

do.body712:                                       ; preds = %do.body700
  %call713 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call713)
  %cmp714.not = icmp eq i64 %call713, 1
  br i1 %cmp714.not, label %do.body724, label %do.end718

do.end718:                                        ; preds = %do.body712
  call void @__sanitizer_cov_trace_pc() #5
  %call720 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 194, ptr noundef nonnull @.str.125) #6
  br label %cleanup

do.body724:                                       ; preds = %do.body712
  %call725 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call725)
  %cmp726.not = icmp eq i64 %call725, 2
  br i1 %cmp726.not, label %do.body736, label %do.end730

do.end730:                                        ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #5
  %call732 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 195, ptr noundef nonnull @.str.270) #6
  br label %cleanup

do.body736:                                       ; preds = %do.body724
  %call737 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call737)
  %cmp738.not = icmp eq i64 %call737, 2
  br i1 %cmp738.not, label %do.body748, label %do.end742

do.end742:                                        ; preds = %do.body736
  call void @__sanitizer_cov_trace_pc() #5
  %call744 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 196, ptr noundef nonnull @.str.128) #6
  br label %cleanup

do.body748:                                       ; preds = %do.body736
  %call749 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call749)
  %cmp750.not = icmp eq i64 %call749, 2
  br i1 %cmp750.not, label %do.body760, label %do.end754

do.end754:                                        ; preds = %do.body748
  call void @__sanitizer_cov_trace_pc() #5
  %call756 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 197, ptr noundef nonnull @.str.270) #6
  br label %cleanup

do.body760:                                       ; preds = %do.body748
  %call761 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 640) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 640, i64 %call761)
  %cmp762.not = icmp eq i64 %call761, 640
  br i1 %cmp762.not, label %do.body772, label %do.end766

do.end766:                                        ; preds = %do.body760
  call void @__sanitizer_cov_trace_pc() #5
  %call768 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 198, ptr noundef nonnull @.str.131) #6
  br label %cleanup

do.body772:                                       ; preds = %do.body760
  %call773 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 320) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 640, i64 %call773)
  %cmp774.not = icmp eq i64 %call773, 640
  br i1 %cmp774.not, label %do.body784, label %do.end778

do.end778:                                        ; preds = %do.body772
  call void @__sanitizer_cov_trace_pc() #5
  %call780 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 199, ptr noundef nonnull @.str.279) #6
  br label %cleanup

do.body784:                                       ; preds = %do.body772
  %call785 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %call785)
  %cmp786.not = icmp eq i64 %call785, 1024
  br i1 %cmp786.not, label %do.body796, label %do.end790

do.end790:                                        ; preds = %do.body784
  call void @__sanitizer_cov_trace_pc() #5
  %call792 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 200, ptr noundef nonnull @.str.134) #6
  br label %cleanup

do.body796:                                       ; preds = %do.body784
  %call797 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 512) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %call797)
  %cmp798.not = icmp eq i64 %call797, 1024
  br i1 %cmp798.not, label %do.body808, label %do.end802

do.end802:                                        ; preds = %do.body796
  call void @__sanitizer_cov_trace_pc() #5
  %call804 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 201, ptr noundef nonnull @.str.284) #6
  br label %cleanup

do.body808:                                       ; preds = %do.body796
  %call809 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 1920) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1920, i64 %call809)
  %cmp810.not = icmp eq i64 %call809, 1920
  br i1 %cmp810.not, label %do.body820, label %do.end814

do.end814:                                        ; preds = %do.body808
  call void @__sanitizer_cov_trace_pc() #5
  %call816 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 202, ptr noundef nonnull @.str.137) #6
  br label %cleanup

do.body820:                                       ; preds = %do.body808
  %call821 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 960) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1920, i64 %call821)
  %cmp822.not = icmp eq i64 %call821, 1920
  br i1 %cmp822.not, label %do.body832, label %do.end826

do.end826:                                        ; preds = %do.body820
  call void @__sanitizer_cov_trace_pc() #5
  %call828 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 203, ptr noundef nonnull @.str.289) #6
  br label %cleanup

do.body832:                                       ; preds = %do.body820
  %call833 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 4096) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call833)
  %cmp834.not = icmp eq i64 %call833, 4096
  br i1 %cmp834.not, label %do.body844, label %do.end838

do.end838:                                        ; preds = %do.body832
  call void @__sanitizer_cov_trace_pc() #5
  %call840 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 204, ptr noundef nonnull @.str.140) #6
  br label %cleanup

do.body844:                                       ; preds = %do.body832
  %call845 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 2048) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call845)
  %cmp846.not = icmp eq i64 %call845, 4096
  br i1 %cmp846.not, label %do.body856, label %do.end850

do.end850:                                        ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #5
  %call852 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 205, ptr noundef nonnull @.str.294) #6
  br label %cleanup

do.body856:                                       ; preds = %do.body844
  %call857 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef 671) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 671, i64 %call857)
  %cmp858.not = icmp eq i64 %call857, 671
  br i1 %cmp858.not, label %do.body868, label %do.end862

do.end862:                                        ; preds = %do.body856
  call void @__sanitizer_cov_trace_pc() #5
  %call864 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 206, ptr noundef nonnull @.str.143) #6
  br label %cleanup

do.body868:                                       ; preds = %do.body856
  %call869 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 336) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 672, i64 %call869)
  %cmp870.not = icmp eq i64 %call869, 672
  br i1 %cmp870.not, label %do.body880, label %do.end874

do.end874:                                        ; preds = %do.body868
  call void @__sanitizer_cov_trace_pc() #5
  %call876 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 207, ptr noundef nonnull @.str.299) #6
  br label %cleanup

do.body880:                                       ; preds = %do.body868
  %call881 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call881)
  %cmp882.not = icmp eq i64 %call881, 4294967295
  br i1 %cmp882.not, label %do.body892, label %do.end886

do.end886:                                        ; preds = %do.body880
  call void @__sanitizer_cov_trace_pc() #5
  %call888 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 209, ptr noundef nonnull @.str.146) #6
  br label %cleanup

do.body892:                                       ; preds = %do.body880
  %call893 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef -2147483648) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call893)
  %cmp894.not = icmp eq i64 %call893, 4294967296
  br i1 %cmp894.not, label %do.body904, label %do.end898

do.end898:                                        ; preds = %do.body892
  call void @__sanitizer_cov_trace_pc() #5
  %call900 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 211, ptr noundef nonnull @.str.304) #6
  br label %cleanup

do.body904:                                       ; preds = %do.body892
  %call905 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 0, i32 noundef -2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %call905)
  %cmp906.not = icmp eq i64 %call905, 4294967294
  br i1 %cmp906.not, label %do.body916, label %do.end910

do.end910:                                        ; preds = %do.body904
  call void @__sanitizer_cov_trace_pc() #5
  %call912 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 213, ptr noundef nonnull @.str.149) #6
  br label %cleanup

do.body916:                                       ; preds = %do.body904
  %call917 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call652, i32 noundef 1, i32 noundef 2147483647) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %call917)
  %cmp918.not = icmp eq i64 %call917, 4294967294
  br i1 %cmp918.not, label %do.end927, label %do.end922

do.end922:                                        ; preds = %do.body916
  call void @__sanitizer_cov_trace_pc() #5
  %call924 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 215, ptr noundef nonnull @.str.309) #6
  br label %cleanup

do.end927:                                        ; preds = %do.body916
  %call928 = tail call ptr @drm_format_info(i32 noundef 909202777) #3
  %tobool930.not = icmp eq ptr %call928, null
  br i1 %tobool930.not, label %do.end934, label %do.body940

do.end934:                                        ; preds = %do.end927
  call void @__sanitizer_cov_trace_pc() #5
  %call936 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 219, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body940:                                       ; preds = %do.end927
  %call941 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call941)
  %cmp942.not = icmp eq i64 %call941, 0
  br i1 %cmp942.not, label %do.body952, label %do.end946

do.end946:                                        ; preds = %do.body940
  call void @__sanitizer_cov_trace_pc() #5
  %call948 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 220, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body952:                                       ; preds = %do.body940
  %call953 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call953)
  %cmp954.not = icmp eq i64 %call953, 0
  br i1 %cmp954.not, label %do.body964, label %do.end958

do.end958:                                        ; preds = %do.body952
  call void @__sanitizer_cov_trace_pc() #5
  %call960 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 221, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.body964:                                       ; preds = %do.body952
  %call965 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call965)
  %cmp966.not = icmp eq i64 %call965, 0
  br i1 %cmp966.not, label %do.body976, label %do.end970

do.end970:                                        ; preds = %do.body964
  call void @__sanitizer_cov_trace_pc() #5
  %call972 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 222, ptr noundef nonnull @.str.265) #6
  br label %cleanup

do.body976:                                       ; preds = %do.body964
  %call977 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call977)
  %cmp978.not = icmp eq i64 %call977, 0
  br i1 %cmp978.not, label %do.body988, label %do.end982

do.end982:                                        ; preds = %do.body976
  call void @__sanitizer_cov_trace_pc() #5
  %call984 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 223, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body988:                                       ; preds = %do.body976
  %call989 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 3, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call989)
  %cmp990.not = icmp eq i64 %call989, 0
  br i1 %cmp990.not, label %do.body1000, label %do.end994

do.end994:                                        ; preds = %do.body988
  call void @__sanitizer_cov_trace_pc() #5
  %call996 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 224, ptr noundef nonnull @.str.322) #6
  br label %cleanup

do.body1000:                                      ; preds = %do.body988
  %call1001 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call1001)
  %cmp1002.not = icmp eq i64 %call1001, 1
  br i1 %cmp1002.not, label %do.body1012, label %do.end1006

do.end1006:                                       ; preds = %do.body1000
  call void @__sanitizer_cov_trace_pc() #5
  %call1008 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 226, ptr noundef nonnull @.str.125) #6
  br label %cleanup

do.body1012:                                      ; preds = %do.body1000
  %call1013 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call1013)
  %cmp1014.not = icmp eq i64 %call1013, 1
  br i1 %cmp1014.not, label %do.body1024, label %do.end1018

do.end1018:                                       ; preds = %do.body1012
  call void @__sanitizer_cov_trace_pc() #5
  %call1020 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 227, ptr noundef nonnull @.str.327) #6
  br label %cleanup

do.body1024:                                      ; preds = %do.body1012
  %call1025 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call1025)
  %cmp1026.not = icmp eq i64 %call1025, 1
  br i1 %cmp1026.not, label %do.body1036, label %do.end1030

do.end1030:                                       ; preds = %do.body1024
  call void @__sanitizer_cov_trace_pc() #5
  %call1032 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 228, ptr noundef nonnull @.str.330) #6
  br label %cleanup

do.body1036:                                      ; preds = %do.body1024
  %call1037 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call1037)
  %cmp1038.not = icmp eq i64 %call1037, 2
  br i1 %cmp1038.not, label %do.body1048, label %do.end1042

do.end1042:                                       ; preds = %do.body1036
  call void @__sanitizer_cov_trace_pc() #5
  %call1044 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 229, ptr noundef nonnull @.str.128) #6
  br label %cleanup

do.body1048:                                      ; preds = %do.body1036
  %call1049 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call1049)
  %cmp1050.not = icmp eq i64 %call1049, 2
  br i1 %cmp1050.not, label %do.body1060, label %do.end1054

do.end1054:                                       ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #5
  %call1056 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 230, ptr noundef nonnull @.str.335) #6
  br label %cleanup

do.body1060:                                      ; preds = %do.body1048
  %call1061 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call1061)
  %cmp1062.not = icmp eq i64 %call1061, 2
  br i1 %cmp1062.not, label %do.body1072, label %do.end1066

do.end1066:                                       ; preds = %do.body1060
  call void @__sanitizer_cov_trace_pc() #5
  %call1068 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 231, ptr noundef nonnull @.str.338) #6
  br label %cleanup

do.body1072:                                      ; preds = %do.body1060
  %call1073 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 640) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 640, i64 %call1073)
  %cmp1074.not = icmp eq i64 %call1073, 640
  br i1 %cmp1074.not, label %do.body1084, label %do.end1078

do.end1078:                                       ; preds = %do.body1072
  call void @__sanitizer_cov_trace_pc() #5
  %call1080 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 232, ptr noundef nonnull @.str.131) #6
  br label %cleanup

do.body1084:                                      ; preds = %do.body1072
  %call1085 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 320) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 320, i64 %call1085)
  %cmp1086.not = icmp eq i64 %call1085, 320
  br i1 %cmp1086.not, label %do.body1096, label %do.end1090

do.end1090:                                       ; preds = %do.body1084
  call void @__sanitizer_cov_trace_pc() #5
  %call1092 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 233, ptr noundef nonnull @.str.343) #6
  br label %cleanup

do.body1096:                                      ; preds = %do.body1084
  %call1097 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 320) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 320, i64 %call1097)
  %cmp1098.not = icmp eq i64 %call1097, 320
  br i1 %cmp1098.not, label %do.body1108, label %do.end1102

do.end1102:                                       ; preds = %do.body1096
  call void @__sanitizer_cov_trace_pc() #5
  %call1104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 234, ptr noundef nonnull @.str.346) #6
  br label %cleanup

do.body1108:                                      ; preds = %do.body1096
  %call1109 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %call1109)
  %cmp1110.not = icmp eq i64 %call1109, 1024
  br i1 %cmp1110.not, label %do.body1120, label %do.end1114

do.end1114:                                       ; preds = %do.body1108
  call void @__sanitizer_cov_trace_pc() #5
  %call1116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 235, ptr noundef nonnull @.str.134) #6
  br label %cleanup

do.body1120:                                      ; preds = %do.body1108
  %call1121 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 512) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %call1121)
  %cmp1122.not = icmp eq i64 %call1121, 512
  br i1 %cmp1122.not, label %do.body1132, label %do.end1126

do.end1126:                                       ; preds = %do.body1120
  call void @__sanitizer_cov_trace_pc() #5
  %call1128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 236, ptr noundef nonnull @.str.351) #6
  br label %cleanup

do.body1132:                                      ; preds = %do.body1120
  %call1133 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 512) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %call1133)
  %cmp1134.not = icmp eq i64 %call1133, 512
  br i1 %cmp1134.not, label %do.body1144, label %do.end1138

do.end1138:                                       ; preds = %do.body1132
  call void @__sanitizer_cov_trace_pc() #5
  %call1140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 237, ptr noundef nonnull @.str.354) #6
  br label %cleanup

do.body1144:                                      ; preds = %do.body1132
  %call1145 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 1920) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1920, i64 %call1145)
  %cmp1146.not = icmp eq i64 %call1145, 1920
  br i1 %cmp1146.not, label %do.body1156, label %do.end1150

do.end1150:                                       ; preds = %do.body1144
  call void @__sanitizer_cov_trace_pc() #5
  %call1152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 238, ptr noundef nonnull @.str.137) #6
  br label %cleanup

do.body1156:                                      ; preds = %do.body1144
  %call1157 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 960) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 960, i64 %call1157)
  %cmp1158.not = icmp eq i64 %call1157, 960
  br i1 %cmp1158.not, label %do.body1168, label %do.end1162

do.end1162:                                       ; preds = %do.body1156
  call void @__sanitizer_cov_trace_pc() #5
  %call1164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 239, ptr noundef nonnull @.str.359) #6
  br label %cleanup

do.body1168:                                      ; preds = %do.body1156
  %call1169 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 960) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 960, i64 %call1169)
  %cmp1170.not = icmp eq i64 %call1169, 960
  br i1 %cmp1170.not, label %do.body1180, label %do.end1174

do.end1174:                                       ; preds = %do.body1168
  call void @__sanitizer_cov_trace_pc() #5
  %call1176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 240, ptr noundef nonnull @.str.362) #6
  br label %cleanup

do.body1180:                                      ; preds = %do.body1168
  %call1181 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 4096) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call1181)
  %cmp1182.not = icmp eq i64 %call1181, 4096
  br i1 %cmp1182.not, label %do.body1192, label %do.end1186

do.end1186:                                       ; preds = %do.body1180
  call void @__sanitizer_cov_trace_pc() #5
  %call1188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 241, ptr noundef nonnull @.str.140) #6
  br label %cleanup

do.body1192:                                      ; preds = %do.body1180
  %call1193 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 2048) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %call1193)
  %cmp1194.not = icmp eq i64 %call1193, 2048
  br i1 %cmp1194.not, label %do.body1204, label %do.end1198

do.end1198:                                       ; preds = %do.body1192
  call void @__sanitizer_cov_trace_pc() #5
  %call1200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 242, ptr noundef nonnull @.str.367) #6
  br label %cleanup

do.body1204:                                      ; preds = %do.body1192
  %call1205 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 2048) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %call1205)
  %cmp1206.not = icmp eq i64 %call1205, 2048
  br i1 %cmp1206.not, label %do.body1216, label %do.end1210

do.end1210:                                       ; preds = %do.body1204
  call void @__sanitizer_cov_trace_pc() #5
  %call1212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 243, ptr noundef nonnull @.str.370) #6
  br label %cleanup

do.body1216:                                      ; preds = %do.body1204
  %call1217 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 671) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 671, i64 %call1217)
  %cmp1218.not = icmp eq i64 %call1217, 671
  br i1 %cmp1218.not, label %do.body1228, label %do.end1222

do.end1222:                                       ; preds = %do.body1216
  call void @__sanitizer_cov_trace_pc() #5
  %call1224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 244, ptr noundef nonnull @.str.143) #6
  br label %cleanup

do.body1228:                                      ; preds = %do.body1216
  %call1229 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 336) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 336, i64 %call1229)
  %cmp1230.not = icmp eq i64 %call1229, 336
  br i1 %cmp1230.not, label %do.body1240, label %do.end1234

do.end1234:                                       ; preds = %do.body1228
  call void @__sanitizer_cov_trace_pc() #5
  %call1236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 245, ptr noundef nonnull @.str.375) #6
  br label %cleanup

do.body1240:                                      ; preds = %do.body1228
  %call1241 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 336) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 336, i64 %call1241)
  %cmp1242.not = icmp eq i64 %call1241, 336
  br i1 %cmp1242.not, label %do.body1252, label %do.end1246

do.end1246:                                       ; preds = %do.body1240
  call void @__sanitizer_cov_trace_pc() #5
  %call1248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 246, ptr noundef nonnull @.str.378) #6
  br label %cleanup

do.body1252:                                      ; preds = %do.body1240
  %call1253 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call1253)
  %cmp1254.not = icmp eq i64 %call1253, 4294967295
  br i1 %cmp1254.not, label %do.body1264, label %do.end1258

do.end1258:                                       ; preds = %do.body1252
  call void @__sanitizer_cov_trace_pc() #5
  %call1260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 248, ptr noundef nonnull @.str.146) #6
  br label %cleanup

do.body1264:                                      ; preds = %do.body1252
  %call1265 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef -2147483648) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %call1265)
  %cmp1266.not = icmp eq i64 %call1265, 2147483648
  br i1 %cmp1266.not, label %do.body1276, label %do.end1270

do.end1270:                                       ; preds = %do.body1264
  call void @__sanitizer_cov_trace_pc() #5
  %call1272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 250, ptr noundef nonnull @.str.383) #6
  br label %cleanup

do.body1276:                                      ; preds = %do.body1264
  %call1277 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef -2147483648) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %call1277)
  %cmp1278.not = icmp eq i64 %call1277, 2147483648
  br i1 %cmp1278.not, label %do.body1288, label %do.end1282

do.end1282:                                       ; preds = %do.body1276
  call void @__sanitizer_cov_trace_pc() #5
  %call1284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 252, ptr noundef nonnull @.str.386) #6
  br label %cleanup

do.body1288:                                      ; preds = %do.body1276
  %call1289 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 0, i32 noundef 2147483647) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call1289)
  %cmp1290.not = icmp eq i64 %call1289, 2147483647
  br i1 %cmp1290.not, label %do.body1300, label %do.end1294

do.end1294:                                       ; preds = %do.body1288
  call void @__sanitizer_cov_trace_pc() #5
  %call1296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 254, ptr noundef nonnull @.str.389) #6
  br label %cleanup

do.body1300:                                      ; preds = %do.body1288
  %call1301 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 1, i32 noundef 2147483647) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call1301)
  %cmp1302.not = icmp eq i64 %call1301, 2147483647
  br i1 %cmp1302.not, label %do.body1312, label %do.end1306

do.end1306:                                       ; preds = %do.body1300
  call void @__sanitizer_cov_trace_pc() #5
  %call1308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 256, ptr noundef nonnull @.str.392) #6
  br label %cleanup

do.body1312:                                      ; preds = %do.body1300
  %call1313 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call928, i32 noundef 2, i32 noundef 2147483647) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call1313)
  %cmp1314.not = icmp eq i64 %call1313, 2147483647
  br i1 %cmp1314.not, label %do.end1323, label %do.end1318

do.end1318:                                       ; preds = %do.body1312
  call void @__sanitizer_cov_trace_pc() #5
  %call1320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 258, ptr noundef nonnull @.str.395) #6
  br label %cleanup

do.end1323:                                       ; preds = %do.body1312
  %call1324 = tail call ptr @drm_format_info(i32 noundef 843853912) #3
  %tobool1326.not = icmp eq ptr %call1324, null
  br i1 %tobool1326.not, label %do.end1330, label %do.body1336

do.end1330:                                       ; preds = %do.end1323
  call void @__sanitizer_cov_trace_pc() #5
  %call1332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 262, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body1336:                                      ; preds = %do.end1323
  %call1337 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1337)
  %cmp1338.not = icmp eq i64 %call1337, 0
  br i1 %cmp1338.not, label %do.body1348, label %do.end1342

do.end1342:                                       ; preds = %do.body1336
  call void @__sanitizer_cov_trace_pc() #5
  %call1344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 263, ptr noundef nonnull @.str.108) #6
  br label %cleanup

do.body1348:                                      ; preds = %do.body1336
  %call1349 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1349)
  %cmp1350.not = icmp eq i64 %call1349, 0
  br i1 %cmp1350.not, label %do.body1360, label %do.end1354

do.end1354:                                       ; preds = %do.body1348
  call void @__sanitizer_cov_trace_pc() #5
  %call1356 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 264, ptr noundef nonnull @.str.111) #6
  br label %cleanup

do.body1360:                                      ; preds = %do.body1348
  %call1361 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1361)
  %cmp1362.not = icmp eq i64 %call1361, 0
  br i1 %cmp1362.not, label %do.body1372, label %do.end1366

do.end1366:                                       ; preds = %do.body1360
  call void @__sanitizer_cov_trace_pc() #5
  %call1368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 265, ptr noundef nonnull @.str.114) #6
  br label %cleanup

do.body1372:                                      ; preds = %do.body1360
  %call1373 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call1373)
  %cmp1374.not = icmp eq i64 %call1373, 2
  br i1 %cmp1374.not, label %do.body1384, label %do.end1378

do.end1378:                                       ; preds = %do.body1372
  call void @__sanitizer_cov_trace_pc() #5
  %call1380 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 267, ptr noundef nonnull @.str.160) #6
  br label %cleanup

do.body1384:                                      ; preds = %do.body1372
  %call1385 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %call1385)
  %cmp1386.not = icmp eq i64 %call1385, 4
  br i1 %cmp1386.not, label %do.body1396, label %do.end1390

do.end1390:                                       ; preds = %do.body1384
  call void @__sanitizer_cov_trace_pc() #5
  %call1392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 268, ptr noundef nonnull @.str.163) #6
  br label %cleanup

do.body1396:                                      ; preds = %do.body1384
  %call1397 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 640) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1280, i64 %call1397)
  %cmp1398.not = icmp eq i64 %call1397, 1280
  br i1 %cmp1398.not, label %do.body1408, label %do.end1402

do.end1402:                                       ; preds = %do.body1396
  call void @__sanitizer_cov_trace_pc() #5
  %call1404 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 269, ptr noundef nonnull @.str.166) #6
  br label %cleanup

do.body1408:                                      ; preds = %do.body1396
  %call1409 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %call1409)
  %cmp1410.not = icmp eq i64 %call1409, 2048
  br i1 %cmp1410.not, label %do.body1420, label %do.end1414

do.end1414:                                       ; preds = %do.body1408
  call void @__sanitizer_cov_trace_pc() #5
  %call1416 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 270, ptr noundef nonnull @.str.169) #6
  br label %cleanup

do.body1420:                                      ; preds = %do.body1408
  %call1421 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 1920) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3840, i64 %call1421)
  %cmp1422.not = icmp eq i64 %call1421, 3840
  br i1 %cmp1422.not, label %do.body1432, label %do.end1426

do.end1426:                                       ; preds = %do.body1420
  call void @__sanitizer_cov_trace_pc() #5
  %call1428 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 271, ptr noundef nonnull @.str.172) #6
  br label %cleanup

do.body1432:                                      ; preds = %do.body1420
  %call1433 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 4096) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %call1433)
  %cmp1434.not = icmp eq i64 %call1433, 8192
  br i1 %cmp1434.not, label %do.body1444, label %do.end1438

do.end1438:                                       ; preds = %do.body1432
  call void @__sanitizer_cov_trace_pc() #5
  %call1440 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 272, ptr noundef nonnull @.str.175) #6
  br label %cleanup

do.body1444:                                      ; preds = %do.body1432
  %call1445 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef 671) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1342, i64 %call1445)
  %cmp1446.not = icmp eq i64 %call1445, 1342
  br i1 %cmp1446.not, label %do.body1456, label %do.end1450

do.end1450:                                       ; preds = %do.body1444
  call void @__sanitizer_cov_trace_pc() #5
  %call1452 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 273, ptr noundef nonnull @.str.178) #6
  br label %cleanup

do.body1456:                                      ; preds = %do.body1444
  %call1457 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934590, i64 %call1457)
  %cmp1458.not = icmp eq i64 %call1457, 8589934590
  br i1 %cmp1458.not, label %do.body1468, label %do.end1462

do.end1462:                                       ; preds = %do.body1456
  call void @__sanitizer_cov_trace_pc() #5
  %call1464 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 275, ptr noundef nonnull @.str.181) #6
  br label %cleanup

do.body1468:                                      ; preds = %do.body1456
  %call1469 = tail call i64 @drm_format_info_min_pitch(ptr noundef nonnull %call1324, i32 noundef 0, i32 noundef -2) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934588, i64 %call1469)
  %cmp1470.not = icmp eq i64 %call1469, 8589934588
  br i1 %cmp1470.not, label %do.body1468.cleanup_crit_edge, label %do.end1474

do.body1468.cleanup_crit_edge:                    ; preds = %do.body1468
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end1474:                                       ; preds = %do.body1468
  call void @__sanitizer_cov_trace_pc() #5
  %call1476 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef 277, ptr noundef nonnull @.str.422) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end1474, %do.body1468.cleanup_crit_edge, %do.end1462, %do.end1450, %do.end1438, %do.end1426, %do.end1414, %do.end1402, %do.end1390, %do.end1378, %do.end1366, %do.end1354, %do.end1342, %do.end1330, %do.end1318, %do.end1306, %do.end1294, %do.end1282, %do.end1270, %do.end1258, %do.end1246, %do.end1234, %do.end1222, %do.end1210, %do.end1198, %do.end1186, %do.end1174, %do.end1162, %do.end1150, %do.end1138, %do.end1126, %do.end1114, %do.end1102, %do.end1090, %do.end1078, %do.end1066, %do.end1054, %do.end1042, %do.end1030, %do.end1018, %do.end1006, %do.end994, %do.end982, %do.end970, %do.end958, %do.end946, %do.end934, %do.end922, %do.end910, %do.end898, %do.end886, %do.end874, %do.end862, %do.end850, %do.end838, %do.end826, %do.end814, %do.end802, %do.end790, %do.end778, %do.end766, %do.end754, %do.end742, %do.end730, %do.end718, %do.end706, %do.end694, %do.end682, %do.end670, %do.end658, %do.end646, %do.end634, %do.end622, %do.end610, %do.end598, %do.end586, %do.end574, %do.end562, %do.end550, %do.end538, %do.end526, %do.end514, %do.end502, %do.end490, %do.end478, %do.end466, %do.end454, %do.end442, %do.end430, %do.end418, %do.end406, %do.end394, %do.end382, %do.end370, %do.end358, %do.end346, %do.end334, %do.end322, %do.end310, %do.end298, %do.end286, %do.end274, %do.end262, %do.end250, %do.end238, %do.end226, %do.end214, %do.end202, %do.end190, %do.end178, %do.end166, %do.end154, %do.end142, %do.end130, %do.end118, %do.end106, %do.end94, %do.end82, %do.end70, %do.end58, %do.end46, %do.end34, %do.end23, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end23 ], [ -22, %do.end46 ], [ -22, %do.end58 ], [ -22, %do.end70 ], [ -22, %do.end82 ], [ -22, %do.end94 ], [ -22, %do.end106 ], [ -22, %do.end118 ], [ -22, %do.end130 ], [ -22, %do.end142 ], [ -22, %do.end154 ], [ -22, %do.end166 ], [ -22, %do.end178 ], [ -22, %do.end202 ], [ -22, %do.end214 ], [ -22, %do.end226 ], [ -22, %do.end238 ], [ -22, %do.end250 ], [ -22, %do.end262 ], [ -22, %do.end274 ], [ -22, %do.end286 ], [ -22, %do.end298 ], [ -22, %do.end310 ], [ -22, %do.end322 ], [ -22, %do.end334 ], [ -22, %do.end358 ], [ -22, %do.end370 ], [ -22, %do.end382 ], [ -22, %do.end394 ], [ -22, %do.end406 ], [ -22, %do.end418 ], [ -22, %do.end430 ], [ -22, %do.end442 ], [ -22, %do.end454 ], [ -22, %do.end466 ], [ -22, %do.end478 ], [ -22, %do.end490 ], [ -22, %do.end514 ], [ -22, %do.end526 ], [ -22, %do.end538 ], [ -22, %do.end550 ], [ -22, %do.end562 ], [ -22, %do.end574 ], [ -22, %do.end586 ], [ -22, %do.end598 ], [ -22, %do.end610 ], [ -22, %do.end622 ], [ -22, %do.end634 ], [ -22, %do.end646 ], [ -22, %do.end670 ], [ -22, %do.end682 ], [ -22, %do.end694 ], [ -22, %do.end706 ], [ -22, %do.end718 ], [ -22, %do.end730 ], [ -22, %do.end742 ], [ -22, %do.end754 ], [ -22, %do.end766 ], [ -22, %do.end778 ], [ -22, %do.end790 ], [ -22, %do.end802 ], [ -22, %do.end814 ], [ -22, %do.end826 ], [ -22, %do.end838 ], [ -22, %do.end850 ], [ -22, %do.end862 ], [ -22, %do.end874 ], [ -22, %do.end886 ], [ -22, %do.end898 ], [ -22, %do.end910 ], [ -22, %do.end922 ], [ -22, %do.end946 ], [ -22, %do.end958 ], [ -22, %do.end970 ], [ -22, %do.end982 ], [ -22, %do.end994 ], [ -22, %do.end1006 ], [ -22, %do.end1018 ], [ -22, %do.end1030 ], [ -22, %do.end1042 ], [ -22, %do.end1054 ], [ -22, %do.end1066 ], [ -22, %do.end1078 ], [ -22, %do.end1090 ], [ -22, %do.end1102 ], [ -22, %do.end1114 ], [ -22, %do.end1126 ], [ -22, %do.end1138 ], [ -22, %do.end1150 ], [ -22, %do.end1162 ], [ -22, %do.end1174 ], [ -22, %do.end1186 ], [ -22, %do.end1198 ], [ -22, %do.end1210 ], [ -22, %do.end1222 ], [ -22, %do.end1234 ], [ -22, %do.end1246 ], [ -22, %do.end1258 ], [ -22, %do.end1270 ], [ -22, %do.end1282 ], [ -22, %do.end1294 ], [ -22, %do.end1306 ], [ -22, %do.end1318 ], [ -22, %do.end1342 ], [ -22, %do.end1354 ], [ -22, %do.end1366 ], [ -22, %do.end1378 ], [ -22, %do.end1390 ], [ -22, %do.end1402 ], [ -22, %do.end1414 ], [ -22, %do.end1426 ], [ -22, %do.end1438 ], [ -22, %do.end1450 ], [ -22, %do.end1462 ], [ -22, %do.end1474 ], [ -22, %do.end1330 ], [ -22, %do.end934 ], [ -22, %do.end658 ], [ -22, %do.end502 ], [ -22, %do.end346 ], [ -22, %do.end190 ], [ -22, %do.end34 ], [ 0, %do.body1468.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_format_info_min_pitch(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 261)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 261)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !376, !378, !379, !381, !382, !383, !385, !386, !388, !389, !391, !392, !394, !395, !396, !398, !399, !401, !402, !403, !405, !406, !408, !409, !410, !412, !413, !415, !416, !417, !419, !420, !422, !423, !424, !426, !427, !429, !430, !431, !433, !434, !436, !437, !438, !440, !441, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !457, !459, !460, !462, !463, !464, !466, !467, !468, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !495, !496, !497, !499, !500, !501, !503, !504, !506, !507, !508, !510, !511, !512, !514, !515, !517, !518, !519, !521, !522, !523, !525, !526, !528, !529, !530, !532, !533, !534, !536, !537, !539, !540, !541, !543, !544, !545, !547, !548, !549, !551, !552, !553, !555, !556, !557, !559, !560, !562, !563, !565, !566, !568, !569, !571, !572, !574, !575, !577, !578, !580, !581, !583, !584, !586, !587, !589, !590, !592, !593, !595, !596}
!llvm.module.flags = !{!597, !598, !599, !600, !601, !602, !603, !604}
!llvm.ident = !{!605}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 20, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @igt_check_drm_format_block_width._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @igt_check_drm_format_block_width._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @igt_check_drm_format_block_width._entry.4, !8, !"_entry", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 21, i32 2}
!9 = !{ptr @igt_check_drm_format_block_width._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @igt_check_drm_format_block_width._entry.7, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 22, i32 2}
!13 = !{ptr @igt_check_drm_format_block_width._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @igt_check_drm_format_block_width._entry.10, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 26, i32 2}
!17 = !{ptr @igt_check_drm_format_block_width._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @igt_check_drm_format_block_width._entry.13, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 27, i32 2}
!21 = !{ptr @igt_check_drm_format_block_width._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @igt_check_drm_format_block_width._entry.16, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 28, i32 2}
!25 = !{ptr @igt_check_drm_format_block_width._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @igt_check_drm_format_block_width._entry.18, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 29, i32 2}
!28 = !{ptr @igt_check_drm_format_block_width._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @igt_check_drm_format_block_width._entry.20, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 33, i32 2}
!31 = !{ptr @igt_check_drm_format_block_width._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @igt_check_drm_format_block_width._entry.22, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 34, i32 2}
!34 = !{ptr @igt_check_drm_format_block_width._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @igt_check_drm_format_block_width._entry.24, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 35, i32 2}
!37 = !{ptr @igt_check_drm_format_block_width._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @igt_check_drm_format_block_width._entry.27, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 36, i32 2}
!41 = !{ptr @igt_check_drm_format_block_width._entry_ptr.28, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @igt_check_drm_format_block_width._entry.30, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 37, i32 2}
!45 = !{ptr @igt_check_drm_format_block_width._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @igt_check_drm_format_block_width._entry.32, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 41, i32 2}
!48 = !{ptr @igt_check_drm_format_block_width._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @igt_check_drm_format_block_width._entry.34, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 42, i32 2}
!51 = !{ptr @igt_check_drm_format_block_width._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @igt_check_drm_format_block_width._entry.36, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 43, i32 2}
!54 = !{ptr @igt_check_drm_format_block_width._entry_ptr.37, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @igt_check_drm_format_block_width._entry.38, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 44, i32 2}
!57 = !{ptr @igt_check_drm_format_block_width._entry_ptr.39, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.40, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @igt_check_drm_format_block_width._entry.41, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 45, i32 2}
!61 = !{ptr @igt_check_drm_format_block_width._entry_ptr.42, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @igt_check_drm_format_block_width._entry.44, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 46, i32 2}
!65 = !{ptr @igt_check_drm_format_block_width._entry_ptr.45, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @igt_check_drm_format_block_width._entry.46, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 50, i32 2}
!68 = !{ptr @igt_check_drm_format_block_width._entry_ptr.47, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @igt_check_drm_format_block_width._entry.48, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 51, i32 2}
!71 = !{ptr @igt_check_drm_format_block_width._entry_ptr.49, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.50, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @igt_check_drm_format_block_width._entry.51, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 52, i32 2}
!75 = !{ptr @igt_check_drm_format_block_width._entry_ptr.52, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @igt_check_drm_format_block_width._entry.53, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 53, i32 2}
!78 = !{ptr @igt_check_drm_format_block_width._entry_ptr.54, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.55, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 63, i32 2}
!81 = !{ptr @igt_check_drm_format_block_height._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @igt_check_drm_format_block_height._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.56, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @igt_check_drm_format_block_height._entry.57, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 64, i32 2}
!86 = !{ptr @igt_check_drm_format_block_height._entry_ptr.58, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.59, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @igt_check_drm_format_block_height._entry.60, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 65, i32 2}
!90 = !{ptr @igt_check_drm_format_block_height._entry_ptr.61, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.62, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @igt_check_drm_format_block_height._entry.63, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 69, i32 2}
!94 = !{ptr @igt_check_drm_format_block_height._entry_ptr.64, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @igt_check_drm_format_block_height._entry.65, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 70, i32 2}
!97 = !{ptr @igt_check_drm_format_block_height._entry_ptr.66, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.67, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @igt_check_drm_format_block_height._entry.68, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 71, i32 2}
!101 = !{ptr @igt_check_drm_format_block_height._entry_ptr.69, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @igt_check_drm_format_block_height._entry.70, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 72, i32 2}
!104 = !{ptr @igt_check_drm_format_block_height._entry_ptr.71, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @igt_check_drm_format_block_height._entry.72, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 76, i32 2}
!107 = !{ptr @igt_check_drm_format_block_height._entry_ptr.73, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @igt_check_drm_format_block_height._entry.74, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 77, i32 2}
!110 = !{ptr @igt_check_drm_format_block_height._entry_ptr.75, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @igt_check_drm_format_block_height._entry.76, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 78, i32 2}
!113 = !{ptr @igt_check_drm_format_block_height._entry_ptr.77, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.78, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @igt_check_drm_format_block_height._entry.79, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 79, i32 2}
!117 = !{ptr @igt_check_drm_format_block_height._entry_ptr.80, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.81, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @igt_check_drm_format_block_height._entry.82, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 80, i32 2}
!121 = !{ptr @igt_check_drm_format_block_height._entry_ptr.83, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @igt_check_drm_format_block_height._entry.84, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 84, i32 2}
!124 = !{ptr @igt_check_drm_format_block_height._entry_ptr.85, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @igt_check_drm_format_block_height._entry.86, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 85, i32 2}
!127 = !{ptr @igt_check_drm_format_block_height._entry_ptr.87, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @igt_check_drm_format_block_height._entry.88, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 86, i32 2}
!130 = !{ptr @igt_check_drm_format_block_height._entry_ptr.89, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @igt_check_drm_format_block_height._entry.90, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 87, i32 2}
!133 = !{ptr @igt_check_drm_format_block_height._entry_ptr.91, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.92, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @igt_check_drm_format_block_height._entry.93, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 88, i32 2}
!137 = !{ptr @igt_check_drm_format_block_height._entry_ptr.94, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.95, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @igt_check_drm_format_block_height._entry.96, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 89, i32 2}
!141 = !{ptr @igt_check_drm_format_block_height._entry_ptr.97, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @igt_check_drm_format_block_height._entry.98, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 93, i32 2}
!144 = !{ptr @igt_check_drm_format_block_height._entry_ptr.99, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @igt_check_drm_format_block_height._entry.100, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 94, i32 2}
!147 = !{ptr @igt_check_drm_format_block_height._entry_ptr.101, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.102, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @igt_check_drm_format_block_height._entry.103, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 95, i32 2}
!151 = !{ptr @igt_check_drm_format_block_height._entry_ptr.104, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @igt_check_drm_format_block_height._entry.105, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 96, i32 2}
!154 = !{ptr @igt_check_drm_format_block_height._entry_ptr.106, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.107, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 106, i32 2}
!157 = !{ptr @igt_check_drm_format_min_pitch._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.108, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @igt_check_drm_format_min_pitch._entry.109, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 107, i32 2}
!162 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.110, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.111, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @igt_check_drm_format_min_pitch._entry.112, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 108, i32 2}
!166 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.113, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.114, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @igt_check_drm_format_min_pitch._entry.115, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 112, i32 2}
!170 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.116, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @igt_check_drm_format_min_pitch._entry.117, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 113, i32 2}
!173 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.118, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @igt_check_drm_format_min_pitch._entry.119, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 114, i32 2}
!176 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.120, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @igt_check_drm_format_min_pitch._entry.121, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 115, i32 2}
!179 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.122, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @igt_check_drm_format_min_pitch._entry.123, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 117, i32 2}
!182 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.124, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.125, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @igt_check_drm_format_min_pitch._entry.126, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 118, i32 2}
!186 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.127, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.128, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @igt_check_drm_format_min_pitch._entry.129, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 119, i32 2}
!190 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.130, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.131, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @igt_check_drm_format_min_pitch._entry.132, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 120, i32 2}
!194 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.133, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.134, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @igt_check_drm_format_min_pitch._entry.135, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 121, i32 2}
!198 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.136, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.137, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @igt_check_drm_format_min_pitch._entry.138, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 122, i32 2}
!202 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.139, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.140, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @igt_check_drm_format_min_pitch._entry.141, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 123, i32 2}
!206 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.142, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.143, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @igt_check_drm_format_min_pitch._entry.144, !209, !"_entry", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 124, i32 2}
!210 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.145, !209, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.146, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @igt_check_drm_format_min_pitch._entry.147, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 126, i32 2}
!214 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.148, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.149, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @igt_check_drm_format_min_pitch._entry.150, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 131, i32 2}
!218 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.151, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @igt_check_drm_format_min_pitch._entry.152, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 132, i32 2}
!221 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.153, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @igt_check_drm_format_min_pitch._entry.154, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 133, i32 2}
!224 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.155, !223, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @igt_check_drm_format_min_pitch._entry.156, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 134, i32 2}
!227 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.157, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @igt_check_drm_format_min_pitch._entry.158, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 136, i32 2}
!230 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.159, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.160, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @igt_check_drm_format_min_pitch._entry.161, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 137, i32 2}
!234 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.162, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.163, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @igt_check_drm_format_min_pitch._entry.164, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 138, i32 2}
!238 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.165, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.166, !237, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @igt_check_drm_format_min_pitch._entry.167, !241, !"_entry", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 139, i32 2}
!242 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.168, !241, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.169, !241, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @igt_check_drm_format_min_pitch._entry.170, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 140, i32 2}
!246 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.171, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.172, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @igt_check_drm_format_min_pitch._entry.173, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 141, i32 2}
!250 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.174, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.175, !249, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @igt_check_drm_format_min_pitch._entry.176, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 142, i32 2}
!254 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.177, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.178, !253, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @igt_check_drm_format_min_pitch._entry.179, !257, !"_entry", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 143, i32 2}
!258 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.180, !257, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.181, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @igt_check_drm_format_min_pitch._entry.182, !261, !"_entry", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 145, i32 2}
!262 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.183, !261, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.184, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @igt_check_drm_format_min_pitch._entry.185, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 150, i32 2}
!266 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.186, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @igt_check_drm_format_min_pitch._entry.187, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 151, i32 2}
!269 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.188, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @igt_check_drm_format_min_pitch._entry.189, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 152, i32 2}
!272 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.190, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @igt_check_drm_format_min_pitch._entry.191, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 153, i32 2}
!275 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.192, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @igt_check_drm_format_min_pitch._entry.193, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 155, i32 2}
!278 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.194, !277, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.195, !277, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @igt_check_drm_format_min_pitch._entry.196, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 156, i32 2}
!282 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.197, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.198, !281, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @igt_check_drm_format_min_pitch._entry.199, !285, !"_entry", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 157, i32 2}
!286 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.200, !285, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.201, !285, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @igt_check_drm_format_min_pitch._entry.202, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 158, i32 2}
!290 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.203, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.204, !289, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @igt_check_drm_format_min_pitch._entry.205, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 159, i32 2}
!294 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.206, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.207, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @igt_check_drm_format_min_pitch._entry.208, !297, !"_entry", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 160, i32 2}
!298 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.209, !297, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.210, !297, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @igt_check_drm_format_min_pitch._entry.211, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 161, i32 2}
!302 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.212, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.213, !301, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @igt_check_drm_format_min_pitch._entry.214, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 162, i32 2}
!306 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.215, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.216, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @igt_check_drm_format_min_pitch._entry.217, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 164, i32 2}
!310 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.218, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.219, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @igt_check_drm_format_min_pitch._entry.220, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 169, i32 2}
!314 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.221, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @igt_check_drm_format_min_pitch._entry.222, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 170, i32 2}
!317 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.223, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @igt_check_drm_format_min_pitch._entry.224, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 171, i32 2}
!320 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.225, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @igt_check_drm_format_min_pitch._entry.226, !322, !"_entry", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 172, i32 2}
!323 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.227, !322, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @igt_check_drm_format_min_pitch._entry.228, !325, !"_entry", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 174, i32 2}
!326 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.229, !325, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.230, !325, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @igt_check_drm_format_min_pitch._entry.231, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 175, i32 2}
!330 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.232, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.233, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @igt_check_drm_format_min_pitch._entry.234, !333, !"_entry", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 176, i32 2}
!334 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.235, !333, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.236, !333, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @igt_check_drm_format_min_pitch._entry.237, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 177, i32 2}
!338 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.238, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.239, !337, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @igt_check_drm_format_min_pitch._entry.240, !341, !"_entry", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 178, i32 2}
!342 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.241, !341, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.242, !341, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @igt_check_drm_format_min_pitch._entry.243, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 179, i32 2}
!346 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.244, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.245, !345, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @igt_check_drm_format_min_pitch._entry.246, !349, !"_entry", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 180, i32 2}
!350 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.247, !349, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.248, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @igt_check_drm_format_min_pitch._entry.249, !353, !"_entry", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 181, i32 2}
!354 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.250, !353, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.251, !353, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @igt_check_drm_format_min_pitch._entry.252, !357, !"_entry", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 183, i32 2}
!358 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.253, !357, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.254, !357, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @igt_check_drm_format_min_pitch._entry.255, !361, !"_entry", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 188, i32 2}
!362 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.256, !361, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @igt_check_drm_format_min_pitch._entry.257, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 189, i32 2}
!365 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.258, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @igt_check_drm_format_min_pitch._entry.259, !367, !"_entry", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 190, i32 2}
!368 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.260, !367, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @igt_check_drm_format_min_pitch._entry.261, !370, !"_entry", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 191, i32 2}
!371 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.262, !370, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @igt_check_drm_format_min_pitch._entry.263, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 192, i32 2}
!374 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.264, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.265, !373, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @igt_check_drm_format_min_pitch._entry.266, !377, !"_entry", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 194, i32 2}
!378 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.267, !377, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @igt_check_drm_format_min_pitch._entry.268, !380, !"_entry", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 195, i32 2}
!381 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.269, !380, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.270, !380, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @igt_check_drm_format_min_pitch._entry.271, !384, !"_entry", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 196, i32 2}
!385 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.272, !384, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @igt_check_drm_format_min_pitch._entry.273, !387, !"_entry", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 197, i32 2}
!388 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.274, !387, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @igt_check_drm_format_min_pitch._entry.275, !390, !"_entry", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 198, i32 2}
!391 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.276, !390, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @igt_check_drm_format_min_pitch._entry.277, !393, !"_entry", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 199, i32 2}
!394 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.278, !393, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.279, !393, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @igt_check_drm_format_min_pitch._entry.280, !397, !"_entry", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 200, i32 2}
!398 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.281, !397, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @igt_check_drm_format_min_pitch._entry.282, !400, !"_entry", i1 false, i1 false}
!400 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 201, i32 2}
!401 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.283, !400, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.284, !400, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @igt_check_drm_format_min_pitch._entry.285, !404, !"_entry", i1 false, i1 false}
!404 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 202, i32 2}
!405 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.286, !404, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @igt_check_drm_format_min_pitch._entry.287, !407, !"_entry", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 203, i32 2}
!408 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.288, !407, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.289, !407, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @igt_check_drm_format_min_pitch._entry.290, !411, !"_entry", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 204, i32 2}
!412 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.291, !411, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @igt_check_drm_format_min_pitch._entry.292, !414, !"_entry", i1 false, i1 false}
!414 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 205, i32 2}
!415 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.293, !414, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.294, !414, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @igt_check_drm_format_min_pitch._entry.295, !418, !"_entry", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 206, i32 2}
!419 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.296, !418, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @igt_check_drm_format_min_pitch._entry.297, !421, !"_entry", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 207, i32 2}
!422 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.298, !421, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.299, !421, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @igt_check_drm_format_min_pitch._entry.300, !425, !"_entry", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 208, i32 2}
!426 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.301, !425, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @igt_check_drm_format_min_pitch._entry.302, !428, !"_entry", i1 false, i1 false}
!428 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 210, i32 2}
!429 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.303, !428, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.304, !428, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @igt_check_drm_format_min_pitch._entry.305, !432, !"_entry", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 212, i32 2}
!433 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.306, !432, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @igt_check_drm_format_min_pitch._entry.307, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 214, i32 2}
!436 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.308, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.309, !435, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @igt_check_drm_format_min_pitch._entry.310, !439, !"_entry", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 219, i32 2}
!440 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.311, !439, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @igt_check_drm_format_min_pitch._entry.312, !442, !"_entry", i1 false, i1 false}
!442 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 220, i32 2}
!443 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.313, !442, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @igt_check_drm_format_min_pitch._entry.314, !445, !"_entry", i1 false, i1 false}
!445 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 221, i32 2}
!446 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.315, !445, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @igt_check_drm_format_min_pitch._entry.316, !448, !"_entry", i1 false, i1 false}
!448 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 222, i32 2}
!449 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.317, !448, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @igt_check_drm_format_min_pitch._entry.318, !451, !"_entry", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 223, i32 2}
!452 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.319, !451, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @igt_check_drm_format_min_pitch._entry.320, !454, !"_entry", i1 false, i1 false}
!454 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 224, i32 2}
!455 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.321, !454, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.322, !454, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @igt_check_drm_format_min_pitch._entry.323, !458, !"_entry", i1 false, i1 false}
!458 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 226, i32 2}
!459 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.324, !458, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @igt_check_drm_format_min_pitch._entry.325, !461, !"_entry", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 227, i32 2}
!462 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.326, !461, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.327, !461, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @igt_check_drm_format_min_pitch._entry.328, !465, !"_entry", i1 false, i1 false}
!465 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 228, i32 2}
!466 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.329, !465, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.330, !465, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @igt_check_drm_format_min_pitch._entry.331, !469, !"_entry", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 229, i32 2}
!470 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.332, !469, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @igt_check_drm_format_min_pitch._entry.333, !472, !"_entry", i1 false, i1 false}
!472 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 230, i32 2}
!473 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.334, !472, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.335, !472, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @igt_check_drm_format_min_pitch._entry.336, !476, !"_entry", i1 false, i1 false}
!476 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 231, i32 2}
!477 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.337, !476, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.338, !476, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @igt_check_drm_format_min_pitch._entry.339, !480, !"_entry", i1 false, i1 false}
!480 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 232, i32 2}
!481 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.340, !480, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @igt_check_drm_format_min_pitch._entry.341, !483, !"_entry", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 233, i32 2}
!484 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.342, !483, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.343, !483, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @igt_check_drm_format_min_pitch._entry.344, !487, !"_entry", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 234, i32 2}
!488 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.345, !487, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.346, !487, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @igt_check_drm_format_min_pitch._entry.347, !491, !"_entry", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 235, i32 2}
!492 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.348, !491, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @igt_check_drm_format_min_pitch._entry.349, !494, !"_entry", i1 false, i1 false}
!494 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 236, i32 2}
!495 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.350, !494, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.351, !494, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @igt_check_drm_format_min_pitch._entry.352, !498, !"_entry", i1 false, i1 false}
!498 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 237, i32 2}
!499 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.353, !498, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.354, !498, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @igt_check_drm_format_min_pitch._entry.355, !502, !"_entry", i1 false, i1 false}
!502 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 238, i32 2}
!503 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.356, !502, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @igt_check_drm_format_min_pitch._entry.357, !505, !"_entry", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 239, i32 2}
!506 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.358, !505, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.359, !505, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @igt_check_drm_format_min_pitch._entry.360, !509, !"_entry", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 240, i32 2}
!510 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.361, !509, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.362, !509, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @igt_check_drm_format_min_pitch._entry.363, !513, !"_entry", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 241, i32 2}
!514 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.364, !513, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @igt_check_drm_format_min_pitch._entry.365, !516, !"_entry", i1 false, i1 false}
!516 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 242, i32 2}
!517 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.366, !516, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.367, !516, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @igt_check_drm_format_min_pitch._entry.368, !520, !"_entry", i1 false, i1 false}
!520 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 243, i32 2}
!521 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.369, !520, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.370, !520, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @igt_check_drm_format_min_pitch._entry.371, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 244, i32 2}
!525 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.372, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @igt_check_drm_format_min_pitch._entry.373, !527, !"_entry", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 245, i32 2}
!528 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.374, !527, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.375, !527, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @igt_check_drm_format_min_pitch._entry.376, !531, !"_entry", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 246, i32 2}
!532 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.377, !531, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.378, !531, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @igt_check_drm_format_min_pitch._entry.379, !535, !"_entry", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 247, i32 2}
!536 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.380, !535, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @igt_check_drm_format_min_pitch._entry.381, !538, !"_entry", i1 false, i1 false}
!538 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 249, i32 2}
!539 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.382, !538, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.383, !538, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @igt_check_drm_format_min_pitch._entry.384, !542, !"_entry", i1 false, i1 false}
!542 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 251, i32 2}
!543 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.385, !542, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.386, !542, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @igt_check_drm_format_min_pitch._entry.387, !546, !"_entry", i1 false, i1 false}
!546 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 253, i32 2}
!547 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.388, !546, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.389, !546, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @igt_check_drm_format_min_pitch._entry.390, !550, !"_entry", i1 false, i1 false}
!550 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 255, i32 2}
!551 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.391, !550, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.392, !550, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @igt_check_drm_format_min_pitch._entry.393, !554, !"_entry", i1 false, i1 false}
!554 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 257, i32 2}
!555 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.394, !554, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.395, !554, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @igt_check_drm_format_min_pitch._entry.396, !558, !"_entry", i1 false, i1 false}
!558 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 262, i32 2}
!559 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.397, !558, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @igt_check_drm_format_min_pitch._entry.398, !561, !"_entry", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 263, i32 2}
!562 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.399, !561, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @igt_check_drm_format_min_pitch._entry.400, !564, !"_entry", i1 false, i1 false}
!564 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 264, i32 2}
!565 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.401, !564, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @igt_check_drm_format_min_pitch._entry.402, !567, !"_entry", i1 false, i1 false}
!567 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 265, i32 2}
!568 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.403, !567, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @igt_check_drm_format_min_pitch._entry.404, !570, !"_entry", i1 false, i1 false}
!570 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 267, i32 2}
!571 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.405, !570, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @igt_check_drm_format_min_pitch._entry.406, !573, !"_entry", i1 false, i1 false}
!573 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 268, i32 2}
!574 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.407, !573, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @igt_check_drm_format_min_pitch._entry.408, !576, !"_entry", i1 false, i1 false}
!576 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 269, i32 2}
!577 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.409, !576, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @igt_check_drm_format_min_pitch._entry.410, !579, !"_entry", i1 false, i1 false}
!579 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 270, i32 2}
!580 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.411, !579, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @igt_check_drm_format_min_pitch._entry.412, !582, !"_entry", i1 false, i1 false}
!582 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 271, i32 2}
!583 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.413, !582, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @igt_check_drm_format_min_pitch._entry.414, !585, !"_entry", i1 false, i1 false}
!585 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 272, i32 2}
!586 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.415, !585, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @igt_check_drm_format_min_pitch._entry.416, !588, !"_entry", i1 false, i1 false}
!588 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 273, i32 2}
!589 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.417, !588, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @igt_check_drm_format_min_pitch._entry.418, !591, !"_entry", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 274, i32 2}
!592 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.419, !591, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @igt_check_drm_format_min_pitch._entry.420, !594, !"_entry", i1 false, i1 false}
!594 = !{!"../drivers/gpu/drm/selftests/test-drm_format.c", i32 276, i32 2}
!595 = !{ptr @igt_check_drm_format_min_pitch._entry_ptr.421, !594, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.422, !594, !"<string literal>", i1 false, i1 false}
!597 = !{i32 1, !"wchar_size", i32 2}
!598 = !{i32 1, !"min_enum_size", i32 4}
!599 = !{i32 8, !"branch-target-enforcement", i32 0}
!600 = !{i32 8, !"sign-return-address", i32 0}
!601 = !{i32 8, !"sign-return-address-all", i32 0}
!602 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!603 = !{i32 7, !"uwtable", i32 1}
!604 = !{i32 7, !"frame-pointer", i32 2}
!605 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
