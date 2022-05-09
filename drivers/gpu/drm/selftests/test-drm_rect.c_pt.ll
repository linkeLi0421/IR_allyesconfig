; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_rect.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_rect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@igt_drm_rect_clip_scaled_div_by_zero._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013drm_rect: %s/%u: Destination not be visible\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"igt_drm_rect_clip_scaled_div_by_zero\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/selftests/test-drm_rect.c\00", [54 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_div_by_zero._entry_ptr = internal global ptr @igt_drm_rect_clip_scaled_div_by_zero._entry, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_div_by_zero._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013drm_rect: %s/%u: Source should not be visible\0A\00", [47 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.5 = internal global ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.3, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_div_by_zero._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.7 = internal global ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.6, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_div_by_zero._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.9 = internal global ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.8, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013drm_rect: %s/%u: Source badly clipped\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"igt_drm_rect_clip_scaled_not_clipped\00", [59 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013drm_rect: %s/%u: Destination badly clipped\0A\00", [50 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.14 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.12, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013drm_rect: %s/%u: Destination should be visible\0A\00", [46 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.17 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.15, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013drm_rect: %s/%u: Source should be visible\0A\00", [51 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.20 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.18, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.22 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.21, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.24 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.23, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.26 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.25, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.28 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.27, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.30 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.29, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.32 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.31, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.34 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.33, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_not_clipped._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_not_clipped._entry_ptr.36 = internal global ptr @igt_drm_rect_clip_scaled_not_clipped._entry.35, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.37, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"igt_drm_rect_clip_scaled_clipped\00", [63 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.37, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.39 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.38, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.41 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.40, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.37, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.43 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.42, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.37, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.45 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.44, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.37, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.47 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.46, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.49 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.48, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.37, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.51 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.50, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.37, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.53 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.52, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.37, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.55 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.54, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.57 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.56, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.37, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.59 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.58, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.37, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.61 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.60, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.37, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.63 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.62, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.65 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.64, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.37, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.67 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.66, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.37, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.69 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.68, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.37, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.71 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.70, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.73 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.72, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.37, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.75 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.74, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.37, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.77 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.76, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.37, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.79 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.78, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.81 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.80, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_clipped._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.37, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_clipped._entry_ptr.83 = internal global ptr @igt_drm_rect_clip_scaled_clipped._entry.82, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_signed_vs_unsigned._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013drm_rect: %s/%u: Destination should not be visible\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"igt_drm_rect_clip_scaled_signed_vs_unsigned\00", [52 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_signed_vs_unsigned._entry_ptr = internal global ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry, section ".printk_index", align 4
@igt_drm_rect_clip_scaled_signed_vs_unsigned._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.85, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_drm_rect_clip_scaled_signed_vs_unsigned._entry_ptr.87 = internal global ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry.86, section ".printk_index", align 4
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 27, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 28, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 34, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 35, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 52, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 55, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 58, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 59, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 68, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 71, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 74, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 75, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 84, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 87, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 90, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 91, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 108, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 111, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 114, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 115, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 124, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 127, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 130, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 131, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 140, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 143, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 146, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 147, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 156, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 159, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 162, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 163, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 172, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 175, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 178, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 179, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 188, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 191, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 194, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 195, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 219, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private constant [45 x i8] c"../drivers/gpu/drm/selftests/test-drm_rect.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 220, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @igt_drm_rect_clip_scaled_clipped._entry, ptr @igt_drm_rect_clip_scaled_clipped._entry.38, ptr @igt_drm_rect_clip_scaled_clipped._entry.40, ptr @igt_drm_rect_clip_scaled_clipped._entry.42, ptr @igt_drm_rect_clip_scaled_clipped._entry.44, ptr @igt_drm_rect_clip_scaled_clipped._entry.46, ptr @igt_drm_rect_clip_scaled_clipped._entry.48, ptr @igt_drm_rect_clip_scaled_clipped._entry.50, ptr @igt_drm_rect_clip_scaled_clipped._entry.52, ptr @igt_drm_rect_clip_scaled_clipped._entry.54, ptr @igt_drm_rect_clip_scaled_clipped._entry.56, ptr @igt_drm_rect_clip_scaled_clipped._entry.58, ptr @igt_drm_rect_clip_scaled_clipped._entry.60, ptr @igt_drm_rect_clip_scaled_clipped._entry.62, ptr @igt_drm_rect_clip_scaled_clipped._entry.64, ptr @igt_drm_rect_clip_scaled_clipped._entry.66, ptr @igt_drm_rect_clip_scaled_clipped._entry.68, ptr @igt_drm_rect_clip_scaled_clipped._entry.70, ptr @igt_drm_rect_clip_scaled_clipped._entry.72, ptr @igt_drm_rect_clip_scaled_clipped._entry.74, ptr @igt_drm_rect_clip_scaled_clipped._entry.76, ptr @igt_drm_rect_clip_scaled_clipped._entry.78, ptr @igt_drm_rect_clip_scaled_clipped._entry.80, ptr @igt_drm_rect_clip_scaled_clipped._entry.82, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.39, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.41, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.43, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.45, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.47, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.49, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.51, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.53, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.55, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.57, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.59, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.61, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.63, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.65, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.67, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.69, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.71, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.73, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.75, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.77, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.79, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.81, ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.83, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.3, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.6, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.8, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.5, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.7, ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.9, ptr @igt_drm_rect_clip_scaled_not_clipped._entry, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.12, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.15, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.18, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.21, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.23, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.25, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.27, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.29, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.31, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.33, ptr @igt_drm_rect_clip_scaled_not_clipped._entry.35, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.14, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.17, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.20, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.22, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.24, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.26, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.28, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.30, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.32, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.34, ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.36, ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry, ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry.86, ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry_ptr, ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry_ptr.87, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.37, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_div_by_zero._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_not_clipped._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_clipped._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_drm_rect_clip_scaled_div_by_zero(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.drm_rect, align 4
  %dst = alloca %struct.drm_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src) #4
  %0 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #4
  %3 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %9 = call ptr @memset(ptr %src, i32 0, i32 16)
  %10 = call ptr @memset(ptr %dst, i32 0, i32 16)
  %11 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %clip, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %8, align 4
  %call = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  br i1 %call, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 27) #7
  br label %cleanup

do.body5:                                         ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src, align 4
  %sub.i.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i, label %drm_rect_visible.exit, label %do.body5.do.end15_crit_edge

do.body5.do.end15_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

drm_rect_visible.exit:                            ; preds = %do.body5
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %2, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %0, align 4
  %sub.i4.i = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i4.i)
  %cmp2.i = icmp sgt i32 %sub.i4.i, 0
  br i1 %cmp2.i, label %do.end10, label %drm_rect_visible.exit.do.end15_crit_edge

drm_rect_visible.exit.do.end15_crit_edge:         ; preds = %drm_rect_visible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

do.end10:                                         ; preds = %drm_rect_visible.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 28) #7
  br label %cleanup

do.end15:                                         ; preds = %drm_rect_visible.exit.do.end15_crit_edge, %do.body5.do.end15_crit_edge
  %23 = call ptr @memset(ptr %src, i32 0, i32 16)
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %dst, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %3, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %4, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %5, align 4
  %28 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %clip, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %6, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %7, align 4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %8, align 4
  %call16 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  br i1 %call16, label %do.end23, label %do.body29

do.end23:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34) #7
  br label %cleanup

do.body29:                                        ; preds = %do.end15
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %34 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %src, align 4
  %sub.i.i60 = sub i32 %33, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i60)
  %cmp.i61 = icmp sgt i32 %sub.i.i60, 0
  br i1 %cmp.i61, label %drm_rect_visible.exit67, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

drm_rect_visible.exit67:                          ; preds = %do.body29
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  %sub.i4.i64 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i4.i64)
  %cmp2.i65 = icmp sgt i32 %sub.i4.i64, 0
  br i1 %cmp2.i65, label %do.end34, label %drm_rect_visible.exit67.cleanup_crit_edge

drm_rect_visible.exit67.cleanup_crit_edge:        ; preds = %drm_rect_visible.exit67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end34:                                         ; preds = %drm_rect_visible.exit67
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 35) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %drm_rect_visible.exit67.cleanup_crit_edge, %do.body29.cleanup_crit_edge, %do.end23, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end23 ], [ -22, %do.end34 ], [ 0, %drm_rect_visible.exit67.cleanup_crit_edge ], [ 0, %do.body29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_clip_scaled(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_drm_rect_clip_scaled_not_clipped(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.drm_rect, align 4
  %dst = alloca %struct.drm_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src) #4
  %0 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #4
  %3 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %9 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %src, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65536, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65536, ptr %2, align 4
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dst, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %5, align 4
  %17 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %clip, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %8, align 4
  %call = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %cmp1.not = icmp eq i32 %24, 65536
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3.not = icmp eq i32 %26, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false2.do.end_crit_edge

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %28)
  %cmp5.not = icmp eq i32 %28, 65536
  br i1 %cmp5.not, label %do.body10, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 54) #7
  br label %cleanup

do.body10:                                        ; preds = %lor.lhs.false4
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp12.not = icmp eq i32 %30, 0
  br i1 %cmp12.not, label %lor.lhs.false13, label %do.body10.do.end25_crit_edge

do.body10.do.end25_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false13:                                  ; preds = %do.body10
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp15.not = icmp eq i32 %32, 1
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false13.do.end25_crit_edge

lor.lhs.false13.do.end25_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp18.not = icmp eq i32 %34, 0
  br i1 %cmp18.not, label %lor.lhs.false19, label %lor.lhs.false16.do.end25_crit_edge

lor.lhs.false16.do.end25_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp21.not = icmp eq i32 %36, 1
  br i1 %cmp21.not, label %do.body31, label %lor.lhs.false19.do.end25_crit_edge

lor.lhs.false19.do.end25_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false19.do.end25_crit_edge, %lor.lhs.false16.do.end25_crit_edge, %lor.lhs.false13.do.end25_crit_edge, %do.body10.do.end25_crit_edge
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 57) #7
  br label %cleanup

do.body31:                                        ; preds = %lor.lhs.false19
  br i1 %call, label %do.body41, label %do.end35

do.end35:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 58) #7
  br label %cleanup

do.body41:                                        ; preds = %do.body31
  %37 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %src, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %0, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 131072, ptr %1, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 131072, ptr %2, align 4
  %41 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dst, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %3, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %4, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %5, align 4
  %45 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %clip, align 4
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %6, align 4
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %7, align 4
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %8, align 4
  %call52 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %49 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp56.not = icmp eq i32 %50, 0
  br i1 %cmp56.not, label %lor.lhs.false57, label %do.body41.do.end69_crit_edge

do.body41.do.end69_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

lor.lhs.false57:                                  ; preds = %do.body41
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %52)
  %cmp59.not = icmp eq i32 %52, 131072
  br i1 %cmp59.not, label %lor.lhs.false60, label %lor.lhs.false57.do.end69_crit_edge

lor.lhs.false57.do.end69_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp62.not = icmp eq i32 %54, 0
  br i1 %cmp62.not, label %lor.lhs.false63, label %lor.lhs.false60.do.end69_crit_edge

lor.lhs.false60.do.end69_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %56)
  %cmp65.not = icmp eq i32 %56, 131072
  br i1 %cmp65.not, label %do.body75, label %lor.lhs.false63.do.end69_crit_edge

lor.lhs.false63.do.end69_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

do.end69:                                         ; preds = %lor.lhs.false63.do.end69_crit_edge, %lor.lhs.false60.do.end69_crit_edge, %lor.lhs.false57.do.end69_crit_edge, %do.body41.do.end69_crit_edge
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 70) #7
  br label %cleanup

do.body75:                                        ; preds = %lor.lhs.false63
  %57 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp77.not = icmp eq i32 %58, 0
  br i1 %cmp77.not, label %lor.lhs.false78, label %do.body75.do.end90_crit_edge

do.body75.do.end90_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

lor.lhs.false78:                                  ; preds = %do.body75
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp80.not = icmp eq i32 %60, 1
  br i1 %cmp80.not, label %lor.lhs.false81, label %lor.lhs.false78.do.end90_crit_edge

lor.lhs.false78.do.end90_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp83.not = icmp eq i32 %62, 0
  br i1 %cmp83.not, label %lor.lhs.false84, label %lor.lhs.false81.do.end90_crit_edge

lor.lhs.false81.do.end90_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp86.not = icmp eq i32 %64, 1
  br i1 %cmp86.not, label %do.body96, label %lor.lhs.false84.do.end90_crit_edge

lor.lhs.false84.do.end90_crit_edge:               ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

do.end90:                                         ; preds = %lor.lhs.false84.do.end90_crit_edge, %lor.lhs.false81.do.end90_crit_edge, %lor.lhs.false78.do.end90_crit_edge, %do.body75.do.end90_crit_edge
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 73) #7
  br label %cleanup

do.body96:                                        ; preds = %lor.lhs.false84
  br i1 %call52, label %do.body107, label %do.end101

do.end101:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #6
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 74) #7
  br label %cleanup

do.body107:                                       ; preds = %do.body96
  %65 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %src, align 4
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %0, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 65536, ptr %1, align 4
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 65536, ptr %2, align 4
  %69 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %dst, align 4
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %3, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %4, align 4
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %5, align 4
  %73 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %clip, align 4
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %6, align 4
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %7, align 4
  %76 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %8, align 4
  %call118 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %77 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp122.not = icmp eq i32 %78, 0
  br i1 %cmp122.not, label %lor.lhs.false123, label %do.body107.do.end135_crit_edge

do.body107.do.end135_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

lor.lhs.false123:                                 ; preds = %do.body107
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %80)
  %cmp125.not = icmp eq i32 %80, 65536
  br i1 %cmp125.not, label %lor.lhs.false126, label %lor.lhs.false123.do.end135_crit_edge

lor.lhs.false123.do.end135_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

lor.lhs.false126:                                 ; preds = %lor.lhs.false123
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp128.not = icmp eq i32 %82, 0
  br i1 %cmp128.not, label %lor.lhs.false129, label %lor.lhs.false126.do.end135_crit_edge

lor.lhs.false126.do.end135_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

lor.lhs.false129:                                 ; preds = %lor.lhs.false126
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %84)
  %cmp131.not = icmp eq i32 %84, 65536
  br i1 %cmp131.not, label %do.body141, label %lor.lhs.false129.do.end135_crit_edge

lor.lhs.false129.do.end135_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

do.end135:                                        ; preds = %lor.lhs.false129.do.end135_crit_edge, %lor.lhs.false126.do.end135_crit_edge, %lor.lhs.false123.do.end135_crit_edge, %do.body107.do.end135_crit_edge
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 86) #7
  br label %cleanup

do.body141:                                       ; preds = %lor.lhs.false129
  %85 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp143.not = icmp eq i32 %86, 0
  br i1 %cmp143.not, label %lor.lhs.false144, label %do.body141.do.end156_crit_edge

do.body141.do.end156_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

lor.lhs.false144:                                 ; preds = %do.body141
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp146.not = icmp eq i32 %88, 2
  br i1 %cmp146.not, label %lor.lhs.false147, label %lor.lhs.false144.do.end156_crit_edge

lor.lhs.false144.do.end156_crit_edge:             ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp149.not = icmp eq i32 %90, 0
  br i1 %cmp149.not, label %lor.lhs.false150, label %lor.lhs.false147.do.end156_crit_edge

lor.lhs.false147.do.end156_crit_edge:             ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

lor.lhs.false150:                                 ; preds = %lor.lhs.false147
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp152.not = icmp eq i32 %92, 2
  br i1 %cmp152.not, label %do.body162, label %lor.lhs.false150.do.end156_crit_edge

lor.lhs.false150.do.end156_crit_edge:             ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

do.end156:                                        ; preds = %lor.lhs.false150.do.end156_crit_edge, %lor.lhs.false147.do.end156_crit_edge, %lor.lhs.false144.do.end156_crit_edge, %do.body141.do.end156_crit_edge
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 89) #7
  br label %cleanup

do.body162:                                       ; preds = %lor.lhs.false150
  br i1 %call118, label %do.body162.cleanup_crit_edge, label %do.end167

do.body162.cleanup_crit_edge:                     ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end167:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 90) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end167, %do.body162.cleanup_crit_edge, %do.end156, %do.end135, %do.end101, %do.end90, %do.end69, %do.end35, %do.end25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end25 ], [ -22, %do.end69 ], [ -22, %do.end90 ], [ -22, %do.end135 ], [ -22, %do.end156 ], [ -22, %do.end167 ], [ -22, %do.end101 ], [ -22, %do.end35 ], [ 0, %do.body162.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_drm_rect_clip_scaled_clipped(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.drm_rect, align 4
  %dst = alloca %struct.drm_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src) #4
  %0 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #4
  %3 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %9 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %src, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 131072, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 131072, ptr %2, align 4
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dst, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %5, align 4
  %17 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %clip, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %8, align 4
  %call = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %cmp1.not = icmp eq i32 %24, 65536
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3.not = icmp eq i32 %26, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false2.do.end_crit_edge

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %28)
  %cmp5.not = icmp eq i32 %28, 65536
  br i1 %cmp5.not, label %do.body10, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, i32 noundef 110) #7
  br label %cleanup

do.body10:                                        ; preds = %lor.lhs.false4
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp12.not = icmp eq i32 %30, 0
  br i1 %cmp12.not, label %lor.lhs.false13, label %do.body10.do.end25_crit_edge

do.body10.do.end25_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false13:                                  ; preds = %do.body10
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp15.not = icmp eq i32 %32, 1
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false13.do.end25_crit_edge

lor.lhs.false13.do.end25_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp18.not = icmp eq i32 %34, 0
  br i1 %cmp18.not, label %lor.lhs.false19, label %lor.lhs.false16.do.end25_crit_edge

lor.lhs.false16.do.end25_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp21.not = icmp eq i32 %36, 1
  br i1 %cmp21.not, label %do.body31, label %lor.lhs.false19.do.end25_crit_edge

lor.lhs.false19.do.end25_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false19.do.end25_crit_edge, %lor.lhs.false16.do.end25_crit_edge, %lor.lhs.false13.do.end25_crit_edge, %do.body10.do.end25_crit_edge
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.37, i32 noundef 113) #7
  br label %cleanup

do.body31:                                        ; preds = %lor.lhs.false19
  br i1 %call, label %do.body41, label %do.end35

do.end35:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 114) #7
  br label %cleanup

do.body41:                                        ; preds = %do.body31
  %37 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %src, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %0, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 131072, ptr %1, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 131072, ptr %2, align 4
  %41 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dst, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %3, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %4, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %5, align 4
  %45 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %clip, align 4
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %6, align 4
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %7, align 4
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %8, align 4
  %call52 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %49 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %50)
  %cmp56.not = icmp eq i32 %50, 65536
  br i1 %cmp56.not, label %lor.lhs.false57, label %do.body41.do.end69_crit_edge

do.body41.do.end69_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

lor.lhs.false57:                                  ; preds = %do.body41
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %52)
  %cmp59.not = icmp eq i32 %52, 131072
  br i1 %cmp59.not, label %lor.lhs.false60, label %lor.lhs.false57.do.end69_crit_edge

lor.lhs.false57.do.end69_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %54)
  %cmp62.not = icmp eq i32 %54, 65536
  br i1 %cmp62.not, label %lor.lhs.false63, label %lor.lhs.false60.do.end69_crit_edge

lor.lhs.false60.do.end69_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %56)
  %cmp65.not = icmp eq i32 %56, 131072
  br i1 %cmp65.not, label %do.body75, label %lor.lhs.false63.do.end69_crit_edge

lor.lhs.false63.do.end69_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

do.end69:                                         ; preds = %lor.lhs.false63.do.end69_crit_edge, %lor.lhs.false60.do.end69_crit_edge, %lor.lhs.false57.do.end69_crit_edge, %do.body41.do.end69_crit_edge
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, i32 noundef 126) #7
  br label %cleanup

do.body75:                                        ; preds = %lor.lhs.false63
  %57 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp77.not = icmp eq i32 %58, 1
  br i1 %cmp77.not, label %lor.lhs.false78, label %do.body75.do.end90_crit_edge

do.body75.do.end90_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

lor.lhs.false78:                                  ; preds = %do.body75
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp80.not = icmp eq i32 %60, 2
  br i1 %cmp80.not, label %lor.lhs.false81, label %lor.lhs.false78.do.end90_crit_edge

lor.lhs.false78.do.end90_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp83.not = icmp eq i32 %62, 1
  br i1 %cmp83.not, label %lor.lhs.false84, label %lor.lhs.false81.do.end90_crit_edge

lor.lhs.false81.do.end90_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp86.not = icmp eq i32 %64, 2
  br i1 %cmp86.not, label %do.body96, label %lor.lhs.false84.do.end90_crit_edge

lor.lhs.false84.do.end90_crit_edge:               ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end90

do.end90:                                         ; preds = %lor.lhs.false84.do.end90_crit_edge, %lor.lhs.false81.do.end90_crit_edge, %lor.lhs.false78.do.end90_crit_edge, %do.body75.do.end90_crit_edge
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.37, i32 noundef 129) #7
  br label %cleanup

do.body96:                                        ; preds = %lor.lhs.false84
  br i1 %call52, label %do.body107, label %do.end101

do.end101:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #6
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 130) #7
  br label %cleanup

do.body107:                                       ; preds = %do.body96
  %65 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %src, align 4
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %0, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 262144, ptr %1, align 4
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 262144, ptr %2, align 4
  %69 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %dst, align 4
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %3, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %4, align 4
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %5, align 4
  %73 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %clip, align 4
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %6, align 4
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %7, align 4
  %76 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %8, align 4
  %call118 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %77 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp122.not = icmp eq i32 %78, 0
  br i1 %cmp122.not, label %lor.lhs.false123, label %do.body107.do.end135_crit_edge

do.body107.do.end135_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

lor.lhs.false123:                                 ; preds = %do.body107
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %80)
  %cmp125.not = icmp eq i32 %80, 131072
  br i1 %cmp125.not, label %lor.lhs.false126, label %lor.lhs.false123.do.end135_crit_edge

lor.lhs.false123.do.end135_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

lor.lhs.false126:                                 ; preds = %lor.lhs.false123
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp128.not = icmp eq i32 %82, 0
  br i1 %cmp128.not, label %lor.lhs.false129, label %lor.lhs.false126.do.end135_crit_edge

lor.lhs.false126.do.end135_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

lor.lhs.false129:                                 ; preds = %lor.lhs.false126
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %84)
  %cmp131.not = icmp eq i32 %84, 131072
  br i1 %cmp131.not, label %do.body141, label %lor.lhs.false129.do.end135_crit_edge

lor.lhs.false129.do.end135_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end135

do.end135:                                        ; preds = %lor.lhs.false129.do.end135_crit_edge, %lor.lhs.false126.do.end135_crit_edge, %lor.lhs.false123.do.end135_crit_edge, %do.body107.do.end135_crit_edge
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, i32 noundef 142) #7
  br label %cleanup

do.body141:                                       ; preds = %lor.lhs.false129
  %85 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp143.not = icmp eq i32 %86, 0
  br i1 %cmp143.not, label %lor.lhs.false144, label %do.body141.do.end156_crit_edge

do.body141.do.end156_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

lor.lhs.false144:                                 ; preds = %do.body141
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp146.not = icmp eq i32 %88, 1
  br i1 %cmp146.not, label %lor.lhs.false147, label %lor.lhs.false144.do.end156_crit_edge

lor.lhs.false144.do.end156_crit_edge:             ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp149.not = icmp eq i32 %90, 0
  br i1 %cmp149.not, label %lor.lhs.false150, label %lor.lhs.false147.do.end156_crit_edge

lor.lhs.false147.do.end156_crit_edge:             ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

lor.lhs.false150:                                 ; preds = %lor.lhs.false147
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp152.not = icmp eq i32 %92, 1
  br i1 %cmp152.not, label %do.body162, label %lor.lhs.false150.do.end156_crit_edge

lor.lhs.false150.do.end156_crit_edge:             ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

do.end156:                                        ; preds = %lor.lhs.false150.do.end156_crit_edge, %lor.lhs.false147.do.end156_crit_edge, %lor.lhs.false144.do.end156_crit_edge, %do.body141.do.end156_crit_edge
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.37, i32 noundef 145) #7
  br label %cleanup

do.body162:                                       ; preds = %lor.lhs.false150
  br i1 %call118, label %do.body173, label %do.end167

do.end167:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 146) #7
  br label %cleanup

do.body173:                                       ; preds = %do.body162
  %93 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %src, align 4
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %0, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 262144, ptr %1, align 4
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 262144, ptr %2, align 4
  %97 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %dst, align 4
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %3, align 4
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %4, align 4
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %5, align 4
  %101 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %clip, align 4
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %6, align 4
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %7, align 4
  %104 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %8, align 4
  %call184 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %105 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %106)
  %cmp188.not = icmp eq i32 %106, 131072
  br i1 %cmp188.not, label %lor.lhs.false189, label %do.body173.do.end201_crit_edge

do.body173.do.end201_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end201

lor.lhs.false189:                                 ; preds = %do.body173
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %108)
  %cmp191.not = icmp eq i32 %108, 262144
  br i1 %cmp191.not, label %lor.lhs.false192, label %lor.lhs.false189.do.end201_crit_edge

lor.lhs.false189.do.end201_crit_edge:             ; preds = %lor.lhs.false189
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end201

lor.lhs.false192:                                 ; preds = %lor.lhs.false189
  %109 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %110)
  %cmp194.not = icmp eq i32 %110, 131072
  br i1 %cmp194.not, label %lor.lhs.false195, label %lor.lhs.false192.do.end201_crit_edge

lor.lhs.false192.do.end201_crit_edge:             ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end201

lor.lhs.false195:                                 ; preds = %lor.lhs.false192
  %111 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %112)
  %cmp197.not = icmp eq i32 %112, 262144
  br i1 %cmp197.not, label %do.body207, label %lor.lhs.false195.do.end201_crit_edge

lor.lhs.false195.do.end201_crit_edge:             ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end201

do.end201:                                        ; preds = %lor.lhs.false195.do.end201_crit_edge, %lor.lhs.false192.do.end201_crit_edge, %lor.lhs.false189.do.end201_crit_edge, %do.body173.do.end201_crit_edge
  %call203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, i32 noundef 158) #7
  br label %cleanup

do.body207:                                       ; preds = %lor.lhs.false195
  %113 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %cmp209.not = icmp eq i32 %114, 1
  br i1 %cmp209.not, label %lor.lhs.false210, label %do.body207.do.end222_crit_edge

do.body207.do.end222_crit_edge:                   ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end222

lor.lhs.false210:                                 ; preds = %do.body207
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %116)
  %cmp212.not = icmp eq i32 %116, 2
  br i1 %cmp212.not, label %lor.lhs.false213, label %lor.lhs.false210.do.end222_crit_edge

lor.lhs.false210.do.end222_crit_edge:             ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end222

lor.lhs.false213:                                 ; preds = %lor.lhs.false210
  %117 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp215.not = icmp eq i32 %118, 1
  br i1 %cmp215.not, label %lor.lhs.false216, label %lor.lhs.false213.do.end222_crit_edge

lor.lhs.false213.do.end222_crit_edge:             ; preds = %lor.lhs.false213
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end222

lor.lhs.false216:                                 ; preds = %lor.lhs.false213
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp218.not = icmp eq i32 %120, 2
  br i1 %cmp218.not, label %do.body228, label %lor.lhs.false216.do.end222_crit_edge

lor.lhs.false216.do.end222_crit_edge:             ; preds = %lor.lhs.false216
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end222

do.end222:                                        ; preds = %lor.lhs.false216.do.end222_crit_edge, %lor.lhs.false213.do.end222_crit_edge, %lor.lhs.false210.do.end222_crit_edge, %do.body207.do.end222_crit_edge
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.37, i32 noundef 161) #7
  br label %cleanup

do.body228:                                       ; preds = %lor.lhs.false216
  br i1 %call184, label %do.body239, label %do.end233

do.end233:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #6
  %call235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 162) #7
  br label %cleanup

do.body239:                                       ; preds = %do.body228
  %121 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %src, align 4
  %122 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %0, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 131072, ptr %1, align 4
  %124 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 131072, ptr %2, align 4
  %125 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %dst, align 4
  %126 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %3, align 4
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %4, align 4
  %128 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4, ptr %5, align 4
  %129 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %clip, align 4
  %130 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %6, align 4
  %131 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 2, ptr %7, align 4
  %132 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 2, ptr %8, align 4
  %call250 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %133 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp254.not = icmp eq i32 %134, 0
  br i1 %cmp254.not, label %lor.lhs.false255, label %do.body239.do.end267_crit_edge

do.body239.do.end267_crit_edge:                   ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end267

lor.lhs.false255:                                 ; preds = %do.body239
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %136)
  %cmp257.not = icmp eq i32 %136, 65536
  br i1 %cmp257.not, label %lor.lhs.false258, label %lor.lhs.false255.do.end267_crit_edge

lor.lhs.false255.do.end267_crit_edge:             ; preds = %lor.lhs.false255
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end267

lor.lhs.false258:                                 ; preds = %lor.lhs.false255
  %137 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp260.not = icmp eq i32 %138, 0
  br i1 %cmp260.not, label %lor.lhs.false261, label %lor.lhs.false258.do.end267_crit_edge

lor.lhs.false258.do.end267_crit_edge:             ; preds = %lor.lhs.false258
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end267

lor.lhs.false261:                                 ; preds = %lor.lhs.false258
  %139 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %140)
  %cmp263.not = icmp eq i32 %140, 65536
  br i1 %cmp263.not, label %do.body273, label %lor.lhs.false261.do.end267_crit_edge

lor.lhs.false261.do.end267_crit_edge:             ; preds = %lor.lhs.false261
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end267

do.end267:                                        ; preds = %lor.lhs.false261.do.end267_crit_edge, %lor.lhs.false258.do.end267_crit_edge, %lor.lhs.false255.do.end267_crit_edge, %do.body239.do.end267_crit_edge
  %call269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, i32 noundef 174) #7
  br label %cleanup

do.body273:                                       ; preds = %lor.lhs.false261
  %141 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp275.not = icmp eq i32 %142, 0
  br i1 %cmp275.not, label %lor.lhs.false276, label %do.body273.do.end288_crit_edge

do.body273.do.end288_crit_edge:                   ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end288

lor.lhs.false276:                                 ; preds = %do.body273
  %143 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp278.not = icmp eq i32 %144, 2
  br i1 %cmp278.not, label %lor.lhs.false279, label %lor.lhs.false276.do.end288_crit_edge

lor.lhs.false276.do.end288_crit_edge:             ; preds = %lor.lhs.false276
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end288

lor.lhs.false279:                                 ; preds = %lor.lhs.false276
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp281.not = icmp eq i32 %146, 0
  br i1 %cmp281.not, label %lor.lhs.false282, label %lor.lhs.false279.do.end288_crit_edge

lor.lhs.false279.do.end288_crit_edge:             ; preds = %lor.lhs.false279
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end288

lor.lhs.false282:                                 ; preds = %lor.lhs.false279
  %147 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp284.not = icmp eq i32 %148, 2
  br i1 %cmp284.not, label %do.body294, label %lor.lhs.false282.do.end288_crit_edge

lor.lhs.false282.do.end288_crit_edge:             ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end288

do.end288:                                        ; preds = %lor.lhs.false282.do.end288_crit_edge, %lor.lhs.false279.do.end288_crit_edge, %lor.lhs.false276.do.end288_crit_edge, %do.body273.do.end288_crit_edge
  %call290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.37, i32 noundef 177) #7
  br label %cleanup

do.body294:                                       ; preds = %lor.lhs.false282
  br i1 %call250, label %do.body305, label %do.end299

do.end299:                                        ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #6
  %call301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 178) #7
  br label %cleanup

do.body305:                                       ; preds = %do.body294
  %149 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %src, align 4
  %150 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %0, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 131072, ptr %1, align 4
  %152 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 131072, ptr %2, align 4
  %153 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %dst, align 4
  %154 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %3, align 4
  %155 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 4, ptr %4, align 4
  %156 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %5, align 4
  %157 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 2, ptr %clip, align 4
  %158 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2, ptr %6, align 4
  %159 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 4, ptr %7, align 4
  %160 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 4, ptr %8, align 4
  %call316 = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  %161 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %162)
  %cmp320.not = icmp eq i32 %162, 65536
  br i1 %cmp320.not, label %lor.lhs.false321, label %do.body305.do.end333_crit_edge

do.body305.do.end333_crit_edge:                   ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end333

lor.lhs.false321:                                 ; preds = %do.body305
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %164)
  %cmp323.not = icmp eq i32 %164, 131072
  br i1 %cmp323.not, label %lor.lhs.false324, label %lor.lhs.false321.do.end333_crit_edge

lor.lhs.false321.do.end333_crit_edge:             ; preds = %lor.lhs.false321
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end333

lor.lhs.false324:                                 ; preds = %lor.lhs.false321
  %165 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %166)
  %cmp326.not = icmp eq i32 %166, 65536
  br i1 %cmp326.not, label %lor.lhs.false327, label %lor.lhs.false324.do.end333_crit_edge

lor.lhs.false324.do.end333_crit_edge:             ; preds = %lor.lhs.false324
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end333

lor.lhs.false327:                                 ; preds = %lor.lhs.false324
  %167 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %168)
  %cmp329.not = icmp eq i32 %168, 131072
  br i1 %cmp329.not, label %do.body339, label %lor.lhs.false327.do.end333_crit_edge

lor.lhs.false327.do.end333_crit_edge:             ; preds = %lor.lhs.false327
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end333

do.end333:                                        ; preds = %lor.lhs.false327.do.end333_crit_edge, %lor.lhs.false324.do.end333_crit_edge, %lor.lhs.false321.do.end333_crit_edge, %do.body305.do.end333_crit_edge
  %call335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, i32 noundef 190) #7
  br label %cleanup

do.body339:                                       ; preds = %lor.lhs.false327
  %169 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %170)
  %cmp341.not = icmp eq i32 %170, 2
  br i1 %cmp341.not, label %lor.lhs.false342, label %do.body339.do.end354_crit_edge

do.body339.do.end354_crit_edge:                   ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end354

lor.lhs.false342:                                 ; preds = %do.body339
  %171 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %172)
  %cmp344.not = icmp eq i32 %172, 4
  br i1 %cmp344.not, label %lor.lhs.false345, label %lor.lhs.false342.do.end354_crit_edge

lor.lhs.false342.do.end354_crit_edge:             ; preds = %lor.lhs.false342
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end354

lor.lhs.false345:                                 ; preds = %lor.lhs.false342
  %173 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %174)
  %cmp347.not = icmp eq i32 %174, 2
  br i1 %cmp347.not, label %lor.lhs.false348, label %lor.lhs.false345.do.end354_crit_edge

lor.lhs.false345.do.end354_crit_edge:             ; preds = %lor.lhs.false345
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end354

lor.lhs.false348:                                 ; preds = %lor.lhs.false345
  %175 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %176)
  %cmp350.not = icmp eq i32 %176, 4
  br i1 %cmp350.not, label %do.body360, label %lor.lhs.false348.do.end354_crit_edge

lor.lhs.false348.do.end354_crit_edge:             ; preds = %lor.lhs.false348
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end354

do.end354:                                        ; preds = %lor.lhs.false348.do.end354_crit_edge, %lor.lhs.false345.do.end354_crit_edge, %lor.lhs.false342.do.end354_crit_edge, %do.body339.do.end354_crit_edge
  %call356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.37, i32 noundef 193) #7
  br label %cleanup

do.body360:                                       ; preds = %lor.lhs.false348
  br i1 %call316, label %do.body360.cleanup_crit_edge, label %do.end365

do.body360.cleanup_crit_edge:                     ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end365:                                        ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #6
  %call367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.37, i32 noundef 194) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end365, %do.body360.cleanup_crit_edge, %do.end354, %do.end333, %do.end299, %do.end288, %do.end267, %do.end233, %do.end222, %do.end201, %do.end167, %do.end156, %do.end135, %do.end101, %do.end90, %do.end69, %do.end35, %do.end25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end25 ], [ -22, %do.end69 ], [ -22, %do.end90 ], [ -22, %do.end135 ], [ -22, %do.end156 ], [ -22, %do.end201 ], [ -22, %do.end222 ], [ -22, %do.end267 ], [ -22, %do.end288 ], [ -22, %do.end333 ], [ -22, %do.end354 ], [ -22, %do.end365 ], [ -22, %do.end299 ], [ -22, %do.end233 ], [ -22, %do.end167 ], [ -22, %do.end101 ], [ -22, %do.end35 ], [ 0, %do.body360.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_drm_rect_clip_scaled_signed_vs_unsigned(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.drm_rect, align 4
  %dst = alloca %struct.drm_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src) #4
  %0 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #4
  %3 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %9 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %src, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2147483647, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2147483647, ptr %2, align 4
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dst, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %5, align 4
  %17 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %clip, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %8, align 4
  %call = call zeroext i1 @drm_rect_clip_scaled(ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef nonnull %clip) #4
  br i1 %call, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 219) #7
  br label %cleanup

do.body5:                                         ; preds = %entry
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src, align 4
  %sub.i.i = sub i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i, label %drm_rect_visible.exit, label %do.body5.cleanup_crit_edge

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

drm_rect_visible.exit:                            ; preds = %do.body5
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %sub.i4.i = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i4.i)
  %cmp2.i = icmp sgt i32 %sub.i4.i, 0
  br i1 %cmp2.i, label %do.end10, label %drm_rect_visible.exit.cleanup_crit_edge

drm_rect_visible.exit.cleanup_crit_edge:          ; preds = %drm_rect_visible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end10:                                         ; preds = %drm_rect_visible.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.85, i32 noundef 220) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %drm_rect_visible.exit.cleanup_crit_edge, %do.body5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %drm_rect_visible.exit.cleanup_crit_edge ], [ 0, %do.body5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !134, !135, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 27, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 28, i32 2}
!8 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 34, i32 2}
!12 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 35, i32 2}
!15 = !{ptr @igt_drm_rect_clip_scaled_div_by_zero._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 52, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 55, i32 2}
!23 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 58, i32 2}
!27 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 59, i32 2}
!31 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.21, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 68, i32 2}
!35 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.23, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 71, i32 2}
!38 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.25, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 74, i32 2}
!41 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.27, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 75, i32 2}
!44 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.28, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.29, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 84, i32 2}
!47 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.31, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 87, i32 2}
!50 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.33, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 90, i32 2}
!53 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry.35, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 91, i32 2}
!56 = !{ptr @igt_drm_rect_clip_scaled_not_clipped._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 108, i32 2}
!59 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.38, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 111, i32 2}
!63 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.40, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 114, i32 2}
!66 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.41, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.42, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 115, i32 2}
!69 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.44, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 124, i32 2}
!72 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.45, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.46, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 127, i32 2}
!75 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.47, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.48, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 130, i32 2}
!78 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.49, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.50, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 131, i32 2}
!81 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.51, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.52, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 140, i32 2}
!84 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.53, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.54, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 143, i32 2}
!87 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.56, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 146, i32 2}
!90 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.57, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.58, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 147, i32 2}
!93 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.59, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.60, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 156, i32 2}
!96 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.61, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.62, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 159, i32 2}
!99 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.63, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.64, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 162, i32 2}
!102 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.65, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.66, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 163, i32 2}
!105 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.67, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.68, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 172, i32 2}
!108 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.69, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.70, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 175, i32 2}
!111 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.71, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.72, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 178, i32 2}
!114 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.73, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.74, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 179, i32 2}
!117 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.75, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.76, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 188, i32 2}
!120 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.77, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.78, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 191, i32 2}
!123 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.79, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.80, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 194, i32 2}
!126 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.81, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry.82, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 195, i32 2}
!129 = !{ptr @igt_drm_rect_clip_scaled_clipped._entry_ptr.83, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.84, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 219, i32 2}
!132 = !{ptr @.str.85, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry.86, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/selftests/test-drm_rect.c", i32 220, i32 2}
!137 = !{ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned._entry_ptr.87, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
