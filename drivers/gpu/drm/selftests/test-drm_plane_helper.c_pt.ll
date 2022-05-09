; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_plane_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_plane_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@__const.igt_check_plane_state.crtc_state = private unnamed_addr constant { ptr, i8, i8, i8, [1 x i8], i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, [1 x i8], i32, ptr, ptr, ptr } { ptr inttoptr (i32 16 to ptr), i8 1, i8 1, i8 0, [1 x i8] zeroinitializer, i32 0, i32 0, i32 0, %struct.drm_display_mode zeroinitializer, %struct.drm_display_mode { i32 65000, i16 1024, i16 1048, i16 1184, i16 1344, i16 0, i16 768, i16 771, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null }, align 4
@igt_check_plane_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013drm_plane_helper: %s/%u: Simple clipping check should pass\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igt_check_plane_state\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/selftests/test-drm_plane_helper.c\00", [46 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr = internal global ptr @igt_check_plane_state._entry, section ".printk_index", align 4
@igt_check_plane_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013drm_plane_helper: %s/%u: %s\00", [34 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.5 = internal global ptr @igt_check_plane_state._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FAIL_ON(!plane_state.visible)\0A\00", [33 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.8 = internal global ptr @igt_check_plane_state._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0, 0, 1024 << 16, 768 << 16))\0A\00", [61 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.11 = internal global ptr @igt_check_plane_state._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"FAIL_ON(!check_crtc_eq(&plane_state, 0, 0, 1024, 768))\0A\00", [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013drm_plane_helper: %s/%u: Rotated clipping check should pass\0A\00", [33 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.15 = internal global ptr @igt_check_plane_state._entry.13, section ".printk_index", align 4
@igt_check_plane_state._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.17 = internal global ptr @igt_check_plane_state._entry.16, section ".printk_index", align 4
@igt_check_plane_state._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.19 = internal global ptr @igt_check_plane_state._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0, 0, 768 << 16, 1024 << 16))\0A\00", [61 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.22 = internal global ptr @igt_check_plane_state._entry.21, section ".printk_index", align 4
@igt_check_plane_state._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013drm_plane_helper: %s/%u: Should not be able to position on the crtc with can_position=false\0A\00", [33 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.25 = internal global ptr @igt_check_plane_state._entry.23, section ".printk_index", align 4
@igt_check_plane_state._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013drm_plane_helper: %s/%u: Simple positioning should work\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.28 = internal global ptr @igt_check_plane_state._entry.26, section ".printk_index", align 4
@igt_check_plane_state._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.30 = internal global ptr @igt_check_plane_state._entry.29, section ".printk_index", align 4
@igt_check_plane_state._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.32 = internal global ptr @igt_check_plane_state._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0, 0, 1023 << 16, 767 << 16))\0A\00", [61 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.35 = internal global ptr @igt_check_plane_state._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"FAIL_ON(!check_crtc_eq(&plane_state, 0, 0, 1023, 767))\0A\00", [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013drm_plane_helper: %s/%u: Upscaling out of range should fail.\0A\00", [32 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.39 = internal global ptr @igt_check_plane_state._entry.37, section ".printk_index", align 4
@igt_check_plane_state._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013drm_plane_helper: %s/%u: Upscaling exactly 2x should work\0A\00", [35 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.42 = internal global ptr @igt_check_plane_state._entry.40, section ".printk_index", align 4
@igt_check_plane_state._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.44 = internal global ptr @igt_check_plane_state._entry.43, section ".printk_index", align 4
@igt_check_plane_state._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.46 = internal global ptr @igt_check_plane_state._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0, 0, 512 << 16, 384 << 16))\0A\00", [62 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.49 = internal global ptr @igt_check_plane_state._entry.48, section ".printk_index", align 4
@igt_check_plane_state._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013drm_plane_helper: %s/%u: Downscaling out of range should fail.\0A\00", [62 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.52 = internal global ptr @igt_check_plane_state._entry.50, section ".printk_index", align 4
@igt_check_plane_state._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013drm_plane_helper: %s/%u: Should succeed with exact scaling limit\0A\00", [60 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.55 = internal global ptr @igt_check_plane_state._entry.53, section ".printk_index", align 4
@igt_check_plane_state._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.57 = internal global ptr @igt_check_plane_state._entry.56, section ".printk_index", align 4
@igt_check_plane_state._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.59 = internal global ptr @igt_check_plane_state._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0, 0, 2048 << 16, 1536 << 16))\0A\00", [60 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.62 = internal global ptr @igt_check_plane_state._entry.61, section ".printk_index", align 4
@igt_check_plane_state._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013drm_plane_helper: %s/%u: Should succeed by clipping to exact multiple\00", [56 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.65 = internal global ptr @igt_check_plane_state._entry.63, section ".printk_index", align 4
@igt_check_plane_state._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.67 = internal global ptr @igt_check_plane_state._entry.66, section ".printk_index", align 4
@igt_check_plane_state._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.69 = internal global ptr @igt_check_plane_state._entry.68, section ".printk_index", align 4
@.str.70 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0, 0, 2 << 16, 2 << 16))\0A\00", [34 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.72 = internal global ptr @igt_check_plane_state._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"FAIL_ON(!check_crtc_eq(&plane_state, 1022, 766, 2, 2))\0A\00", [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.75 = internal global ptr @igt_check_plane_state._entry.74, section ".printk_index", align 4
@igt_check_plane_state._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.77 = internal global ptr @igt_check_plane_state._entry.76, section ".printk_index", align 4
@igt_check_plane_state._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.79 = internal global ptr @igt_check_plane_state._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0x40002, 0x40002, 1024 << 16, 768 << 16))\0A\00", [49 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.82 = internal global ptr @igt_check_plane_state._entry.81, section ".printk_index", align 4
@igt_check_plane_state._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.84 = internal global ptr @igt_check_plane_state._entry.83, section ".printk_index", align 4
@igt_check_plane_state._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.86 = internal global ptr @igt_check_plane_state._entry.85, section ".printk_index", align 4
@igt_check_plane_state._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.88 = internal global ptr @igt_check_plane_state._entry.87, section ".printk_index", align 4
@igt_check_plane_state._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.90 = internal global ptr @igt_check_plane_state._entry.89, section ".printk_index", align 4
@igt_check_plane_state._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.92 = internal global ptr @igt_check_plane_state._entry.91, section ".printk_index", align 4
@igt_check_plane_state._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.94 = internal global ptr @igt_check_plane_state._entry.93, section ".printk_index", align 4
@igt_check_plane_state._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.96 = internal global ptr @igt_check_plane_state._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"FAIL_ON(!check_src_eq(&plane_state, 0x3fffe, 0x3fffe, 1024 << 16, 768 << 16))\0A\00", [49 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_check_plane_state._entry_ptr.99 = internal global ptr @igt_check_plane_state._entry.98, section ".printk_index", align 4
@check_src_eq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013drm_plane_helper: src x coordinate %x should never be below 0.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_src_eq\00", [19 x i8] zeroinitializer }, align 32
@check_src_eq._entry_ptr = internal global ptr @check_src_eq._entry, section ".printk_index", align 4
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"src: \00", [26 x i8] zeroinitializer }, align 32
@check_src_eq._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.101, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013drm_plane_helper: src y coordinate %x should never be below 0.\0A\00", [62 x i8] zeroinitializer }, align 32
@check_src_eq._entry_ptr.105 = internal global ptr @check_src_eq._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dst: \00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 107, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 108, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 109, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 110, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 118, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 119, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 120, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 121, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 131, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 137, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 138, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 139, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 140, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 149, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 154, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 155, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 156, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 157, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 163, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 167, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 168, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 169, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 170, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 179, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 180, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 181, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 182, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 190, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 191, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 192, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 193, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 201, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 202, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 204, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 205, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 213, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 214, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 215, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 216, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 29, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 30, i32 24 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 34, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [53 x i8] c"../drivers/gpu/drm/selftests/test-drm_plane_helper.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 68, i32 24 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @check_src_eq._entry, ptr @check_src_eq._entry.103, ptr @check_src_eq._entry_ptr, ptr @check_src_eq._entry_ptr.105, ptr @igt_check_plane_state._entry, ptr @igt_check_plane_state._entry.10, ptr @igt_check_plane_state._entry.13, ptr @igt_check_plane_state._entry.16, ptr @igt_check_plane_state._entry.18, ptr @igt_check_plane_state._entry.21, ptr @igt_check_plane_state._entry.23, ptr @igt_check_plane_state._entry.26, ptr @igt_check_plane_state._entry.29, ptr @igt_check_plane_state._entry.3, ptr @igt_check_plane_state._entry.31, ptr @igt_check_plane_state._entry.34, ptr @igt_check_plane_state._entry.37, ptr @igt_check_plane_state._entry.40, ptr @igt_check_plane_state._entry.43, ptr @igt_check_plane_state._entry.45, ptr @igt_check_plane_state._entry.48, ptr @igt_check_plane_state._entry.50, ptr @igt_check_plane_state._entry.53, ptr @igt_check_plane_state._entry.56, ptr @igt_check_plane_state._entry.58, ptr @igt_check_plane_state._entry.61, ptr @igt_check_plane_state._entry.63, ptr @igt_check_plane_state._entry.66, ptr @igt_check_plane_state._entry.68, ptr @igt_check_plane_state._entry.7, ptr @igt_check_plane_state._entry.71, ptr @igt_check_plane_state._entry.74, ptr @igt_check_plane_state._entry.76, ptr @igt_check_plane_state._entry.78, ptr @igt_check_plane_state._entry.81, ptr @igt_check_plane_state._entry.83, ptr @igt_check_plane_state._entry.85, ptr @igt_check_plane_state._entry.87, ptr @igt_check_plane_state._entry.89, ptr @igt_check_plane_state._entry.91, ptr @igt_check_plane_state._entry.93, ptr @igt_check_plane_state._entry.95, ptr @igt_check_plane_state._entry.98, ptr @igt_check_plane_state._entry_ptr, ptr @igt_check_plane_state._entry_ptr.11, ptr @igt_check_plane_state._entry_ptr.15, ptr @igt_check_plane_state._entry_ptr.17, ptr @igt_check_plane_state._entry_ptr.19, ptr @igt_check_plane_state._entry_ptr.22, ptr @igt_check_plane_state._entry_ptr.25, ptr @igt_check_plane_state._entry_ptr.28, ptr @igt_check_plane_state._entry_ptr.30, ptr @igt_check_plane_state._entry_ptr.32, ptr @igt_check_plane_state._entry_ptr.35, ptr @igt_check_plane_state._entry_ptr.39, ptr @igt_check_plane_state._entry_ptr.42, ptr @igt_check_plane_state._entry_ptr.44, ptr @igt_check_plane_state._entry_ptr.46, ptr @igt_check_plane_state._entry_ptr.49, ptr @igt_check_plane_state._entry_ptr.5, ptr @igt_check_plane_state._entry_ptr.52, ptr @igt_check_plane_state._entry_ptr.55, ptr @igt_check_plane_state._entry_ptr.57, ptr @igt_check_plane_state._entry_ptr.59, ptr @igt_check_plane_state._entry_ptr.62, ptr @igt_check_plane_state._entry_ptr.65, ptr @igt_check_plane_state._entry_ptr.67, ptr @igt_check_plane_state._entry_ptr.69, ptr @igt_check_plane_state._entry_ptr.72, ptr @igt_check_plane_state._entry_ptr.75, ptr @igt_check_plane_state._entry_ptr.77, ptr @igt_check_plane_state._entry_ptr.79, ptr @igt_check_plane_state._entry_ptr.8, ptr @igt_check_plane_state._entry_ptr.82, ptr @igt_check_plane_state._entry_ptr.84, ptr @igt_check_plane_state._entry_ptr.86, ptr @igt_check_plane_state._entry_ptr.88, ptr @igt_check_plane_state._entry_ptr.90, ptr @igt_check_plane_state._entry_ptr.92, ptr @igt_check_plane_state._entry_ptr.94, ptr @igt_check_plane_state._entry_ptr.96, ptr @igt_check_plane_state._entry_ptr.99, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.20, ptr @.str.24, ptr @.str.27, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.47, ptr @.str.51, ptr @.str.54, ptr @.str.60, ptr @.str.64, ptr @.str.70, ptr @.str.73, ptr @.str.80, ptr @.str.97, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_plane_state._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_src_eq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_src_eq._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_check_plane_state(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %crtc_state = alloca %struct.drm_crtc_state, align 4
  %fb = alloca %struct.drm_framebuffer, align 8
  %plane_state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 284, ptr nonnull %crtc_state) #4
  %0 = call ptr @memcpy(ptr %crtc_state, ptr @__const.igt_check_plane_state.crtc_state, i32 284)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %fb) #4
  %1 = call ptr @memset(ptr %fb, i32 0, i32 144)
  %2 = getelementptr inbounds { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr], [4 x i8] }, ptr %fb, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2048, ptr %2, align 8
  %4 = getelementptr inbounds { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr], [4 x i8] }, ptr %fb, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2048, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %plane_state) #4
  %6 = call ptr @memset(ptr %plane_state, i32 0, i32 124)
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 1
  %7 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 16 to ptr), ptr %crtc, align 4
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %8 = ptrtoint ptr %fb1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fb, ptr %fb1, align 4
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 14
  %9 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rotation, align 4
  %src_x1.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 8
  %src_y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 9
  %10 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %src_y2.i, align 4
  %src_w3.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 11
  %11 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 134217728, ptr %src_w3.i, align 4
  %src_h4.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 10
  %12 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 134217728, ptr %src_h4.i, align 4
  %crtc_x1.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 4
  %crtc_y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 5
  %13 = ptrtoint ptr %crtc_y2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %crtc_y2.i, align 4
  %crtc_w3.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 6
  %14 = ptrtoint ptr %crtc_w3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2048, ptr %crtc_w3.i, align 4
  %crtc_h4.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 7
  %15 = ptrtoint ptr %crtc_h4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2048, ptr %crtc_h4.i, align 4
  %call = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 107) #7
  br label %cleanup

do.body9:                                         ; preds = %entry
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 22
  %16 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %do.end13, label %do.body19

do.end13:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body19:                                        ; preds = %do.body9
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp slt i32 %19, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %19) #7
  br label %do.end24

if.end.i:                                         ; preds = %do.body19
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp5.i = icmp slt i32 %21, 0
  br i1 %cmp5.i, label %do.end8.i, label %if.end14.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %21) #7
  br label %do.end24

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17.not.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp20.not.i = icmp eq i32 %21, 0
  %or.cond.i = select i1 %cmp17.not.i, i1 %cmp20.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false21.i, label %if.end14.i.do.end24_crit_edge

if.end14.i.do.end24_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

lor.lhs.false21.i:                                ; preds = %if.end14.i
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20, i32 2
  %22 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %23)
  %cmp24.not.i = icmp eq i32 %23, 67108864
  br i1 %cmp24.not.i, label %lor.lhs.false25.i, label %lor.lhs.false21.i.do.end24_crit_edge

lor.lhs.false21.i.do.end24_crit_edge:             ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

lor.lhs.false25.i:                                ; preds = %lor.lhs.false21.i
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20, i32 3
  %24 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %25)
  %cmp28.not.i = icmp eq i32 %25, 50331648
  br i1 %cmp28.not.i, label %do.body30, label %lor.lhs.false25.i.do.end24_crit_edge

lor.lhs.false25.i.do.end24_crit_edge:             ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false25.i.do.end24_crit_edge, %lor.lhs.false21.i.do.end24_crit_edge, %if.end14.i.do.end24_crit_edge, %do.end8.i, %do.end.i
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 109, ptr noundef nonnull @.str.9) #7
  br label %cleanup

do.body30:                                        ; preds = %lor.lhs.false25.i
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 21
  %26 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.body30.do.end35_crit_edge

do.body30.do.end35_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

lor.lhs.false.i:                                  ; preds = %do.body30
  %y1.i461 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 21, i32 1
  %28 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.not.i = icmp eq i32 %29, 0
  br i1 %cmp2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.do.end35_crit_edge

lor.lhs.false.i.do.end35_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %x2.i.i462 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 21, i32 2
  %30 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %31)
  %cmp5.not.i = icmp eq i32 %31, 1024
  br i1 %cmp5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false3.i.do.end35_crit_edge

lor.lhs.false3.i.do.end35_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %y2.i.i463 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 21, i32 3
  %32 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %33)
  %cmp9.not.i = icmp eq i32 %33, 768
  br i1 %cmp9.not.i, label %do.end40, label %lor.lhs.false6.i.do.end35_crit_edge

lor.lhs.false6.i.do.end35_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

do.end35:                                         ; preds = %lor.lhs.false6.i.do.end35_crit_edge, %lor.lhs.false3.i.do.end35_crit_edge, %lor.lhs.false.i.do.end35_crit_edge, %do.body30.do.end35_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 110, ptr noundef nonnull @.str.12) #7
  br label %cleanup

do.end40:                                         ; preds = %lor.lhs.false6.i
  %34 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 18, ptr %rotation, align 4
  %call42 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp44 = icmp slt i32 %call42, 0
  br i1 %cmp44, label %do.end48, label %do.body54

do.end48:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 118) #7
  br label %cleanup

do.body54:                                        ; preds = %do.end40
  %35 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool56.not = icmp eq i8 %36, 0
  br i1 %tobool56.not, label %do.end60, label %do.body66

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body66:                                        ; preds = %do.body54
  %37 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i466 = icmp slt i32 %38, 0
  br i1 %cmp.i466, label %do.end.i468, label %if.end.i471

do.end.i468:                                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  %call.i467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %38) #7
  br label %do.end71

if.end.i471:                                      ; preds = %do.body66
  %39 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp5.i470 = icmp slt i32 %40, 0
  br i1 %cmp5.i470, label %do.end8.i473, label %if.end14.i477

do.end8.i473:                                     ; preds = %if.end.i471
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %40) #7
  br label %do.end71

if.end14.i477:                                    ; preds = %if.end.i471
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp17.not.i474 = icmp eq i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp20.not.i475 = icmp eq i32 %40, 0
  %or.cond.i476 = select i1 %cmp17.not.i474, i1 %cmp20.not.i475, i1 false
  br i1 %or.cond.i476, label %lor.lhs.false21.i480, label %if.end14.i477.do.end71_crit_edge

if.end14.i477.do.end71_crit_edge:                 ; preds = %if.end14.i477
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end71

lor.lhs.false21.i480:                             ; preds = %if.end14.i477
  %41 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %42)
  %cmp24.not.i479 = icmp eq i32 %42, 50331648
  br i1 %cmp24.not.i479, label %lor.lhs.false25.i484, label %lor.lhs.false21.i480.do.end71_crit_edge

lor.lhs.false21.i480.do.end71_crit_edge:          ; preds = %lor.lhs.false21.i480
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end71

lor.lhs.false25.i484:                             ; preds = %lor.lhs.false21.i480
  %43 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %44)
  %cmp28.not.i483 = icmp eq i32 %44, 67108864
  br i1 %cmp28.not.i483, label %do.body77, label %lor.lhs.false25.i484.do.end71_crit_edge

lor.lhs.false25.i484.do.end71_crit_edge:          ; preds = %lor.lhs.false25.i484
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end71

do.end71:                                         ; preds = %lor.lhs.false25.i484.do.end71_crit_edge, %lor.lhs.false21.i480.do.end71_crit_edge, %if.end14.i477.do.end71_crit_edge, %do.end8.i473, %do.end.i468
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 120, ptr noundef nonnull @.str.20) #7
  br label %cleanup

do.body77:                                        ; preds = %lor.lhs.false25.i484
  %45 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not.i489 = icmp eq i32 %46, 0
  br i1 %cmp.not.i489, label %lor.lhs.false.i492, label %do.body77.do.end82_crit_edge

do.body77.do.end82_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end82

lor.lhs.false.i492:                               ; preds = %do.body77
  %47 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp2.not.i491 = icmp eq i32 %48, 0
  br i1 %cmp2.not.i491, label %lor.lhs.false3.i495, label %lor.lhs.false.i492.do.end82_crit_edge

lor.lhs.false.i492.do.end82_crit_edge:            ; preds = %lor.lhs.false.i492
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end82

lor.lhs.false3.i495:                              ; preds = %lor.lhs.false.i492
  %49 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %50)
  %cmp5.not.i494 = icmp eq i32 %50, 1024
  br i1 %cmp5.not.i494, label %lor.lhs.false6.i499, label %lor.lhs.false3.i495.do.end82_crit_edge

lor.lhs.false3.i495.do.end82_crit_edge:           ; preds = %lor.lhs.false3.i495
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end82

lor.lhs.false6.i499:                              ; preds = %lor.lhs.false3.i495
  %51 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %52)
  %cmp9.not.i498 = icmp eq i32 %52, 768
  br i1 %cmp9.not.i498, label %do.end87, label %lor.lhs.false6.i499.do.end82_crit_edge

lor.lhs.false6.i499.do.end82_crit_edge:           ; preds = %lor.lhs.false6.i499
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end82

do.end82:                                         ; preds = %lor.lhs.false6.i499.do.end82_crit_edge, %lor.lhs.false3.i495.do.end82_crit_edge, %lor.lhs.false.i492.do.end82_crit_edge, %do.body77.do.end82_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 121, ptr noundef nonnull @.str.12) #7
  br label %cleanup

do.end87:                                         ; preds = %lor.lhs.false6.i499
  %53 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %rotation, align 4
  %54 = ptrtoint ptr %src_x1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %src_x1.i, align 4
  %55 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %src_y2.i, align 4
  %56 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 67043328, ptr %src_w3.i, align 4
  %57 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 50266112, ptr %src_h4.i, align 4
  %58 = ptrtoint ptr %crtc_x1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %crtc_x1.i, align 4
  %59 = ptrtoint ptr %crtc_y2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %crtc_y2.i, align 4
  %60 = ptrtoint ptr %crtc_w3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1023, ptr %crtc_w3.i, align 4
  %61 = ptrtoint ptr %crtc_h4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 767, ptr %crtc_h4.i, align 4
  %call89 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool91.not = icmp eq i32 %call89, 0
  br i1 %tobool91.not, label %do.end95, label %do.end100

do.end95:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #6
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 131) #7
  br label %cleanup

do.end100:                                        ; preds = %do.end87
  %call101 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp103 = icmp slt i32 %call101, 0
  br i1 %cmp103, label %do.end107, label %do.body113

do.end107:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #6
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 137) #7
  br label %cleanup

do.body113:                                       ; preds = %do.end100
  %62 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool115.not = icmp eq i8 %63, 0
  br i1 %tobool115.not, label %do.end119, label %do.body125

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body125:                                       ; preds = %do.body113
  %64 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i512 = icmp slt i32 %65, 0
  br i1 %cmp.i512, label %do.end.i514, label %if.end.i517

do.end.i514:                                      ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  %call.i513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %65) #7
  br label %do.end130

if.end.i517:                                      ; preds = %do.body125
  %66 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp5.i516 = icmp slt i32 %67, 0
  br i1 %cmp5.i516, label %do.end8.i519, label %if.end14.i523

do.end8.i519:                                     ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i518 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %67) #7
  br label %do.end130

if.end14.i523:                                    ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp17.not.i520 = icmp eq i32 %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp20.not.i521 = icmp eq i32 %67, 0
  %or.cond.i522 = select i1 %cmp17.not.i520, i1 %cmp20.not.i521, i1 false
  br i1 %or.cond.i522, label %lor.lhs.false21.i526, label %if.end14.i523.do.end130_crit_edge

if.end14.i523.do.end130_crit_edge:                ; preds = %if.end14.i523
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end130

lor.lhs.false21.i526:                             ; preds = %if.end14.i523
  %68 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67043328, i32 %69)
  %cmp24.not.i525 = icmp eq i32 %69, 67043328
  br i1 %cmp24.not.i525, label %lor.lhs.false25.i530, label %lor.lhs.false21.i526.do.end130_crit_edge

lor.lhs.false21.i526.do.end130_crit_edge:         ; preds = %lor.lhs.false21.i526
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end130

lor.lhs.false25.i530:                             ; preds = %lor.lhs.false21.i526
  %70 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50266112, i32 %71)
  %cmp28.not.i529 = icmp eq i32 %71, 50266112
  br i1 %cmp28.not.i529, label %do.body136, label %lor.lhs.false25.i530.do.end130_crit_edge

lor.lhs.false25.i530.do.end130_crit_edge:         ; preds = %lor.lhs.false25.i530
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end130

do.end130:                                        ; preds = %lor.lhs.false25.i530.do.end130_crit_edge, %lor.lhs.false21.i526.do.end130_crit_edge, %if.end14.i523.do.end130_crit_edge, %do.end8.i519, %do.end.i514
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 139, ptr noundef nonnull @.str.33) #7
  br label %cleanup

do.body136:                                       ; preds = %lor.lhs.false25.i530
  %72 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.not.i535 = icmp eq i32 %73, 0
  br i1 %cmp.not.i535, label %lor.lhs.false.i538, label %do.body136.do.end141_crit_edge

do.body136.do.end141_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end141

lor.lhs.false.i538:                               ; preds = %do.body136
  %74 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp2.not.i537 = icmp eq i32 %75, 0
  br i1 %cmp2.not.i537, label %lor.lhs.false3.i541, label %lor.lhs.false.i538.do.end141_crit_edge

lor.lhs.false.i538.do.end141_crit_edge:           ; preds = %lor.lhs.false.i538
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end141

lor.lhs.false3.i541:                              ; preds = %lor.lhs.false.i538
  %76 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %77)
  %cmp5.not.i540 = icmp eq i32 %77, 1023
  br i1 %cmp5.not.i540, label %lor.lhs.false6.i545, label %lor.lhs.false3.i541.do.end141_crit_edge

lor.lhs.false3.i541.do.end141_crit_edge:          ; preds = %lor.lhs.false3.i541
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end141

lor.lhs.false6.i545:                              ; preds = %lor.lhs.false3.i541
  %78 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %79)
  %cmp9.not.i544 = icmp eq i32 %79, 767
  br i1 %cmp9.not.i544, label %do.end146, label %lor.lhs.false6.i545.do.end141_crit_edge

lor.lhs.false6.i545.do.end141_crit_edge:          ; preds = %lor.lhs.false6.i545
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end141

do.end141:                                        ; preds = %lor.lhs.false6.i545.do.end141_crit_edge, %lor.lhs.false3.i541.do.end141_crit_edge, %lor.lhs.false.i538.do.end141_crit_edge, %do.body136.do.end141_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 140, ptr noundef nonnull @.str.36) #7
  br label %cleanup

do.end146:                                        ; preds = %lor.lhs.false6.i545
  %80 = ptrtoint ptr %src_x1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %src_x1.i, align 4
  %81 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %src_y2.i, align 4
  %82 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 33554432, ptr %src_w3.i, align 4
  %83 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 25165824, ptr %src_h4.i, align 4
  %84 = ptrtoint ptr %crtc_x1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %crtc_x1.i, align 4
  %85 = ptrtoint ptr %crtc_y2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %crtc_y2.i, align 4
  %86 = ptrtoint ptr %crtc_w3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1024, ptr %crtc_w3.i, align 4
  %87 = ptrtoint ptr %crtc_h4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 768, ptr %crtc_h4.i, align 4
  %call147 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 32769, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool149.not = icmp eq i32 %call147, 0
  br i1 %tobool149.not, label %do.end153, label %do.end158

do.end153:                                        ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #6
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 149) #7
  br label %cleanup

do.end158:                                        ; preds = %do.end146
  %call159 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 32768, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp161 = icmp slt i32 %call159, 0
  br i1 %cmp161, label %do.end165, label %do.body171

do.end165:                                        ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #6
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 154) #7
  br label %cleanup

do.body171:                                       ; preds = %do.end158
  %88 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool173.not = icmp eq i8 %89, 0
  br i1 %tobool173.not, label %do.end177, label %do.body183

do.end177:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #6
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 155, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body183:                                       ; preds = %do.body171
  %90 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i558 = icmp slt i32 %91, 0
  br i1 %cmp.i558, label %do.end.i560, label %if.end.i563

do.end.i560:                                      ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #6
  %call.i559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %91) #7
  br label %do.end188

if.end.i563:                                      ; preds = %do.body183
  %92 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp5.i562 = icmp slt i32 %93, 0
  br i1 %cmp5.i562, label %do.end8.i565, label %if.end14.i569

do.end8.i565:                                     ; preds = %if.end.i563
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %93) #7
  br label %do.end188

if.end14.i569:                                    ; preds = %if.end.i563
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp17.not.i566 = icmp eq i32 %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp20.not.i567 = icmp eq i32 %93, 0
  %or.cond.i568 = select i1 %cmp17.not.i566, i1 %cmp20.not.i567, i1 false
  br i1 %or.cond.i568, label %lor.lhs.false21.i572, label %if.end14.i569.do.end188_crit_edge

if.end14.i569.do.end188_crit_edge:                ; preds = %if.end14.i569
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end188

lor.lhs.false21.i572:                             ; preds = %if.end14.i569
  %94 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %95)
  %cmp24.not.i571 = icmp eq i32 %95, 33554432
  br i1 %cmp24.not.i571, label %lor.lhs.false25.i576, label %lor.lhs.false21.i572.do.end188_crit_edge

lor.lhs.false21.i572.do.end188_crit_edge:         ; preds = %lor.lhs.false21.i572
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end188

lor.lhs.false25.i576:                             ; preds = %lor.lhs.false21.i572
  %96 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %97)
  %cmp28.not.i575 = icmp eq i32 %97, 25165824
  br i1 %cmp28.not.i575, label %do.body194, label %lor.lhs.false25.i576.do.end188_crit_edge

lor.lhs.false25.i576.do.end188_crit_edge:         ; preds = %lor.lhs.false25.i576
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end188

do.end188:                                        ; preds = %lor.lhs.false25.i576.do.end188_crit_edge, %lor.lhs.false21.i572.do.end188_crit_edge, %if.end14.i569.do.end188_crit_edge, %do.end8.i565, %do.end.i560
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @.str.47) #7
  br label %cleanup

do.body194:                                       ; preds = %lor.lhs.false25.i576
  %98 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.not.i581 = icmp eq i32 %99, 0
  br i1 %cmp.not.i581, label %lor.lhs.false.i584, label %do.body194.do.end199_crit_edge

do.body194.do.end199_crit_edge:                   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end199

lor.lhs.false.i584:                               ; preds = %do.body194
  %100 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp2.not.i583 = icmp eq i32 %101, 0
  br i1 %cmp2.not.i583, label %lor.lhs.false3.i587, label %lor.lhs.false.i584.do.end199_crit_edge

lor.lhs.false.i584.do.end199_crit_edge:           ; preds = %lor.lhs.false.i584
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end199

lor.lhs.false3.i587:                              ; preds = %lor.lhs.false.i584
  %102 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %103)
  %cmp5.not.i586 = icmp eq i32 %103, 1024
  br i1 %cmp5.not.i586, label %lor.lhs.false6.i591, label %lor.lhs.false3.i587.do.end199_crit_edge

lor.lhs.false3.i587.do.end199_crit_edge:          ; preds = %lor.lhs.false3.i587
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end199

lor.lhs.false6.i591:                              ; preds = %lor.lhs.false3.i587
  %104 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %105)
  %cmp9.not.i590 = icmp eq i32 %105, 768
  br i1 %cmp9.not.i590, label %do.end204, label %lor.lhs.false6.i591.do.end199_crit_edge

lor.lhs.false6.i591.do.end199_crit_edge:          ; preds = %lor.lhs.false6.i591
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end199

do.end199:                                        ; preds = %lor.lhs.false6.i591.do.end199_crit_edge, %lor.lhs.false3.i587.do.end199_crit_edge, %lor.lhs.false.i584.do.end199_crit_edge, %do.body194.do.end199_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 157, ptr noundef nonnull @.str.12) #7
  br label %cleanup

do.end204:                                        ; preds = %lor.lhs.false6.i591
  %106 = ptrtoint ptr %src_x1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %src_x1.i, align 4
  %107 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %src_y2.i, align 4
  %108 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 134217728, ptr %src_w3.i, align 4
  %109 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 100663296, ptr %src_h4.i, align 4
  %call205 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 131071, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool207.not = icmp eq i32 %call205, 0
  br i1 %tobool207.not, label %do.end211, label %do.end216

do.end211:                                        ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #6
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 163) #7
  br label %cleanup

do.end216:                                        ; preds = %do.end204
  %call217 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 131072, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp219 = icmp slt i32 %call217, 0
  br i1 %cmp219, label %do.end223, label %do.body229

do.end223:                                        ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #6
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 167) #7
  br label %cleanup

do.body229:                                       ; preds = %do.end216
  %110 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool231.not = icmp eq i8 %111, 0
  br i1 %tobool231.not, label %do.end235, label %do.body241

do.end235:                                        ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #6
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 168, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body241:                                       ; preds = %do.body229
  %112 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i600 = icmp slt i32 %113, 0
  br i1 %cmp.i600, label %do.end.i602, label %if.end.i605

do.end.i602:                                      ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #6
  %call.i601 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %113) #7
  br label %do.end246

if.end.i605:                                      ; preds = %do.body241
  %114 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp5.i604 = icmp slt i32 %115, 0
  br i1 %cmp5.i604, label %do.end8.i607, label %if.end14.i611

do.end8.i607:                                     ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i606 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %115) #7
  br label %do.end246

if.end14.i611:                                    ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp17.not.i608 = icmp eq i32 %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp20.not.i609 = icmp eq i32 %115, 0
  %or.cond.i610 = select i1 %cmp17.not.i608, i1 %cmp20.not.i609, i1 false
  br i1 %or.cond.i610, label %lor.lhs.false21.i614, label %if.end14.i611.do.end246_crit_edge

if.end14.i611.do.end246_crit_edge:                ; preds = %if.end14.i611
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end246

lor.lhs.false21.i614:                             ; preds = %if.end14.i611
  %116 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %117)
  %cmp24.not.i613 = icmp eq i32 %117, 134217728
  br i1 %cmp24.not.i613, label %lor.lhs.false25.i618, label %lor.lhs.false21.i614.do.end246_crit_edge

lor.lhs.false21.i614.do.end246_crit_edge:         ; preds = %lor.lhs.false21.i614
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end246

lor.lhs.false25.i618:                             ; preds = %lor.lhs.false21.i614
  %118 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %119)
  %cmp28.not.i617 = icmp eq i32 %119, 100663296
  br i1 %cmp28.not.i617, label %do.body252, label %lor.lhs.false25.i618.do.end246_crit_edge

lor.lhs.false25.i618.do.end246_crit_edge:         ; preds = %lor.lhs.false25.i618
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end246

do.end246:                                        ; preds = %lor.lhs.false25.i618.do.end246_crit_edge, %lor.lhs.false21.i614.do.end246_crit_edge, %if.end14.i611.do.end246_crit_edge, %do.end8.i607, %do.end.i602
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169, ptr noundef nonnull @.str.60) #7
  br label %cleanup

do.body252:                                       ; preds = %lor.lhs.false25.i618
  %120 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.not.i623 = icmp eq i32 %121, 0
  br i1 %cmp.not.i623, label %lor.lhs.false.i626, label %do.body252.do.end257_crit_edge

do.body252.do.end257_crit_edge:                   ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end257

lor.lhs.false.i626:                               ; preds = %do.body252
  %122 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp2.not.i625 = icmp eq i32 %123, 0
  br i1 %cmp2.not.i625, label %lor.lhs.false3.i629, label %lor.lhs.false.i626.do.end257_crit_edge

lor.lhs.false.i626.do.end257_crit_edge:           ; preds = %lor.lhs.false.i626
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end257

lor.lhs.false3.i629:                              ; preds = %lor.lhs.false.i626
  %124 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %125)
  %cmp5.not.i628 = icmp eq i32 %125, 1024
  br i1 %cmp5.not.i628, label %lor.lhs.false6.i633, label %lor.lhs.false3.i629.do.end257_crit_edge

lor.lhs.false3.i629.do.end257_crit_edge:          ; preds = %lor.lhs.false3.i629
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end257

lor.lhs.false6.i633:                              ; preds = %lor.lhs.false3.i629
  %126 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %127)
  %cmp9.not.i632 = icmp eq i32 %127, 768
  br i1 %cmp9.not.i632, label %do.end262, label %lor.lhs.false6.i633.do.end257_crit_edge

lor.lhs.false6.i633.do.end257_crit_edge:          ; preds = %lor.lhs.false6.i633
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end257

do.end257:                                        ; preds = %lor.lhs.false6.i633.do.end257_crit_edge, %lor.lhs.false3.i629.do.end257_crit_edge, %lor.lhs.false.i626.do.end257_crit_edge, %do.body252.do.end257_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 170, ptr noundef nonnull @.str.12) #7
  br label %cleanup

do.end262:                                        ; preds = %lor.lhs.false6.i633
  %128 = ptrtoint ptr %src_x1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %src_x1.i, align 4
  %129 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %src_y2.i, align 4
  %130 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 262145, ptr %src_w3.i, align 4
  %131 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 262145, ptr %src_h4.i, align 4
  %132 = ptrtoint ptr %crtc_x1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1022, ptr %crtc_x1.i, align 4
  %133 = ptrtoint ptr %crtc_y2.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 766, ptr %crtc_y2.i, align 4
  %134 = ptrtoint ptr %crtc_w3.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 4, ptr %crtc_w3.i, align 4
  %135 = ptrtoint ptr %crtc_h4.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 4, ptr %crtc_h4.i, align 4
  %call263 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 65537, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %cmp265 = icmp slt i32 %call263, 0
  br i1 %cmp265, label %do.end269, label %do.body275

do.end269:                                        ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #6
  %call271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 179) #7
  br label %cleanup

do.body275:                                       ; preds = %do.end262
  %136 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool277.not = icmp eq i8 %137, 0
  br i1 %tobool277.not, label %do.end281, label %do.body287

do.end281:                                        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #6
  %call283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 180, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body287:                                       ; preds = %do.body275
  %138 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.i646 = icmp slt i32 %139, 0
  br i1 %cmp.i646, label %do.end.i648, label %if.end.i651

do.end.i648:                                      ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #6
  %call.i647 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %139) #7
  br label %do.end292

if.end.i651:                                      ; preds = %do.body287
  %140 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp5.i650 = icmp slt i32 %141, 0
  br i1 %cmp5.i650, label %do.end8.i653, label %if.end14.i657

do.end8.i653:                                     ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i652 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %141) #7
  br label %do.end292

if.end14.i657:                                    ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp17.not.i654 = icmp eq i32 %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp20.not.i655 = icmp eq i32 %141, 0
  %or.cond.i656 = select i1 %cmp17.not.i654, i1 %cmp20.not.i655, i1 false
  br i1 %or.cond.i656, label %lor.lhs.false21.i660, label %if.end14.i657.do.end292_crit_edge

if.end14.i657.do.end292_crit_edge:                ; preds = %if.end14.i657
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end292

lor.lhs.false21.i660:                             ; preds = %if.end14.i657
  %142 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %143)
  %cmp24.not.i659 = icmp eq i32 %143, 131072
  br i1 %cmp24.not.i659, label %lor.lhs.false25.i664, label %lor.lhs.false21.i660.do.end292_crit_edge

lor.lhs.false21.i660.do.end292_crit_edge:         ; preds = %lor.lhs.false21.i660
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end292

lor.lhs.false25.i664:                             ; preds = %lor.lhs.false21.i660
  %144 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %145)
  %cmp28.not.i663 = icmp eq i32 %145, 131072
  br i1 %cmp28.not.i663, label %do.body298, label %lor.lhs.false25.i664.do.end292_crit_edge

lor.lhs.false25.i664.do.end292_crit_edge:         ; preds = %lor.lhs.false25.i664
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end292

do.end292:                                        ; preds = %lor.lhs.false25.i664.do.end292_crit_edge, %lor.lhs.false21.i660.do.end292_crit_edge, %if.end14.i657.do.end292_crit_edge, %do.end8.i653, %do.end.i648
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 181, ptr noundef nonnull @.str.70) #7
  br label %cleanup

do.body298:                                       ; preds = %lor.lhs.false25.i664
  %146 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %147)
  %cmp.not.i669 = icmp eq i32 %147, 1022
  br i1 %cmp.not.i669, label %lor.lhs.false.i672, label %do.body298.do.end303_crit_edge

do.body298.do.end303_crit_edge:                   ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end303

lor.lhs.false.i672:                               ; preds = %do.body298
  %148 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 766, i32 %149)
  %cmp2.not.i671 = icmp eq i32 %149, 766
  br i1 %cmp2.not.i671, label %lor.lhs.false3.i675, label %lor.lhs.false.i672.do.end303_crit_edge

lor.lhs.false.i672.do.end303_crit_edge:           ; preds = %lor.lhs.false.i672
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end303

lor.lhs.false3.i675:                              ; preds = %lor.lhs.false.i672
  %150 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %151)
  %cmp5.not.i674 = icmp eq i32 %151, 1024
  br i1 %cmp5.not.i674, label %lor.lhs.false6.i679, label %lor.lhs.false3.i675.do.end303_crit_edge

lor.lhs.false3.i675.do.end303_crit_edge:          ; preds = %lor.lhs.false3.i675
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end303

lor.lhs.false6.i679:                              ; preds = %lor.lhs.false3.i675
  %152 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %153)
  %cmp9.not.i678 = icmp eq i32 %153, 768
  br i1 %cmp9.not.i678, label %do.end308, label %lor.lhs.false6.i679.do.end303_crit_edge

lor.lhs.false6.i679.do.end303_crit_edge:          ; preds = %lor.lhs.false6.i679
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end303

do.end303:                                        ; preds = %lor.lhs.false6.i679.do.end303_crit_edge, %lor.lhs.false3.i675.do.end303_crit_edge, %lor.lhs.false.i672.do.end303_crit_edge, %do.body298.do.end303_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 182, ptr noundef nonnull @.str.73) #7
  br label %cleanup

do.end308:                                        ; preds = %lor.lhs.false6.i679
  %154 = ptrtoint ptr %src_x1.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 131073, ptr %src_x1.i, align 4
  %155 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 131073, ptr %src_y2.i, align 4
  %156 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 67371009, ptr %src_w3.i, align 4
  %157 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 50593793, ptr %src_h4.i, align 4
  %158 = ptrtoint ptr %crtc_x1.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -2, ptr %crtc_x1.i, align 4
  %159 = ptrtoint ptr %crtc_y2.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -2, ptr %crtc_y2.i, align 4
  %160 = ptrtoint ptr %crtc_w3.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1028, ptr %crtc_w3.i, align 4
  %161 = ptrtoint ptr %crtc_h4.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 772, ptr %crtc_h4.i, align 4
  %call309 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65536, i32 noundef 65537, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %cmp311 = icmp slt i32 %call309, 0
  br i1 %cmp311, label %do.end315, label %do.body321

do.end315:                                        ; preds = %do.end308
  call void @__sanitizer_cov_trace_pc() #6
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 190) #7
  br label %cleanup

do.body321:                                       ; preds = %do.end308
  %162 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool323.not = icmp eq i8 %163, 0
  br i1 %tobool323.not, label %do.end327, label %do.body333

do.end327:                                        ; preds = %do.body321
  call void @__sanitizer_cov_trace_pc() #6
  %call329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 191, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body333:                                       ; preds = %do.body321
  %164 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp.i692 = icmp slt i32 %165, 0
  br i1 %cmp.i692, label %do.end.i694, label %if.end.i697

do.end.i694:                                      ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #6
  %call.i693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %165) #7
  br label %do.end338

if.end.i697:                                      ; preds = %do.body333
  %166 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp5.i696 = icmp slt i32 %167, 0
  br i1 %cmp5.i696, label %do.end8.i699, label %if.end14.i703

do.end8.i699:                                     ; preds = %if.end.i697
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i698 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %167) #7
  br label %do.end338

if.end14.i703:                                    ; preds = %if.end.i697
  call void @__sanitizer_cov_trace_const_cmp4(i32 262146, i32 %165)
  %cmp17.not.i700 = icmp eq i32 %165, 262146
  call void @__sanitizer_cov_trace_const_cmp4(i32 262146, i32 %167)
  %cmp20.not.i701 = icmp eq i32 %167, 262146
  %or.cond.i702 = select i1 %cmp17.not.i700, i1 %cmp20.not.i701, i1 false
  br i1 %or.cond.i702, label %lor.lhs.false21.i707, label %if.end14.i703.do.end338_crit_edge

if.end14.i703.do.end338_crit_edge:                ; preds = %if.end14.i703
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end338

lor.lhs.false21.i707:                             ; preds = %if.end14.i703
  %168 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67371010, i32 %169)
  %cmp24.not.i706 = icmp eq i32 %169, 67371010
  br i1 %cmp24.not.i706, label %lor.lhs.false25.i711, label %lor.lhs.false21.i707.do.end338_crit_edge

lor.lhs.false21.i707.do.end338_crit_edge:         ; preds = %lor.lhs.false21.i707
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end338

lor.lhs.false25.i711:                             ; preds = %lor.lhs.false21.i707
  %170 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50593794, i32 %171)
  %cmp28.not.i710 = icmp eq i32 %171, 50593794
  br i1 %cmp28.not.i710, label %do.body344, label %lor.lhs.false25.i711.do.end338_crit_edge

lor.lhs.false25.i711.do.end338_crit_edge:         ; preds = %lor.lhs.false25.i711
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end338

do.end338:                                        ; preds = %lor.lhs.false25.i711.do.end338_crit_edge, %lor.lhs.false21.i707.do.end338_crit_edge, %if.end14.i703.do.end338_crit_edge, %do.end8.i699, %do.end.i694
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 192, ptr noundef nonnull @.str.80) #7
  br label %cleanup

do.body344:                                       ; preds = %lor.lhs.false25.i711
  %172 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.not.i716 = icmp eq i32 %173, 0
  br i1 %cmp.not.i716, label %lor.lhs.false.i719, label %do.body344.do.end349_crit_edge

do.body344.do.end349_crit_edge:                   ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end349

lor.lhs.false.i719:                               ; preds = %do.body344
  %174 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp2.not.i718 = icmp eq i32 %175, 0
  br i1 %cmp2.not.i718, label %lor.lhs.false3.i722, label %lor.lhs.false.i719.do.end349_crit_edge

lor.lhs.false.i719.do.end349_crit_edge:           ; preds = %lor.lhs.false.i719
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end349

lor.lhs.false3.i722:                              ; preds = %lor.lhs.false.i719
  %176 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %177)
  %cmp5.not.i721 = icmp eq i32 %177, 1024
  br i1 %cmp5.not.i721, label %lor.lhs.false6.i726, label %lor.lhs.false3.i722.do.end349_crit_edge

lor.lhs.false3.i722.do.end349_crit_edge:          ; preds = %lor.lhs.false3.i722
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end349

lor.lhs.false6.i726:                              ; preds = %lor.lhs.false3.i722
  %178 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %179)
  %cmp9.not.i725 = icmp eq i32 %179, 768
  br i1 %cmp9.not.i725, label %do.end354, label %lor.lhs.false6.i726.do.end349_crit_edge

lor.lhs.false6.i726.do.end349_crit_edge:          ; preds = %lor.lhs.false6.i726
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end349

do.end349:                                        ; preds = %lor.lhs.false6.i726.do.end349_crit_edge, %lor.lhs.false3.i722.do.end349_crit_edge, %lor.lhs.false.i719.do.end349_crit_edge, %do.body344.do.end349_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.12) #7
  br label %cleanup

do.end354:                                        ; preds = %lor.lhs.false6.i726
  %180 = ptrtoint ptr %src_x1.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %src_x1.i, align 4
  %181 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %src_y2.i, align 4
  %182 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 262143, ptr %src_w3.i, align 4
  %183 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 262143, ptr %src_h4.i, align 4
  %184 = ptrtoint ptr %crtc_x1.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1022, ptr %crtc_x1.i, align 4
  %185 = ptrtoint ptr %crtc_y2.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 766, ptr %crtc_y2.i, align 4
  %186 = ptrtoint ptr %crtc_w3.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 4, ptr %crtc_w3.i, align 4
  %187 = ptrtoint ptr %crtc_h4.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 4, ptr %crtc_h4.i, align 4
  %call355 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65535, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call355)
  %cmp357 = icmp slt i32 %call355, 0
  br i1 %cmp357, label %do.end361, label %do.body367

do.end361:                                        ; preds = %do.end354
  call void @__sanitizer_cov_trace_pc() #6
  %call363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 201) #7
  br label %cleanup

do.body367:                                       ; preds = %do.end354
  %188 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool369.not = icmp eq i8 %189, 0
  br i1 %tobool369.not, label %do.end373, label %do.body379

do.end373:                                        ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #6
  %call375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body379:                                       ; preds = %do.body367
  %190 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp.i739 = icmp slt i32 %191, 0
  br i1 %cmp.i739, label %do.end.i741, label %if.end.i744

do.end.i741:                                      ; preds = %do.body379
  call void @__sanitizer_cov_trace_pc() #6
  %call.i740 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %191) #7
  br label %do.end384

if.end.i744:                                      ; preds = %do.body379
  %192 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp5.i743 = icmp slt i32 %193, 0
  br i1 %cmp5.i743, label %do.end8.i746, label %if.end14.i750

do.end8.i746:                                     ; preds = %if.end.i744
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %193) #7
  br label %do.end384

if.end14.i750:                                    ; preds = %if.end.i744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp17.not.i747 = icmp eq i32 %191, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp20.not.i748 = icmp eq i32 %193, 0
  %or.cond.i749 = select i1 %cmp17.not.i747, i1 %cmp20.not.i748, i1 false
  br i1 %or.cond.i749, label %lor.lhs.false21.i753, label %if.end14.i750.do.end384_crit_edge

if.end14.i750.do.end384_crit_edge:                ; preds = %if.end14.i750
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end384

lor.lhs.false21.i753:                             ; preds = %if.end14.i750
  %194 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %195)
  %cmp24.not.i752 = icmp eq i32 %195, 131072
  br i1 %cmp24.not.i752, label %lor.lhs.false25.i757, label %lor.lhs.false21.i753.do.end384_crit_edge

lor.lhs.false21.i753.do.end384_crit_edge:         ; preds = %lor.lhs.false21.i753
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end384

lor.lhs.false25.i757:                             ; preds = %lor.lhs.false21.i753
  %196 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %197)
  %cmp28.not.i756 = icmp eq i32 %197, 131072
  br i1 %cmp28.not.i756, label %do.body390, label %lor.lhs.false25.i757.do.end384_crit_edge

lor.lhs.false25.i757.do.end384_crit_edge:         ; preds = %lor.lhs.false25.i757
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end384

do.end384:                                        ; preds = %lor.lhs.false25.i757.do.end384_crit_edge, %lor.lhs.false21.i753.do.end384_crit_edge, %if.end14.i750.do.end384_crit_edge, %do.end8.i746, %do.end.i741
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @.str.70) #7
  br label %cleanup

do.body390:                                       ; preds = %lor.lhs.false25.i757
  %198 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %199)
  %cmp.not.i762 = icmp eq i32 %199, 1022
  br i1 %cmp.not.i762, label %lor.lhs.false.i765, label %do.body390.do.end395_crit_edge

do.body390.do.end395_crit_edge:                   ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end395

lor.lhs.false.i765:                               ; preds = %do.body390
  %200 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 766, i32 %201)
  %cmp2.not.i764 = icmp eq i32 %201, 766
  br i1 %cmp2.not.i764, label %lor.lhs.false3.i769, label %lor.lhs.false.i765.do.end395_crit_edge

lor.lhs.false.i765.do.end395_crit_edge:           ; preds = %lor.lhs.false.i765
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end395

lor.lhs.false3.i769:                              ; preds = %lor.lhs.false.i765
  %202 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %203)
  %cmp5.not.i768 = icmp eq i32 %203, 1024
  br i1 %cmp5.not.i768, label %lor.lhs.false6.i773, label %lor.lhs.false3.i769.do.end395_crit_edge

lor.lhs.false3.i769.do.end395_crit_edge:          ; preds = %lor.lhs.false3.i769
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end395

lor.lhs.false6.i773:                              ; preds = %lor.lhs.false3.i769
  %204 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %205)
  %cmp9.not.i772 = icmp eq i32 %205, 768
  br i1 %cmp9.not.i772, label %do.end400, label %lor.lhs.false6.i773.do.end395_crit_edge

lor.lhs.false6.i773.do.end395_crit_edge:          ; preds = %lor.lhs.false6.i773
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end395

do.end395:                                        ; preds = %lor.lhs.false6.i773.do.end395_crit_edge, %lor.lhs.false3.i769.do.end395_crit_edge, %lor.lhs.false.i765.do.end395_crit_edge, %do.body390.do.end395_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @.str.73) #7
  br label %cleanup

do.end400:                                        ; preds = %lor.lhs.false6.i773
  %206 = ptrtoint ptr %src_x1.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 131071, ptr %src_x1.i, align 4
  %207 = ptrtoint ptr %src_y2.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 131071, ptr %src_y2.i, align 4
  %208 = ptrtoint ptr %src_w3.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 67371007, ptr %src_w3.i, align 4
  %209 = ptrtoint ptr %src_h4.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 50593791, ptr %src_h4.i, align 4
  %210 = ptrtoint ptr %crtc_x1.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -2, ptr %crtc_x1.i, align 4
  %211 = ptrtoint ptr %crtc_y2.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -2, ptr %crtc_y2.i, align 4
  %212 = ptrtoint ptr %crtc_w3.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1028, ptr %crtc_w3.i, align 4
  %213 = ptrtoint ptr %crtc_h4.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 772, ptr %crtc_h4.i, align 4
  %call401 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state, ptr noundef nonnull %crtc_state, i32 noundef 65535, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call401)
  %cmp403 = icmp slt i32 %call401, 0
  br i1 %cmp403, label %do.end407, label %do.body413

do.end407:                                        ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #6
  %call409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 213) #7
  br label %cleanup

do.body413:                                       ; preds = %do.end400
  %214 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %visible, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool415.not = icmp eq i8 %215, 0
  br i1 %tobool415.not, label %do.end419, label %do.body425

do.end419:                                        ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #6
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 214, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body425:                                       ; preds = %do.body413
  %216 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.i786 = icmp slt i32 %217, 0
  br i1 %cmp.i786, label %do.end.i788, label %if.end.i791

do.end.i788:                                      ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #6
  %call.i787 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %217) #7
  br label %do.end430

if.end.i791:                                      ; preds = %do.body425
  %218 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %y1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp5.i790 = icmp slt i32 %219, 0
  br i1 %cmp5.i790, label %do.end8.i793, label %if.end14.i797

do.end8.i793:                                     ; preds = %if.end.i791
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i792 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %219) #7
  br label %do.end430

if.end14.i797:                                    ; preds = %if.end.i791
  call void @__sanitizer_cov_trace_const_cmp4(i32 262142, i32 %217)
  %cmp17.not.i794 = icmp eq i32 %217, 262142
  call void @__sanitizer_cov_trace_const_cmp4(i32 262142, i32 %219)
  %cmp20.not.i795 = icmp eq i32 %219, 262142
  %or.cond.i796 = select i1 %cmp17.not.i794, i1 %cmp20.not.i795, i1 false
  br i1 %or.cond.i796, label %lor.lhs.false21.i801, label %if.end14.i797.do.end430_crit_edge

if.end14.i797.do.end430_crit_edge:                ; preds = %if.end14.i797
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end430

lor.lhs.false21.i801:                             ; preds = %if.end14.i797
  %220 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %x2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67371006, i32 %221)
  %cmp24.not.i800 = icmp eq i32 %221, 67371006
  br i1 %cmp24.not.i800, label %lor.lhs.false25.i805, label %lor.lhs.false21.i801.do.end430_crit_edge

lor.lhs.false21.i801.do.end430_crit_edge:         ; preds = %lor.lhs.false21.i801
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end430

lor.lhs.false25.i805:                             ; preds = %lor.lhs.false21.i801
  %222 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %y2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50593790, i32 %223)
  %cmp28.not.i804 = icmp eq i32 %223, 50593790
  br i1 %cmp28.not.i804, label %do.body436, label %lor.lhs.false25.i805.do.end430_crit_edge

lor.lhs.false25.i805.do.end430_crit_edge:         ; preds = %lor.lhs.false25.i805
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end430

do.end430:                                        ; preds = %lor.lhs.false25.i805.do.end430_crit_edge, %lor.lhs.false21.i801.do.end430_crit_edge, %if.end14.i797.do.end430_crit_edge, %do.end8.i793, %do.end.i788
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.102, ptr noundef %src.i, i1 noundef zeroext true) #4
  %call432 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 215, ptr noundef nonnull @.str.97) #7
  br label %cleanup

do.body436:                                       ; preds = %lor.lhs.false25.i805
  %224 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp.not.i810 = icmp eq i32 %225, 0
  br i1 %cmp.not.i810, label %lor.lhs.false.i813, label %do.body436.do.end441_crit_edge

do.body436.do.end441_crit_edge:                   ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end441

lor.lhs.false.i813:                               ; preds = %do.body436
  %226 = ptrtoint ptr %y1.i461 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %y1.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp2.not.i812 = icmp eq i32 %227, 0
  br i1 %cmp2.not.i812, label %lor.lhs.false3.i816, label %lor.lhs.false.i813.do.end441_crit_edge

lor.lhs.false.i813.do.end441_crit_edge:           ; preds = %lor.lhs.false.i813
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end441

lor.lhs.false3.i816:                              ; preds = %lor.lhs.false.i813
  %228 = ptrtoint ptr %x2.i.i462 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %x2.i.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %229)
  %cmp5.not.i815 = icmp eq i32 %229, 1024
  br i1 %cmp5.not.i815, label %lor.lhs.false6.i820, label %lor.lhs.false3.i816.do.end441_crit_edge

lor.lhs.false3.i816.do.end441_crit_edge:          ; preds = %lor.lhs.false3.i816
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end441

lor.lhs.false6.i820:                              ; preds = %lor.lhs.false3.i816
  %230 = ptrtoint ptr %y2.i.i463 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %y2.i.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %231)
  %cmp9.not.i819 = icmp eq i32 %231, 768
  br i1 %cmp9.not.i819, label %lor.lhs.false6.i820.cleanup_crit_edge, label %lor.lhs.false6.i820.do.end441_crit_edge

lor.lhs.false6.i820.do.end441_crit_edge:          ; preds = %lor.lhs.false6.i820
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end441

lor.lhs.false6.i820.cleanup_crit_edge:            ; preds = %lor.lhs.false6.i820
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end441:                                        ; preds = %lor.lhs.false6.i820.do.end441_crit_edge, %lor.lhs.false3.i816.do.end441_crit_edge, %lor.lhs.false.i813.do.end441_crit_edge, %do.body436.do.end441_crit_edge
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.106, ptr noundef %dst.i, i1 noundef zeroext false) #4
  %call443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 216, ptr noundef nonnull @.str.12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end441, %lor.lhs.false6.i820.cleanup_crit_edge, %do.end430, %do.end419, %do.end407, %do.end395, %do.end384, %do.end373, %do.end361, %do.end349, %do.end338, %do.end327, %do.end315, %do.end303, %do.end292, %do.end281, %do.end269, %do.end257, %do.end246, %do.end235, %do.end223, %do.end211, %do.end199, %do.end188, %do.end177, %do.end165, %do.end153, %do.end141, %do.end130, %do.end119, %do.end107, %do.end95, %do.end82, %do.end71, %do.end60, %do.end48, %do.end35, %do.end24, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end48 ], [ -22, %do.end107 ], [ -22, %do.end165 ], [ -22, %do.end223 ], [ -22, %do.end269 ], [ -22, %do.end315 ], [ -22, %do.end361 ], [ -22, %do.end407 ], [ -22, %do.end441 ], [ -22, %do.end430 ], [ -22, %do.end419 ], [ -22, %do.end395 ], [ -22, %do.end384 ], [ -22, %do.end373 ], [ -22, %do.end349 ], [ -22, %do.end338 ], [ -22, %do.end327 ], [ -22, %do.end303 ], [ -22, %do.end292 ], [ -22, %do.end281 ], [ -22, %do.end257 ], [ -22, %do.end246 ], [ -22, %do.end235 ], [ -22, %do.end211 ], [ -22, %do.end199 ], [ -22, %do.end188 ], [ -22, %do.end177 ], [ -22, %do.end153 ], [ -22, %do.end141 ], [ -22, %do.end130 ], [ -22, %do.end119 ], [ -22, %do.end95 ], [ -22, %do.end82 ], [ -22, %do.end71 ], [ -22, %do.end60 ], [ -22, %do.end35 ], [ -22, %do.end24 ], [ -22, %do.end13 ], [ 0, %lor.lhs.false6.i820.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %plane_state) #4
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %fb) #4
  call void @llvm.lifetime.end.p0(i64 284, ptr nonnull %crtc_state) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_rect_debug_print(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !150, !151, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 107, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @igt_check_plane_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @igt_check_plane_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 108, i32 2}
!8 = !{ptr @igt_check_plane_state._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @igt_check_plane_state._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @igt_check_plane_state._entry.7, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 109, i32 2}
!13 = !{ptr @igt_check_plane_state._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @igt_check_plane_state._entry.10, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 110, i32 2}
!17 = !{ptr @igt_check_plane_state._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 118, i32 2}
!21 = !{ptr @igt_check_plane_state._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @igt_check_plane_state._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @igt_check_plane_state._entry.16, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 119, i32 2}
!25 = !{ptr @igt_check_plane_state._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @igt_check_plane_state._entry.18, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 120, i32 2}
!28 = !{ptr @igt_check_plane_state._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @igt_check_plane_state._entry.21, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 121, i32 2}
!32 = !{ptr @igt_check_plane_state._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 131, i32 2}
!35 = !{ptr @igt_check_plane_state._entry.23, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @igt_check_plane_state._entry_ptr.25, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 137, i32 2}
!39 = !{ptr @igt_check_plane_state._entry.26, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @igt_check_plane_state._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @igt_check_plane_state._entry.29, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 138, i32 2}
!43 = !{ptr @igt_check_plane_state._entry_ptr.30, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @igt_check_plane_state._entry.31, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 139, i32 2}
!46 = !{ptr @igt_check_plane_state._entry_ptr.32, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @igt_check_plane_state._entry.34, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 140, i32 2}
!50 = !{ptr @igt_check_plane_state._entry_ptr.35, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 149, i32 2}
!54 = !{ptr @igt_check_plane_state._entry.37, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @igt_check_plane_state._entry_ptr.39, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.41, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 154, i32 2}
!58 = !{ptr @igt_check_plane_state._entry.40, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @igt_check_plane_state._entry_ptr.42, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @igt_check_plane_state._entry.43, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 155, i32 2}
!62 = !{ptr @igt_check_plane_state._entry_ptr.44, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @igt_check_plane_state._entry.45, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 156, i32 2}
!65 = !{ptr @igt_check_plane_state._entry_ptr.46, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.47, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @igt_check_plane_state._entry.48, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 157, i32 2}
!69 = !{ptr @igt_check_plane_state._entry_ptr.49, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.51, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 163, i32 2}
!72 = !{ptr @igt_check_plane_state._entry.50, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @igt_check_plane_state._entry_ptr.52, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.54, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 167, i32 2}
!76 = !{ptr @igt_check_plane_state._entry.53, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @igt_check_plane_state._entry_ptr.55, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @igt_check_plane_state._entry.56, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 168, i32 2}
!80 = !{ptr @igt_check_plane_state._entry_ptr.57, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @igt_check_plane_state._entry.58, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 169, i32 2}
!83 = !{ptr @igt_check_plane_state._entry_ptr.59, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.60, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @igt_check_plane_state._entry.61, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 170, i32 2}
!87 = !{ptr @igt_check_plane_state._entry_ptr.62, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.64, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 179, i32 2}
!90 = !{ptr @igt_check_plane_state._entry.63, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @igt_check_plane_state._entry_ptr.65, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @igt_check_plane_state._entry.66, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 180, i32 2}
!94 = !{ptr @igt_check_plane_state._entry_ptr.67, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @igt_check_plane_state._entry.68, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 181, i32 2}
!97 = !{ptr @igt_check_plane_state._entry_ptr.69, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.70, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @igt_check_plane_state._entry.71, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 182, i32 2}
!101 = !{ptr @igt_check_plane_state._entry_ptr.72, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.73, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @igt_check_plane_state._entry.74, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 190, i32 2}
!105 = !{ptr @igt_check_plane_state._entry_ptr.75, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @igt_check_plane_state._entry.76, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 191, i32 2}
!108 = !{ptr @igt_check_plane_state._entry_ptr.77, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @igt_check_plane_state._entry.78, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 192, i32 2}
!111 = !{ptr @igt_check_plane_state._entry_ptr.79, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.80, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @igt_check_plane_state._entry.81, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 193, i32 2}
!115 = !{ptr @igt_check_plane_state._entry_ptr.82, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @igt_check_plane_state._entry.83, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 201, i32 2}
!118 = !{ptr @igt_check_plane_state._entry_ptr.84, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @igt_check_plane_state._entry.85, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 202, i32 2}
!121 = !{ptr @igt_check_plane_state._entry_ptr.86, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @igt_check_plane_state._entry.87, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 204, i32 2}
!124 = !{ptr @igt_check_plane_state._entry_ptr.88, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @igt_check_plane_state._entry.89, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 205, i32 2}
!127 = !{ptr @igt_check_plane_state._entry_ptr.90, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @igt_check_plane_state._entry.91, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 213, i32 2}
!130 = !{ptr @igt_check_plane_state._entry_ptr.92, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @igt_check_plane_state._entry.93, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 214, i32 2}
!133 = !{ptr @igt_check_plane_state._entry_ptr.94, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @igt_check_plane_state._entry.95, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 215, i32 2}
!136 = !{ptr @igt_check_plane_state._entry_ptr.96, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.97, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @igt_check_plane_state._entry.98, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 216, i32 2}
!140 = !{ptr @igt_check_plane_state._entry_ptr.99, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.100, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 29, i32 3}
!143 = !{ptr @.str.101, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @check_src_eq._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @check_src_eq._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.102, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 30, i32 24}
!148 = !{ptr @.str.104, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 34, i32 3}
!150 = !{ptr @check_src_eq._entry.103, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @check_src_eq._entry_ptr.105, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.106, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/selftests/test-drm_plane_helper.c", i32 68, i32 24}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i8 0, i8 2}
